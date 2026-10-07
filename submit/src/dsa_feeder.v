`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: dsa_feeder
// Description:
//   4-way loop unrolling for FMA dot-product acceleration.
//   Maintains 4 independent accumulators to break data dependency.
//   Final result = acc0 + acc1 + acc2 + acc3.
//
// Revision 0.03 - 4-way unrolling for improved throughput
//////////////////////////////////////////////////////////////////////////////////

module dsa_feeder
#(parameter XLEN = 32)
(
    input                   clk_i,
    input                   rst_i,

    input                   en_i,
    input                   we_i,
    input  [XLEN-1 : 0]     addr_i,
    input  [XLEN/8-1 : 0]   be_i,
    input  [XLEN-1 : 0]     data_i,
    output reg [XLEN-1 : 0] data_o,
    output reg              data_ready_o,

    // AXI4-Stream to floating_point_0 (non-blocking mode)
    output reg              s_axis_a_tvalid,
    input                   s_axis_a_tready,
    output reg [31 : 0]     s_axis_a_tdata,
    output reg              s_axis_b_tvalid,
    input                   s_axis_b_tready,
    output reg [31 : 0]     s_axis_b_tdata,
    output reg              s_axis_c_tvalid,
    input                   s_axis_c_tready,
    output reg [31 : 0]     s_axis_c_tdata,

    input                   m_axis_result_tvalid,
    output reg              m_axis_result_tready,
    input  [31 : 0]         m_axis_result_tdata
);

// MMIO offsets (byte)
localparam [11 : 0] OFF_CTRL = 12'h000;
localparam [11 : 0] OFF_LEN  = 12'h004;
localparam [11 : 0] OFF_INA  = 12'h010;
localparam [11 : 0] OFF_INB  = 12'h400;
localparam [11 : 0] OFF_OUT  = 12'h800;

localparam [9 : 0] WORD_OFF_INA = OFF_INA[11:2];
localparam [9 : 0] WORD_OFF_INB = OFF_INB[11:2];

localparam integer A_DEPTH = 252;
localparam integer B_DEPTH = 256;
localparam [15 : 0] MAX_LEN = A_DEPTH;

// State machine
localparam [2 : 0] ST_IDLE   = 3'd0;
localparam [2 : 0] ST_PIPE   = 3'd1;  // Pipelined send + receive
localparam [2 : 0] ST_DRAIN  = 3'd2;  // Drain remaining results
localparam [2 : 0] ST_RED1   = 3'd3;  // Reduce: acc0 + acc1
localparam [2 : 0] ST_RED2   = 3'd4;  // Reduce: acc2 + acc3
localparam [2 : 0] ST_RED3   = 3'd5;  // Reduce: sum01 + sum23

reg [31 : 0] len_reg;
reg [31 : 0] out_reg;
reg          done_reg;
reg [2 : 0]  state;

// 4 independent accumulators
reg [31 : 0] acc0, acc1, acc2, acc3;
reg [31 : 0] sum01;

// Counters
reg [15 : 0] send_idx;
reg [15 : 0] recv_idx;
reg [1 : 0]  send_lane;
reg [1 : 0]  recv_lane;

// Pending flags: ensure each lane has at most 1 in-flight FMA
// This prevents using stale accumulator values
reg [3 : 0]  pending;  // pending[i] = 1 means lane i has an in-flight FMA

reg [31 : 0] buf_a[0 : A_DEPTH-1];
reg [31 : 0] buf_b[0 : B_DEPTH-1];

wire [11 : 0] addr_off = addr_i[11:0];
wire [9 : 0]  word_addr = addr_off[11:2];
wire          in_a_range = (addr_off >= OFF_INA) && (addr_off < OFF_INB);
wire          in_b_range = (addr_off >= OFF_INB) && (addr_off < OFF_OUT);
wire [9 : 0]  a_index = word_addr - WORD_OFF_INA;
wire [9 : 0]  b_index = word_addr - WORD_OFF_INB;

wire do_write = en_i && we_i;
wire do_read  = en_i && ~we_i;
wire busy     = (state != ST_IDLE);

wire [15 : 0] len_effective = (len_reg[15:0] > MAX_LEN) ? MAX_LEN : len_reg[15:0];
wire          start_pulse = do_write && (addr_off == OFF_CTRL) && data_i[0] && ~busy;
wire          start_empty = start_pulse && (len_effective == 0);
wire          done_clear = (do_write && (addr_off == OFF_CTRL) && data_i[2]) ||
                           (do_read && (addr_off == OFF_CTRL));

wire          result_fire = m_axis_result_tvalid;
wire          all_sent = (send_idx >= len_effective);

function [31 : 0] apply_wstrb;
    input [31 : 0] orig;
    input [31 : 0] data;
    input [3 : 0]  be;
    begin
        apply_wstrb = orig;
        if (be[0]) apply_wstrb[7 : 0]  = data[7 : 0];
        if (be[1]) apply_wstrb[15 : 8] = data[15 : 8];
        if (be[2]) apply_wstrb[23 : 16] = data[23 : 16];
        if (be[3]) apply_wstrb[31 : 24] = data[31 : 24];
    end
endfunction

// MMIO write to buffers
integer i;
always @(posedge clk_i)
begin
    if (rst_i)
    begin
        len_reg <= 32'b0;
        for (i = 0; i < A_DEPTH; i = i + 1)
            buf_a[i] <= 32'b0;
        for (i = 0; i < B_DEPTH; i = i + 1)
            buf_b[i] <= 32'b0;
    end
    else if (do_write && ~busy)
    begin
        if (addr_off == OFF_LEN)
            len_reg <= apply_wstrb(len_reg, data_i, be_i[3:0]);
        else if (in_a_range && (a_index < A_DEPTH))
            buf_a[a_index] <= apply_wstrb(buf_a[a_index], data_i, be_i[3:0]);
        else if (in_b_range && (b_index < B_DEPTH))
            buf_b[b_index] <= apply_wstrb(buf_b[b_index], data_i, be_i[3:0]);
    end
end

// MMIO read
always @(posedge clk_i)
begin
    if (rst_i)
    begin
        data_o <= 32'b0;
        data_ready_o <= 1'b0;
    end
    else
    begin
        data_ready_o <= en_i;
        if (do_read)
        begin
            if (addr_off == OFF_CTRL)
                data_o <= {29'b0, done_reg, busy, 1'b0};
            else if (addr_off == OFF_LEN)
                data_o <= len_reg;
            else if (addr_off == OFF_OUT)
                data_o <= out_reg;
            else if (in_a_range && (a_index < A_DEPTH))
                data_o <= buf_a[a_index];
            else if (in_b_range && (b_index < B_DEPTH))
                data_o <= buf_b[b_index];
            else
                data_o <= 32'b0;
        end
    end
end

// Done flag
always @(posedge clk_i)
begin
    if (rst_i)
        done_reg <= 1'b0;
    else if (start_pulse && ~start_empty)
        done_reg <= 1'b0;
    else if (start_empty)
        done_reg <= 1'b1;
    else if ((state == ST_DRAIN) && result_fire)
        done_reg <= 1'b1;
    else if (done_clear)
        done_reg <= 1'b0;
end

// Main state machine with 4-way unrolling
always @(posedge clk_i)
begin
    if (rst_i)
    begin
        state <= ST_IDLE;
        send_idx <= 16'b0;
        recv_idx <= 16'b0;
        send_lane <= 2'b0;
        recv_lane <= 2'b0;
        pending <= 4'b0;
        acc0 <= 32'b0;
        acc1 <= 32'b0;
        acc2 <= 32'b0;
        acc3 <= 32'b0;
        sum01 <= 32'b0;
        out_reg <= 32'b0;
        s_axis_a_tvalid <= 1'b0;
        s_axis_b_tvalid <= 1'b0;
        s_axis_c_tvalid <= 1'b0;
        s_axis_a_tdata <= 32'b0;
        s_axis_b_tdata <= 32'b0;
        s_axis_c_tdata <= 32'b0;
        m_axis_result_tready <= 1'b0;
    end
    else
    begin
        case (state)
            ST_IDLE:
            begin
                s_axis_a_tvalid <= 1'b0;
                s_axis_b_tvalid <= 1'b0;
                s_axis_c_tvalid <= 1'b0;
                m_axis_result_tready <= 1'b0;
                
                if (start_pulse && ~start_empty)
                begin
                    send_idx <= 16'b0;
                    recv_idx <= 16'b0;
                    send_lane <= 2'b0;
                    recv_lane <= 2'b0;
                    pending <= 4'b0;
                    acc0 <= 32'b0;
                    acc1 <= 32'b0;
                    acc2 <= 32'b0;
                    acc3 <= 32'b0;
                    out_reg <= 32'b0;
                    m_axis_result_tready <= 1'b1;
                    state <= ST_PIPE;
                end
            end
            
            ST_PIPE:
            begin
                // Default: clear valid signals
                s_axis_a_tvalid <= 1'b0;
                s_axis_b_tvalid <= 1'b0;
                s_axis_c_tvalid <= 1'b0;
                
                // === RECEIVE LOGIC: must process first to update acc and pending ===
                if (result_fire)
                begin
                    case (recv_lane)
                        2'd0: acc0 <= m_axis_result_tdata;
                        2'd1: acc1 <= m_axis_result_tdata;
                        2'd2: acc2 <= m_axis_result_tdata;
                        2'd3: acc3 <= m_axis_result_tdata;
                    endcase
                    recv_idx <= recv_idx + 1;
                    recv_lane <= recv_lane + 1;
                    
                    // Check if all main results received
                    if ((recv_idx + 1) >= len_effective)
                    begin
                        state <= ST_RED1;
                    end
                end
                
                // === SEND LOGIC: only send if lane is not pending ===
                // Note: check pending before result_fire clears it (combinational)
                // pending[i] becomes 0 only after this cycle ends
                if (~all_sent && ~pending[send_lane])
                begin
                    s_axis_a_tdata <= buf_a[send_idx];
                    s_axis_b_tdata <= buf_b[send_idx];
                    case (send_lane)
                        2'd0: s_axis_c_tdata <= acc0;
                        2'd1: s_axis_c_tdata <= acc1;
                        2'd2: s_axis_c_tdata <= acc2;
                        2'd3: s_axis_c_tdata <= acc3;
                    endcase
                    s_axis_a_tvalid <= 1'b1;
                    s_axis_b_tvalid <= 1'b1;
                    s_axis_c_tvalid <= 1'b1;
                    
                    send_idx <= send_idx + 1;
                    send_lane <= send_lane + 1;
                end
                
                // === Update pending flags at end ===
                // Clear pending for received lane
                if (result_fire)
                    pending[recv_lane] <= 1'b0;
                // Set pending for sent lane (only if actually sent)
                if (~all_sent && ~pending[send_lane])
                    pending[send_lane] <= 1'b1;
            end
            
            ST_RED1:
            begin
                // Compute acc0 + acc1: FMA(acc0, 1.0, acc1)
                s_axis_a_tdata <= acc0;
                s_axis_b_tdata <= 32'h3F800000;  // 1.0f
                s_axis_c_tdata <= acc1;
                s_axis_a_tvalid <= 1'b1;
                s_axis_b_tvalid <= 1'b1;
                s_axis_c_tvalid <= 1'b1;
                state <= ST_RED2;
            end
            
            ST_RED2:
            begin
                s_axis_a_tvalid <= 1'b0;
                s_axis_b_tvalid <= 1'b0;
                s_axis_c_tvalid <= 1'b0;
                
                if (result_fire)
                begin
                    sum01 <= m_axis_result_tdata;
                    // Send acc2 + acc3
                    s_axis_a_tdata <= acc2;
                    s_axis_b_tdata <= 32'h3F800000;
                    s_axis_c_tdata <= acc3;
                    s_axis_a_tvalid <= 1'b1;
                    s_axis_b_tvalid <= 1'b1;
                    s_axis_c_tvalid <= 1'b1;
                    state <= ST_RED3;
                end
            end
            
            ST_RED3:
            begin
                s_axis_a_tvalid <= 1'b0;
                s_axis_b_tvalid <= 1'b0;
                s_axis_c_tvalid <= 1'b0;
                
                if (result_fire)
                begin
                    // Now compute sum01 + sum23
                    s_axis_a_tdata <= sum01;
                    s_axis_b_tdata <= 32'h3F800000;
                    s_axis_c_tdata <= m_axis_result_tdata;  // sum23
                    s_axis_a_tvalid <= 1'b1;
                    s_axis_b_tvalid <= 1'b1;
                    s_axis_c_tvalid <= 1'b1;
                    state <= ST_DRAIN;
                end
            end
            
            ST_DRAIN:
            begin
                s_axis_a_tvalid <= 1'b0;
                s_axis_b_tvalid <= 1'b0;
                s_axis_c_tvalid <= 1'b0;
                
                if (result_fire)
                begin
                    out_reg <= m_axis_result_tdata;
                    m_axis_result_tready <= 1'b0;
                    state <= ST_IDLE;
                end
            end
            
            default:
                state <= ST_IDLE;
        endcase
    end
end

endmodule
