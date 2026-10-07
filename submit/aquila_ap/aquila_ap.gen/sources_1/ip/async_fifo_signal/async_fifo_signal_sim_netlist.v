// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Dec 31 10:44:21 2025
// Host        : LAPTOP-8ADVV7HH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/code_projects/mpd/hw5/submit/aquila_ap/aquila_ap.gen/sources_1/ip/async_fifo_signal/async_fifo_signal_sim_netlist.v
// Design      : async_fifo_signal
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_signal,fifo_generator_v13_2_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module async_fifo_signal
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [0:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [0:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [0:0]din;
  wire [0:0]dout;
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
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
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
  async_fifo_signal_fifo_generator_v13_2_13 U0
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
module async_fifo_signal_xpm_cdc_gray
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
module async_fifo_signal_xpm_cdc_gray__1
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64832)
`pragma protect data_block
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
CAuxp0geqoSyHKVky5qKyS49brKPlFU=
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
