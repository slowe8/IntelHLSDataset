// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 23.4 (Release Build #31.1)
// 
// Legal Notice: Copyright 2022 Intel Corporation.  All rights reserved.
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
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_x,
    input wire [63:0] in_arg_y_out,
    input wire [31:0] in_arrayidx28_promoted1_atax_avm_readdata,
    input wire [0:0] in_arrayidx28_promoted1_atax_avm_readdatavalid,
    input wire [0:0] in_arrayidx28_promoted1_atax_avm_waitrequest,
    input wire [0:0] in_arrayidx28_promoted1_atax_avm_writeack,
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
    input wire [63:0] in_unnamed_atax10_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax10_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax10_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax10_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax18_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax18_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax18_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax18_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax19_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax19_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax19_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax19_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax22_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax22_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax22_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax22_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax23_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax23_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax23_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax23_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax25_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax25_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax25_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax25_atax_avm_writeack,
    input wire [63:0] in_unnamed_atax6_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax6_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax6_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax6_atax_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_arrayidx28_promoted1_atax_avm_address,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_burstcount,
    output wire [3:0] out_arrayidx28_promoted1_atax_avm_byteenable,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_enable,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_read,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_write,
    output wire [31:0] out_arrayidx28_promoted1_atax_avm_writedata,
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
    output wire [63:0] out_unnamed_atax10_atax_avm_address,
    output wire [0:0] out_unnamed_atax10_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax10_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax10_atax_avm_enable,
    output wire [0:0] out_unnamed_atax10_atax_avm_read,
    output wire [0:0] out_unnamed_atax10_atax_avm_write,
    output wire [63:0] out_unnamed_atax10_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax18_atax_avm_address,
    output wire [0:0] out_unnamed_atax18_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax18_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax18_atax_avm_enable,
    output wire [0:0] out_unnamed_atax18_atax_avm_read,
    output wire [0:0] out_unnamed_atax18_atax_avm_write,
    output wire [31:0] out_unnamed_atax18_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax19_atax_avm_address,
    output wire [0:0] out_unnamed_atax19_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax19_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax19_atax_avm_enable,
    output wire [0:0] out_unnamed_atax19_atax_avm_read,
    output wire [0:0] out_unnamed_atax19_atax_avm_write,
    output wire [31:0] out_unnamed_atax19_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax22_atax_avm_address,
    output wire [0:0] out_unnamed_atax22_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax22_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax22_atax_avm_enable,
    output wire [0:0] out_unnamed_atax22_atax_avm_read,
    output wire [0:0] out_unnamed_atax22_atax_avm_write,
    output wire [31:0] out_unnamed_atax22_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax23_atax_avm_address,
    output wire [0:0] out_unnamed_atax23_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax23_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax23_atax_avm_enable,
    output wire [0:0] out_unnamed_atax23_atax_avm_read,
    output wire [0:0] out_unnamed_atax23_atax_avm_write,
    output wire [31:0] out_unnamed_atax23_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax25_atax_avm_address,
    output wire [0:0] out_unnamed_atax25_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax25_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax25_atax_avm_enable,
    output wire [0:0] out_unnamed_atax25_atax_avm_read,
    output wire [0:0] out_unnamed_atax25_atax_avm_write,
    output wire [31:0] out_unnamed_atax25_atax_avm_writedata,
    output wire [63:0] out_unnamed_atax6_atax_avm_address,
    output wire [0:0] out_unnamed_atax6_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax6_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax6_atax_avm_enable,
    output wire [0:0] out_unnamed_atax6_atax_avm_read,
    output wire [0:0] out_unnamed_atax6_atax_avm_write,
    output wire [63:0] out_unnamed_atax6_atax_avm_writedata,
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
    wire [31:0] bb_atax_B10_out_intel_reserved_ffwd_13_0;
    wire [0:0] bb_atax_B10_out_stall_in_0;
    wire [0:0] bb_atax_B10_out_stall_out_0;
    wire [0:0] bb_atax_B10_out_valid_out_0;
    wire [0:0] bb_atax_B10_out_valid_out_1;
    wire [0:0] bb_atax_B11_out_stall_out_0;
    wire [0:0] bb_atax_B11_out_valid_out_0;
    wire [0:0] bb_atax_B12_out_exiting_stall_out;
    wire [0:0] bb_atax_B12_out_exiting_valid_out;
    wire [0:0] bb_atax_B12_out_lsu_memdep_7_o_active;
    wire [63:0] bb_atax_B12_out_memdep_7_atax_avm_address;
    wire [0:0] bb_atax_B12_out_memdep_7_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_out_memdep_7_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_out_memdep_7_atax_avm_enable;
    wire [0:0] bb_atax_B12_out_memdep_7_atax_avm_read;
    wire [0:0] bb_atax_B12_out_memdep_7_atax_avm_write;
    wire [63:0] bb_atax_B12_out_memdep_7_atax_avm_writedata;
    wire [0:0] bb_atax_B12_out_pipeline_valid_out;
    wire [0:0] bb_atax_B12_out_stall_in_0;
    wire [0:0] bb_atax_B12_out_stall_out_0;
    wire [0:0] bb_atax_B12_out_stall_out_1;
    wire [31:0] bb_atax_B12_out_unnamed_atax25_atax_avm_address;
    wire [0:0] bb_atax_B12_out_unnamed_atax25_atax_avm_burstcount;
    wire [3:0] bb_atax_B12_out_unnamed_atax25_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_out_unnamed_atax25_atax_avm_enable;
    wire [0:0] bb_atax_B12_out_unnamed_atax25_atax_avm_read;
    wire [0:0] bb_atax_B12_out_unnamed_atax25_atax_avm_write;
    wire [31:0] bb_atax_B12_out_unnamed_atax25_atax_avm_writedata;
    wire [0:0] bb_atax_B12_out_valid_in_0;
    wire [0:0] bb_atax_B12_out_valid_in_1;
    wire [0:0] bb_atax_B12_out_valid_out_0;
    wire [0:0] bb_atax_B13_out_feedback_out_1;
    wire [0:0] bb_atax_B13_out_feedback_valid_out_1;
    wire [0:0] bb_atax_B13_out_iowr_bl_return_atax_o_fifodata;
    wire [0:0] bb_atax_B13_out_iowr_bl_return_atax_o_fifovalid;
    wire [0:0] bb_atax_B13_out_stall_in_0;
    wire [0:0] bb_atax_B13_out_stall_out_0;
    wire [0:0] bb_atax_B13_out_valid_out_0;
    wire [0:0] bb_atax_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_atax_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_atax_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_atax_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] bb_atax_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_atax_B1_start_out_stall_out_0;
    wire [0:0] bb_atax_B1_start_out_valid_in_0;
    wire [0:0] bb_atax_B1_start_out_valid_in_1;
    wire [0:0] bb_atax_B1_start_out_valid_out_0;
    wire [0:0] bb_atax_B2_out_stall_out_0;
    wire [0:0] bb_atax_B2_out_valid_out_0;
    wire [31:0] bb_atax_B3_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_atax_B3_out_intel_reserved_ffwd_4_0;
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
    wire [0:0] bb_atax_B3_out_stall_out_1;
    wire [63:0] bb_atax_B3_out_unnamed_atax6_atax_avm_address;
    wire [0:0] bb_atax_B3_out_unnamed_atax6_atax_avm_burstcount;
    wire [7:0] bb_atax_B3_out_unnamed_atax6_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_out_unnamed_atax6_atax_avm_enable;
    wire [0:0] bb_atax_B3_out_unnamed_atax6_atax_avm_read;
    wire [0:0] bb_atax_B3_out_unnamed_atax6_atax_avm_write;
    wire [63:0] bb_atax_B3_out_unnamed_atax6_atax_avm_writedata;
    wire [0:0] bb_atax_B3_out_valid_in_0;
    wire [0:0] bb_atax_B3_out_valid_in_1;
    wire [0:0] bb_atax_B3_out_valid_out_0;
    wire [0:0] bb_atax_B4_out_exiting_stall_out;
    wire [0:0] bb_atax_B4_out_exiting_valid_out;
    wire [31:0] bb_atax_B4_out_memdep_4_atax_avm_address;
    wire [0:0] bb_atax_B4_out_memdep_4_atax_avm_burstcount;
    wire [3:0] bb_atax_B4_out_memdep_4_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_out_memdep_4_atax_avm_enable;
    wire [0:0] bb_atax_B4_out_memdep_4_atax_avm_read;
    wire [0:0] bb_atax_B4_out_memdep_4_atax_avm_write;
    wire [31:0] bb_atax_B4_out_memdep_4_atax_avm_writedata;
    wire [0:0] bb_atax_B4_out_pipeline_valid_out;
    wire [0:0] bb_atax_B4_out_stall_in_0;
    wire [0:0] bb_atax_B4_out_stall_out_0;
    wire [0:0] bb_atax_B4_out_stall_out_1;
    wire [63:0] bb_atax_B4_out_unnamed_atax10_atax_avm_address;
    wire [0:0] bb_atax_B4_out_unnamed_atax10_atax_avm_burstcount;
    wire [7:0] bb_atax_B4_out_unnamed_atax10_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_out_unnamed_atax10_atax_avm_enable;
    wire [0:0] bb_atax_B4_out_unnamed_atax10_atax_avm_read;
    wire [0:0] bb_atax_B4_out_unnamed_atax10_atax_avm_write;
    wire [63:0] bb_atax_B4_out_unnamed_atax10_atax_avm_writedata;
    wire [0:0] bb_atax_B4_out_valid_in_0;
    wire [0:0] bb_atax_B4_out_valid_in_1;
    wire [0:0] bb_atax_B4_out_valid_out_0;
    wire [31:0] bb_atax_B5_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_atax_B5_out_stall_in_0;
    wire [0:0] bb_atax_B5_out_stall_out_0;
    wire [0:0] bb_atax_B5_out_valid_out_0;
    wire [0:0] bb_atax_B5_out_valid_out_1;
    wire [31:0] bb_atax_B6_out_arrayidx28_promoted1_atax_avm_address;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted1_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_out_arrayidx28_promoted1_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted1_atax_avm_enable;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted1_atax_avm_read;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted1_atax_avm_write;
    wire [31:0] bb_atax_B6_out_arrayidx28_promoted1_atax_avm_writedata;
    wire [31:0] bb_atax_B6_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_atax_B6_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_atax_B6_out_intel_reserved_ffwd_7_0;
    wire [63:0] bb_atax_B6_out_intel_reserved_ffwd_8_0;
    wire [63:0] bb_atax_B6_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_atax_B6_out_stall_out_0;
    wire [0:0] bb_atax_B6_out_stall_out_1;
    wire [0:0] bb_atax_B6_out_valid_in_0;
    wire [0:0] bb_atax_B6_out_valid_in_1;
    wire [0:0] bb_atax_B6_out_valid_out_0;
    wire [31:0] bb_atax_B7_out_c0_exe188;
    wire [31:0] bb_atax_B7_out_inc38;
    wire [31:0] bb_atax_B7_out_intel_reserved_ffwd_11_0;
    wire [0:0] bb_atax_B7_out_stall_in_0;
    wire [0:0] bb_atax_B7_out_stall_out_0;
    wire [0:0] bb_atax_B7_out_stall_out_1;
    wire [31:0] bb_atax_B7_out_unnamed_atax18_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax18_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_unnamed_atax18_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax18_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax18_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax18_atax_avm_write;
    wire [31:0] bb_atax_B7_out_unnamed_atax18_atax_avm_writedata;
    wire [31:0] bb_atax_B7_out_unnamed_atax19_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax19_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_unnamed_atax19_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax19_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax19_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax19_atax_avm_write;
    wire [31:0] bb_atax_B7_out_unnamed_atax19_atax_avm_writedata;
    wire [0:0] bb_atax_B7_out_valid_in_0;
    wire [0:0] bb_atax_B7_out_valid_in_1;
    wire [0:0] bb_atax_B7_out_valid_out_0;
    wire [0:0] bb_atax_B7_out_valid_out_1;
    wire [31:0] bb_atax_B8_out_intel_reserved_ffwd_12_0;
    wire [31:0] bb_atax_B8_out_memdep_5_atax_avm_address;
    wire [0:0] bb_atax_B8_out_memdep_5_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_out_memdep_5_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_out_memdep_5_atax_avm_enable;
    wire [0:0] bb_atax_B8_out_memdep_5_atax_avm_read;
    wire [0:0] bb_atax_B8_out_memdep_5_atax_avm_write;
    wire [31:0] bb_atax_B8_out_memdep_5_atax_avm_writedata;
    wire [0:0] bb_atax_B8_out_stall_out_0;
    wire [0:0] bb_atax_B8_out_valid_out_0;
    wire [0:0] bb_atax_B9_out_exiting_stall_out;
    wire [0:0] bb_atax_B9_out_exiting_valid_out;
    wire [31:0] bb_atax_B9_out_memdep_6_atax_avm_address;
    wire [0:0] bb_atax_B9_out_memdep_6_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_out_memdep_6_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_memdep_6_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_memdep_6_atax_avm_read;
    wire [0:0] bb_atax_B9_out_memdep_6_atax_avm_write;
    wire [31:0] bb_atax_B9_out_memdep_6_atax_avm_writedata;
    wire [0:0] bb_atax_B9_out_pipeline_valid_out;
    wire [0:0] bb_atax_B9_out_stall_in_0;
    wire [0:0] bb_atax_B9_out_stall_out_0;
    wire [0:0] bb_atax_B9_out_stall_out_1;
    wire [31:0] bb_atax_B9_out_unnamed_atax22_atax_avm_address;
    wire [0:0] bb_atax_B9_out_unnamed_atax22_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_out_unnamed_atax22_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_unnamed_atax22_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_unnamed_atax22_atax_avm_read;
    wire [0:0] bb_atax_B9_out_unnamed_atax22_atax_avm_write;
    wire [31:0] bb_atax_B9_out_unnamed_atax22_atax_avm_writedata;
    wire [31:0] bb_atax_B9_out_unnamed_atax23_atax_avm_address;
    wire [0:0] bb_atax_B9_out_unnamed_atax23_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_out_unnamed_atax23_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_unnamed_atax23_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_unnamed_atax23_atax_avm_read;
    wire [0:0] bb_atax_B9_out_unnamed_atax23_atax_avm_write;
    wire [31:0] bb_atax_B9_out_unnamed_atax23_atax_avm_writedata;
    wire [0:0] bb_atax_B9_out_valid_in_0;
    wire [0:0] bb_atax_B9_out_valid_in_1;
    wire [0:0] bb_atax_B9_out_valid_out_0;
    wire [31:0] c_float_undef19_q;
    wire [1:0] c_i2_037_q;
    wire [31:0] c_i32_022_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going67_atax1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going67_atax1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going67_atax1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going67_atax1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_atax0_out_o_stall;
    wire [0:0] loop_limiter_atax0_out_o_valid;
    wire [0:0] loop_limiter_atax1_out_o_stall;
    wire [0:0] loop_limiter_atax1_out_o_valid;
    wire [0:0] loop_limiter_atax2_out_o_stall;
    wire [0:0] loop_limiter_atax2_out_o_valid;
    wire [0:0] loop_limiter_atax3_out_o_stall;
    wire [0:0] loop_limiter_atax3_out_o_valid;
    wire [0:0] loop_limiter_atax4_out_o_stall;
    wire [0:0] loop_limiter_atax4_out_o_valid;
    wire [0:0] loop_limiter_atax5_out_o_stall;
    wire [0:0] loop_limiter_atax5_out_o_valid;
    wire [0:0] bb_atax_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B10_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_atax_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_atax_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B7_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B8_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B9_sr_1_aunroll_x_out_o_data_0_tpl;


    // c_i2_037(CONSTANT,65)
    assign c_i2_037_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going67_atax1_valid_fifo(BLACKBOX,76)
    atax_i_llvm_fpga_pipeline_keep_going67_1_valid_fifo thei_llvm_fpga_pipeline_keep_going67_atax1_valid_fifo (
        .in_data_in(c_i2_037_q),
        .in_stall_in(bb_atax_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going67_atax1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going67_atax1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going67_atax1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going54_atax6_valid_fifo(BLACKBOX,74)
    atax_i_llvm_fpga_pipeline_keep_going54_6_valid_fifo thei_llvm_fpga_pipeline_keep_going54_atax6_valid_fifo (
        .in_data_in(c_i2_037_q),
        .in_stall_in(bb_atax_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going54_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going54_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going54_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going54_atax6_sr(BLACKBOX,73)
    atax_i_llvm_fpga_pipeline_keep_going54_6_sr thei_llvm_fpga_pipeline_keep_going54_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going54_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going54_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going54_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax3(BLACKBOX,153)
    atax_loop_limiter_3 theloop_limiter_atax3 (
        .in_i_stall(bb_atax_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B4_out_exiting_stall_out),
        .in_i_valid(bb_atax_B3_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax3_out_o_stall),
        .out_o_valid(loop_limiter_atax3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4_sr_1_aunroll_x(BLACKBOX,275)
    atax_bb_B4_sr_1 thebb_atax_B4_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_atax3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_atax_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4(BLACKBOX,17)
    atax_bb_B4 thebb_atax_B4 (
        .in_flush(in_start),
        .in_forked51_0(GND_q),
        .in_forked51_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_atax_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_4_0(bb_atax_B3_out_intel_reserved_ffwd_4_0),
        .in_memdep_4_atax_avm_readdata(in_memdep_4_atax_avm_readdata),
        .in_memdep_4_atax_avm_readdatavalid(in_memdep_4_atax_avm_readdatavalid),
        .in_memdep_4_atax_avm_waitrequest(in_memdep_4_atax_avm_waitrequest),
        .in_memdep_4_atax_avm_writeack(in_memdep_4_atax_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going54_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax10_atax_avm_readdata(in_unnamed_atax10_atax_avm_readdata),
        .in_unnamed_atax10_atax_avm_readdatavalid(in_unnamed_atax10_atax_avm_readdatavalid),
        .in_unnamed_atax10_atax_avm_waitrequest(in_unnamed_atax10_atax_avm_waitrequest),
        .in_unnamed_atax10_atax_avm_writeack(in_unnamed_atax10_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going54_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B4_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_atax_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B4_out_exiting_valid_out),
        .out_memdep_4_atax_avm_address(bb_atax_B4_out_memdep_4_atax_avm_address),
        .out_memdep_4_atax_avm_burstcount(bb_atax_B4_out_memdep_4_atax_avm_burstcount),
        .out_memdep_4_atax_avm_byteenable(bb_atax_B4_out_memdep_4_atax_avm_byteenable),
        .out_memdep_4_atax_avm_enable(bb_atax_B4_out_memdep_4_atax_avm_enable),
        .out_memdep_4_atax_avm_read(bb_atax_B4_out_memdep_4_atax_avm_read),
        .out_memdep_4_atax_avm_write(bb_atax_B4_out_memdep_4_atax_avm_write),
        .out_memdep_4_atax_avm_writedata(bb_atax_B4_out_memdep_4_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B4_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B4_out_stall_in_0),
        .out_stall_out_0(bb_atax_B4_out_stall_out_0),
        .out_stall_out_1(bb_atax_B4_out_stall_out_1),
        .out_unnamed_atax10_atax_avm_address(bb_atax_B4_out_unnamed_atax10_atax_avm_address),
        .out_unnamed_atax10_atax_avm_burstcount(bb_atax_B4_out_unnamed_atax10_atax_avm_burstcount),
        .out_unnamed_atax10_atax_avm_byteenable(bb_atax_B4_out_unnamed_atax10_atax_avm_byteenable),
        .out_unnamed_atax10_atax_avm_enable(bb_atax_B4_out_unnamed_atax10_atax_avm_enable),
        .out_unnamed_atax10_atax_avm_read(bb_atax_B4_out_unnamed_atax10_atax_avm_read),
        .out_unnamed_atax10_atax_avm_write(bb_atax_B4_out_unnamed_atax10_atax_avm_write),
        .out_unnamed_atax10_atax_avm_writedata(bb_atax_B4_out_unnamed_atax10_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B4_out_valid_in_0),
        .out_valid_in_1(bb_atax_B4_out_valid_in_1),
        .out_valid_out_0(bb_atax_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5_sr_0_aunroll_x(BLACKBOX,276)
    atax_bb_B5_sr_0 thebb_atax_B5_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B5_out_stall_out_0),
        .in_i_valid(bb_atax_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3_sr_0_aunroll_x(BLACKBOX,273)
    atax_bb_B3_sr_0 thebb_atax_B3_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B3_out_stall_out_0),
        .in_i_valid(bb_atax_B5_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3(BLACKBOX,16)
    atax_bb_B3 thebb_atax_B3 (
        .in_flush(in_start),
        .in_forked_0(bb_atax_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_forked_1(bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_1_0(bb_atax_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_5_0(bb_atax_B5_out_intel_reserved_ffwd_5_0),
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
        .in_stall_in_0(loop_limiter_atax3_out_o_stall),
        .in_unnamed_atax6_atax_avm_readdata(in_unnamed_atax6_atax_avm_readdata),
        .in_unnamed_atax6_atax_avm_readdatavalid(in_unnamed_atax6_atax_avm_readdatavalid),
        .in_unnamed_atax6_atax_avm_waitrequest(in_unnamed_atax6_atax_avm_waitrequest),
        .in_unnamed_atax6_atax_avm_writeack(in_unnamed_atax6_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B3_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_atax_B3_sr_1_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_3_0(bb_atax_B3_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_atax_B3_out_intel_reserved_ffwd_4_0),
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
        .out_stall_out_1(bb_atax_B3_out_stall_out_1),
        .out_unnamed_atax6_atax_avm_address(bb_atax_B3_out_unnamed_atax6_atax_avm_address),
        .out_unnamed_atax6_atax_avm_burstcount(bb_atax_B3_out_unnamed_atax6_atax_avm_burstcount),
        .out_unnamed_atax6_atax_avm_byteenable(bb_atax_B3_out_unnamed_atax6_atax_avm_byteenable),
        .out_unnamed_atax6_atax_avm_enable(bb_atax_B3_out_unnamed_atax6_atax_avm_enable),
        .out_unnamed_atax6_atax_avm_read(bb_atax_B3_out_unnamed_atax6_atax_avm_read),
        .out_unnamed_atax6_atax_avm_write(bb_atax_B3_out_unnamed_atax6_atax_avm_write),
        .out_unnamed_atax6_atax_avm_writedata(bb_atax_B3_out_unnamed_atax6_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B3_out_valid_in_0),
        .out_valid_in_1(bb_atax_B3_out_valid_in_1),
        .out_valid_out_0(bb_atax_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5(BLACKBOX,18)
    atax_bb_B5 thebb_atax_B5 (
        .in_intel_reserved_ffwd_3_0(bb_atax_B3_out_intel_reserved_ffwd_3_0),
        .in_stall_in_0(bb_atax_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_atax_B2_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_atax_B5_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_5_0(bb_atax_B5_out_intel_reserved_ffwd_5_0),
        .out_stall_in_0(bb_atax_B5_out_stall_in_0),
        .out_stall_out_0(bb_atax_B5_out_stall_out_0),
        .out_valid_out_0(bb_atax_B5_out_valid_out_0),
        .out_valid_out_1(bb_atax_B5_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going38_atax6_valid_fifo(BLACKBOX,72)
    atax_i_llvm_fpga_pipeline_keep_going38_6_valid_fifo thei_llvm_fpga_pipeline_keep_going38_atax6_valid_fifo (
        .in_data_in(c_i2_037_q),
        .in_stall_in(bb_atax_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going38_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going38_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going38_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going38_atax6_sr(BLACKBOX,71)
    atax_i_llvm_fpga_pipeline_keep_going38_6_sr thei_llvm_fpga_pipeline_keep_going38_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going38_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going38_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going38_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax5(BLACKBOX,155)
    atax_loop_limiter_5 theloop_limiter_atax5 (
        .in_i_stall(bb_atax_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B9_out_exiting_stall_out),
        .in_i_valid(bb_atax_B8_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax5_out_o_stall),
        .out_o_valid(loop_limiter_atax5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B8(BLACKBOX,21)
    atax_bb_B8 thebb_atax_B8 (
        .in_flush(in_start),
        .in_intel_reserved_ffwd_11_0(bb_atax_B7_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_6_0(bb_atax_B6_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_9_0(bb_atax_B6_out_intel_reserved_ffwd_9_0),
        .in_memdep_5_atax_avm_readdata(in_memdep_5_atax_avm_readdata),
        .in_memdep_5_atax_avm_readdatavalid(in_memdep_5_atax_avm_readdatavalid),
        .in_memdep_5_atax_avm_waitrequest(in_memdep_5_atax_avm_waitrequest),
        .in_memdep_5_atax_avm_writeack(in_memdep_5_atax_avm_writeack),
        .in_stall_in_0(loop_limiter_atax5_out_o_stall),
        .in_valid_in_0(bb_atax_B8_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_12_0(bb_atax_B8_out_intel_reserved_ffwd_12_0),
        .out_memdep_5_atax_avm_address(bb_atax_B8_out_memdep_5_atax_avm_address),
        .out_memdep_5_atax_avm_burstcount(bb_atax_B8_out_memdep_5_atax_avm_burstcount),
        .out_memdep_5_atax_avm_byteenable(bb_atax_B8_out_memdep_5_atax_avm_byteenable),
        .out_memdep_5_atax_avm_enable(bb_atax_B8_out_memdep_5_atax_avm_enable),
        .out_memdep_5_atax_avm_read(bb_atax_B8_out_memdep_5_atax_avm_read),
        .out_memdep_5_atax_avm_write(bb_atax_B8_out_memdep_5_atax_avm_write),
        .out_memdep_5_atax_avm_writedata(bb_atax_B8_out_memdep_5_atax_avm_writedata),
        .out_stall_out_0(bb_atax_B8_out_stall_out_0),
        .out_valid_out_0(bb_atax_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B8_sr_0_aunroll_x(BLACKBOX,281)
    atax_bb_B8_sr_0 thebb_atax_B8_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B8_out_stall_out_0),
        .in_i_valid(bb_atax_B7_out_valid_out_1),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_022(CONSTANT,69)
    assign c_i32_022_q = $unsigned(32'b00000000000000000000000000000000);

    // c_float_undef19(FLOATCONSTANT,23)
    assign c_float_undef19_q = $unsigned(32'b00000000000000000000000000000000);

    // loop_limiter_atax4(BLACKBOX,154)
    atax_loop_limiter_4 theloop_limiter_atax4 (
        .in_i_stall(bb_atax_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B8_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_atax_B6_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B7_out_valid_out_1),
        .out_o_stall(loop_limiter_atax4_out_o_stall),
        .out_o_valid(loop_limiter_atax4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_sr_1_aunroll_x(BLACKBOX,280)
    atax_bb_B7_sr_1 thebb_atax_B7_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_atax4_out_o_valid),
        .in_i_data_0_tpl(c_float_undef19_q),
        .in_i_data_1_tpl(c_i32_022_q),
        .in_i_data_2_tpl(VCC_q),
        .out_o_stall(bb_atax_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_sr_0_aunroll_x(BLACKBOX,279)
    atax_bb_B7_sr_0 thebb_atax_B7_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B7_out_stall_out_0),
        .in_i_valid(bb_atax_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B7_out_c0_exe188),
        .in_i_data_1_tpl(bb_atax_B7_out_inc38),
        .in_i_data_2_tpl(GND_q),
        .out_o_stall(bb_atax_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7(BLACKBOX,20)
    atax_bb_B7 thebb_atax_B7 (
        .in_add41_0(bb_atax_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_add41_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_flush(in_start),
        .in_forked26_0(bb_atax_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_forked26_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_10_0(bb_atax_B6_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_8_0(bb_atax_B6_out_intel_reserved_ffwd_8_0),
        .in_j_137_0(bb_atax_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_j_137_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_atax_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_atax_B8_sr_0_aunroll_x_out_o_stall),
        .in_unnamed_atax18_atax_avm_readdata(in_unnamed_atax18_atax_avm_readdata),
        .in_unnamed_atax18_atax_avm_readdatavalid(in_unnamed_atax18_atax_avm_readdatavalid),
        .in_unnamed_atax18_atax_avm_waitrequest(in_unnamed_atax18_atax_avm_waitrequest),
        .in_unnamed_atax18_atax_avm_writeack(in_unnamed_atax18_atax_avm_writeack),
        .in_unnamed_atax19_atax_avm_readdata(in_unnamed_atax19_atax_avm_readdata),
        .in_unnamed_atax19_atax_avm_readdatavalid(in_unnamed_atax19_atax_avm_readdatavalid),
        .in_unnamed_atax19_atax_avm_waitrequest(in_unnamed_atax19_atax_avm_waitrequest),
        .in_unnamed_atax19_atax_avm_writeack(in_unnamed_atax19_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B7_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_atax_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe188(bb_atax_B7_out_c0_exe188),
        .out_inc38(bb_atax_B7_out_inc38),
        .out_intel_reserved_ffwd_11_0(bb_atax_B7_out_intel_reserved_ffwd_11_0),
        .out_stall_in_0(bb_atax_B7_out_stall_in_0),
        .out_stall_out_0(bb_atax_B7_out_stall_out_0),
        .out_stall_out_1(bb_atax_B7_out_stall_out_1),
        .out_unnamed_atax18_atax_avm_address(bb_atax_B7_out_unnamed_atax18_atax_avm_address),
        .out_unnamed_atax18_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax18_atax_avm_burstcount),
        .out_unnamed_atax18_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax18_atax_avm_byteenable),
        .out_unnamed_atax18_atax_avm_enable(bb_atax_B7_out_unnamed_atax18_atax_avm_enable),
        .out_unnamed_atax18_atax_avm_read(bb_atax_B7_out_unnamed_atax18_atax_avm_read),
        .out_unnamed_atax18_atax_avm_write(bb_atax_B7_out_unnamed_atax18_atax_avm_write),
        .out_unnamed_atax18_atax_avm_writedata(bb_atax_B7_out_unnamed_atax18_atax_avm_writedata),
        .out_unnamed_atax19_atax_avm_address(bb_atax_B7_out_unnamed_atax19_atax_avm_address),
        .out_unnamed_atax19_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax19_atax_avm_burstcount),
        .out_unnamed_atax19_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax19_atax_avm_byteenable),
        .out_unnamed_atax19_atax_avm_enable(bb_atax_B7_out_unnamed_atax19_atax_avm_enable),
        .out_unnamed_atax19_atax_avm_read(bb_atax_B7_out_unnamed_atax19_atax_avm_read),
        .out_unnamed_atax19_atax_avm_write(bb_atax_B7_out_unnamed_atax19_atax_avm_write),
        .out_unnamed_atax19_atax_avm_writedata(bb_atax_B7_out_unnamed_atax19_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B7_out_valid_in_0),
        .out_valid_in_1(bb_atax_B7_out_valid_in_1),
        .out_valid_out_0(bb_atax_B7_out_valid_out_0),
        .out_valid_out_1(bb_atax_B7_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B9_sr_1_aunroll_x(BLACKBOX,282)
    atax_bb_B9_sr_1 thebb_atax_B9_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_atax5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_atax_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B9(BLACKBOX,22)
    atax_bb_B9 thebb_atax_B9 (
        .in_flush(in_start),
        .in_forked35_0(GND_q),
        .in_forked35_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_11_0(bb_atax_B7_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_7_0(bb_atax_B6_out_intel_reserved_ffwd_7_0),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going38_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax22_atax_avm_readdata(in_unnamed_atax22_atax_avm_readdata),
        .in_unnamed_atax22_atax_avm_readdatavalid(in_unnamed_atax22_atax_avm_readdatavalid),
        .in_unnamed_atax22_atax_avm_waitrequest(in_unnamed_atax22_atax_avm_waitrequest),
        .in_unnamed_atax22_atax_avm_writeack(in_unnamed_atax22_atax_avm_writeack),
        .in_unnamed_atax23_atax_avm_readdata(in_unnamed_atax23_atax_avm_readdata),
        .in_unnamed_atax23_atax_avm_readdatavalid(in_unnamed_atax23_atax_avm_readdatavalid),
        .in_unnamed_atax23_atax_avm_waitrequest(in_unnamed_atax23_atax_avm_waitrequest),
        .in_unnamed_atax23_atax_avm_writeack(in_unnamed_atax23_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going38_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B9_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_atax_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B9_out_exiting_valid_out),
        .out_memdep_6_atax_avm_address(bb_atax_B9_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(bb_atax_B9_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(bb_atax_B9_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(bb_atax_B9_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(bb_atax_B9_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(bb_atax_B9_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(bb_atax_B9_out_memdep_6_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B9_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B9_out_stall_in_0),
        .out_stall_out_0(bb_atax_B9_out_stall_out_0),
        .out_stall_out_1(bb_atax_B9_out_stall_out_1),
        .out_unnamed_atax22_atax_avm_address(bb_atax_B9_out_unnamed_atax22_atax_avm_address),
        .out_unnamed_atax22_atax_avm_burstcount(bb_atax_B9_out_unnamed_atax22_atax_avm_burstcount),
        .out_unnamed_atax22_atax_avm_byteenable(bb_atax_B9_out_unnamed_atax22_atax_avm_byteenable),
        .out_unnamed_atax22_atax_avm_enable(bb_atax_B9_out_unnamed_atax22_atax_avm_enable),
        .out_unnamed_atax22_atax_avm_read(bb_atax_B9_out_unnamed_atax22_atax_avm_read),
        .out_unnamed_atax22_atax_avm_write(bb_atax_B9_out_unnamed_atax22_atax_avm_write),
        .out_unnamed_atax22_atax_avm_writedata(bb_atax_B9_out_unnamed_atax22_atax_avm_writedata),
        .out_unnamed_atax23_atax_avm_address(bb_atax_B9_out_unnamed_atax23_atax_avm_address),
        .out_unnamed_atax23_atax_avm_burstcount(bb_atax_B9_out_unnamed_atax23_atax_avm_burstcount),
        .out_unnamed_atax23_atax_avm_byteenable(bb_atax_B9_out_unnamed_atax23_atax_avm_byteenable),
        .out_unnamed_atax23_atax_avm_enable(bb_atax_B9_out_unnamed_atax23_atax_avm_enable),
        .out_unnamed_atax23_atax_avm_read(bb_atax_B9_out_unnamed_atax23_atax_avm_read),
        .out_unnamed_atax23_atax_avm_write(bb_atax_B9_out_unnamed_atax23_atax_avm_write),
        .out_unnamed_atax23_atax_avm_writedata(bb_atax_B9_out_unnamed_atax23_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B9_out_valid_in_0),
        .out_valid_in_1(bb_atax_B9_out_valid_in_1),
        .out_valid_out_0(bb_atax_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B10_sr_0_aunroll_x(BLACKBOX,268)
    atax_bb_B10_sr_0 thebb_atax_B10_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B10_out_stall_out_0),
        .in_i_valid(bb_atax_B9_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6_sr_0_aunroll_x(BLACKBOX,277)
    atax_bb_B6_sr_0 thebb_atax_B6_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B6_out_stall_out_0),
        .in_i_valid(bb_atax_B10_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6(BLACKBOX,19)
    atax_bb_B6 thebb_atax_B6 (
        .in_arrayidx28_promoted1_atax_avm_readdata(in_arrayidx28_promoted1_atax_avm_readdata),
        .in_arrayidx28_promoted1_atax_avm_readdatavalid(in_arrayidx28_promoted1_atax_avm_readdatavalid),
        .in_arrayidx28_promoted1_atax_avm_waitrequest(in_arrayidx28_promoted1_atax_avm_waitrequest),
        .in_arrayidx28_promoted1_atax_avm_writeack(in_arrayidx28_promoted1_atax_avm_writeack),
        .in_flush(in_start),
        .in_forked30_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_forked30_1(bb_atax_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_12_0(bb_atax_B8_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(bb_atax_B10_out_intel_reserved_ffwd_13_0),
        .in_stall_in_0(loop_limiter_atax4_out_o_stall),
        .in_valid_in_0(bb_atax_B6_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_atax_B6_sr_1_aunroll_x_out_o_valid),
        .out_arrayidx28_promoted1_atax_avm_address(bb_atax_B6_out_arrayidx28_promoted1_atax_avm_address),
        .out_arrayidx28_promoted1_atax_avm_burstcount(bb_atax_B6_out_arrayidx28_promoted1_atax_avm_burstcount),
        .out_arrayidx28_promoted1_atax_avm_byteenable(bb_atax_B6_out_arrayidx28_promoted1_atax_avm_byteenable),
        .out_arrayidx28_promoted1_atax_avm_enable(bb_atax_B6_out_arrayidx28_promoted1_atax_avm_enable),
        .out_arrayidx28_promoted1_atax_avm_read(bb_atax_B6_out_arrayidx28_promoted1_atax_avm_read),
        .out_arrayidx28_promoted1_atax_avm_write(bb_atax_B6_out_arrayidx28_promoted1_atax_avm_write),
        .out_arrayidx28_promoted1_atax_avm_writedata(bb_atax_B6_out_arrayidx28_promoted1_atax_avm_writedata),
        .out_intel_reserved_ffwd_10_0(bb_atax_B6_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_6_0(bb_atax_B6_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_atax_B6_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_atax_B6_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_atax_B6_out_intel_reserved_ffwd_9_0),
        .out_stall_out_0(bb_atax_B6_out_stall_out_0),
        .out_stall_out_1(bb_atax_B6_out_stall_out_1),
        .out_valid_in_0(bb_atax_B6_out_valid_in_0),
        .out_valid_in_1(bb_atax_B6_out_valid_in_1),
        .out_valid_out_0(bb_atax_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B10(BLACKBOX,10)
    atax_bb_B10 thebb_atax_B10 (
        .in_intel_reserved_ffwd_7_0(bb_atax_B6_out_intel_reserved_ffwd_7_0),
        .in_stall_in_0(bb_atax_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_atax_B11_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_atax_B10_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_13_0(bb_atax_B10_out_intel_reserved_ffwd_13_0),
        .out_stall_in_0(bb_atax_B10_out_stall_in_0),
        .out_stall_out_0(bb_atax_B10_out_stall_out_0),
        .out_valid_out_0(bb_atax_B10_out_valid_out_0),
        .out_valid_out_1(bb_atax_B10_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo(BLACKBOX,78)
    atax_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_atax6_valid_fifo (
        .in_data_in(c_i2_037_q),
        .in_stall_in(bb_atax_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B13_sr_0_aunroll_x(BLACKBOX,271)
    atax_bb_B13_sr_0 thebb_atax_B13_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B13_out_stall_out_0),
        .in_i_valid(bb_atax_B12_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B13_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_atax6_sr(BLACKBOX,77)
    atax_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B12(BLACKBOX,12)
    atax_bb_B12 thebb_atax_B12 (
        .in_flush(in_start),
        .in_forked33_0(GND_q),
        .in_forked33_1(bb_atax_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_atax_B1_start_out_intel_reserved_ffwd_2_0),
        .in_memdep_7_atax_avm_readdata(in_memdep_7_atax_avm_readdata),
        .in_memdep_7_atax_avm_readdatavalid(in_memdep_7_atax_avm_readdatavalid),
        .in_memdep_7_atax_avm_waitrequest(in_memdep_7_atax_avm_waitrequest),
        .in_memdep_7_atax_avm_writeack(in_memdep_7_atax_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax25_atax_avm_readdata(in_unnamed_atax25_atax_avm_readdata),
        .in_unnamed_atax25_atax_avm_readdatavalid(in_unnamed_atax25_atax_avm_readdatavalid),
        .in_unnamed_atax25_atax_avm_waitrequest(in_unnamed_atax25_atax_avm_waitrequest),
        .in_unnamed_atax25_atax_avm_writeack(in_unnamed_atax25_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B12_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_atax_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B12_out_exiting_valid_out),
        .out_lsu_memdep_7_o_active(bb_atax_B12_out_lsu_memdep_7_o_active),
        .out_memdep_7_atax_avm_address(bb_atax_B12_out_memdep_7_atax_avm_address),
        .out_memdep_7_atax_avm_burstcount(bb_atax_B12_out_memdep_7_atax_avm_burstcount),
        .out_memdep_7_atax_avm_byteenable(bb_atax_B12_out_memdep_7_atax_avm_byteenable),
        .out_memdep_7_atax_avm_enable(bb_atax_B12_out_memdep_7_atax_avm_enable),
        .out_memdep_7_atax_avm_read(bb_atax_B12_out_memdep_7_atax_avm_read),
        .out_memdep_7_atax_avm_write(bb_atax_B12_out_memdep_7_atax_avm_write),
        .out_memdep_7_atax_avm_writedata(bb_atax_B12_out_memdep_7_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B12_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B12_out_stall_in_0),
        .out_stall_out_0(bb_atax_B12_out_stall_out_0),
        .out_stall_out_1(bb_atax_B12_out_stall_out_1),
        .out_unnamed_atax25_atax_avm_address(bb_atax_B12_out_unnamed_atax25_atax_avm_address),
        .out_unnamed_atax25_atax_avm_burstcount(bb_atax_B12_out_unnamed_atax25_atax_avm_burstcount),
        .out_unnamed_atax25_atax_avm_byteenable(bb_atax_B12_out_unnamed_atax25_atax_avm_byteenable),
        .out_unnamed_atax25_atax_avm_enable(bb_atax_B12_out_unnamed_atax25_atax_avm_enable),
        .out_unnamed_atax25_atax_avm_read(bb_atax_B12_out_unnamed_atax25_atax_avm_read),
        .out_unnamed_atax25_atax_avm_write(bb_atax_B12_out_unnamed_atax25_atax_avm_write),
        .out_unnamed_atax25_atax_avm_writedata(bb_atax_B12_out_unnamed_atax25_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B12_out_valid_in_0),
        .out_valid_in_1(bb_atax_B12_out_valid_in_1),
        .out_valid_out_0(bb_atax_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B12_sr_1_aunroll_x(BLACKBOX,270)
    atax_bb_B12_sr_1 thebb_atax_B12_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B12_out_stall_out_1),
        .in_i_valid(loop_limiter_atax2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_atax_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B12_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax2(BLACKBOX,152)
    atax_loop_limiter_2 theloop_limiter_atax2 (
        .in_i_stall(bb_atax_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B12_out_exiting_stall_out),
        .in_i_valid(bb_atax_B11_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B12_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax2_out_o_stall),
        .out_o_valid(loop_limiter_atax2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B11(BLACKBOX,11)
    atax_bb_B11 thebb_atax_B11 (
        .in_stall_in_0(loop_limiter_atax2_out_o_stall),
        .in_valid_in_0(bb_atax_B11_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_atax_B11_out_stall_out_0),
        .out_valid_out_0(bb_atax_B11_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B11_sr_0_aunroll_x(BLACKBOX,269)
    atax_bb_B11_sr_0 thebb_atax_B11_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B11_out_stall_out_0),
        .in_i_valid(bb_atax_B10_out_valid_out_1),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6_sr_1_aunroll_x(BLACKBOX,278)
    atax_bb_B6_sr_1 thebb_atax_B6_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_atax1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_atax_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax1(BLACKBOX,151)
    atax_loop_limiter_1 theloop_limiter_atax1 (
        .in_i_stall(bb_atax_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B11_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_atax_B2_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B10_out_valid_out_1),
        .out_o_stall(loop_limiter_atax1_out_o_stall),
        .out_o_valid(loop_limiter_atax1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B2(BLACKBOX,15)
    atax_bb_B2 thebb_atax_B2 (
        .in_stall_in_0(loop_limiter_atax1_out_o_stall),
        .in_valid_in_0(bb_atax_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_atax_B2_out_stall_out_0),
        .out_valid_out_0(bb_atax_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B2_sr_0_aunroll_x(BLACKBOX,272)
    atax_bb_B2_sr_0 thebb_atax_B2_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B2_out_stall_out_0),
        .in_i_valid(bb_atax_B5_out_valid_out_1),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3_sr_1_aunroll_x(BLACKBOX,274)
    atax_bb_B3_sr_1 thebb_atax_B3_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_atax0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_atax_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax0(BLACKBOX,150)
    atax_loop_limiter_0 theloop_limiter_atax0 (
        .in_i_stall(bb_atax_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B2_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_atax_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B5_out_valid_out_1),
        .out_o_stall(loop_limiter_atax0_out_o_stall),
        .out_o_valid(loop_limiter_atax0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going67_atax1_sr(BLACKBOX,75)
    atax_i_llvm_fpga_pipeline_keep_going67_1_sr thei_llvm_fpga_pipeline_keep_going67_atax1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going67_atax1_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going67_atax1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going67_atax1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B1_start(BLACKBOX,14)
    atax_bb_B1_start thebb_atax_B1_start (
        .in_feedback_in_1(bb_atax_B13_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_atax_B13_out_feedback_valid_out_1),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going67_atax1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going67_atax1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_atax_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_atax_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_atax_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_atax_B1_start_out_intel_reserved_ffwd_2_0),
        .out_iord_bl_call_atax_o_fifoalmost_full(bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready),
        .out_pipeline_valid_out(bb_atax_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_atax_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_atax_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_atax_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_atax_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B13(BLACKBOX,13)
    atax_bb_B13 thebb_atax_B13 (
        .in_feedback_stall_in_1(bb_atax_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_atax_i_fifoready(in_iowr_bl_return_atax_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_atax_B13_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_atax_B13_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_atax_B13_out_feedback_valid_out_1),
        .out_iowr_bl_return_atax_o_fifodata(bb_atax_B13_out_iowr_bl_return_atax_o_fifodata),
        .out_iowr_bl_return_atax_o_fifovalid(bb_atax_B13_out_iowr_bl_return_atax_o_fifovalid),
        .out_stall_in_0(bb_atax_B13_out_stall_in_0),
        .out_stall_out_0(bb_atax_B13_out_stall_out_0),
        .out_valid_out_0(bb_atax_B13_out_valid_out_0),
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
    assign atax_B1_start_x_i_stall_pred = GND_q;
    assign atax_B1_start_x_i_stall_succ = bb_atax_B13_out_stall_in_0;
    assign atax_B1_start_x_i_valid_loop = bb_atax_B1_start_out_valid_in_0;
    assign atax_B1_start_x_i_valid_pred = bb_atax_B1_start_out_valid_in_1;
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
        .resetn(resetn)
    );

    // atax_B12_x(EXTIFACE,3)
    assign atax_B12_x_i_capture = GND_q;
    assign atax_B12_x_i_clear = GND_q;
    assign atax_B12_x_i_enable = VCC_q;
    assign atax_B12_x_i_shift = GND_q;
    assign atax_B12_x_i_stall_pred = loop_limiter_atax2_out_o_stall;
    assign atax_B12_x_i_stall_succ = bb_atax_B12_out_stall_in_0;
    assign atax_B12_x_i_valid_loop = bb_atax_B12_out_valid_in_0;
    assign atax_B12_x_i_valid_pred = bb_atax_B12_out_valid_in_1;
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
        .resetn(resetn)
    );

    // atax_B3_x(EXTIFACE,4)
    assign atax_B3_x_i_capture = GND_q;
    assign atax_B3_x_i_clear = GND_q;
    assign atax_B3_x_i_enable = VCC_q;
    assign atax_B3_x_i_shift = GND_q;
    assign atax_B3_x_i_stall_pred = loop_limiter_atax0_out_o_stall;
    assign atax_B3_x_i_stall_succ = bb_atax_B5_out_stall_in_0;
    assign atax_B3_x_i_valid_loop = bb_atax_B3_out_valid_in_0;
    assign atax_B3_x_i_valid_pred = bb_atax_B3_out_valid_in_1;
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
        .resetn(resetn)
    );

    // atax_B4_x(EXTIFACE,5)
    assign atax_B4_x_i_capture = GND_q;
    assign atax_B4_x_i_clear = GND_q;
    assign atax_B4_x_i_enable = VCC_q;
    assign atax_B4_x_i_shift = GND_q;
    assign atax_B4_x_i_stall_pred = loop_limiter_atax3_out_o_stall;
    assign atax_B4_x_i_stall_succ = bb_atax_B4_out_stall_in_0;
    assign atax_B4_x_i_valid_loop = bb_atax_B4_out_valid_in_0;
    assign atax_B4_x_i_valid_pred = bb_atax_B4_out_valid_in_1;
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
        .resetn(resetn)
    );

    // atax_B6_x(EXTIFACE,6)
    assign atax_B6_x_i_capture = GND_q;
    assign atax_B6_x_i_clear = GND_q;
    assign atax_B6_x_i_enable = VCC_q;
    assign atax_B6_x_i_shift = GND_q;
    assign atax_B6_x_i_stall_pred = loop_limiter_atax1_out_o_stall;
    assign atax_B6_x_i_stall_succ = bb_atax_B10_out_stall_in_0;
    assign atax_B6_x_i_valid_loop = bb_atax_B6_out_valid_in_0;
    assign atax_B6_x_i_valid_pred = bb_atax_B6_out_valid_in_1;
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
        .resetn(resetn)
    );

    // atax_B7_x(EXTIFACE,7)
    assign atax_B7_x_i_capture = GND_q;
    assign atax_B7_x_i_clear = GND_q;
    assign atax_B7_x_i_enable = VCC_q;
    assign atax_B7_x_i_shift = GND_q;
    assign atax_B7_x_i_stall_pred = loop_limiter_atax4_out_o_stall;
    assign atax_B7_x_i_stall_succ = bb_atax_B7_out_stall_in_0;
    assign atax_B7_x_i_valid_loop = bb_atax_B7_out_valid_in_0;
    assign atax_B7_x_i_valid_pred = bb_atax_B7_out_valid_in_1;
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
        .resetn(resetn)
    );

    // atax_B9_x(EXTIFACE,8)
    assign atax_B9_x_i_capture = GND_q;
    assign atax_B9_x_i_clear = GND_q;
    assign atax_B9_x_i_enable = VCC_q;
    assign atax_B9_x_i_shift = GND_q;
    assign atax_B9_x_i_stall_pred = loop_limiter_atax5_out_o_stall;
    assign atax_B9_x_i_stall_succ = bb_atax_B9_out_stall_in_0;
    assign atax_B9_x_i_valid_loop = bb_atax_B9_out_valid_in_0;
    assign atax_B9_x_i_valid_pred = bb_atax_B9_out_valid_in_1;
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
        .resetn(resetn)
    );

    // out_arrayidx28_promoted1_atax_avm_address(GPOUT,156)
    assign out_arrayidx28_promoted1_atax_avm_address = bb_atax_B6_out_arrayidx28_promoted1_atax_avm_address;

    // out_arrayidx28_promoted1_atax_avm_burstcount(GPOUT,157)
    assign out_arrayidx28_promoted1_atax_avm_burstcount = bb_atax_B6_out_arrayidx28_promoted1_atax_avm_burstcount;

    // out_arrayidx28_promoted1_atax_avm_byteenable(GPOUT,158)
    assign out_arrayidx28_promoted1_atax_avm_byteenable = bb_atax_B6_out_arrayidx28_promoted1_atax_avm_byteenable;

    // out_arrayidx28_promoted1_atax_avm_enable(GPOUT,159)
    assign out_arrayidx28_promoted1_atax_avm_enable = bb_atax_B6_out_arrayidx28_promoted1_atax_avm_enable;

    // out_arrayidx28_promoted1_atax_avm_read(GPOUT,160)
    assign out_arrayidx28_promoted1_atax_avm_read = bb_atax_B6_out_arrayidx28_promoted1_atax_avm_read;

    // out_arrayidx28_promoted1_atax_avm_write(GPOUT,161)
    assign out_arrayidx28_promoted1_atax_avm_write = bb_atax_B6_out_arrayidx28_promoted1_atax_avm_write;

    // out_arrayidx28_promoted1_atax_avm_writedata(GPOUT,162)
    assign out_arrayidx28_promoted1_atax_avm_writedata = bb_atax_B6_out_arrayidx28_promoted1_atax_avm_writedata;

    // out_iord_bl_call_atax_o_fifoalmost_full(GPOUT,163)
    assign out_iord_bl_call_atax_o_fifoalmost_full = bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full;

    // out_iord_bl_call_atax_o_fifoready(GPOUT,164)
    assign out_iord_bl_call_atax_o_fifoready = bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready;

    // out_iowr_bl_return_atax_o_fifodata(GPOUT,165)
    assign out_iowr_bl_return_atax_o_fifodata = bb_atax_B13_out_iowr_bl_return_atax_o_fifodata;

    // out_iowr_bl_return_atax_o_fifovalid(GPOUT,166)
    assign out_iowr_bl_return_atax_o_fifovalid = bb_atax_B13_out_iowr_bl_return_atax_o_fifovalid;

    // out_memdep_2_atax_avm_address(GPOUT,167)
    assign out_memdep_2_atax_avm_address = bb_atax_B3_out_memdep_2_atax_avm_address;

    // out_memdep_2_atax_avm_burstcount(GPOUT,168)
    assign out_memdep_2_atax_avm_burstcount = bb_atax_B3_out_memdep_2_atax_avm_burstcount;

    // out_memdep_2_atax_avm_byteenable(GPOUT,169)
    assign out_memdep_2_atax_avm_byteenable = bb_atax_B3_out_memdep_2_atax_avm_byteenable;

    // out_memdep_2_atax_avm_enable(GPOUT,170)
    assign out_memdep_2_atax_avm_enable = bb_atax_B3_out_memdep_2_atax_avm_enable;

    // out_memdep_2_atax_avm_read(GPOUT,171)
    assign out_memdep_2_atax_avm_read = bb_atax_B3_out_memdep_2_atax_avm_read;

    // out_memdep_2_atax_avm_write(GPOUT,172)
    assign out_memdep_2_atax_avm_write = bb_atax_B3_out_memdep_2_atax_avm_write;

    // out_memdep_2_atax_avm_writedata(GPOUT,173)
    assign out_memdep_2_atax_avm_writedata = bb_atax_B3_out_memdep_2_atax_avm_writedata;

    // out_memdep_3_atax_avm_address(GPOUT,174)
    assign out_memdep_3_atax_avm_address = bb_atax_B3_out_memdep_3_atax_avm_address;

    // out_memdep_3_atax_avm_burstcount(GPOUT,175)
    assign out_memdep_3_atax_avm_burstcount = bb_atax_B3_out_memdep_3_atax_avm_burstcount;

    // out_memdep_3_atax_avm_byteenable(GPOUT,176)
    assign out_memdep_3_atax_avm_byteenable = bb_atax_B3_out_memdep_3_atax_avm_byteenable;

    // out_memdep_3_atax_avm_enable(GPOUT,177)
    assign out_memdep_3_atax_avm_enable = bb_atax_B3_out_memdep_3_atax_avm_enable;

    // out_memdep_3_atax_avm_read(GPOUT,178)
    assign out_memdep_3_atax_avm_read = bb_atax_B3_out_memdep_3_atax_avm_read;

    // out_memdep_3_atax_avm_write(GPOUT,179)
    assign out_memdep_3_atax_avm_write = bb_atax_B3_out_memdep_3_atax_avm_write;

    // out_memdep_3_atax_avm_writedata(GPOUT,180)
    assign out_memdep_3_atax_avm_writedata = bb_atax_B3_out_memdep_3_atax_avm_writedata;

    // out_memdep_4_atax_avm_address(GPOUT,181)
    assign out_memdep_4_atax_avm_address = bb_atax_B4_out_memdep_4_atax_avm_address;

    // out_memdep_4_atax_avm_burstcount(GPOUT,182)
    assign out_memdep_4_atax_avm_burstcount = bb_atax_B4_out_memdep_4_atax_avm_burstcount;

    // out_memdep_4_atax_avm_byteenable(GPOUT,183)
    assign out_memdep_4_atax_avm_byteenable = bb_atax_B4_out_memdep_4_atax_avm_byteenable;

    // out_memdep_4_atax_avm_enable(GPOUT,184)
    assign out_memdep_4_atax_avm_enable = bb_atax_B4_out_memdep_4_atax_avm_enable;

    // out_memdep_4_atax_avm_read(GPOUT,185)
    assign out_memdep_4_atax_avm_read = bb_atax_B4_out_memdep_4_atax_avm_read;

    // out_memdep_4_atax_avm_write(GPOUT,186)
    assign out_memdep_4_atax_avm_write = bb_atax_B4_out_memdep_4_atax_avm_write;

    // out_memdep_4_atax_avm_writedata(GPOUT,187)
    assign out_memdep_4_atax_avm_writedata = bb_atax_B4_out_memdep_4_atax_avm_writedata;

    // out_memdep_5_atax_avm_address(GPOUT,188)
    assign out_memdep_5_atax_avm_address = bb_atax_B8_out_memdep_5_atax_avm_address;

    // out_memdep_5_atax_avm_burstcount(GPOUT,189)
    assign out_memdep_5_atax_avm_burstcount = bb_atax_B8_out_memdep_5_atax_avm_burstcount;

    // out_memdep_5_atax_avm_byteenable(GPOUT,190)
    assign out_memdep_5_atax_avm_byteenable = bb_atax_B8_out_memdep_5_atax_avm_byteenable;

    // out_memdep_5_atax_avm_enable(GPOUT,191)
    assign out_memdep_5_atax_avm_enable = bb_atax_B8_out_memdep_5_atax_avm_enable;

    // out_memdep_5_atax_avm_read(GPOUT,192)
    assign out_memdep_5_atax_avm_read = bb_atax_B8_out_memdep_5_atax_avm_read;

    // out_memdep_5_atax_avm_write(GPOUT,193)
    assign out_memdep_5_atax_avm_write = bb_atax_B8_out_memdep_5_atax_avm_write;

    // out_memdep_5_atax_avm_writedata(GPOUT,194)
    assign out_memdep_5_atax_avm_writedata = bb_atax_B8_out_memdep_5_atax_avm_writedata;

    // out_memdep_6_atax_avm_address(GPOUT,195)
    assign out_memdep_6_atax_avm_address = bb_atax_B9_out_memdep_6_atax_avm_address;

    // out_memdep_6_atax_avm_burstcount(GPOUT,196)
    assign out_memdep_6_atax_avm_burstcount = bb_atax_B9_out_memdep_6_atax_avm_burstcount;

    // out_memdep_6_atax_avm_byteenable(GPOUT,197)
    assign out_memdep_6_atax_avm_byteenable = bb_atax_B9_out_memdep_6_atax_avm_byteenable;

    // out_memdep_6_atax_avm_enable(GPOUT,198)
    assign out_memdep_6_atax_avm_enable = bb_atax_B9_out_memdep_6_atax_avm_enable;

    // out_memdep_6_atax_avm_read(GPOUT,199)
    assign out_memdep_6_atax_avm_read = bb_atax_B9_out_memdep_6_atax_avm_read;

    // out_memdep_6_atax_avm_write(GPOUT,200)
    assign out_memdep_6_atax_avm_write = bb_atax_B9_out_memdep_6_atax_avm_write;

    // out_memdep_6_atax_avm_writedata(GPOUT,201)
    assign out_memdep_6_atax_avm_writedata = bb_atax_B9_out_memdep_6_atax_avm_writedata;

    // out_memdep_7_atax_avm_address(GPOUT,202)
    assign out_memdep_7_atax_avm_address = bb_atax_B12_out_memdep_7_atax_avm_address;

    // out_memdep_7_atax_avm_burstcount(GPOUT,203)
    assign out_memdep_7_atax_avm_burstcount = bb_atax_B12_out_memdep_7_atax_avm_burstcount;

    // out_memdep_7_atax_avm_byteenable(GPOUT,204)
    assign out_memdep_7_atax_avm_byteenable = bb_atax_B12_out_memdep_7_atax_avm_byteenable;

    // out_memdep_7_atax_avm_enable(GPOUT,205)
    assign out_memdep_7_atax_avm_enable = bb_atax_B12_out_memdep_7_atax_avm_enable;

    // out_memdep_7_atax_avm_read(GPOUT,206)
    assign out_memdep_7_atax_avm_read = bb_atax_B12_out_memdep_7_atax_avm_read;

    // out_memdep_7_atax_avm_write(GPOUT,207)
    assign out_memdep_7_atax_avm_write = bb_atax_B12_out_memdep_7_atax_avm_write;

    // out_memdep_7_atax_avm_writedata(GPOUT,208)
    assign out_memdep_7_atax_avm_writedata = bb_atax_B12_out_memdep_7_atax_avm_writedata;

    // out_memdep_atax_avm_address(GPOUT,209)
    assign out_memdep_atax_avm_address = bb_atax_B3_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,210)
    assign out_memdep_atax_avm_burstcount = bb_atax_B3_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,211)
    assign out_memdep_atax_avm_byteenable = bb_atax_B3_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,212)
    assign out_memdep_atax_avm_enable = bb_atax_B3_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,213)
    assign out_memdep_atax_avm_read = bb_atax_B3_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,214)
    assign out_memdep_atax_avm_write = bb_atax_B3_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,215)
    assign out_memdep_atax_avm_writedata = bb_atax_B3_out_memdep_atax_avm_writedata;

    // out_o_active_memdep_7(GPOUT,216)
    assign out_o_active_memdep_7 = bb_atax_B12_out_lsu_memdep_7_o_active;

    // bb_atax_B0_runOnce(BLACKBOX,9)
    atax_bb_B0_runOnce thebb_atax_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_atax_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,217)
    assign out_stall_out = bb_atax_B0_runOnce_out_stall_out_0;

    // out_unnamed_atax10_atax_avm_address(GPOUT,218)
    assign out_unnamed_atax10_atax_avm_address = bb_atax_B4_out_unnamed_atax10_atax_avm_address;

    // out_unnamed_atax10_atax_avm_burstcount(GPOUT,219)
    assign out_unnamed_atax10_atax_avm_burstcount = bb_atax_B4_out_unnamed_atax10_atax_avm_burstcount;

    // out_unnamed_atax10_atax_avm_byteenable(GPOUT,220)
    assign out_unnamed_atax10_atax_avm_byteenable = bb_atax_B4_out_unnamed_atax10_atax_avm_byteenable;

    // out_unnamed_atax10_atax_avm_enable(GPOUT,221)
    assign out_unnamed_atax10_atax_avm_enable = bb_atax_B4_out_unnamed_atax10_atax_avm_enable;

    // out_unnamed_atax10_atax_avm_read(GPOUT,222)
    assign out_unnamed_atax10_atax_avm_read = bb_atax_B4_out_unnamed_atax10_atax_avm_read;

    // out_unnamed_atax10_atax_avm_write(GPOUT,223)
    assign out_unnamed_atax10_atax_avm_write = bb_atax_B4_out_unnamed_atax10_atax_avm_write;

    // out_unnamed_atax10_atax_avm_writedata(GPOUT,224)
    assign out_unnamed_atax10_atax_avm_writedata = bb_atax_B4_out_unnamed_atax10_atax_avm_writedata;

    // out_unnamed_atax18_atax_avm_address(GPOUT,225)
    assign out_unnamed_atax18_atax_avm_address = bb_atax_B7_out_unnamed_atax18_atax_avm_address;

    // out_unnamed_atax18_atax_avm_burstcount(GPOUT,226)
    assign out_unnamed_atax18_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax18_atax_avm_burstcount;

    // out_unnamed_atax18_atax_avm_byteenable(GPOUT,227)
    assign out_unnamed_atax18_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax18_atax_avm_byteenable;

    // out_unnamed_atax18_atax_avm_enable(GPOUT,228)
    assign out_unnamed_atax18_atax_avm_enable = bb_atax_B7_out_unnamed_atax18_atax_avm_enable;

    // out_unnamed_atax18_atax_avm_read(GPOUT,229)
    assign out_unnamed_atax18_atax_avm_read = bb_atax_B7_out_unnamed_atax18_atax_avm_read;

    // out_unnamed_atax18_atax_avm_write(GPOUT,230)
    assign out_unnamed_atax18_atax_avm_write = bb_atax_B7_out_unnamed_atax18_atax_avm_write;

    // out_unnamed_atax18_atax_avm_writedata(GPOUT,231)
    assign out_unnamed_atax18_atax_avm_writedata = bb_atax_B7_out_unnamed_atax18_atax_avm_writedata;

    // out_unnamed_atax19_atax_avm_address(GPOUT,232)
    assign out_unnamed_atax19_atax_avm_address = bb_atax_B7_out_unnamed_atax19_atax_avm_address;

    // out_unnamed_atax19_atax_avm_burstcount(GPOUT,233)
    assign out_unnamed_atax19_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax19_atax_avm_burstcount;

    // out_unnamed_atax19_atax_avm_byteenable(GPOUT,234)
    assign out_unnamed_atax19_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax19_atax_avm_byteenable;

    // out_unnamed_atax19_atax_avm_enable(GPOUT,235)
    assign out_unnamed_atax19_atax_avm_enable = bb_atax_B7_out_unnamed_atax19_atax_avm_enable;

    // out_unnamed_atax19_atax_avm_read(GPOUT,236)
    assign out_unnamed_atax19_atax_avm_read = bb_atax_B7_out_unnamed_atax19_atax_avm_read;

    // out_unnamed_atax19_atax_avm_write(GPOUT,237)
    assign out_unnamed_atax19_atax_avm_write = bb_atax_B7_out_unnamed_atax19_atax_avm_write;

    // out_unnamed_atax19_atax_avm_writedata(GPOUT,238)
    assign out_unnamed_atax19_atax_avm_writedata = bb_atax_B7_out_unnamed_atax19_atax_avm_writedata;

    // out_unnamed_atax22_atax_avm_address(GPOUT,239)
    assign out_unnamed_atax22_atax_avm_address = bb_atax_B9_out_unnamed_atax22_atax_avm_address;

    // out_unnamed_atax22_atax_avm_burstcount(GPOUT,240)
    assign out_unnamed_atax22_atax_avm_burstcount = bb_atax_B9_out_unnamed_atax22_atax_avm_burstcount;

    // out_unnamed_atax22_atax_avm_byteenable(GPOUT,241)
    assign out_unnamed_atax22_atax_avm_byteenable = bb_atax_B9_out_unnamed_atax22_atax_avm_byteenable;

    // out_unnamed_atax22_atax_avm_enable(GPOUT,242)
    assign out_unnamed_atax22_atax_avm_enable = bb_atax_B9_out_unnamed_atax22_atax_avm_enable;

    // out_unnamed_atax22_atax_avm_read(GPOUT,243)
    assign out_unnamed_atax22_atax_avm_read = bb_atax_B9_out_unnamed_atax22_atax_avm_read;

    // out_unnamed_atax22_atax_avm_write(GPOUT,244)
    assign out_unnamed_atax22_atax_avm_write = bb_atax_B9_out_unnamed_atax22_atax_avm_write;

    // out_unnamed_atax22_atax_avm_writedata(GPOUT,245)
    assign out_unnamed_atax22_atax_avm_writedata = bb_atax_B9_out_unnamed_atax22_atax_avm_writedata;

    // out_unnamed_atax23_atax_avm_address(GPOUT,246)
    assign out_unnamed_atax23_atax_avm_address = bb_atax_B9_out_unnamed_atax23_atax_avm_address;

    // out_unnamed_atax23_atax_avm_burstcount(GPOUT,247)
    assign out_unnamed_atax23_atax_avm_burstcount = bb_atax_B9_out_unnamed_atax23_atax_avm_burstcount;

    // out_unnamed_atax23_atax_avm_byteenable(GPOUT,248)
    assign out_unnamed_atax23_atax_avm_byteenable = bb_atax_B9_out_unnamed_atax23_atax_avm_byteenable;

    // out_unnamed_atax23_atax_avm_enable(GPOUT,249)
    assign out_unnamed_atax23_atax_avm_enable = bb_atax_B9_out_unnamed_atax23_atax_avm_enable;

    // out_unnamed_atax23_atax_avm_read(GPOUT,250)
    assign out_unnamed_atax23_atax_avm_read = bb_atax_B9_out_unnamed_atax23_atax_avm_read;

    // out_unnamed_atax23_atax_avm_write(GPOUT,251)
    assign out_unnamed_atax23_atax_avm_write = bb_atax_B9_out_unnamed_atax23_atax_avm_write;

    // out_unnamed_atax23_atax_avm_writedata(GPOUT,252)
    assign out_unnamed_atax23_atax_avm_writedata = bb_atax_B9_out_unnamed_atax23_atax_avm_writedata;

    // out_unnamed_atax25_atax_avm_address(GPOUT,253)
    assign out_unnamed_atax25_atax_avm_address = bb_atax_B12_out_unnamed_atax25_atax_avm_address;

    // out_unnamed_atax25_atax_avm_burstcount(GPOUT,254)
    assign out_unnamed_atax25_atax_avm_burstcount = bb_atax_B12_out_unnamed_atax25_atax_avm_burstcount;

    // out_unnamed_atax25_atax_avm_byteenable(GPOUT,255)
    assign out_unnamed_atax25_atax_avm_byteenable = bb_atax_B12_out_unnamed_atax25_atax_avm_byteenable;

    // out_unnamed_atax25_atax_avm_enable(GPOUT,256)
    assign out_unnamed_atax25_atax_avm_enable = bb_atax_B12_out_unnamed_atax25_atax_avm_enable;

    // out_unnamed_atax25_atax_avm_read(GPOUT,257)
    assign out_unnamed_atax25_atax_avm_read = bb_atax_B12_out_unnamed_atax25_atax_avm_read;

    // out_unnamed_atax25_atax_avm_write(GPOUT,258)
    assign out_unnamed_atax25_atax_avm_write = bb_atax_B12_out_unnamed_atax25_atax_avm_write;

    // out_unnamed_atax25_atax_avm_writedata(GPOUT,259)
    assign out_unnamed_atax25_atax_avm_writedata = bb_atax_B12_out_unnamed_atax25_atax_avm_writedata;

    // out_unnamed_atax6_atax_avm_address(GPOUT,260)
    assign out_unnamed_atax6_atax_avm_address = bb_atax_B3_out_unnamed_atax6_atax_avm_address;

    // out_unnamed_atax6_atax_avm_burstcount(GPOUT,261)
    assign out_unnamed_atax6_atax_avm_burstcount = bb_atax_B3_out_unnamed_atax6_atax_avm_burstcount;

    // out_unnamed_atax6_atax_avm_byteenable(GPOUT,262)
    assign out_unnamed_atax6_atax_avm_byteenable = bb_atax_B3_out_unnamed_atax6_atax_avm_byteenable;

    // out_unnamed_atax6_atax_avm_enable(GPOUT,263)
    assign out_unnamed_atax6_atax_avm_enable = bb_atax_B3_out_unnamed_atax6_atax_avm_enable;

    // out_unnamed_atax6_atax_avm_read(GPOUT,264)
    assign out_unnamed_atax6_atax_avm_read = bb_atax_B3_out_unnamed_atax6_atax_avm_read;

    // out_unnamed_atax6_atax_avm_write(GPOUT,265)
    assign out_unnamed_atax6_atax_avm_write = bb_atax_B3_out_unnamed_atax6_atax_avm_write;

    // out_unnamed_atax6_atax_avm_writedata(GPOUT,266)
    assign out_unnamed_atax6_atax_avm_writedata = bb_atax_B3_out_unnamed_atax6_atax_avm_writedata;

    // out_valid_out(GPOUT,267)
    assign out_valid_out = GND_q;

endmodule
