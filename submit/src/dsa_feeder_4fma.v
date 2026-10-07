`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: dsa_feeder_4fma
// Description:
//   4 parallel FMA units for true 4-way parallelism.
//   Each lane (0-3) has its own dedicated FP IP.
//   All 4 FMAs can run simultaneously, achieving 4x throughput.
//
// Revision 1.0 - 4 parallel FMA units
//////////////////////////////////////////////////////////////////////////////////

module dsa_feeder_4fma
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

    // AXI4-Stream to FMA 0 (non-blocking)
    output reg              s_axis_a0_tvalid,
    output reg [31 : 0]     s_axis_a0_tdata,
    output reg              s_axis_b0_tvalid,
    output reg [31 : 0]     s_axis_b0_tdata,
    output reg              s_axis_c0_tvalid,
    output reg [31 : 0]     s_axis_c0_tdata,
    input                   m_axis_result0_tvalid,
    input  [31 : 0]         m_axis_result0_tdata,

    // AXI4-Stream to FMA 1 (non-blocking)
    output reg              s_axis_a1_tvalid,
    output reg [31 : 0]     s_axis_a1_tdata,
    output reg              s_axis_b1_tvalid,
    output reg [31 : 0]     s_axis_b1_tdata,
    output reg              s_axis_c1_tvalid,
    output reg [31 : 0]     s_axis_c1_tdata,
    input                   m_axis_result1_tvalid,
    input  [31 : 0]         m_axis_result1_tdata,

    // AXI4-Stream to FMA 2 (non-blocking)
    output reg              s_axis_a2_tvalid,
    output reg [31 : 0]     s_axis_a2_tdata,
    output reg              s_axis_b2_tvalid,
    output reg [31 : 0]     s_axis_b2_tdata,
    output reg              s_axis_c2_tvalid,
    output reg [31 : 0]     s_axis_c2_tdata,
    input                   m_axis_result2_tvalid,
    input  [31 : 0]         m_axis_result2_tdata,

    // AXI4-Stream to FMA 3 (non-blocking)
    output reg              s_axis_a3_tvalid,
    output reg [31 : 0]     s_axis_a3_tdata,
    output reg              s_axis_b3_tvalid,
    output reg [31 : 0]     s_axis_b3_tdata,
    output reg              s_axis_c3_tvalid,
    output reg [31 : 0]     s_axis_c3_tdata,
    input                   m_axis_result3_tvalid,
    input  [31 : 0]         m_axis_result3_tdata
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
localparam [2 : 0] ST_PIPE   = 3'd1;  // Parallel pipelined send + receive
localparam [2 : 0] ST_WAIT   = 3'd2;  // Wait for remaining results
localparam [2 : 0] ST_RED1   = 3'd3;  // Reduce: acc0 + acc1
localparam [2 : 0] ST_RED2   = 3'd4;  // Reduce: acc2 + acc3
localparam [2 : 0] ST_RED3   = 3'd5;  // Reduce: sum01 + sum23
localparam [2 : 0] ST_DRAIN  = 3'd6;  // Wait for final result

reg [31 : 0] len_reg;
reg [31 : 0] out_reg;
reg          done_reg;
reg [2 : 0]  state;

// 4 independent accumulators (one per FMA)
reg [31 : 0] acc0, acc1, acc2, acc3;
reg [31 : 0] sum01;

// Counters
reg [15 : 0] send_idx;      // Which element to send next (0, 4, 8, ...)
reg [15 : 0] recv_count;    // Total elements received

// Per-lane pending flags (each lane can have 1 in-flight FMA)
reg pending0, pending1, pending2, pending3;

// Buffers
reg [31 : 0] buf_a[0 : A_DEPTH-1];
reg [31 : 0] buf_b[0 : B_DEPTH-1];

// Address decode
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

// All elements have been dispatched (in groups of 4)
wire all_sent = (send_idx >= len_effective);
// All results received
wire all_recv = (recv_count >= len_effective);

// Result valid signals from each FMA
wire fire0 = m_axis_result0_tvalid;
wire fire1 = m_axis_result1_tvalid;
wire fire2 = m_axis_result2_tvalid;
wire fire3 = m_axis_result3_tvalid;

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
    else if ((state == ST_DRAIN) && fire0)
        done_reg <= 1'b1;
    else if (done_clear)
        done_reg <= 1'b0;
end

// Calculate how many elements in each lane for current batch
wire [15 : 0] remain = len_effective - send_idx;
wire can_send0 = (remain > 0) && ~pending0;
wire can_send1 = (remain > 1) && ~pending1;
wire can_send2 = (remain > 2) && ~pending2;
wire can_send3 = (remain > 3) && ~pending3;

// Count how many elements to send this cycle
wire [2 : 0] send_count = can_send0 + can_send1 + can_send2 + can_send3;

// Count received this cycle
wire [2 : 0] recv_this_cycle = fire0 + fire1 + fire2 + fire3;

// Main state machine with 4 parallel FMAs
always @(posedge clk_i)
begin
    if (rst_i)
    begin
        state <= ST_IDLE;
        send_idx <= 16'b0;
        recv_count <= 16'b0;
        pending0 <= 1'b0;
        pending1 <= 1'b0;
        pending2 <= 1'b0;
        pending3 <= 1'b0;
        acc0 <= 32'b0;
        acc1 <= 32'b0;
        acc2 <= 32'b0;
        acc3 <= 32'b0;
        sum01 <= 32'b0;
        out_reg <= 32'b0;
        
        s_axis_a0_tvalid <= 1'b0;
        s_axis_b0_tvalid <= 1'b0;
        s_axis_c0_tvalid <= 1'b0;
        s_axis_a0_tdata <= 32'b0;
        s_axis_b0_tdata <= 32'b0;
        s_axis_c0_tdata <= 32'b0;
        
        s_axis_a1_tvalid <= 1'b0;
        s_axis_b1_tvalid <= 1'b0;
        s_axis_c1_tvalid <= 1'b0;
        s_axis_a1_tdata <= 32'b0;
        s_axis_b1_tdata <= 32'b0;
        s_axis_c1_tdata <= 32'b0;
        
        s_axis_a2_tvalid <= 1'b0;
        s_axis_b2_tvalid <= 1'b0;
        s_axis_c2_tvalid <= 1'b0;
        s_axis_a2_tdata <= 32'b0;
        s_axis_b2_tdata <= 32'b0;
        s_axis_c2_tdata <= 32'b0;
        
        s_axis_a3_tvalid <= 1'b0;
        s_axis_b3_tvalid <= 1'b0;
        s_axis_c3_tvalid <= 1'b0;
        s_axis_a3_tdata <= 32'b0;
        s_axis_b3_tdata <= 32'b0;
        s_axis_c3_tdata <= 32'b0;
    end
    else
    begin
        case (state)
            ST_IDLE:
            begin
                // Clear all valid signals
                s_axis_a0_tvalid <= 1'b0;
                s_axis_b0_tvalid <= 1'b0;
                s_axis_c0_tvalid <= 1'b0;
                s_axis_a1_tvalid <= 1'b0;
                s_axis_b1_tvalid <= 1'b0;
                s_axis_c1_tvalid <= 1'b0;
                s_axis_a2_tvalid <= 1'b0;
                s_axis_b2_tvalid <= 1'b0;
                s_axis_c2_tvalid <= 1'b0;
                s_axis_a3_tvalid <= 1'b0;
                s_axis_b3_tvalid <= 1'b0;
                s_axis_c3_tvalid <= 1'b0;
                
                if (start_pulse && ~start_empty)
                begin
                    send_idx <= 16'b0;
                    recv_count <= 16'b0;
                    pending0 <= 1'b0;
                    pending1 <= 1'b0;
                    pending2 <= 1'b0;
                    pending3 <= 1'b0;
                    acc0 <= 32'b0;
                    acc1 <= 32'b0;
                    acc2 <= 32'b0;
                    acc3 <= 32'b0;
                    out_reg <= 32'b0;
                    state <= ST_PIPE;
                end
            end
            
            ST_PIPE:
            begin
                // Default: clear valid signals
                s_axis_a0_tvalid <= 1'b0;
                s_axis_b0_tvalid <= 1'b0;
                s_axis_c0_tvalid <= 1'b0;
                s_axis_a1_tvalid <= 1'b0;
                s_axis_b1_tvalid <= 1'b0;
                s_axis_c1_tvalid <= 1'b0;
                s_axis_a2_tvalid <= 1'b0;
                s_axis_b2_tvalid <= 1'b0;
                s_axis_c2_tvalid <= 1'b0;
                s_axis_a3_tvalid <= 1'b0;
                s_axis_b3_tvalid <= 1'b0;
                s_axis_c3_tvalid <= 1'b0;
                
                // === RECEIVE LOGIC: handle all 4 FMAs in parallel ===
                if (fire0)
                begin
                    acc0 <= m_axis_result0_tdata;
                    pending0 <= 1'b0;
                end
                if (fire1)
                begin
                    acc1 <= m_axis_result1_tdata;
                    pending1 <= 1'b0;
                end
                if (fire2)
                begin
                    acc2 <= m_axis_result2_tdata;
                    pending2 <= 1'b0;
                end
                if (fire3)
                begin
                    acc3 <= m_axis_result3_tdata;
                    pending3 <= 1'b0;
                end
                recv_count <= recv_count + recv_this_cycle;
                
                // === SEND LOGIC: dispatch to all 4 FMAs in parallel ===
                // Lane 0: element at send_idx+0
                if (~all_sent && can_send0)
                begin
                    s_axis_a0_tdata <= buf_a[send_idx];
                    s_axis_b0_tdata <= buf_b[send_idx];
                    s_axis_c0_tdata <= acc0;
                    s_axis_a0_tvalid <= 1'b1;
                    s_axis_b0_tvalid <= 1'b1;
                    s_axis_c0_tvalid <= 1'b1;
                    pending0 <= 1'b1;
                end
                
                // Lane 1: element at send_idx+1
                if (~all_sent && can_send1)
                begin
                    s_axis_a1_tdata <= buf_a[send_idx + 1];
                    s_axis_b1_tdata <= buf_b[send_idx + 1];
                    s_axis_c1_tdata <= acc1;
                    s_axis_a1_tvalid <= 1'b1;
                    s_axis_b1_tvalid <= 1'b1;
                    s_axis_c1_tvalid <= 1'b1;
                    pending1 <= 1'b1;
                end
                
                // Lane 2: element at send_idx+2
                if (~all_sent && can_send2)
                begin
                    s_axis_a2_tdata <= buf_a[send_idx + 2];
                    s_axis_b2_tdata <= buf_b[send_idx + 2];
                    s_axis_c2_tdata <= acc2;
                    s_axis_a2_tvalid <= 1'b1;
                    s_axis_b2_tvalid <= 1'b1;
                    s_axis_c2_tvalid <= 1'b1;
                    pending2 <= 1'b1;
                end
                
                // Lane 3: element at send_idx+3
                if (~all_sent && can_send3)
                begin
                    s_axis_a3_tdata <= buf_a[send_idx + 3];
                    s_axis_b3_tdata <= buf_b[send_idx + 3];
                    s_axis_c3_tdata <= acc3;
                    s_axis_a3_tvalid <= 1'b1;
                    s_axis_b3_tvalid <= 1'b1;
                    s_axis_c3_tvalid <= 1'b1;
                    pending3 <= 1'b1;
                end
                
                // Advance send_idx by 4 (or remaining)
                if (~all_sent)
                    send_idx <= send_idx + {13'b0, send_count};
                
                // Check completion
                if ((recv_count + recv_this_cycle) >= len_effective)
                    state <= ST_RED1;
                else if (all_sent && ~(pending0 || pending1 || pending2 || pending3 || 
                         fire0 || fire1 || fire2 || fire3))
                    state <= ST_WAIT;  // Safety: wait for stragglers
            end
            
            ST_WAIT:
            begin
                // Wait for any remaining in-flight results
                s_axis_a0_tvalid <= 1'b0;
                s_axis_b0_tvalid <= 1'b0;
                s_axis_c0_tvalid <= 1'b0;
                s_axis_a1_tvalid <= 1'b0;
                s_axis_b1_tvalid <= 1'b0;
                s_axis_c1_tvalid <= 1'b0;
                s_axis_a2_tvalid <= 1'b0;
                s_axis_b2_tvalid <= 1'b0;
                s_axis_c2_tvalid <= 1'b0;
                s_axis_a3_tvalid <= 1'b0;
                s_axis_b3_tvalid <= 1'b0;
                s_axis_c3_tvalid <= 1'b0;
                
                if (fire0)
                begin
                    acc0 <= m_axis_result0_tdata;
                    pending0 <= 1'b0;
                end
                if (fire1)
                begin
                    acc1 <= m_axis_result1_tdata;
                    pending1 <= 1'b0;
                end
                if (fire2)
                begin
                    acc2 <= m_axis_result2_tdata;
                    pending2 <= 1'b0;
                end
                if (fire3)
                begin
                    acc3 <= m_axis_result3_tdata;
                    pending3 <= 1'b0;
                end
                recv_count <= recv_count + recv_this_cycle;
                
                if ((recv_count + recv_this_cycle) >= len_effective)
                    state <= ST_RED1;
            end
            
            ST_RED1:
            begin
                // Compute acc0 + acc1: use FMA0: FMA(acc0, 1.0, acc1)
                s_axis_a0_tdata <= acc0;
                s_axis_b0_tdata <= 32'h3F800000;  // 1.0f
                s_axis_c0_tdata <= acc1;
                s_axis_a0_tvalid <= 1'b1;
                s_axis_b0_tvalid <= 1'b1;
                s_axis_c0_tvalid <= 1'b1;
                
                // Compute acc2 + acc3: use FMA1: FMA(acc2, 1.0, acc3)
                s_axis_a1_tdata <= acc2;
                s_axis_b1_tdata <= 32'h3F800000;
                s_axis_c1_tdata <= acc3;
                s_axis_a1_tvalid <= 1'b1;
                s_axis_b1_tvalid <= 1'b1;
                s_axis_c1_tvalid <= 1'b1;
                
                state <= ST_RED2;
            end
            
            ST_RED2:
            begin
                s_axis_a0_tvalid <= 1'b0;
                s_axis_b0_tvalid <= 1'b0;
                s_axis_c0_tvalid <= 1'b0;
                s_axis_a1_tvalid <= 1'b0;
                s_axis_b1_tvalid <= 1'b0;
                s_axis_c1_tvalid <= 1'b0;
                
                // Wait for both sum01 and sum23
                if (fire0)
                    sum01 <= m_axis_result0_tdata;
                if (fire1)
                    acc3 <= m_axis_result1_tdata;  // Reuse acc3 for sum23
                
                // Both done - compute final sum
                if (fire0 && fire1)
                begin
                    // Send sum01 + sum23
                    s_axis_a0_tdata <= m_axis_result0_tdata;  // sum01
                    s_axis_b0_tdata <= 32'h3F800000;
                    s_axis_c0_tdata <= m_axis_result1_tdata;  // sum23
                    s_axis_a0_tvalid <= 1'b1;
                    s_axis_b0_tvalid <= 1'b1;
                    s_axis_c0_tvalid <= 1'b1;
                    state <= ST_DRAIN;
                end
                else if (fire0)
                begin
                    state <= ST_RED3;  // Wait for sum23
                end
                else if (fire1)
                begin
                    state <= ST_RED3;  // Wait for sum01
                end
            end
            
            ST_RED3:
            begin
                s_axis_a0_tvalid <= 1'b0;
                s_axis_b0_tvalid <= 1'b0;
                s_axis_c0_tvalid <= 1'b0;
                
                // Capture the missing result
                if (fire0)
                    sum01 <= m_axis_result0_tdata;
                if (fire1)
                    acc3 <= m_axis_result1_tdata;  // sum23
                
                if (fire0 || fire1)
                begin
                    // Both sums now ready, compute final
                    s_axis_a0_tdata <= sum01;
                    s_axis_b0_tdata <= 32'h3F800000;
                    s_axis_c0_tdata <= acc3;
                    s_axis_a0_tvalid <= 1'b1;
                    s_axis_b0_tvalid <= 1'b1;
                    s_axis_c0_tvalid <= 1'b1;
                    state <= ST_DRAIN;
                end
            end
            
            ST_DRAIN:
            begin
                s_axis_a0_tvalid <= 1'b0;
                s_axis_b0_tvalid <= 1'b0;
                s_axis_c0_tvalid <= 1'b0;
                
                if (fire0)
                begin
                    out_reg <= m_axis_result0_tdata;
                    state <= ST_IDLE;
                end
            end
            
            default:
                state <= ST_IDLE;
        endcase
    end
end

endmodule
