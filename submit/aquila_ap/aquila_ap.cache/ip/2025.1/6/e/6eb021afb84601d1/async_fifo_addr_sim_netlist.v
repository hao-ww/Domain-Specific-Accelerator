// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Dec 31 10:44:21 2025
// Host        : LAPTOP-8ADVV7HH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ async_fifo_addr_sim_netlist.v
// Design      : async_fifo_addr
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_addr,fifo_generator_v13_2_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 82480)
`pragma protect data_block
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
XA==
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
