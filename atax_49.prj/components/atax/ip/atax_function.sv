// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.1 (Release Build #173.3)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from atax_function
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_x,
    input wire [63:0] in_arg_y_out,
    input wire [31:0] in_arrayidx32_promoted1_atax_avm_readdata,
    input wire [0:0] in_arrayidx32_promoted1_atax_avm_readdatavalid,
    input wire [0:0] in_arrayidx32_promoted1_atax_avm_waitrequest,
    input wire [0:0] in_arrayidx32_promoted1_atax_avm_writeack,
    input wire [191:0] in_iord_bl_call_atax_i_fifodata,
    input wire [0:0] in_iord_bl_call_atax_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_atax_i_fifoready,
    input wire [31:0] in_memdep_2_atax_avm_readdata,
    input wire [0:0] in_memdep_2_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_2_atax_avm_waitrequest,
    input wire [0:0] in_memdep_2_atax_avm_writeack,
    input wire [31:0] in_memdep_3_atax_avm_readdata,
    input wire [0:0] in_memdep_3_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_3_atax_avm_waitrequest,
    input wire [0:0] in_memdep_3_atax_avm_writeack,
    input wire [31:0] in_memdep_4_atax_avm_readdata,
    input wire [0:0] in_memdep_4_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_4_atax_avm_waitrequest,
    input wire [0:0] in_memdep_4_atax_avm_writeack,
    input wire [31:0] in_memdep_5_atax_avm_readdata,
    input wire [0:0] in_memdep_5_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_5_atax_avm_waitrequest,
    input wire [0:0] in_memdep_5_atax_avm_writeack,
    input wire [31:0] in_memdep_6_atax_avm_readdata,
    input wire [0:0] in_memdep_6_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_6_atax_avm_waitrequest,
    input wire [0:0] in_memdep_6_atax_avm_writeack,
    input wire [63:0] in_memdep_7_atax_avm_readdata,
    input wire [0:0] in_memdep_7_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_7_atax_avm_waitrequest,
    input wire [0:0] in_memdep_7_atax_avm_writeack,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_atax11_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax11_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax11_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax11_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax14_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax14_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax14_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax14_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax15_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax15_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax15_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax15_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax16_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax16_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax16_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax16_atax_avm_writeack,
    input wire [63:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
    input wire [63:0] in_unnamed_atax9_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax9_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax9_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax9_atax_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_arrayidx32_promoted1_atax_avm_address,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_burstcount,
    output wire [3:0] out_arrayidx32_promoted1_atax_avm_byteenable,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_enable,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_read,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_write,
    output wire [31:0] out_arrayidx32_promoted1_atax_avm_writedata,
    output wire [0:0] out_iord_bl_call_atax_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_atax_o_fifoready,
    output wire [0:0] out_iowr_bl_return_atax_o_fifodata,
    output wire [0:0] out_iowr_bl_return_atax_o_fifovalid,
    output wire [31:0] out_memdep_2_atax_avm_address,
    output wire [0:0] out_memdep_2_atax_avm_burstcount,
    output wire [3:0] out_memdep_2_atax_avm_byteenable,
    output wire [0:0] out_memdep_2_atax_avm_enable,
    output wire [0:0] out_memdep_2_atax_avm_read,
    output wire [0:0] out_memdep_2_atax_avm_write,
    output wire [31:0] out_memdep_2_atax_avm_writedata,
    output wire [31:0] out_memdep_3_atax_avm_address,
    output wire [0:0] out_memdep_3_atax_avm_burstcount,
    output wire [3:0] out_memdep_3_atax_avm_byteenable,
    output wire [0:0] out_memdep_3_atax_avm_enable,
    output wire [0:0] out_memdep_3_atax_avm_read,
    output wire [0:0] out_memdep_3_atax_avm_write,
    output wire [31:0] out_memdep_3_atax_avm_writedata,
    output wire [31:0] out_memdep_4_atax_avm_address,
    output wire [0:0] out_memdep_4_atax_avm_burstcount,
    output wire [3:0] out_memdep_4_atax_avm_byteenable,
    output wire [0:0] out_memdep_4_atax_avm_enable,
    output wire [0:0] out_memdep_4_atax_avm_read,
    output wire [0:0] out_memdep_4_atax_avm_write,
    output wire [31:0] out_memdep_4_atax_avm_writedata,
    output wire [31:0] out_memdep_5_atax_avm_address,
    output wire [0:0] out_memdep_5_atax_avm_burstcount,
    output wire [3:0] out_memdep_5_atax_avm_byteenable,
    output wire [0:0] out_memdep_5_atax_avm_enable,
    output wire [0:0] out_memdep_5_atax_avm_read,
    output wire [0:0] out_memdep_5_atax_avm_write,
    output wire [31:0] out_memdep_5_atax_avm_writedata,
    output wire [31:0] out_memdep_6_atax_avm_address,
    output wire [0:0] out_memdep_6_atax_avm_burstcount,
    output wire [3:0] out_memdep_6_atax_avm_byteenable,
    output wire [0:0] out_memdep_6_atax_avm_enable,
    output wire [0:0] out_memdep_6_atax_avm_read,
    output wire [0:0] out_memdep_6_atax_avm_write,
    output wire [31:0] out_memdep_6_atax_avm_writedata,
    output wire [63:0] out_memdep_7_atax_avm_address,
    output wire [0:0] out_memdep_7_atax_avm_burstcount,
    output wire [7:0] out_memdep_7_atax_avm_byteenable,
    output wire [0:0] out_memdep_7_atax_avm_enable,
    output wire [0:0] out_memdep_7_atax_avm_read,
    output wire [0:0] out_memdep_7_atax_avm_write,
    output wire [63:0] out_memdep_7_atax_avm_writedata,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_o_active_memdep_7,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_atax11_atax_avm_address,
    output wire [0:0] out_unnamed_atax11_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax11_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax11_atax_avm_enable,
    output wire [0:0] out_unnamed_atax11_atax_avm_read,
    output wire [0:0] out_unnamed_atax11_atax_avm_write,
    output wire [31:0] out_unnamed_atax11_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [31:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax14_atax_avm_address,
    output wire [0:0] out_unnamed_atax14_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax14_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax14_atax_avm_enable,
    output wire [0:0] out_unnamed_atax14_atax_avm_read,
    output wire [0:0] out_unnamed_atax14_atax_avm_write,
    output wire [31:0] out_unnamed_atax14_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax15_atax_avm_address,
    output wire [0:0] out_unnamed_atax15_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax15_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax15_atax_avm_enable,
    output wire [0:0] out_unnamed_atax15_atax_avm_read,
    output wire [0:0] out_unnamed_atax15_atax_avm_write,
    output wire [31:0] out_unnamed_atax15_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax16_atax_avm_address,
    output wire [0:0] out_unnamed_atax16_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax16_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax16_atax_avm_enable,
    output wire [0:0] out_unnamed_atax16_atax_avm_read,
    output wire [0:0] out_unnamed_atax16_atax_avm_write,
    output wire [31:0] out_unnamed_atax16_atax_avm_writedata,
    output wire [63:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [63:0] out_unnamed_atax7_atax_avm_writedata,
    output wire [63:0] out_unnamed_atax9_atax_avm_address,
    output wire [0:0] out_unnamed_atax9_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax9_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax9_atax_avm_enable,
    output wire [0:0] out_unnamed_atax9_atax_avm_read,
    output wire [0:0] out_unnamed_atax9_atax_avm_write,
    output wire [63:0] out_unnamed_atax9_atax_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] atax_B1_start_x_i_capture;
    wire atax_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_clear;
    wire atax_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_enable;
    wire atax_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_shift;
    wire atax_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_stall_pred;
    wire atax_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_stall_succ;
    wire atax_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_valid_loop;
    wire atax_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_valid_pred;
    wire atax_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_valid_succ;
    wire atax_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B12_x_i_capture;
    wire atax_B12_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B12_x_i_clear;
    wire atax_B12_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B12_x_i_enable;
    wire atax_B12_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B12_x_i_shift;
    wire atax_B12_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B12_x_i_stall_pred;
    wire atax_B12_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B12_x_i_stall_succ;
    wire atax_B12_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B12_x_i_valid_loop;
    wire atax_B12_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B12_x_i_valid_pred;
    wire atax_B12_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B12_x_i_valid_succ;
    wire atax_B12_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B3_x_i_capture;
    wire atax_B3_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B3_x_i_clear;
    wire atax_B3_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B3_x_i_enable;
    wire atax_B3_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B3_x_i_shift;
    wire atax_B3_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B3_x_i_stall_pred;
    wire atax_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B3_x_i_stall_succ;
    wire atax_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B3_x_i_valid_loop;
    wire atax_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B3_x_i_valid_pred;
    wire atax_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B3_x_i_valid_succ;
    wire atax_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B4_x_i_capture;
    wire atax_B4_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B4_x_i_clear;
    wire atax_B4_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B4_x_i_enable;
    wire atax_B4_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B4_x_i_shift;
    wire atax_B4_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B4_x_i_stall_pred;
    wire atax_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B4_x_i_stall_succ;
    wire atax_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B4_x_i_valid_loop;
    wire atax_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B4_x_i_valid_pred;
    wire atax_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B4_x_i_valid_succ;
    wire atax_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B6_x_i_capture;
    wire atax_B6_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B6_x_i_clear;
    wire atax_B6_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B6_x_i_enable;
    wire atax_B6_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B6_x_i_shift;
    wire atax_B6_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B6_x_i_stall_pred;
    wire atax_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B6_x_i_stall_succ;
    wire atax_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B6_x_i_valid_loop;
    wire atax_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B6_x_i_valid_pred;
    wire atax_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B6_x_i_valid_succ;
    wire atax_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B7_x_i_capture;
    wire atax_B7_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B7_x_i_clear;
    wire atax_B7_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B7_x_i_enable;
    wire atax_B7_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B7_x_i_shift;
    wire atax_B7_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B7_x_i_stall_pred;
    wire atax_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B7_x_i_stall_succ;
    wire atax_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B7_x_i_valid_loop;
    wire atax_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B7_x_i_valid_pred;
    wire atax_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B7_x_i_valid_succ;
    wire atax_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B9_x_i_capture;
    wire atax_B9_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B9_x_i_clear;
    wire atax_B9_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B9_x_i_enable;
    wire atax_B9_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B9_x_i_shift;
    wire atax_B9_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B9_x_i_stall_pred;
    wire atax_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B9_x_i_stall_succ;
    wire atax_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B9_x_i_valid_loop;
    wire atax_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B9_x_i_valid_pred;
    wire atax_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B9_x_i_valid_succ;
    wire atax_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_atax_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_atax_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_atax_B10_out_feedback_almost_empty_out_20;
    wire [0:0] bb_atax_B10_out_feedback_data_out_20;
    wire [0:0] bb_atax_B10_out_feedback_empty_out_20;
    wire [0:0] bb_atax_B10_out_stall_in_0;
    wire [0:0] bb_atax_B10_out_stall_out_0;
    wire [0:0] bb_atax_B10_out_valid_in_0;
    wire [0:0] bb_atax_B10_out_valid_out_0;
    wire [0:0] bb_atax_B11_out_stall_out_0;
    wire [0:0] bb_atax_B11_out_valid_out_0;
    wire [0:0] bb_atax_B12_out_lsu_memdep_7_o_active;
    wire [63:0] bb_atax_B12_out_memdep_7_atax_avm_address;
    wire [0:0] bb_atax_B12_out_memdep_7_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_out_memdep_7_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_out_memdep_7_atax_avm_enable;
    wire [0:0] bb_atax_B12_out_memdep_7_atax_avm_read;
    wire [0:0] bb_atax_B12_out_memdep_7_atax_avm_write;
    wire [63:0] bb_atax_B12_out_memdep_7_atax_avm_writedata;
    wire [0:0] bb_atax_B12_out_profile_loop_o_valid;
    wire [0:0] bb_atax_B12_out_stall_in_0;
    wire [0:0] bb_atax_B12_out_stall_out_0;
    wire [31:0] bb_atax_B12_out_unnamed_atax16_atax_avm_address;
    wire [0:0] bb_atax_B12_out_unnamed_atax16_atax_avm_burstcount;
    wire [3:0] bb_atax_B12_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] bb_atax_B12_out_unnamed_atax16_atax_avm_read;
    wire [0:0] bb_atax_B12_out_unnamed_atax16_atax_avm_write;
    wire [31:0] bb_atax_B12_out_unnamed_atax16_atax_avm_writedata;
    wire [0:0] bb_atax_B12_out_valid_in_0;
    wire [0:0] bb_atax_B12_out_valid_out_0;
    wire [0:0] bb_atax_B13_out_feedback_almost_empty_out_1;
    wire [0:0] bb_atax_B13_out_feedback_data_out_1;
    wire [0:0] bb_atax_B13_out_feedback_empty_out_1;
    wire [0:0] bb_atax_B13_out_iowr_bl_return_atax_o_fifodata;
    wire [0:0] bb_atax_B13_out_iowr_bl_return_atax_o_fifovalid;
    wire [0:0] bb_atax_B13_out_stall_in_0;
    wire [0:0] bb_atax_B13_out_stall_out_0;
    wire [0:0] bb_atax_B13_out_valid_in_0;
    wire [0:0] bb_atax_B13_out_valid_out_0;
    wire [0:0] bb_atax_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_atax_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_atax_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_atax_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] bb_atax_B1_start_out_stall_out_0;
    wire [0:0] bb_atax_B1_start_out_valid_in_0;
    wire [0:0] bb_atax_B1_start_out_valid_out_0;
    wire [0:0] bb_atax_B2_out_stall_out_0;
    wire [0:0] bb_atax_B2_out_valid_out_0;
    wire [63:0] bb_atax_B3_out_c0_exe199;
    wire [0:0] bb_atax_B3_out_c0_exe4;
    wire [31:0] bb_atax_B3_out_memdep_2_atax_avm_address;
    wire [0:0] bb_atax_B3_out_memdep_2_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_out_memdep_2_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_out_memdep_2_atax_avm_enable;
    wire [0:0] bb_atax_B3_out_memdep_2_atax_avm_read;
    wire [0:0] bb_atax_B3_out_memdep_2_atax_avm_write;
    wire [31:0] bb_atax_B3_out_memdep_2_atax_avm_writedata;
    wire [31:0] bb_atax_B3_out_memdep_3_atax_avm_address;
    wire [0:0] bb_atax_B3_out_memdep_3_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_out_memdep_3_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_out_memdep_3_atax_avm_enable;
    wire [0:0] bb_atax_B3_out_memdep_3_atax_avm_read;
    wire [0:0] bb_atax_B3_out_memdep_3_atax_avm_write;
    wire [31:0] bb_atax_B3_out_memdep_3_atax_avm_writedata;
    wire [31:0] bb_atax_B3_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B3_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B3_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B3_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B3_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B3_out_stall_out_0;
    wire [63:0] bb_atax_B3_out_unnamed_atax7_atax_avm_address;
    wire [0:0] bb_atax_B3_out_unnamed_atax7_atax_avm_burstcount;
    wire [7:0] bb_atax_B3_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] bb_atax_B3_out_unnamed_atax7_atax_avm_read;
    wire [0:0] bb_atax_B3_out_unnamed_atax7_atax_avm_write;
    wire [63:0] bb_atax_B3_out_unnamed_atax7_atax_avm_writedata;
    wire [0:0] bb_atax_B3_out_valid_in_0;
    wire [0:0] bb_atax_B3_out_valid_out_0;
    wire [0:0] bb_atax_B4_out_c0_exe5;
    wire [31:0] bb_atax_B4_out_memdep_4_atax_avm_address;
    wire [0:0] bb_atax_B4_out_memdep_4_atax_avm_burstcount;
    wire [3:0] bb_atax_B4_out_memdep_4_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_out_memdep_4_atax_avm_enable;
    wire [0:0] bb_atax_B4_out_memdep_4_atax_avm_read;
    wire [0:0] bb_atax_B4_out_memdep_4_atax_avm_write;
    wire [31:0] bb_atax_B4_out_memdep_4_atax_avm_writedata;
    wire [0:0] bb_atax_B4_out_profile_loop_o_valid;
    wire [0:0] bb_atax_B4_out_stall_in_0;
    wire [0:0] bb_atax_B4_out_stall_out_0;
    wire [63:0] bb_atax_B4_out_unnamed_atax9_atax_avm_address;
    wire [0:0] bb_atax_B4_out_unnamed_atax9_atax_avm_burstcount;
    wire [7:0] bb_atax_B4_out_unnamed_atax9_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_out_unnamed_atax9_atax_avm_enable;
    wire [0:0] bb_atax_B4_out_unnamed_atax9_atax_avm_read;
    wire [0:0] bb_atax_B4_out_unnamed_atax9_atax_avm_write;
    wire [63:0] bb_atax_B4_out_unnamed_atax9_atax_avm_writedata;
    wire [0:0] bb_atax_B4_out_valid_in_0;
    wire [0:0] bb_atax_B4_out_valid_out_0;
    wire [0:0] bb_atax_B5_out_stall_in_0;
    wire [0:0] bb_atax_B5_out_stall_out_0;
    wire [0:0] bb_atax_B5_out_valid_in_0;
    wire [0:0] bb_atax_B5_out_valid_out_0;
    wire [31:0] bb_atax_B6_out_arrayidx32_promoted1_atax_avm_address;
    wire [0:0] bb_atax_B6_out_arrayidx32_promoted1_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_out_arrayidx32_promoted1_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_out_arrayidx32_promoted1_atax_avm_enable;
    wire [0:0] bb_atax_B6_out_arrayidx32_promoted1_atax_avm_read;
    wire [0:0] bb_atax_B6_out_arrayidx32_promoted1_atax_avm_write;
    wire [31:0] bb_atax_B6_out_arrayidx32_promoted1_atax_avm_writedata;
    wire [63:0] bb_atax_B6_out_c0_exe1131;
    wire [63:0] bb_atax_B6_out_c0_exe2132;
    wire [31:0] bb_atax_B6_out_c0_exe3133;
    wire [0:0] bb_atax_B6_out_c0_exe4134;
    wire [0:0] bb_atax_B6_out_c0_exe5135;
    wire [0:0] bb_atax_B6_out_c0_exe6;
    wire [0:0] bb_atax_B6_out_stall_out_0;
    wire [0:0] bb_atax_B6_out_valid_in_0;
    wire [0:0] bb_atax_B6_out_valid_out_0;
    wire [63:0] bb_atax_B7_out_c0_exe1150;
    wire [31:0] bb_atax_B7_out_c0_exe2151;
    wire [0:0] bb_atax_B7_out_c0_exe5154;
    wire [63:0] bb_atax_B7_out_c0_exe6155;
    wire [0:0] bb_atax_B7_out_c0_exe7;
    wire [0:0] bb_atax_B7_out_c0_exe8;
    wire [0:0] bb_atax_B7_out_profile_loop_o_valid;
    wire [0:0] bb_atax_B7_out_stall_in_0;
    wire [0:0] bb_atax_B7_out_stall_out_0;
    wire [31:0] bb_atax_B7_out_unnamed_atax11_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax11_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_unnamed_atax11_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax11_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax11_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax11_atax_avm_write;
    wire [31:0] bb_atax_B7_out_unnamed_atax11_atax_avm_writedata;
    wire [31:0] bb_atax_B7_out_unnamed_atax12_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax12_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax12_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax12_atax_avm_write;
    wire [31:0] bb_atax_B7_out_unnamed_atax12_atax_avm_writedata;
    wire [0:0] bb_atax_B7_out_valid_in_0;
    wire [0:0] bb_atax_B7_out_valid_out_0;
    wire [63:0] bb_atax_B8_out_c0_exe11502;
    wire [31:0] bb_atax_B8_out_c0_exe21513;
    wire [0:0] bb_atax_B8_out_c0_exe76;
    wire [0:0] bb_atax_B8_out_c0_exe87;
    wire [0:0] bb_atax_B8_out_feedback_stall_out_20;
    wire [31:0] bb_atax_B8_out_memdep_5_atax_avm_address;
    wire [0:0] bb_atax_B8_out_memdep_5_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_out_memdep_5_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_out_memdep_5_atax_avm_enable;
    wire [0:0] bb_atax_B8_out_memdep_5_atax_avm_read;
    wire [0:0] bb_atax_B8_out_memdep_5_atax_avm_write;
    wire [31:0] bb_atax_B8_out_memdep_5_atax_avm_writedata;
    wire [0:0] bb_atax_B8_out_memdep_phi_pop20;
    wire [0:0] bb_atax_B8_out_stall_out_0;
    wire [0:0] bb_atax_B8_out_valid_out_0;
    wire [0:0] bb_atax_B9_out_c0_exe1181;
    wire [0:0] bb_atax_B9_out_c0_exe4184;
    wire [0:0] bb_atax_B9_out_c0_exe5185;
    wire [31:0] bb_atax_B9_out_memdep_6_atax_avm_address;
    wire [0:0] bb_atax_B9_out_memdep_6_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_out_memdep_6_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_memdep_6_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_memdep_6_atax_avm_read;
    wire [0:0] bb_atax_B9_out_memdep_6_atax_avm_write;
    wire [31:0] bb_atax_B9_out_memdep_6_atax_avm_writedata;
    wire [0:0] bb_atax_B9_out_profile_loop_o_valid;
    wire [0:0] bb_atax_B9_out_stall_in_0;
    wire [0:0] bb_atax_B9_out_stall_out_0;
    wire [31:0] bb_atax_B9_out_unnamed_atax14_atax_avm_address;
    wire [0:0] bb_atax_B9_out_unnamed_atax14_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_out_unnamed_atax14_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_unnamed_atax14_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_unnamed_atax14_atax_avm_read;
    wire [0:0] bb_atax_B9_out_unnamed_atax14_atax_avm_write;
    wire [31:0] bb_atax_B9_out_unnamed_atax14_atax_avm_writedata;
    wire [31:0] bb_atax_B9_out_unnamed_atax15_atax_avm_address;
    wire [0:0] bb_atax_B9_out_unnamed_atax15_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_out_unnamed_atax15_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_unnamed_atax15_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_unnamed_atax15_atax_avm_read;
    wire [0:0] bb_atax_B9_out_unnamed_atax15_atax_avm_write;
    wire [31:0] bb_atax_B9_out_unnamed_atax15_atax_avm_writedata;
    wire [0:0] bb_atax_B9_out_valid_in_0;
    wire [0:0] bb_atax_B9_out_valid_out_0;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_atax_B3(BLACKBOX,16)
    atax_bb_B3 thebb_atax_B3 (
        .in_flush(in_start),
        .in_intel_reserved_ffwd_1_0(bb_atax_B1_start_out_intel_reserved_ffwd_1_0),
        .in_memdep_2_atax_avm_readdata(in_memdep_2_atax_avm_readdata),
        .in_memdep_2_atax_avm_readdatavalid(in_memdep_2_atax_avm_readdatavalid),
        .in_memdep_2_atax_avm_waitrequest(in_memdep_2_atax_avm_waitrequest),
        .in_memdep_2_atax_avm_writeack(in_memdep_2_atax_avm_writeack),
        .in_memdep_3_atax_avm_readdata(in_memdep_3_atax_avm_readdata),
        .in_memdep_3_atax_avm_readdatavalid(in_memdep_3_atax_avm_readdatavalid),
        .in_memdep_3_atax_avm_waitrequest(in_memdep_3_atax_avm_waitrequest),
        .in_memdep_3_atax_avm_writeack(in_memdep_3_atax_avm_writeack),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_stall_in_0(bb_atax_B4_out_stall_out_0),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B1_start_out_valid_out_0),
        .out_c0_exe199(bb_atax_B3_out_c0_exe199),
        .out_c0_exe4(bb_atax_B3_out_c0_exe4),
        .out_memdep_2_atax_avm_address(bb_atax_B3_out_memdep_2_atax_avm_address),
        .out_memdep_2_atax_avm_burstcount(bb_atax_B3_out_memdep_2_atax_avm_burstcount),
        .out_memdep_2_atax_avm_byteenable(bb_atax_B3_out_memdep_2_atax_avm_byteenable),
        .out_memdep_2_atax_avm_enable(bb_atax_B3_out_memdep_2_atax_avm_enable),
        .out_memdep_2_atax_avm_read(bb_atax_B3_out_memdep_2_atax_avm_read),
        .out_memdep_2_atax_avm_write(bb_atax_B3_out_memdep_2_atax_avm_write),
        .out_memdep_2_atax_avm_writedata(bb_atax_B3_out_memdep_2_atax_avm_writedata),
        .out_memdep_3_atax_avm_address(bb_atax_B3_out_memdep_3_atax_avm_address),
        .out_memdep_3_atax_avm_burstcount(bb_atax_B3_out_memdep_3_atax_avm_burstcount),
        .out_memdep_3_atax_avm_byteenable(bb_atax_B3_out_memdep_3_atax_avm_byteenable),
        .out_memdep_3_atax_avm_enable(bb_atax_B3_out_memdep_3_atax_avm_enable),
        .out_memdep_3_atax_avm_read(bb_atax_B3_out_memdep_3_atax_avm_read),
        .out_memdep_3_atax_avm_write(bb_atax_B3_out_memdep_3_atax_avm_write),
        .out_memdep_3_atax_avm_writedata(bb_atax_B3_out_memdep_3_atax_avm_writedata),
        .out_memdep_atax_avm_address(bb_atax_B3_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B3_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B3_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B3_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B3_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B3_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B3_out_memdep_atax_avm_writedata),
        .out_stall_out_0(bb_atax_B3_out_stall_out_0),
        .out_unnamed_atax7_atax_avm_address(bb_atax_B3_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(bb_atax_B3_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(bb_atax_B3_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(bb_atax_B3_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(bb_atax_B3_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(bb_atax_B3_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(bb_atax_B3_out_unnamed_atax7_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B3_out_valid_in_0),
        .out_valid_out_0(bb_atax_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4(BLACKBOX,17)
    atax_bb_B4 thebb_atax_B4 (
        .in_flush(in_start),
        .in_idxprom73_0(bb_atax_B3_out_c0_exe199),
        .in_intel_reserved_ffwd_0_0(bb_atax_B1_start_out_intel_reserved_ffwd_0_0),
        .in_memdep_4_atax_avm_readdata(in_memdep_4_atax_avm_readdata),
        .in_memdep_4_atax_avm_readdatavalid(in_memdep_4_atax_avm_readdatavalid),
        .in_memdep_4_atax_avm_waitrequest(in_memdep_4_atax_avm_waitrequest),
        .in_memdep_4_atax_avm_writeack(in_memdep_4_atax_avm_writeack),
        .in_notcmp4674_0(bb_atax_B3_out_c0_exe4),
        .in_stall_in_0(bb_atax_B5_out_stall_out_0),
        .in_unnamed_atax9_atax_avm_readdata(in_unnamed_atax9_atax_avm_readdata),
        .in_unnamed_atax9_atax_avm_readdatavalid(in_unnamed_atax9_atax_avm_readdatavalid),
        .in_unnamed_atax9_atax_avm_waitrequest(in_unnamed_atax9_atax_avm_waitrequest),
        .in_unnamed_atax9_atax_avm_writeack(in_unnamed_atax9_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B3_out_valid_out_0),
        .out_c0_exe5(bb_atax_B4_out_c0_exe5),
        .out_memdep_4_atax_avm_address(bb_atax_B4_out_memdep_4_atax_avm_address),
        .out_memdep_4_atax_avm_burstcount(bb_atax_B4_out_memdep_4_atax_avm_burstcount),
        .out_memdep_4_atax_avm_byteenable(bb_atax_B4_out_memdep_4_atax_avm_byteenable),
        .out_memdep_4_atax_avm_enable(bb_atax_B4_out_memdep_4_atax_avm_enable),
        .out_memdep_4_atax_avm_read(bb_atax_B4_out_memdep_4_atax_avm_read),
        .out_memdep_4_atax_avm_write(bb_atax_B4_out_memdep_4_atax_avm_write),
        .out_memdep_4_atax_avm_writedata(bb_atax_B4_out_memdep_4_atax_avm_writedata),
        .out_profile_loop_o_valid(bb_atax_B4_out_profile_loop_o_valid),
        .out_stall_in_0(bb_atax_B4_out_stall_in_0),
        .out_stall_out_0(bb_atax_B4_out_stall_out_0),
        .out_unnamed_atax9_atax_avm_address(bb_atax_B4_out_unnamed_atax9_atax_avm_address),
        .out_unnamed_atax9_atax_avm_burstcount(bb_atax_B4_out_unnamed_atax9_atax_avm_burstcount),
        .out_unnamed_atax9_atax_avm_byteenable(bb_atax_B4_out_unnamed_atax9_atax_avm_byteenable),
        .out_unnamed_atax9_atax_avm_enable(bb_atax_B4_out_unnamed_atax9_atax_avm_enable),
        .out_unnamed_atax9_atax_avm_read(bb_atax_B4_out_unnamed_atax9_atax_avm_read),
        .out_unnamed_atax9_atax_avm_write(bb_atax_B4_out_unnamed_atax9_atax_avm_write),
        .out_unnamed_atax9_atax_avm_writedata(bb_atax_B4_out_unnamed_atax9_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B4_out_valid_in_0),
        .out_valid_out_0(bb_atax_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5(BLACKBOX,18)
    atax_bb_B5 thebb_atax_B5 (
        .in_c0_exe51_0(bb_atax_B4_out_c0_exe5),
        .in_stall_in_0(bb_atax_B2_out_stall_out_0),
        .in_valid_in_0(bb_atax_B4_out_valid_out_0),
        .out_stall_in_0(bb_atax_B5_out_stall_in_0),
        .out_stall_out_0(bb_atax_B5_out_stall_out_0),
        .out_valid_in_0(bb_atax_B5_out_valid_in_0),
        .out_valid_out_0(bb_atax_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B2(BLACKBOX,15)
    atax_bb_B2 thebb_atax_B2 (
        .in_stall_in_0(bb_atax_B6_out_stall_out_0),
        .in_valid_in_0(bb_atax_B5_out_valid_out_0),
        .out_stall_out_0(bb_atax_B2_out_stall_out_0),
        .out_valid_out_0(bb_atax_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6(BLACKBOX,19)
    atax_bb_B6 thebb_atax_B6 (
        .in_arrayidx32_promoted1_atax_avm_readdata(in_arrayidx32_promoted1_atax_avm_readdata),
        .in_arrayidx32_promoted1_atax_avm_readdatavalid(in_arrayidx32_promoted1_atax_avm_readdatavalid),
        .in_arrayidx32_promoted1_atax_avm_waitrequest(in_arrayidx32_promoted1_atax_avm_waitrequest),
        .in_arrayidx32_promoted1_atax_avm_writeack(in_arrayidx32_promoted1_atax_avm_writeack),
        .in_flush(in_start),
        .in_stall_in_0(bb_atax_B7_out_stall_out_0),
        .in_valid_in_0(bb_atax_B2_out_valid_out_0),
        .out_arrayidx32_promoted1_atax_avm_address(bb_atax_B6_out_arrayidx32_promoted1_atax_avm_address),
        .out_arrayidx32_promoted1_atax_avm_burstcount(bb_atax_B6_out_arrayidx32_promoted1_atax_avm_burstcount),
        .out_arrayidx32_promoted1_atax_avm_byteenable(bb_atax_B6_out_arrayidx32_promoted1_atax_avm_byteenable),
        .out_arrayidx32_promoted1_atax_avm_enable(bb_atax_B6_out_arrayidx32_promoted1_atax_avm_enable),
        .out_arrayidx32_promoted1_atax_avm_read(bb_atax_B6_out_arrayidx32_promoted1_atax_avm_read),
        .out_arrayidx32_promoted1_atax_avm_write(bb_atax_B6_out_arrayidx32_promoted1_atax_avm_write),
        .out_arrayidx32_promoted1_atax_avm_writedata(bb_atax_B6_out_arrayidx32_promoted1_atax_avm_writedata),
        .out_c0_exe1131(bb_atax_B6_out_c0_exe1131),
        .out_c0_exe2132(bb_atax_B6_out_c0_exe2132),
        .out_c0_exe3133(bb_atax_B6_out_c0_exe3133),
        .out_c0_exe4134(bb_atax_B6_out_c0_exe4134),
        .out_c0_exe5135(bb_atax_B6_out_c0_exe5135),
        .out_c0_exe6(bb_atax_B6_out_c0_exe6),
        .out_stall_out_0(bb_atax_B6_out_stall_out_0),
        .out_valid_in_0(bb_atax_B6_out_valid_in_0),
        .out_valid_out_0(bb_atax_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7(BLACKBOX,20)
    atax_bb_B7 thebb_atax_B7 (
        .in_arrayidx32578_0(bb_atax_B6_out_c0_exe2132),
        .in_arrayidx32_promoted179_0(bb_atax_B6_out_c0_exe3133),
        .in_exitcond1980_0(bb_atax_B6_out_c0_exe4134),
        .in_flush(in_start),
        .in_forked5576_0(bb_atax_B6_out_c0_exe6),
        .in_idxprom3177_0(bb_atax_B6_out_c0_exe1131),
        .in_notcmp3681_0(bb_atax_B6_out_c0_exe5135),
        .in_stall_in_0(bb_atax_B8_out_stall_out_0),
        .in_unnamed_atax11_atax_avm_readdata(in_unnamed_atax11_atax_avm_readdata),
        .in_unnamed_atax11_atax_avm_readdatavalid(in_unnamed_atax11_atax_avm_readdatavalid),
        .in_unnamed_atax11_atax_avm_waitrequest(in_unnamed_atax11_atax_avm_waitrequest),
        .in_unnamed_atax11_atax_avm_writeack(in_unnamed_atax11_atax_avm_writeack),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B6_out_valid_out_0),
        .out_c0_exe1150(bb_atax_B7_out_c0_exe1150),
        .out_c0_exe2151(bb_atax_B7_out_c0_exe2151),
        .out_c0_exe5154(bb_atax_B7_out_c0_exe5154),
        .out_c0_exe6155(bb_atax_B7_out_c0_exe6155),
        .out_c0_exe7(bb_atax_B7_out_c0_exe7),
        .out_c0_exe8(bb_atax_B7_out_c0_exe8),
        .out_profile_loop_o_valid(bb_atax_B7_out_profile_loop_o_valid),
        .out_stall_in_0(bb_atax_B7_out_stall_in_0),
        .out_stall_out_0(bb_atax_B7_out_stall_out_0),
        .out_unnamed_atax11_atax_avm_address(bb_atax_B7_out_unnamed_atax11_atax_avm_address),
        .out_unnamed_atax11_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax11_atax_avm_burstcount),
        .out_unnamed_atax11_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax11_atax_avm_byteenable),
        .out_unnamed_atax11_atax_avm_enable(bb_atax_B7_out_unnamed_atax11_atax_avm_enable),
        .out_unnamed_atax11_atax_avm_read(bb_atax_B7_out_unnamed_atax11_atax_avm_read),
        .out_unnamed_atax11_atax_avm_write(bb_atax_B7_out_unnamed_atax11_atax_avm_write),
        .out_unnamed_atax11_atax_avm_writedata(bb_atax_B7_out_unnamed_atax11_atax_avm_writedata),
        .out_unnamed_atax12_atax_avm_address(bb_atax_B7_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(bb_atax_B7_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(bb_atax_B7_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(bb_atax_B7_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(bb_atax_B7_out_unnamed_atax12_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B7_out_valid_in_0),
        .out_valid_out_0(bb_atax_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B8(BLACKBOX,21)
    atax_bb_B8 thebb_atax_B8 (
        .in_c0_exe11502_0(bb_atax_B7_out_c0_exe1150),
        .in_c0_exe21513_0(bb_atax_B7_out_c0_exe2151),
        .in_c0_exe51544_0(bb_atax_B7_out_c0_exe5154),
        .in_c0_exe61555_0(bb_atax_B7_out_c0_exe6155),
        .in_c0_exe76_0(bb_atax_B7_out_c0_exe7),
        .in_c0_exe87_0(bb_atax_B7_out_c0_exe8),
        .in_feedback_almost_empty_in_20(bb_atax_B10_out_feedback_almost_empty_out_20),
        .in_feedback_data_in_20(bb_atax_B10_out_feedback_data_out_20),
        .in_feedback_empty_in_20(bb_atax_B10_out_feedback_empty_out_20),
        .in_flush(in_start),
        .in_memdep_5_atax_avm_readdata(in_memdep_5_atax_avm_readdata),
        .in_memdep_5_atax_avm_readdatavalid(in_memdep_5_atax_avm_readdatavalid),
        .in_memdep_5_atax_avm_waitrequest(in_memdep_5_atax_avm_waitrequest),
        .in_memdep_5_atax_avm_writeack(in_memdep_5_atax_avm_writeack),
        .in_stall_in_0(bb_atax_B9_out_stall_out_0),
        .in_valid_in_0(bb_atax_B7_out_valid_out_0),
        .out_c0_exe11502(bb_atax_B8_out_c0_exe11502),
        .out_c0_exe21513(bb_atax_B8_out_c0_exe21513),
        .out_c0_exe76(bb_atax_B8_out_c0_exe76),
        .out_c0_exe87(bb_atax_B8_out_c0_exe87),
        .out_feedback_stall_out_20(bb_atax_B8_out_feedback_stall_out_20),
        .out_memdep_5_atax_avm_address(bb_atax_B8_out_memdep_5_atax_avm_address),
        .out_memdep_5_atax_avm_burstcount(bb_atax_B8_out_memdep_5_atax_avm_burstcount),
        .out_memdep_5_atax_avm_byteenable(bb_atax_B8_out_memdep_5_atax_avm_byteenable),
        .out_memdep_5_atax_avm_enable(bb_atax_B8_out_memdep_5_atax_avm_enable),
        .out_memdep_5_atax_avm_read(bb_atax_B8_out_memdep_5_atax_avm_read),
        .out_memdep_5_atax_avm_write(bb_atax_B8_out_memdep_5_atax_avm_write),
        .out_memdep_5_atax_avm_writedata(bb_atax_B8_out_memdep_5_atax_avm_writedata),
        .out_memdep_phi_pop20(bb_atax_B8_out_memdep_phi_pop20),
        .out_stall_out_0(bb_atax_B8_out_stall_out_0),
        .out_valid_out_0(bb_atax_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B9(BLACKBOX,22)
    atax_bb_B9 thebb_atax_B9 (
        .in_exitcond1965_pop3388_0(bb_atax_B8_out_c0_exe76),
        .in_flush(in_start),
        .in_idxprom3162_pop3182_0(bb_atax_B8_out_c0_exe11502),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .in_memdep_phi_pop2092_0(bb_atax_B8_out_memdep_phi_pop20),
        .in_mult_add85_0(bb_atax_B8_out_c0_exe21513),
        .in_notcmp3667_pop3490_0(bb_atax_B8_out_c0_exe87),
        .in_stall_in_0(bb_atax_B10_out_stall_out_0),
        .in_unnamed_atax14_atax_avm_readdata(in_unnamed_atax14_atax_avm_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(in_unnamed_atax14_atax_avm_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(in_unnamed_atax14_atax_avm_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(in_unnamed_atax14_atax_avm_writeack),
        .in_unnamed_atax15_atax_avm_readdata(in_unnamed_atax15_atax_avm_readdata),
        .in_unnamed_atax15_atax_avm_readdatavalid(in_unnamed_atax15_atax_avm_readdatavalid),
        .in_unnamed_atax15_atax_avm_waitrequest(in_unnamed_atax15_atax_avm_waitrequest),
        .in_unnamed_atax15_atax_avm_writeack(in_unnamed_atax15_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B8_out_valid_out_0),
        .out_c0_exe1181(bb_atax_B9_out_c0_exe1181),
        .out_c0_exe4184(bb_atax_B9_out_c0_exe4184),
        .out_c0_exe5185(bb_atax_B9_out_c0_exe5185),
        .out_memdep_6_atax_avm_address(bb_atax_B9_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(bb_atax_B9_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(bb_atax_B9_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(bb_atax_B9_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(bb_atax_B9_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(bb_atax_B9_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(bb_atax_B9_out_memdep_6_atax_avm_writedata),
        .out_profile_loop_o_valid(bb_atax_B9_out_profile_loop_o_valid),
        .out_stall_in_0(bb_atax_B9_out_stall_in_0),
        .out_stall_out_0(bb_atax_B9_out_stall_out_0),
        .out_unnamed_atax14_atax_avm_address(bb_atax_B9_out_unnamed_atax14_atax_avm_address),
        .out_unnamed_atax14_atax_avm_burstcount(bb_atax_B9_out_unnamed_atax14_atax_avm_burstcount),
        .out_unnamed_atax14_atax_avm_byteenable(bb_atax_B9_out_unnamed_atax14_atax_avm_byteenable),
        .out_unnamed_atax14_atax_avm_enable(bb_atax_B9_out_unnamed_atax14_atax_avm_enable),
        .out_unnamed_atax14_atax_avm_read(bb_atax_B9_out_unnamed_atax14_atax_avm_read),
        .out_unnamed_atax14_atax_avm_write(bb_atax_B9_out_unnamed_atax14_atax_avm_write),
        .out_unnamed_atax14_atax_avm_writedata(bb_atax_B9_out_unnamed_atax14_atax_avm_writedata),
        .out_unnamed_atax15_atax_avm_address(bb_atax_B9_out_unnamed_atax15_atax_avm_address),
        .out_unnamed_atax15_atax_avm_burstcount(bb_atax_B9_out_unnamed_atax15_atax_avm_burstcount),
        .out_unnamed_atax15_atax_avm_byteenable(bb_atax_B9_out_unnamed_atax15_atax_avm_byteenable),
        .out_unnamed_atax15_atax_avm_enable(bb_atax_B9_out_unnamed_atax15_atax_avm_enable),
        .out_unnamed_atax15_atax_avm_read(bb_atax_B9_out_unnamed_atax15_atax_avm_read),
        .out_unnamed_atax15_atax_avm_write(bb_atax_B9_out_unnamed_atax15_atax_avm_write),
        .out_unnamed_atax15_atax_avm_writedata(bb_atax_B9_out_unnamed_atax15_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B9_out_valid_in_0),
        .out_valid_out_0(bb_atax_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B10(BLACKBOX,10)
    atax_bb_B10 thebb_atax_B10 (
        .in_c0_exe11818_0(bb_atax_B9_out_c0_exe1181),
        .in_c0_exe41849_0(bb_atax_B9_out_c0_exe4184),
        .in_c0_exe518510_0(bb_atax_B9_out_c0_exe5185),
        .in_feedback_stall_in_20(bb_atax_B8_out_feedback_stall_out_20),
        .in_stall_in_0(bb_atax_B11_out_stall_out_0),
        .in_valid_in_0(bb_atax_B9_out_valid_out_0),
        .out_feedback_almost_empty_out_20(bb_atax_B10_out_feedback_almost_empty_out_20),
        .out_feedback_data_out_20(bb_atax_B10_out_feedback_data_out_20),
        .out_feedback_empty_out_20(bb_atax_B10_out_feedback_empty_out_20),
        .out_stall_in_0(bb_atax_B10_out_stall_in_0),
        .out_stall_out_0(bb_atax_B10_out_stall_out_0),
        .out_valid_in_0(bb_atax_B10_out_valid_in_0),
        .out_valid_out_0(bb_atax_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B11(BLACKBOX,11)
    atax_bb_B11 thebb_atax_B11 (
        .in_stall_in_0(bb_atax_B12_out_stall_out_0),
        .in_valid_in_0(bb_atax_B10_out_valid_out_0),
        .out_stall_out_0(bb_atax_B11_out_stall_out_0),
        .out_valid_out_0(bb_atax_B11_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B12(BLACKBOX,12)
    atax_bb_B12 thebb_atax_B12 (
        .in_flush(in_start),
        .in_intel_reserved_ffwd_2_0(bb_atax_B1_start_out_intel_reserved_ffwd_2_0),
        .in_memdep_7_atax_avm_readdata(in_memdep_7_atax_avm_readdata),
        .in_memdep_7_atax_avm_readdatavalid(in_memdep_7_atax_avm_readdatavalid),
        .in_memdep_7_atax_avm_waitrequest(in_memdep_7_atax_avm_waitrequest),
        .in_memdep_7_atax_avm_writeack(in_memdep_7_atax_avm_writeack),
        .in_stall_in_0(bb_atax_B13_out_stall_out_0),
        .in_unnamed_atax16_atax_avm_readdata(in_unnamed_atax16_atax_avm_readdata),
        .in_unnamed_atax16_atax_avm_readdatavalid(in_unnamed_atax16_atax_avm_readdatavalid),
        .in_unnamed_atax16_atax_avm_waitrequest(in_unnamed_atax16_atax_avm_waitrequest),
        .in_unnamed_atax16_atax_avm_writeack(in_unnamed_atax16_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B11_out_valid_out_0),
        .out_lsu_memdep_7_o_active(bb_atax_B12_out_lsu_memdep_7_o_active),
        .out_memdep_7_atax_avm_address(bb_atax_B12_out_memdep_7_atax_avm_address),
        .out_memdep_7_atax_avm_burstcount(bb_atax_B12_out_memdep_7_atax_avm_burstcount),
        .out_memdep_7_atax_avm_byteenable(bb_atax_B12_out_memdep_7_atax_avm_byteenable),
        .out_memdep_7_atax_avm_enable(bb_atax_B12_out_memdep_7_atax_avm_enable),
        .out_memdep_7_atax_avm_read(bb_atax_B12_out_memdep_7_atax_avm_read),
        .out_memdep_7_atax_avm_write(bb_atax_B12_out_memdep_7_atax_avm_write),
        .out_memdep_7_atax_avm_writedata(bb_atax_B12_out_memdep_7_atax_avm_writedata),
        .out_profile_loop_o_valid(bb_atax_B12_out_profile_loop_o_valid),
        .out_stall_in_0(bb_atax_B12_out_stall_in_0),
        .out_stall_out_0(bb_atax_B12_out_stall_out_0),
        .out_unnamed_atax16_atax_avm_address(bb_atax_B12_out_unnamed_atax16_atax_avm_address),
        .out_unnamed_atax16_atax_avm_burstcount(bb_atax_B12_out_unnamed_atax16_atax_avm_burstcount),
        .out_unnamed_atax16_atax_avm_byteenable(bb_atax_B12_out_unnamed_atax16_atax_avm_byteenable),
        .out_unnamed_atax16_atax_avm_enable(bb_atax_B12_out_unnamed_atax16_atax_avm_enable),
        .out_unnamed_atax16_atax_avm_read(bb_atax_B12_out_unnamed_atax16_atax_avm_read),
        .out_unnamed_atax16_atax_avm_write(bb_atax_B12_out_unnamed_atax16_atax_avm_write),
        .out_unnamed_atax16_atax_avm_writedata(bb_atax_B12_out_unnamed_atax16_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B12_out_valid_in_0),
        .out_valid_out_0(bb_atax_B12_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B13(BLACKBOX,13)
    atax_bb_B13 thebb_atax_B13 (
        .in_feedback_stall_in_1(bb_atax_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_atax_i_fifoready(in_iowr_bl_return_atax_i_fifoready),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_atax_B12_out_valid_out_0),
        .out_feedback_almost_empty_out_1(bb_atax_B13_out_feedback_almost_empty_out_1),
        .out_feedback_data_out_1(bb_atax_B13_out_feedback_data_out_1),
        .out_feedback_empty_out_1(bb_atax_B13_out_feedback_empty_out_1),
        .out_iowr_bl_return_atax_o_fifodata(bb_atax_B13_out_iowr_bl_return_atax_o_fifodata),
        .out_iowr_bl_return_atax_o_fifovalid(bb_atax_B13_out_iowr_bl_return_atax_o_fifovalid),
        .out_stall_in_0(bb_atax_B13_out_stall_in_0),
        .out_stall_out_0(bb_atax_B13_out_stall_out_0),
        .out_valid_in_0(bb_atax_B13_out_valid_in_0),
        .out_valid_out_0(bb_atax_B13_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B0_runOnce(BLACKBOX,9)
    atax_bb_B0_runOnce thebb_atax_B0_runOnce (
        .in_stall_in_0(bb_atax_B1_start_out_stall_out_0),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_atax_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_atax_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B1_start(BLACKBOX,14)
    atax_bb_B1_start thebb_atax_B1_start (
        .in_feedback_almost_empty_in_1(bb_atax_B13_out_feedback_almost_empty_out_1),
        .in_feedback_data_in_1(bb_atax_B13_out_feedback_data_out_1),
        .in_feedback_empty_in_1(bb_atax_B13_out_feedback_empty_out_1),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .in_stall_in_0(bb_atax_B3_out_stall_out_0),
        .in_valid_in_0(bb_atax_B0_runOnce_out_valid_out_0),
        .out_feedback_stall_out_1(bb_atax_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_atax_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_atax_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_atax_B1_start_out_intel_reserved_ffwd_2_0),
        .out_iord_bl_call_atax_o_fifoalmost_full(bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready),
        .out_stall_out_0(bb_atax_B1_start_out_stall_out_0),
        .out_valid_in_0(bb_atax_B1_start_out_valid_in_0),
        .out_valid_out_0(bb_atax_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // atax_B1_start_x(EXTIFACE,2)
    assign atax_B1_start_x_i_capture = GND_q;
    assign atax_B1_start_x_i_clear = GND_q;
    assign atax_B1_start_x_i_enable = VCC_q;
    assign atax_B1_start_x_i_shift = GND_q;
    assign atax_B1_start_x_i_stall_pred = bb_atax_B1_start_out_stall_out_0;
    assign atax_B1_start_x_i_stall_succ = bb_atax_B13_out_stall_in_0;
    assign atax_B1_start_x_i_valid_loop = bb_atax_B13_out_valid_in_0;
    assign atax_B1_start_x_i_valid_pred = bb_atax_B1_start_out_valid_in_0;
    assign atax_B1_start_x_i_valid_succ = bb_atax_B13_out_valid_out_0;
    assign atax_B1_start_x_i_capture_bitsignaltemp = atax_B1_start_x_i_capture[0];
    assign atax_B1_start_x_i_clear_bitsignaltemp = atax_B1_start_x_i_clear[0];
    assign atax_B1_start_x_i_enable_bitsignaltemp = atax_B1_start_x_i_enable[0];
    assign atax_B1_start_x_i_shift_bitsignaltemp = atax_B1_start_x_i_shift[0];
    assign atax_B1_start_x_i_stall_pred_bitsignaltemp = atax_B1_start_x_i_stall_pred[0];
    assign atax_B1_start_x_i_stall_succ_bitsignaltemp = atax_B1_start_x_i_stall_succ[0];
    assign atax_B1_start_x_i_valid_loop_bitsignaltemp = atax_B1_start_x_i_valid_loop[0];
    assign atax_B1_start_x_i_valid_pred_bitsignaltemp = atax_B1_start_x_i_valid_pred[0];
    assign atax_B1_start_x_i_valid_succ_bitsignaltemp = atax_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B1.start")
    ) theatax_B1_start_x (
        .i_capture(atax_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(atax_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(atax_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(atax_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // atax_B12_x(EXTIFACE,3)
    assign atax_B12_x_i_capture = GND_q;
    assign atax_B12_x_i_clear = GND_q;
    assign atax_B12_x_i_enable = VCC_q;
    assign atax_B12_x_i_shift = GND_q;
    assign atax_B12_x_i_stall_pred = bb_atax_B12_out_stall_out_0;
    assign atax_B12_x_i_stall_succ = bb_atax_B12_out_stall_in_0;
    assign atax_B12_x_i_valid_loop = bb_atax_B12_out_profile_loop_o_valid;
    assign atax_B12_x_i_valid_pred = bb_atax_B12_out_valid_in_0;
    assign atax_B12_x_i_valid_succ = bb_atax_B12_out_valid_out_0;
    assign atax_B12_x_i_capture_bitsignaltemp = atax_B12_x_i_capture[0];
    assign atax_B12_x_i_clear_bitsignaltemp = atax_B12_x_i_clear[0];
    assign atax_B12_x_i_enable_bitsignaltemp = atax_B12_x_i_enable[0];
    assign atax_B12_x_i_shift_bitsignaltemp = atax_B12_x_i_shift[0];
    assign atax_B12_x_i_stall_pred_bitsignaltemp = atax_B12_x_i_stall_pred[0];
    assign atax_B12_x_i_stall_succ_bitsignaltemp = atax_B12_x_i_stall_succ[0];
    assign atax_B12_x_i_valid_loop_bitsignaltemp = atax_B12_x_i_valid_loop[0];
    assign atax_B12_x_i_valid_pred_bitsignaltemp = atax_B12_x_i_valid_pred[0];
    assign atax_B12_x_i_valid_succ_bitsignaltemp = atax_B12_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B12")
    ) theatax_B12_x (
        .i_capture(atax_B12_x_i_capture_bitsignaltemp),
        .i_clear(atax_B12_x_i_clear_bitsignaltemp),
        .i_enable(atax_B12_x_i_enable_bitsignaltemp),
        .i_shift(atax_B12_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B12_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B12_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B12_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B12_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B12_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // atax_B3_x(EXTIFACE,4)
    assign atax_B3_x_i_capture = GND_q;
    assign atax_B3_x_i_clear = GND_q;
    assign atax_B3_x_i_enable = VCC_q;
    assign atax_B3_x_i_shift = GND_q;
    assign atax_B3_x_i_stall_pred = bb_atax_B3_out_stall_out_0;
    assign atax_B3_x_i_stall_succ = bb_atax_B5_out_stall_in_0;
    assign atax_B3_x_i_valid_loop = bb_atax_B5_out_valid_in_0;
    assign atax_B3_x_i_valid_pred = bb_atax_B3_out_valid_in_0;
    assign atax_B3_x_i_valid_succ = bb_atax_B5_out_valid_out_0;
    assign atax_B3_x_i_capture_bitsignaltemp = atax_B3_x_i_capture[0];
    assign atax_B3_x_i_clear_bitsignaltemp = atax_B3_x_i_clear[0];
    assign atax_B3_x_i_enable_bitsignaltemp = atax_B3_x_i_enable[0];
    assign atax_B3_x_i_shift_bitsignaltemp = atax_B3_x_i_shift[0];
    assign atax_B3_x_i_stall_pred_bitsignaltemp = atax_B3_x_i_stall_pred[0];
    assign atax_B3_x_i_stall_succ_bitsignaltemp = atax_B3_x_i_stall_succ[0];
    assign atax_B3_x_i_valid_loop_bitsignaltemp = atax_B3_x_i_valid_loop[0];
    assign atax_B3_x_i_valid_pred_bitsignaltemp = atax_B3_x_i_valid_pred[0];
    assign atax_B3_x_i_valid_succ_bitsignaltemp = atax_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B3")
    ) theatax_B3_x (
        .i_capture(atax_B3_x_i_capture_bitsignaltemp),
        .i_clear(atax_B3_x_i_clear_bitsignaltemp),
        .i_enable(atax_B3_x_i_enable_bitsignaltemp),
        .i_shift(atax_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // atax_B4_x(EXTIFACE,5)
    assign atax_B4_x_i_capture = GND_q;
    assign atax_B4_x_i_clear = GND_q;
    assign atax_B4_x_i_enable = VCC_q;
    assign atax_B4_x_i_shift = GND_q;
    assign atax_B4_x_i_stall_pred = bb_atax_B4_out_stall_out_0;
    assign atax_B4_x_i_stall_succ = bb_atax_B4_out_stall_in_0;
    assign atax_B4_x_i_valid_loop = bb_atax_B4_out_profile_loop_o_valid;
    assign atax_B4_x_i_valid_pred = bb_atax_B4_out_valid_in_0;
    assign atax_B4_x_i_valid_succ = bb_atax_B4_out_valid_out_0;
    assign atax_B4_x_i_capture_bitsignaltemp = atax_B4_x_i_capture[0];
    assign atax_B4_x_i_clear_bitsignaltemp = atax_B4_x_i_clear[0];
    assign atax_B4_x_i_enable_bitsignaltemp = atax_B4_x_i_enable[0];
    assign atax_B4_x_i_shift_bitsignaltemp = atax_B4_x_i_shift[0];
    assign atax_B4_x_i_stall_pred_bitsignaltemp = atax_B4_x_i_stall_pred[0];
    assign atax_B4_x_i_stall_succ_bitsignaltemp = atax_B4_x_i_stall_succ[0];
    assign atax_B4_x_i_valid_loop_bitsignaltemp = atax_B4_x_i_valid_loop[0];
    assign atax_B4_x_i_valid_pred_bitsignaltemp = atax_B4_x_i_valid_pred[0];
    assign atax_B4_x_i_valid_succ_bitsignaltemp = atax_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B4")
    ) theatax_B4_x (
        .i_capture(atax_B4_x_i_capture_bitsignaltemp),
        .i_clear(atax_B4_x_i_clear_bitsignaltemp),
        .i_enable(atax_B4_x_i_enable_bitsignaltemp),
        .i_shift(atax_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // atax_B6_x(EXTIFACE,6)
    assign atax_B6_x_i_capture = GND_q;
    assign atax_B6_x_i_clear = GND_q;
    assign atax_B6_x_i_enable = VCC_q;
    assign atax_B6_x_i_shift = GND_q;
    assign atax_B6_x_i_stall_pred = bb_atax_B6_out_stall_out_0;
    assign atax_B6_x_i_stall_succ = bb_atax_B10_out_stall_in_0;
    assign atax_B6_x_i_valid_loop = bb_atax_B10_out_valid_in_0;
    assign atax_B6_x_i_valid_pred = bb_atax_B6_out_valid_in_0;
    assign atax_B6_x_i_valid_succ = bb_atax_B10_out_valid_out_0;
    assign atax_B6_x_i_capture_bitsignaltemp = atax_B6_x_i_capture[0];
    assign atax_B6_x_i_clear_bitsignaltemp = atax_B6_x_i_clear[0];
    assign atax_B6_x_i_enable_bitsignaltemp = atax_B6_x_i_enable[0];
    assign atax_B6_x_i_shift_bitsignaltemp = atax_B6_x_i_shift[0];
    assign atax_B6_x_i_stall_pred_bitsignaltemp = atax_B6_x_i_stall_pred[0];
    assign atax_B6_x_i_stall_succ_bitsignaltemp = atax_B6_x_i_stall_succ[0];
    assign atax_B6_x_i_valid_loop_bitsignaltemp = atax_B6_x_i_valid_loop[0];
    assign atax_B6_x_i_valid_pred_bitsignaltemp = atax_B6_x_i_valid_pred[0];
    assign atax_B6_x_i_valid_succ_bitsignaltemp = atax_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B6")
    ) theatax_B6_x (
        .i_capture(atax_B6_x_i_capture_bitsignaltemp),
        .i_clear(atax_B6_x_i_clear_bitsignaltemp),
        .i_enable(atax_B6_x_i_enable_bitsignaltemp),
        .i_shift(atax_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // atax_B7_x(EXTIFACE,7)
    assign atax_B7_x_i_capture = GND_q;
    assign atax_B7_x_i_clear = GND_q;
    assign atax_B7_x_i_enable = VCC_q;
    assign atax_B7_x_i_shift = GND_q;
    assign atax_B7_x_i_stall_pred = bb_atax_B7_out_stall_out_0;
    assign atax_B7_x_i_stall_succ = bb_atax_B7_out_stall_in_0;
    assign atax_B7_x_i_valid_loop = bb_atax_B7_out_profile_loop_o_valid;
    assign atax_B7_x_i_valid_pred = bb_atax_B7_out_valid_in_0;
    assign atax_B7_x_i_valid_succ = bb_atax_B7_out_valid_out_0;
    assign atax_B7_x_i_capture_bitsignaltemp = atax_B7_x_i_capture[0];
    assign atax_B7_x_i_clear_bitsignaltemp = atax_B7_x_i_clear[0];
    assign atax_B7_x_i_enable_bitsignaltemp = atax_B7_x_i_enable[0];
    assign atax_B7_x_i_shift_bitsignaltemp = atax_B7_x_i_shift[0];
    assign atax_B7_x_i_stall_pred_bitsignaltemp = atax_B7_x_i_stall_pred[0];
    assign atax_B7_x_i_stall_succ_bitsignaltemp = atax_B7_x_i_stall_succ[0];
    assign atax_B7_x_i_valid_loop_bitsignaltemp = atax_B7_x_i_valid_loop[0];
    assign atax_B7_x_i_valid_pred_bitsignaltemp = atax_B7_x_i_valid_pred[0];
    assign atax_B7_x_i_valid_succ_bitsignaltemp = atax_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B7")
    ) theatax_B7_x (
        .i_capture(atax_B7_x_i_capture_bitsignaltemp),
        .i_clear(atax_B7_x_i_clear_bitsignaltemp),
        .i_enable(atax_B7_x_i_enable_bitsignaltemp),
        .i_shift(atax_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // atax_B9_x(EXTIFACE,8)
    assign atax_B9_x_i_capture = GND_q;
    assign atax_B9_x_i_clear = GND_q;
    assign atax_B9_x_i_enable = VCC_q;
    assign atax_B9_x_i_shift = GND_q;
    assign atax_B9_x_i_stall_pred = bb_atax_B9_out_stall_out_0;
    assign atax_B9_x_i_stall_succ = bb_atax_B9_out_stall_in_0;
    assign atax_B9_x_i_valid_loop = bb_atax_B9_out_profile_loop_o_valid;
    assign atax_B9_x_i_valid_pred = bb_atax_B9_out_valid_in_0;
    assign atax_B9_x_i_valid_succ = bb_atax_B9_out_valid_out_0;
    assign atax_B9_x_i_capture_bitsignaltemp = atax_B9_x_i_capture[0];
    assign atax_B9_x_i_clear_bitsignaltemp = atax_B9_x_i_clear[0];
    assign atax_B9_x_i_enable_bitsignaltemp = atax_B9_x_i_enable[0];
    assign atax_B9_x_i_shift_bitsignaltemp = atax_B9_x_i_shift[0];
    assign atax_B9_x_i_stall_pred_bitsignaltemp = atax_B9_x_i_stall_pred[0];
    assign atax_B9_x_i_stall_succ_bitsignaltemp = atax_B9_x_i_stall_succ[0];
    assign atax_B9_x_i_valid_loop_bitsignaltemp = atax_B9_x_i_valid_loop[0];
    assign atax_B9_x_i_valid_pred_bitsignaltemp = atax_B9_x_i_valid_pred[0];
    assign atax_B9_x_i_valid_succ_bitsignaltemp = atax_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B9")
    ) theatax_B9_x (
        .i_capture(atax_B9_x_i_capture_bitsignaltemp),
        .i_clear(atax_B9_x_i_clear_bitsignaltemp),
        .i_enable(atax_B9_x_i_enable_bitsignaltemp),
        .i_shift(atax_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_arrayidx32_promoted1_atax_avm_address(GPOUT,108)
    assign out_arrayidx32_promoted1_atax_avm_address = bb_atax_B6_out_arrayidx32_promoted1_atax_avm_address;

    // out_arrayidx32_promoted1_atax_avm_burstcount(GPOUT,109)
    assign out_arrayidx32_promoted1_atax_avm_burstcount = bb_atax_B6_out_arrayidx32_promoted1_atax_avm_burstcount;

    // out_arrayidx32_promoted1_atax_avm_byteenable(GPOUT,110)
    assign out_arrayidx32_promoted1_atax_avm_byteenable = bb_atax_B6_out_arrayidx32_promoted1_atax_avm_byteenable;

    // out_arrayidx32_promoted1_atax_avm_enable(GPOUT,111)
    assign out_arrayidx32_promoted1_atax_avm_enable = bb_atax_B6_out_arrayidx32_promoted1_atax_avm_enable;

    // out_arrayidx32_promoted1_atax_avm_read(GPOUT,112)
    assign out_arrayidx32_promoted1_atax_avm_read = bb_atax_B6_out_arrayidx32_promoted1_atax_avm_read;

    // out_arrayidx32_promoted1_atax_avm_write(GPOUT,113)
    assign out_arrayidx32_promoted1_atax_avm_write = bb_atax_B6_out_arrayidx32_promoted1_atax_avm_write;

    // out_arrayidx32_promoted1_atax_avm_writedata(GPOUT,114)
    assign out_arrayidx32_promoted1_atax_avm_writedata = bb_atax_B6_out_arrayidx32_promoted1_atax_avm_writedata;

    // out_iord_bl_call_atax_o_fifoalmost_full(GPOUT,115)
    assign out_iord_bl_call_atax_o_fifoalmost_full = bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full;

    // out_iord_bl_call_atax_o_fifoready(GPOUT,116)
    assign out_iord_bl_call_atax_o_fifoready = bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready;

    // out_iowr_bl_return_atax_o_fifodata(GPOUT,117)
    assign out_iowr_bl_return_atax_o_fifodata = bb_atax_B13_out_iowr_bl_return_atax_o_fifodata;

    // out_iowr_bl_return_atax_o_fifovalid(GPOUT,118)
    assign out_iowr_bl_return_atax_o_fifovalid = bb_atax_B13_out_iowr_bl_return_atax_o_fifovalid;

    // out_memdep_2_atax_avm_address(GPOUT,119)
    assign out_memdep_2_atax_avm_address = bb_atax_B3_out_memdep_2_atax_avm_address;

    // out_memdep_2_atax_avm_burstcount(GPOUT,120)
    assign out_memdep_2_atax_avm_burstcount = bb_atax_B3_out_memdep_2_atax_avm_burstcount;

    // out_memdep_2_atax_avm_byteenable(GPOUT,121)
    assign out_memdep_2_atax_avm_byteenable = bb_atax_B3_out_memdep_2_atax_avm_byteenable;

    // out_memdep_2_atax_avm_enable(GPOUT,122)
    assign out_memdep_2_atax_avm_enable = bb_atax_B3_out_memdep_2_atax_avm_enable;

    // out_memdep_2_atax_avm_read(GPOUT,123)
    assign out_memdep_2_atax_avm_read = bb_atax_B3_out_memdep_2_atax_avm_read;

    // out_memdep_2_atax_avm_write(GPOUT,124)
    assign out_memdep_2_atax_avm_write = bb_atax_B3_out_memdep_2_atax_avm_write;

    // out_memdep_2_atax_avm_writedata(GPOUT,125)
    assign out_memdep_2_atax_avm_writedata = bb_atax_B3_out_memdep_2_atax_avm_writedata;

    // out_memdep_3_atax_avm_address(GPOUT,126)
    assign out_memdep_3_atax_avm_address = bb_atax_B3_out_memdep_3_atax_avm_address;

    // out_memdep_3_atax_avm_burstcount(GPOUT,127)
    assign out_memdep_3_atax_avm_burstcount = bb_atax_B3_out_memdep_3_atax_avm_burstcount;

    // out_memdep_3_atax_avm_byteenable(GPOUT,128)
    assign out_memdep_3_atax_avm_byteenable = bb_atax_B3_out_memdep_3_atax_avm_byteenable;

    // out_memdep_3_atax_avm_enable(GPOUT,129)
    assign out_memdep_3_atax_avm_enable = bb_atax_B3_out_memdep_3_atax_avm_enable;

    // out_memdep_3_atax_avm_read(GPOUT,130)
    assign out_memdep_3_atax_avm_read = bb_atax_B3_out_memdep_3_atax_avm_read;

    // out_memdep_3_atax_avm_write(GPOUT,131)
    assign out_memdep_3_atax_avm_write = bb_atax_B3_out_memdep_3_atax_avm_write;

    // out_memdep_3_atax_avm_writedata(GPOUT,132)
    assign out_memdep_3_atax_avm_writedata = bb_atax_B3_out_memdep_3_atax_avm_writedata;

    // out_memdep_4_atax_avm_address(GPOUT,133)
    assign out_memdep_4_atax_avm_address = bb_atax_B4_out_memdep_4_atax_avm_address;

    // out_memdep_4_atax_avm_burstcount(GPOUT,134)
    assign out_memdep_4_atax_avm_burstcount = bb_atax_B4_out_memdep_4_atax_avm_burstcount;

    // out_memdep_4_atax_avm_byteenable(GPOUT,135)
    assign out_memdep_4_atax_avm_byteenable = bb_atax_B4_out_memdep_4_atax_avm_byteenable;

    // out_memdep_4_atax_avm_enable(GPOUT,136)
    assign out_memdep_4_atax_avm_enable = bb_atax_B4_out_memdep_4_atax_avm_enable;

    // out_memdep_4_atax_avm_read(GPOUT,137)
    assign out_memdep_4_atax_avm_read = bb_atax_B4_out_memdep_4_atax_avm_read;

    // out_memdep_4_atax_avm_write(GPOUT,138)
    assign out_memdep_4_atax_avm_write = bb_atax_B4_out_memdep_4_atax_avm_write;

    // out_memdep_4_atax_avm_writedata(GPOUT,139)
    assign out_memdep_4_atax_avm_writedata = bb_atax_B4_out_memdep_4_atax_avm_writedata;

    // out_memdep_5_atax_avm_address(GPOUT,140)
    assign out_memdep_5_atax_avm_address = bb_atax_B8_out_memdep_5_atax_avm_address;

    // out_memdep_5_atax_avm_burstcount(GPOUT,141)
    assign out_memdep_5_atax_avm_burstcount = bb_atax_B8_out_memdep_5_atax_avm_burstcount;

    // out_memdep_5_atax_avm_byteenable(GPOUT,142)
    assign out_memdep_5_atax_avm_byteenable = bb_atax_B8_out_memdep_5_atax_avm_byteenable;

    // out_memdep_5_atax_avm_enable(GPOUT,143)
    assign out_memdep_5_atax_avm_enable = bb_atax_B8_out_memdep_5_atax_avm_enable;

    // out_memdep_5_atax_avm_read(GPOUT,144)
    assign out_memdep_5_atax_avm_read = bb_atax_B8_out_memdep_5_atax_avm_read;

    // out_memdep_5_atax_avm_write(GPOUT,145)
    assign out_memdep_5_atax_avm_write = bb_atax_B8_out_memdep_5_atax_avm_write;

    // out_memdep_5_atax_avm_writedata(GPOUT,146)
    assign out_memdep_5_atax_avm_writedata = bb_atax_B8_out_memdep_5_atax_avm_writedata;

    // out_memdep_6_atax_avm_address(GPOUT,147)
    assign out_memdep_6_atax_avm_address = bb_atax_B9_out_memdep_6_atax_avm_address;

    // out_memdep_6_atax_avm_burstcount(GPOUT,148)
    assign out_memdep_6_atax_avm_burstcount = bb_atax_B9_out_memdep_6_atax_avm_burstcount;

    // out_memdep_6_atax_avm_byteenable(GPOUT,149)
    assign out_memdep_6_atax_avm_byteenable = bb_atax_B9_out_memdep_6_atax_avm_byteenable;

    // out_memdep_6_atax_avm_enable(GPOUT,150)
    assign out_memdep_6_atax_avm_enable = bb_atax_B9_out_memdep_6_atax_avm_enable;

    // out_memdep_6_atax_avm_read(GPOUT,151)
    assign out_memdep_6_atax_avm_read = bb_atax_B9_out_memdep_6_atax_avm_read;

    // out_memdep_6_atax_avm_write(GPOUT,152)
    assign out_memdep_6_atax_avm_write = bb_atax_B9_out_memdep_6_atax_avm_write;

    // out_memdep_6_atax_avm_writedata(GPOUT,153)
    assign out_memdep_6_atax_avm_writedata = bb_atax_B9_out_memdep_6_atax_avm_writedata;

    // out_memdep_7_atax_avm_address(GPOUT,154)
    assign out_memdep_7_atax_avm_address = bb_atax_B12_out_memdep_7_atax_avm_address;

    // out_memdep_7_atax_avm_burstcount(GPOUT,155)
    assign out_memdep_7_atax_avm_burstcount = bb_atax_B12_out_memdep_7_atax_avm_burstcount;

    // out_memdep_7_atax_avm_byteenable(GPOUT,156)
    assign out_memdep_7_atax_avm_byteenable = bb_atax_B12_out_memdep_7_atax_avm_byteenable;

    // out_memdep_7_atax_avm_enable(GPOUT,157)
    assign out_memdep_7_atax_avm_enable = bb_atax_B12_out_memdep_7_atax_avm_enable;

    // out_memdep_7_atax_avm_read(GPOUT,158)
    assign out_memdep_7_atax_avm_read = bb_atax_B12_out_memdep_7_atax_avm_read;

    // out_memdep_7_atax_avm_write(GPOUT,159)
    assign out_memdep_7_atax_avm_write = bb_atax_B12_out_memdep_7_atax_avm_write;

    // out_memdep_7_atax_avm_writedata(GPOUT,160)
    assign out_memdep_7_atax_avm_writedata = bb_atax_B12_out_memdep_7_atax_avm_writedata;

    // out_memdep_atax_avm_address(GPOUT,161)
    assign out_memdep_atax_avm_address = bb_atax_B3_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,162)
    assign out_memdep_atax_avm_burstcount = bb_atax_B3_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,163)
    assign out_memdep_atax_avm_byteenable = bb_atax_B3_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,164)
    assign out_memdep_atax_avm_enable = bb_atax_B3_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,165)
    assign out_memdep_atax_avm_read = bb_atax_B3_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,166)
    assign out_memdep_atax_avm_write = bb_atax_B3_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,167)
    assign out_memdep_atax_avm_writedata = bb_atax_B3_out_memdep_atax_avm_writedata;

    // out_o_active_memdep_7(GPOUT,168)
    assign out_o_active_memdep_7 = bb_atax_B12_out_lsu_memdep_7_o_active;

    // out_stall_out(GPOUT,169)
    assign out_stall_out = bb_atax_B0_runOnce_out_stall_out_0;

    // out_unnamed_atax11_atax_avm_address(GPOUT,170)
    assign out_unnamed_atax11_atax_avm_address = bb_atax_B7_out_unnamed_atax11_atax_avm_address;

    // out_unnamed_atax11_atax_avm_burstcount(GPOUT,171)
    assign out_unnamed_atax11_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax11_atax_avm_burstcount;

    // out_unnamed_atax11_atax_avm_byteenable(GPOUT,172)
    assign out_unnamed_atax11_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax11_atax_avm_byteenable;

    // out_unnamed_atax11_atax_avm_enable(GPOUT,173)
    assign out_unnamed_atax11_atax_avm_enable = bb_atax_B7_out_unnamed_atax11_atax_avm_enable;

    // out_unnamed_atax11_atax_avm_read(GPOUT,174)
    assign out_unnamed_atax11_atax_avm_read = bb_atax_B7_out_unnamed_atax11_atax_avm_read;

    // out_unnamed_atax11_atax_avm_write(GPOUT,175)
    assign out_unnamed_atax11_atax_avm_write = bb_atax_B7_out_unnamed_atax11_atax_avm_write;

    // out_unnamed_atax11_atax_avm_writedata(GPOUT,176)
    assign out_unnamed_atax11_atax_avm_writedata = bb_atax_B7_out_unnamed_atax11_atax_avm_writedata;

    // out_unnamed_atax12_atax_avm_address(GPOUT,177)
    assign out_unnamed_atax12_atax_avm_address = bb_atax_B7_out_unnamed_atax12_atax_avm_address;

    // out_unnamed_atax12_atax_avm_burstcount(GPOUT,178)
    assign out_unnamed_atax12_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax12_atax_avm_burstcount;

    // out_unnamed_atax12_atax_avm_byteenable(GPOUT,179)
    assign out_unnamed_atax12_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax12_atax_avm_byteenable;

    // out_unnamed_atax12_atax_avm_enable(GPOUT,180)
    assign out_unnamed_atax12_atax_avm_enable = bb_atax_B7_out_unnamed_atax12_atax_avm_enable;

    // out_unnamed_atax12_atax_avm_read(GPOUT,181)
    assign out_unnamed_atax12_atax_avm_read = bb_atax_B7_out_unnamed_atax12_atax_avm_read;

    // out_unnamed_atax12_atax_avm_write(GPOUT,182)
    assign out_unnamed_atax12_atax_avm_write = bb_atax_B7_out_unnamed_atax12_atax_avm_write;

    // out_unnamed_atax12_atax_avm_writedata(GPOUT,183)
    assign out_unnamed_atax12_atax_avm_writedata = bb_atax_B7_out_unnamed_atax12_atax_avm_writedata;

    // out_unnamed_atax14_atax_avm_address(GPOUT,184)
    assign out_unnamed_atax14_atax_avm_address = bb_atax_B9_out_unnamed_atax14_atax_avm_address;

    // out_unnamed_atax14_atax_avm_burstcount(GPOUT,185)
    assign out_unnamed_atax14_atax_avm_burstcount = bb_atax_B9_out_unnamed_atax14_atax_avm_burstcount;

    // out_unnamed_atax14_atax_avm_byteenable(GPOUT,186)
    assign out_unnamed_atax14_atax_avm_byteenable = bb_atax_B9_out_unnamed_atax14_atax_avm_byteenable;

    // out_unnamed_atax14_atax_avm_enable(GPOUT,187)
    assign out_unnamed_atax14_atax_avm_enable = bb_atax_B9_out_unnamed_atax14_atax_avm_enable;

    // out_unnamed_atax14_atax_avm_read(GPOUT,188)
    assign out_unnamed_atax14_atax_avm_read = bb_atax_B9_out_unnamed_atax14_atax_avm_read;

    // out_unnamed_atax14_atax_avm_write(GPOUT,189)
    assign out_unnamed_atax14_atax_avm_write = bb_atax_B9_out_unnamed_atax14_atax_avm_write;

    // out_unnamed_atax14_atax_avm_writedata(GPOUT,190)
    assign out_unnamed_atax14_atax_avm_writedata = bb_atax_B9_out_unnamed_atax14_atax_avm_writedata;

    // out_unnamed_atax15_atax_avm_address(GPOUT,191)
    assign out_unnamed_atax15_atax_avm_address = bb_atax_B9_out_unnamed_atax15_atax_avm_address;

    // out_unnamed_atax15_atax_avm_burstcount(GPOUT,192)
    assign out_unnamed_atax15_atax_avm_burstcount = bb_atax_B9_out_unnamed_atax15_atax_avm_burstcount;

    // out_unnamed_atax15_atax_avm_byteenable(GPOUT,193)
    assign out_unnamed_atax15_atax_avm_byteenable = bb_atax_B9_out_unnamed_atax15_atax_avm_byteenable;

    // out_unnamed_atax15_atax_avm_enable(GPOUT,194)
    assign out_unnamed_atax15_atax_avm_enable = bb_atax_B9_out_unnamed_atax15_atax_avm_enable;

    // out_unnamed_atax15_atax_avm_read(GPOUT,195)
    assign out_unnamed_atax15_atax_avm_read = bb_atax_B9_out_unnamed_atax15_atax_avm_read;

    // out_unnamed_atax15_atax_avm_write(GPOUT,196)
    assign out_unnamed_atax15_atax_avm_write = bb_atax_B9_out_unnamed_atax15_atax_avm_write;

    // out_unnamed_atax15_atax_avm_writedata(GPOUT,197)
    assign out_unnamed_atax15_atax_avm_writedata = bb_atax_B9_out_unnamed_atax15_atax_avm_writedata;

    // out_unnamed_atax16_atax_avm_address(GPOUT,198)
    assign out_unnamed_atax16_atax_avm_address = bb_atax_B12_out_unnamed_atax16_atax_avm_address;

    // out_unnamed_atax16_atax_avm_burstcount(GPOUT,199)
    assign out_unnamed_atax16_atax_avm_burstcount = bb_atax_B12_out_unnamed_atax16_atax_avm_burstcount;

    // out_unnamed_atax16_atax_avm_byteenable(GPOUT,200)
    assign out_unnamed_atax16_atax_avm_byteenable = bb_atax_B12_out_unnamed_atax16_atax_avm_byteenable;

    // out_unnamed_atax16_atax_avm_enable(GPOUT,201)
    assign out_unnamed_atax16_atax_avm_enable = bb_atax_B12_out_unnamed_atax16_atax_avm_enable;

    // out_unnamed_atax16_atax_avm_read(GPOUT,202)
    assign out_unnamed_atax16_atax_avm_read = bb_atax_B12_out_unnamed_atax16_atax_avm_read;

    // out_unnamed_atax16_atax_avm_write(GPOUT,203)
    assign out_unnamed_atax16_atax_avm_write = bb_atax_B12_out_unnamed_atax16_atax_avm_write;

    // out_unnamed_atax16_atax_avm_writedata(GPOUT,204)
    assign out_unnamed_atax16_atax_avm_writedata = bb_atax_B12_out_unnamed_atax16_atax_avm_writedata;

    // out_unnamed_atax7_atax_avm_address(GPOUT,205)
    assign out_unnamed_atax7_atax_avm_address = bb_atax_B3_out_unnamed_atax7_atax_avm_address;

    // out_unnamed_atax7_atax_avm_burstcount(GPOUT,206)
    assign out_unnamed_atax7_atax_avm_burstcount = bb_atax_B3_out_unnamed_atax7_atax_avm_burstcount;

    // out_unnamed_atax7_atax_avm_byteenable(GPOUT,207)
    assign out_unnamed_atax7_atax_avm_byteenable = bb_atax_B3_out_unnamed_atax7_atax_avm_byteenable;

    // out_unnamed_atax7_atax_avm_enable(GPOUT,208)
    assign out_unnamed_atax7_atax_avm_enable = bb_atax_B3_out_unnamed_atax7_atax_avm_enable;

    // out_unnamed_atax7_atax_avm_read(GPOUT,209)
    assign out_unnamed_atax7_atax_avm_read = bb_atax_B3_out_unnamed_atax7_atax_avm_read;

    // out_unnamed_atax7_atax_avm_write(GPOUT,210)
    assign out_unnamed_atax7_atax_avm_write = bb_atax_B3_out_unnamed_atax7_atax_avm_write;

    // out_unnamed_atax7_atax_avm_writedata(GPOUT,211)
    assign out_unnamed_atax7_atax_avm_writedata = bb_atax_B3_out_unnamed_atax7_atax_avm_writedata;

    // out_unnamed_atax9_atax_avm_address(GPOUT,212)
    assign out_unnamed_atax9_atax_avm_address = bb_atax_B4_out_unnamed_atax9_atax_avm_address;

    // out_unnamed_atax9_atax_avm_burstcount(GPOUT,213)
    assign out_unnamed_atax9_atax_avm_burstcount = bb_atax_B4_out_unnamed_atax9_atax_avm_burstcount;

    // out_unnamed_atax9_atax_avm_byteenable(GPOUT,214)
    assign out_unnamed_atax9_atax_avm_byteenable = bb_atax_B4_out_unnamed_atax9_atax_avm_byteenable;

    // out_unnamed_atax9_atax_avm_enable(GPOUT,215)
    assign out_unnamed_atax9_atax_avm_enable = bb_atax_B4_out_unnamed_atax9_atax_avm_enable;

    // out_unnamed_atax9_atax_avm_read(GPOUT,216)
    assign out_unnamed_atax9_atax_avm_read = bb_atax_B4_out_unnamed_atax9_atax_avm_read;

    // out_unnamed_atax9_atax_avm_write(GPOUT,217)
    assign out_unnamed_atax9_atax_avm_write = bb_atax_B4_out_unnamed_atax9_atax_avm_write;

    // out_unnamed_atax9_atax_avm_writedata(GPOUT,218)
    assign out_unnamed_atax9_atax_avm_writedata = bb_atax_B4_out_unnamed_atax9_atax_avm_writedata;

    // out_valid_out(GPOUT,219)
    assign out_valid_out = bb_atax_B13_out_valid_out_0;

    // rst_sync(RESETSYNC,220)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
