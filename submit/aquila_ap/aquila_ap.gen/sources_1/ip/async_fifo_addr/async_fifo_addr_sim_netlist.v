// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Dec 31 10:44:22 2025
// Host        : LAPTOP-8ADVV7HH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/code_projects/mpd/hw5/submit/aquila_ap/aquila_ap.gen/sources_1/ip/async_fifo_addr/async_fifo_addr_sim_netlist.v
// Design      : async_fifo_addr
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_addr,fifo_generator_v13_2_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module async_fifo_addr
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  async_fifo_addr_fifo_generator_v13_2_13 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module async_fifo_addr_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module async_fifo_addr_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DkrAesSLBeDxhaXI0asb+puroLvZBWosIXruDqTgmPTfjI3i0ebKCZLqSBTKg5KUexTiKWVl+9Ug
OYhkMJXkn0n/j8/6GJO1z/4tReZHG89WtZnUKH7DqjJ9cbYER+xiMOLSptE29AOOLGbQ4MjVzy18
/GymLeiAgR0qzkp9N7Q=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yr55bXOTA5/Rx+gX4TeeJXN0K2cBO3bWYWFnZFCMoAD3+p3RscsDqPrCcQoQK89bE+j5quTJPCqN
12//qWlZoWwZn76VLtgZ6uR08n49XeFz74xjL/TLVxYGXt6h6xX4vQmlg4FObv4H7DjasBX3ZKbJ
ok2aUJCoVpTf1qKo+JcowFn3wCJuym0DTf+pKogOmnP+lFMp5UqrHjukbVdejhRT74VR1/DemaE8
T5gZjbZ3QR/HcWThFnFovoQYfDe6/w6F45CxJCG+PeP9h3J9NvtHuoTROp/4Pm3PwHsb42eiSpxr
pnyaDp+17FZLap9oxsD4do1RXjk5D34ULkJVIA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
O7CLKF7GDUoxVy+wsDp+MYsQrWrtsRT6vUjYFyhzMh6Ub+aCHVi4kv7qJlcKC/lqgz7jtEMHuwnT
UOnYZwGZhoYQGiyYgQ49hiQ3ZRRKZhFERi0ZIsCQqnt9KL/lctiP1qftlXs9jExoeBOOF7u/WVi3
pyQy0g7Wba9UIUGIm6s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GNpCV29nEkhsU3/WearppJw/bF+jpNkJZ/R95n3ICdpGLWfuUStwlUy8HF9jlXwQBHOlyBOP7M8y
5/3deJ7dP9wf0/ktca2pbkd2baod2G4UyNgD7Kw6HEUvRRpyTJZ/L3VmfGT+tIbWo6HIxzLTs/m5
5iqKTaDaI4Q3qK4JULeTAAdRL/RfQmSpb3LUmOqKahCwxslnzUfjlDrQ1yr6O4UDsXY4hdfrGK9D
/I7KoTKVvEhrueaX2jRmY3TQrBUt4jyGRe3PZ6bG503/ai2p2yjlgo+WpvN4/p05/WKtMyZOkIZl
UJBltJG+KSXZ7ZMQP6CiBt0LOX7irCbHz0Jc8g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DywZ/kNdKOmRTL7XhjPG/GfMoClg4ctHdFzXJa3aew7oWOtgVWlq099QePdVKIIjIu5l23MJcdIO
oqynvDtsO7VQVhHYIpsQFOj2gSnqXKfBL8B5bT2FcKG3ooFRv+3lkOFeU5Nw8WL0q47fLhyAMLNd
/9HoUonhRo19wn0Me1Do9aWic/JVt3e9Nd7ru1ix5nBBPNQOlYU7SVx+2X1T2XaJWYvLixlk0Mhc
jMhvX3YFZPzZ0+CM93ob1QR9ScG+y4XfYgNogHRVVefGFoLz2+xnJN+Bu/U0KTX6CQMDDd3buBwQ
T6pBRJKKEDybcMbPkbOJLE5f5LO6qExT7Tg1VA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xk76vYY5+Mi9SikZxGvoXU0nDA0NsPtFqoFTdNelYrbJJjzYNc3fKoKmeAPJEHAK68DYNC1hfZ+h
wET+8JT5Y0DFS6q4lseScDHDk1aw1B8bX+BjAZGKZ0aHGVLPVIBWoebVqqt6jq4ixwO9FqIZHsBM
+MvVrCQvX1DCzUaRFYo14SpAvNJqUYqu6GG3yylKDKwbG8MXyf+cxyC3SADqw9GIWVeUU6K6qVhw
xPAS+X8RLs2umC5guWQim6qB6i7UvICDc0XHSGBJTshyHB7pJ2HTmwrJM0u4VdB6VWY7d3+mSXiS
DD460Qt+vAgSG+7W6NzEmdFsY1oS7d9BmIM8TQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lnn2zznD4woSpcQ8qX9T+xHBP0X7XM2/xXLBM/d+4CrXYKZQlI5YUEvGjRGGV7RB+4F2JgUow8cF
xFJeqARfTzUNSbwmUP/DFMtqlGEpM1nl55xR/wX4ilkSqJcznCGf58hVz/IgOrc5d0OVvOQ/RNYL
rQXtkBsY4w2O8c7EGphPL24fy/JJg5k7ryF7nyHr6SJRrqNDPv/NiKuP5m/kV27HfpteXE06q4M0
JWC5QAIiv5LTpXAb+DVggJmRRAjxMvV2S84NjffxHFMCaMTvtc+jxlYh9aF+cQNAKPRiHAx85SiJ
PEFLBbwPCT5vvJDdLpasydWmMxkjZHzK2xrqeQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
DUNozA2bEHamc0iNCnZvk8LepBeINdhN5GX+6IX34qnspEKMKv7BjtLqXgwW/V/JCnWf8Y7OIbw4
f22QHEpI1y43+nOTrbDPPtprE6ltlBCtccryEPYttIQJF/Tiu49G9uWMIYmXUXgklMNLgBGIeDiK
MdigVvsFpWQ6/uEjPAFsj2WD2pLIKxqEXb3OZ0Nem9xlsoptO6Uf3qgYsXspsW/L4zVBsQNlETzy
cGcBkm40vHTRqemA2HpoPknluLKSuOwehOGvmKh55bvIJRxVFCrPdV4bF50Nq2S4uePYJ2wCeLJb
1sDpBCI5cUI6kGfJN0e+OIQ/DwN9iIoPWSdiKj6BN3I0bmh8maYAcAmtDaAzTaXC3jXkFQB+ik7h
V11sxx0a+8ZYnH66nJrJftgrmqQZU1leLEGxxaKkkPXytKyATXEpCz9MbzyjKwvliQljZcszf7lH
WWRPP6R6bKU8hpjrVAMsuRm+R8j4iHc4nTPqt7cZhlyhAViBvlB2C40D

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EHaUQmQmLufYzNZ5QppuzuiisgA7fFX3fAiRBFmfJqYPZjTG0XgsTNCRYHWXcuY3m9BX/s9Er2Gd
/L/4+bT/RXW5ZkETw2SBQHO7qe1CJqtNqDahDuB0zADrCR/cKwPDQtFItqIOeGeJoLEA9s/HUvSD
th2uPFi0+hFXeDicj+1plX4ApmUWJska8TlRwC0oi/m+lIBBbRrdYO5XY38+qhOgnKC2wPmdMbkc
EFGNFdyzlp/ZUen6C7tswoDOjsDSmlB3wOq10stSLY7Bo90k8f9xLzuwI5q+H7plQuinSdWPRTYu
x9hcgLtu9zFvPwNz/KNLHShBAtzUCp4bx3dwGw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sOYoFu61UC8Y00qCHUNN26P31U5AWJ63SSgVOs2Gp7CWPJ+P3OCRLePUP3+bAteUgBN7AVfI4R/z
Yw2S8JiIqaRcTitNUHv2Diet7aTJZ4Pnf0fbOaK8TOtu0MU72ttMTQPYuX472KGwdJiqBAxB4FzH
KuXCK8Q+rXGxbV5Sub0rOi5KOyQYei7zMxxhQsQHIl4iRkiNGJ5OLhaX6w1YJw60TzJq3XLnqBbu
hbrtcwSQccW8il9D3IlW+Uk+JKVURvFU0ULOXoBLyfWnFH57yQp5QhIrCf8jqGqVd4po+EbPJz6B
sWESgEhaJa8ccl9THIShRCNPAVXkyfN7wTTFmA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fz3nBHklRG4aYQk8bMLrCmmQlzihvhNQmRJkDjMqAVQp3WfT3s29tMACoxDJDWmUKcN48pRpjTcS
XQtCGGmwDaUP9aAsJBVtDs3tIakQoXZ/Q+b6bJy16xRLtVX3DbYsT5harhUkmBWCTRn3H1XrmQyv
sxbL1P6awsZjt9hO4Mdv3YOqh9IsIKEnsRIHQNdH6IFLnpz/3Zi3LzPQNq06nEuGqIvBuo3484HA
Oqj7FoYVOOEHSLUEZOW8wOSmhniWeAOKTQGQRonLiMMuS8yDcXSIQh1zEg+e0cBH8+1DW5cFMzeD
wCbuSTLTBwW2672ks/1kB5Hp7UKgj/KoG2ySZA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 82288)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
