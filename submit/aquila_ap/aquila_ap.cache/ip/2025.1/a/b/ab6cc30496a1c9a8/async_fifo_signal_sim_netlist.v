// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Dec 31 10:44:20 2025
// Host        : LAPTOP-8ADVV7HH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ async_fifo_signal_sim_netlist.v
// Design      : async_fifo_signal
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_signal,fifo_generator_v13_2_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_13 U0
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

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64944)
`pragma protect data_block
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
Ps2ZdMPN2LdV0Jd8wF6ZRS+5kZLJ
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
