// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 20.4 (Release Build #72)
// 
// Legal Notice: Copyright 2020 Intel Corporation.  All rights reserved.
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
// SystemVerilog created on Wed Dec 13 00:02:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_x,
    input wire [63:0] in_arg_y_out,
    input wire [31:0] in_arrayidx28_promoted2_atax_avm_readdata,
    input wire [0:0] in_arrayidx28_promoted2_atax_avm_readdatavalid,
    input wire [0:0] in_arrayidx28_promoted2_atax_avm_waitrequest,
    input wire [0:0] in_arrayidx28_promoted2_atax_avm_writeack,
    input wire [191:0] in_iord_bl_call_atax_i_fifodata,
    input wire [0:0] in_iord_bl_call_atax_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_atax_i_fifoready,
    input wire [127:0] in_memdep_1_atax_avm_readdata,
    input wire [0:0] in_memdep_1_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_1_atax_avm_waitrequest,
    input wire [0:0] in_memdep_1_atax_avm_writeack,
    input wire [31:0] in_memdep_3_atax_avm_readdata,
    input wire [0:0] in_memdep_3_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_3_atax_avm_waitrequest,
    input wire [0:0] in_memdep_3_atax_avm_writeack,
    input wire [31:0] in_memdep_4_atax_avm_readdata,
    input wire [0:0] in_memdep_4_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_4_atax_avm_waitrequest,
    input wire [0:0] in_memdep_4_atax_avm_writeack,
    input wire [31:0] in_memdep_5206_atax_avm_readdata,
    input wire [0:0] in_memdep_5206_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_5206_atax_avm_waitrequest,
    input wire [0:0] in_memdep_5206_atax_avm_writeack,
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
    input wire [63:0] in_unnamed_atax11_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax11_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax11_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax11_atax_avm_writeack,
    input wire [127:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax13_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax13_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax13_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax13_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax14_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax14_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax14_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax14_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax16_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax16_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax16_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax16_atax_avm_writeack,
    input wire [127:0] in_unnamed_atax17_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax17_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax17_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax17_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax18_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax18_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax18_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax18_atax_avm_writeack,
    input wire [63:0] in_unnamed_atax6_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax6_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax6_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax6_atax_avm_writeack,
    input wire [63:0] in_unnamed_atax8_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax8_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax8_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax8_atax_avm_writeack,
    input wire [63:0] in_unnamed_atax9_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax9_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax9_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax9_atax_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_arrayidx28_promoted2_atax_avm_address,
    output wire [0:0] out_arrayidx28_promoted2_atax_avm_burstcount,
    output wire [3:0] out_arrayidx28_promoted2_atax_avm_byteenable,
    output wire [0:0] out_arrayidx28_promoted2_atax_avm_enable,
    output wire [0:0] out_arrayidx28_promoted2_atax_avm_read,
    output wire [0:0] out_arrayidx28_promoted2_atax_avm_write,
    output wire [31:0] out_arrayidx28_promoted2_atax_avm_writedata,
    output wire [0:0] out_iord_bl_call_atax_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_atax_o_fifoready,
    output wire [0:0] out_iowr_bl_return_atax_o_fifodata,
    output wire [0:0] out_iowr_bl_return_atax_o_fifovalid,
    output wire [31:0] out_memdep_1_atax_avm_address,
    output wire [0:0] out_memdep_1_atax_avm_burstcount,
    output wire [15:0] out_memdep_1_atax_avm_byteenable,
    output wire [0:0] out_memdep_1_atax_avm_enable,
    output wire [0:0] out_memdep_1_atax_avm_read,
    output wire [0:0] out_memdep_1_atax_avm_write,
    output wire [127:0] out_memdep_1_atax_avm_writedata,
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
    output wire [31:0] out_memdep_5206_atax_avm_address,
    output wire [0:0] out_memdep_5206_atax_avm_burstcount,
    output wire [3:0] out_memdep_5206_atax_avm_byteenable,
    output wire [0:0] out_memdep_5206_atax_avm_enable,
    output wire [0:0] out_memdep_5206_atax_avm_read,
    output wire [0:0] out_memdep_5206_atax_avm_write,
    output wire [31:0] out_memdep_5206_atax_avm_writedata,
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
    output wire [63:0] out_unnamed_atax11_atax_avm_address,
    output wire [0:0] out_unnamed_atax11_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax11_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax11_atax_avm_enable,
    output wire [0:0] out_unnamed_atax11_atax_avm_read,
    output wire [0:0] out_unnamed_atax11_atax_avm_write,
    output wire [63:0] out_unnamed_atax11_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    output wire [15:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [127:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax13_atax_avm_address,
    output wire [0:0] out_unnamed_atax13_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax13_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax13_atax_avm_enable,
    output wire [0:0] out_unnamed_atax13_atax_avm_read,
    output wire [0:0] out_unnamed_atax13_atax_avm_write,
    output wire [31:0] out_unnamed_atax13_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax14_atax_avm_address,
    output wire [0:0] out_unnamed_atax14_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax14_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax14_atax_avm_enable,
    output wire [0:0] out_unnamed_atax14_atax_avm_read,
    output wire [0:0] out_unnamed_atax14_atax_avm_write,
    output wire [31:0] out_unnamed_atax14_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax16_atax_avm_address,
    output wire [0:0] out_unnamed_atax16_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax16_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax16_atax_avm_enable,
    output wire [0:0] out_unnamed_atax16_atax_avm_read,
    output wire [0:0] out_unnamed_atax16_atax_avm_write,
    output wire [31:0] out_unnamed_atax16_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax17_atax_avm_address,
    output wire [0:0] out_unnamed_atax17_atax_avm_burstcount,
    output wire [15:0] out_unnamed_atax17_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax17_atax_avm_enable,
    output wire [0:0] out_unnamed_atax17_atax_avm_read,
    output wire [0:0] out_unnamed_atax17_atax_avm_write,
    output wire [127:0] out_unnamed_atax17_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax18_atax_avm_address,
    output wire [0:0] out_unnamed_atax18_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax18_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax18_atax_avm_enable,
    output wire [0:0] out_unnamed_atax18_atax_avm_read,
    output wire [0:0] out_unnamed_atax18_atax_avm_write,
    output wire [31:0] out_unnamed_atax18_atax_avm_writedata,
    output wire [63:0] out_unnamed_atax6_atax_avm_address,
    output wire [0:0] out_unnamed_atax6_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax6_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax6_atax_avm_enable,
    output wire [0:0] out_unnamed_atax6_atax_avm_read,
    output wire [0:0] out_unnamed_atax6_atax_avm_write,
    output wire [63:0] out_unnamed_atax6_atax_avm_writedata,
    output wire [63:0] out_unnamed_atax8_atax_avm_address,
    output wire [0:0] out_unnamed_atax8_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax8_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax8_atax_avm_enable,
    output wire [0:0] out_unnamed_atax8_atax_avm_read,
    output wire [0:0] out_unnamed_atax8_atax_avm_write,
    output wire [63:0] out_unnamed_atax8_atax_avm_writedata,
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
    wire [0:0] bb_atax_B10_out_feedback_out_20;
    wire [0:0] bb_atax_B10_out_feedback_valid_out_20;
    wire [0:0] bb_atax_B10_out_stall_in_0;
    wire [0:0] bb_atax_B10_out_stall_out_0;
    wire [0:0] bb_atax_B10_out_valid_out_0;
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
    wire [31:0] bb_atax_B12_out_unnamed_atax18_atax_avm_address;
    wire [0:0] bb_atax_B12_out_unnamed_atax18_atax_avm_burstcount;
    wire [3:0] bb_atax_B12_out_unnamed_atax18_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_out_unnamed_atax18_atax_avm_enable;
    wire [0:0] bb_atax_B12_out_unnamed_atax18_atax_avm_read;
    wire [0:0] bb_atax_B12_out_unnamed_atax18_atax_avm_write;
    wire [31:0] bb_atax_B12_out_unnamed_atax18_atax_avm_writedata;
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
    wire [0:0] bb_atax_B2_out_stall_out_0;
    wire [0:0] bb_atax_B2_out_valid_out_0;
    wire [0:0] bb_atax_B5_out_stall_in_0;
    wire [0:0] bb_atax_B5_out_stall_out_0;
    wire [0:0] bb_atax_B5_out_valid_out_0;
    wire [31:0] bb_atax_B6_out_arrayidx28_promoted2_atax_avm_address;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted2_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_out_arrayidx28_promoted2_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted2_atax_avm_enable;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted2_atax_avm_read;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted2_atax_avm_write;
    wire [31:0] bb_atax_B6_out_arrayidx28_promoted2_atax_avm_writedata;
    wire [63:0] bb_atax_B6_out_c0_exe1136;
    wire [63:0] bb_atax_B6_out_c0_exe2137;
    wire [31:0] bb_atax_B6_out_c0_exe3138;
    wire [0:0] bb_atax_B6_out_c0_exe4139;
    wire [0:0] bb_atax_B6_out_c0_exe5140;
    wire [0:0] bb_atax_B6_out_c0_exe6141;
    wire [0:0] bb_atax_B6_out_exiting_stall_out;
    wire [0:0] bb_atax_B6_out_exiting_valid_out;
    wire [0:0] bb_atax_B6_out_pipeline_valid_out;
    wire [0:0] bb_atax_B6_out_stall_out_0;
    wire [0:0] bb_atax_B6_out_stall_out_1;
    wire [0:0] bb_atax_B6_out_valid_in_0;
    wire [0:0] bb_atax_B6_out_valid_in_1;
    wire [0:0] bb_atax_B6_out_valid_out_0;
    wire [63:0] bb_atax_B7_out_c0_exe2159;
    wire [31:0] bb_atax_B7_out_c0_exe3160;
    wire [0:0] bb_atax_B7_out_c0_exe5162;
    wire [63:0] bb_atax_B7_out_c0_exe6163;
    wire [0:0] bb_atax_B7_out_c0_exe7164;
    wire [0:0] bb_atax_B7_out_c0_exe8165;
    wire [0:0] bb_atax_B7_out_exiting_stall_out;
    wire [0:0] bb_atax_B7_out_exiting_valid_out;
    wire [0:0] bb_atax_B7_out_pipeline_valid_out;
    wire [0:0] bb_atax_B7_out_stall_in_0;
    wire [0:0] bb_atax_B7_out_stall_out_0;
    wire [0:0] bb_atax_B7_out_stall_out_1;
    wire [31:0] bb_atax_B7_out_unnamed_atax12_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax12_atax_avm_burstcount;
    wire [15:0] bb_atax_B7_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax12_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax12_atax_avm_write;
    wire [127:0] bb_atax_B7_out_unnamed_atax12_atax_avm_writedata;
    wire [31:0] bb_atax_B7_out_unnamed_atax13_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax13_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_unnamed_atax13_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax13_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax13_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax13_atax_avm_write;
    wire [31:0] bb_atax_B7_out_unnamed_atax13_atax_avm_writedata;
    wire [0:0] bb_atax_B7_out_valid_in_0;
    wire [0:0] bb_atax_B7_out_valid_in_1;
    wire [0:0] bb_atax_B7_out_valid_out_0;
    wire [31:0] bb_atax_B8_out_c0_exe1173;
    wire [63:0] bb_atax_B8_out_c0_exe21592;
    wire [0:0] bb_atax_B8_out_c0_exe71646;
    wire [0:0] bb_atax_B8_out_c0_exe81657;
    wire [0:0] bb_atax_B8_out_feedback_stall_out_20;
    wire [31:0] bb_atax_B8_out_memdep_5206_atax_avm_address;
    wire [0:0] bb_atax_B8_out_memdep_5206_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_out_memdep_5206_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_out_memdep_5206_atax_avm_enable;
    wire [0:0] bb_atax_B8_out_memdep_5206_atax_avm_read;
    wire [0:0] bb_atax_B8_out_memdep_5206_atax_avm_write;
    wire [31:0] bb_atax_B8_out_memdep_5206_atax_avm_writedata;
    wire [0:0] bb_atax_B8_out_memdep_phi_pop20;
    wire [0:0] bb_atax_B8_out_stall_out_0;
    wire [31:0] bb_atax_B8_out_unnamed_atax14_atax_avm_address;
    wire [0:0] bb_atax_B8_out_unnamed_atax14_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_out_unnamed_atax14_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_out_unnamed_atax14_atax_avm_enable;
    wire [0:0] bb_atax_B8_out_unnamed_atax14_atax_avm_read;
    wire [0:0] bb_atax_B8_out_unnamed_atax14_atax_avm_write;
    wire [31:0] bb_atax_B8_out_unnamed_atax14_atax_avm_writedata;
    wire [0:0] bb_atax_B8_out_valid_out_0;
    wire [0:0] bb_atax_B9_out_c0_exe2194;
    wire [0:0] bb_atax_B9_out_c0_exe4196;
    wire [0:0] bb_atax_B9_out_c0_exe5197;
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
    wire [31:0] bb_atax_B9_out_unnamed_atax16_atax_avm_address;
    wire [0:0] bb_atax_B9_out_unnamed_atax16_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_unnamed_atax16_atax_avm_read;
    wire [0:0] bb_atax_B9_out_unnamed_atax16_atax_avm_write;
    wire [31:0] bb_atax_B9_out_unnamed_atax16_atax_avm_writedata;
    wire [31:0] bb_atax_B9_out_unnamed_atax17_atax_avm_address;
    wire [0:0] bb_atax_B9_out_unnamed_atax17_atax_avm_burstcount;
    wire [15:0] bb_atax_B9_out_unnamed_atax17_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_unnamed_atax17_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_unnamed_atax17_atax_avm_read;
    wire [0:0] bb_atax_B9_out_unnamed_atax17_atax_avm_write;
    wire [127:0] bb_atax_B9_out_unnamed_atax17_atax_avm_writedata;
    wire [0:0] bb_atax_B9_out_valid_in_0;
    wire [0:0] bb_atax_B9_out_valid_in_1;
    wire [0:0] bb_atax_B9_out_valid_out_0;
    wire [63:0] c_float_addrspace_67_undef30_q;
    wire [31:0] c_float_undef32_q;
    wire [1:0] c_i2_067_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_atax2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_atax2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_atax2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_atax2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_atax0_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_atax0_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_atax1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_atax1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_atax1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_atax1_valid_fifo_out_valid_out;
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
    wire [0:0] bb_atax_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B10_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B10_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B1_start_aunroll_x_out_feedback_stall_out_1;
    wire [63:0] bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_atax_B1_start_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] bb_atax_B1_start_aunroll_x_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] bb_atax_B1_start_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_atax_B1_start_aunroll_x_out_stall_out_0;
    wire [0:0] bb_atax_B1_start_aunroll_x_out_stall_out_1;
    wire [0:0] bb_atax_B1_start_aunroll_x_out_valid_in_0;
    wire [0:0] bb_atax_B1_start_aunroll_x_out_valid_in_1;
    wire [0:0] bb_atax_B1_start_aunroll_x_out_valid_out_0;
    wire [63:0] bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] bb_atax_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B3_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_atax_B3_aunroll_x_out_exiting_valid_out;
    wire [63:0] bb_atax_B3_aunroll_x_out_idxprom;
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_address;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_enable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_read;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_write;
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_writedata;
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_address;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_enable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_read;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_write;
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_writedata;
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B3_aunroll_x_out_notcmp77;
    wire [0:0] bb_atax_B3_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_atax_B3_aunroll_x_out_stall_out_0;
    wire [0:0] bb_atax_B3_aunroll_x_out_stall_out_1;
    wire [63:0] bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_address;
    wire [0:0] bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_burstcount;
    wire [7:0] bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_enable;
    wire [0:0] bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_read;
    wire [0:0] bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_write;
    wire [63:0] bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_writedata;
    wire [0:0] bb_atax_B3_aunroll_x_out_valid_in_0;
    wire [0:0] bb_atax_B3_aunroll_x_out_valid_in_1;
    wire [0:0] bb_atax_B3_aunroll_x_out_valid_out_0;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B4_aunroll_x_out_c0_exe9;
    wire [0:0] bb_atax_B4_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_atax_B4_aunroll_x_out_exiting_valid_out;
    wire [31:0] bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_burstcount;
    wire [15:0] bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_write;
    wire [127:0] bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_writedata;
    wire [0:0] bb_atax_B4_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_atax_B4_aunroll_x_out_stall_in_0;
    wire [0:0] bb_atax_B4_aunroll_x_out_stall_out_0;
    wire [0:0] bb_atax_B4_aunroll_x_out_stall_out_1;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_burstcount;
    wire [7:0] bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_write;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_writedata;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_burstcount;
    wire [7:0] bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_write;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_writedata;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_burstcount;
    wire [7:0] bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_write;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_writedata;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_burstcount;
    wire [7:0] bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_write;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_writedata;
    wire [0:0] bb_atax_B4_aunroll_x_out_valid_in_0;
    wire [0:0] bb_atax_B4_aunroll_x_out_valid_in_1;
    wire [0:0] bb_atax_B4_aunroll_x_out_valid_out_0;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_atax_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B8_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_atax_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_atax_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_atax_B8_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_atax_B8_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_atax_B8_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_atax_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_atax_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_atax_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_atax_B9_sr_1_aunroll_x_out_o_data_5_tpl;


    // c_i2_067(CONSTANT,74)
    assign c_i2_067_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo(BLACKBOX,96)
    atax_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_atax6_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_atax6_sr(BLACKBOX,95)
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

    // i_llvm_fpga_pipeline_keep_going28_atax6_valid_fifo(BLACKBOX,85)
    atax_i_llvm_fpga_pipeline_keep_going28_6_valid_fifo thei_llvm_fpga_pipeline_keep_going28_atax6_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going28_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going28_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going28_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_undef32(FLOATCONSTANT,21)
    assign c_float_undef32_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going28_atax6_sr(BLACKBOX,84)
    atax_i_llvm_fpga_pipeline_keep_going28_6_sr thei_llvm_fpga_pipeline_keep_going28_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going28_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going28_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going28_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_addrspace_67_undef30(CONSTANT,20)
    assign c_float_addrspace_67_undef30_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_atax_B9(BLACKBOX,19)
    atax_bb_B9 thebb_atax_B9 (
        .in_exitcond1994_pop37114_0(GND_q),
        .in_exitcond1994_pop37114_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked25_0(GND_q),
        .in_forked25_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom2791_pop35109_0(c_float_addrspace_67_undef30_q),
        .in_idxprom2791_pop35109_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .in_memdep_phi_pop20118_0(GND_q),
        .in_memdep_phi_pop20118_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp5696_pop38116_0(GND_q),
        .in_notcmp5696_pop38116_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going28_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax15_0(c_float_undef32_q),
        .in_unnamed_atax15_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_unnamed_atax16_atax_avm_readdata(in_unnamed_atax16_atax_avm_readdata),
        .in_unnamed_atax16_atax_avm_readdatavalid(in_unnamed_atax16_atax_avm_readdatavalid),
        .in_unnamed_atax16_atax_avm_waitrequest(in_unnamed_atax16_atax_avm_waitrequest),
        .in_unnamed_atax16_atax_avm_writeack(in_unnamed_atax16_atax_avm_writeack),
        .in_unnamed_atax17_atax_avm_readdata(in_unnamed_atax17_atax_avm_readdata),
        .in_unnamed_atax17_atax_avm_readdatavalid(in_unnamed_atax17_atax_avm_readdatavalid),
        .in_unnamed_atax17_atax_avm_waitrequest(in_unnamed_atax17_atax_avm_waitrequest),
        .in_unnamed_atax17_atax_avm_writeack(in_unnamed_atax17_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going28_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2194(bb_atax_B9_out_c0_exe2194),
        .out_c0_exe4196(bb_atax_B9_out_c0_exe4196),
        .out_c0_exe5197(bb_atax_B9_out_c0_exe5197),
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
        .out_unnamed_atax16_atax_avm_address(bb_atax_B9_out_unnamed_atax16_atax_avm_address),
        .out_unnamed_atax16_atax_avm_burstcount(bb_atax_B9_out_unnamed_atax16_atax_avm_burstcount),
        .out_unnamed_atax16_atax_avm_byteenable(bb_atax_B9_out_unnamed_atax16_atax_avm_byteenable),
        .out_unnamed_atax16_atax_avm_enable(bb_atax_B9_out_unnamed_atax16_atax_avm_enable),
        .out_unnamed_atax16_atax_avm_read(bb_atax_B9_out_unnamed_atax16_atax_avm_read),
        .out_unnamed_atax16_atax_avm_write(bb_atax_B9_out_unnamed_atax16_atax_avm_write),
        .out_unnamed_atax16_atax_avm_writedata(bb_atax_B9_out_unnamed_atax16_atax_avm_writedata),
        .out_unnamed_atax17_atax_avm_address(bb_atax_B9_out_unnamed_atax17_atax_avm_address),
        .out_unnamed_atax17_atax_avm_burstcount(bb_atax_B9_out_unnamed_atax17_atax_avm_burstcount),
        .out_unnamed_atax17_atax_avm_byteenable(bb_atax_B9_out_unnamed_atax17_atax_avm_byteenable),
        .out_unnamed_atax17_atax_avm_enable(bb_atax_B9_out_unnamed_atax17_atax_avm_enable),
        .out_unnamed_atax17_atax_avm_read(bb_atax_B9_out_unnamed_atax17_atax_avm_read),
        .out_unnamed_atax17_atax_avm_write(bb_atax_B9_out_unnamed_atax17_atax_avm_write),
        .out_unnamed_atax17_atax_avm_writedata(bb_atax_B9_out_unnamed_atax17_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B9_out_valid_in_0),
        .out_valid_in_1(bb_atax_B9_out_valid_in_1),
        .out_valid_out_0(bb_atax_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B9_sr_1_aunroll_x(BLACKBOX,344)
    atax_bb_B9_sr_1 thebb_atax_B9_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_atax5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B8_out_c0_exe21592),
        .in_i_data_2_tpl(bb_atax_B8_out_c0_exe71646),
        .in_i_data_3_tpl(bb_atax_B8_out_c0_exe81657),
        .in_i_data_4_tpl(bb_atax_B8_out_c0_exe1173),
        .in_i_data_5_tpl(bb_atax_B8_out_memdep_phi_pop20),
        .out_o_stall(bb_atax_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_atax_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax5(BLACKBOX,189)
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

    // i_llvm_fpga_pipeline_keep_going44_atax6_valid_fifo(BLACKBOX,87)
    atax_i_llvm_fpga_pipeline_keep_going44_6_valid_fifo thei_llvm_fpga_pipeline_keep_going44_atax6_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going44_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going44_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going44_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going44_atax6_sr(BLACKBOX,86)
    atax_i_llvm_fpga_pipeline_keep_going44_6_sr thei_llvm_fpga_pipeline_keep_going44_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going44_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going44_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going44_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going58_atax2_valid_fifo(BLACKBOX,89)
    atax_i_llvm_fpga_pipeline_keep_going58_2_valid_fifo thei_llvm_fpga_pipeline_keep_going58_atax2_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going58_atax2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going58_atax2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going58_atax2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going58_atax2_sr(BLACKBOX,88)
    atax_i_llvm_fpga_pipeline_keep_going58_2_sr thei_llvm_fpga_pipeline_keep_going58_atax2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going58_atax2_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going58_atax2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going58_atax2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo(BLACKBOX,91)
    atax_i_llvm_fpga_pipeline_keep_going65_6_valid_fifo thei_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B4_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going65_atax6_sr(BLACKBOX,90)
    atax_i_llvm_fpga_pipeline_keep_going65_6_sr thei_llvm_fpga_pipeline_keep_going65_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B4_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going79_atax0_sr(BLACKBOX,92)
    atax_i_llvm_fpga_pipeline_keep_going79_0_sr thei_llvm_fpga_pipeline_keep_going79_atax0_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_atax_B3_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_atax_B3_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going79_atax0_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going79_atax0_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax0(BLACKBOX,184)
    atax_loop_limiter_0 theloop_limiter_atax0 (
        .in_i_stall(bb_atax_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B3_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_atax_B1_start_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B3_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax0_out_o_stall),
        .out_o_valid(loop_limiter_atax0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3_sr_1_aunroll_x(BLACKBOX,337)
    atax_bb_B3_sr_1 thebb_atax_B3_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B3_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_atax0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_atax_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3_aunroll_x(BLACKBOX,336)
    atax_bb_B3 thebb_atax_B3_aunroll_x (
        .in_flush(in_start),
        .in_forked86_0(GND_q),
        .in_forked86_1(bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_3_atax_avm_readdata(in_memdep_3_atax_avm_readdata),
        .in_memdep_3_atax_avm_readdatavalid(in_memdep_3_atax_avm_readdatavalid),
        .in_memdep_3_atax_avm_waitrequest(in_memdep_3_atax_avm_waitrequest),
        .in_memdep_3_atax_avm_writeack(in_memdep_3_atax_avm_writeack),
        .in_memdep_4_atax_avm_readdata(in_memdep_4_atax_avm_readdata),
        .in_memdep_4_atax_avm_readdatavalid(in_memdep_4_atax_avm_readdatavalid),
        .in_memdep_4_atax_avm_waitrequest(in_memdep_4_atax_avm_waitrequest),
        .in_memdep_4_atax_avm_writeack(in_memdep_4_atax_avm_writeack),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going79_atax0_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax3_out_o_stall),
        .in_unnamed_atax6_atax_avm_readdata(in_unnamed_atax6_atax_avm_readdata),
        .in_unnamed_atax6_atax_avm_readdatavalid(in_unnamed_atax6_atax_avm_readdatavalid),
        .in_unnamed_atax6_atax_avm_waitrequest(in_unnamed_atax6_atax_avm_waitrequest),
        .in_unnamed_atax6_atax_avm_writeack(in_unnamed_atax6_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going79_atax0_sr_out_o_valid),
        .in_valid_in_1(bb_atax_B3_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_exiting_stall_out(bb_atax_B3_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B3_aunroll_x_out_exiting_valid_out),
        .out_idxprom(bb_atax_B3_aunroll_x_out_idxprom),
        .out_memdep_3_atax_avm_address(bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_address),
        .out_memdep_3_atax_avm_burstcount(bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_burstcount),
        .out_memdep_3_atax_avm_byteenable(bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_byteenable),
        .out_memdep_3_atax_avm_enable(bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_enable),
        .out_memdep_3_atax_avm_read(bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_read),
        .out_memdep_3_atax_avm_write(bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_write),
        .out_memdep_3_atax_avm_writedata(bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_writedata),
        .out_memdep_4_atax_avm_address(bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_address),
        .out_memdep_4_atax_avm_burstcount(bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_burstcount),
        .out_memdep_4_atax_avm_byteenable(bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_byteenable),
        .out_memdep_4_atax_avm_enable(bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_enable),
        .out_memdep_4_atax_avm_read(bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_read),
        .out_memdep_4_atax_avm_write(bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_write),
        .out_memdep_4_atax_avm_writedata(bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_writedata),
        .out_memdep_atax_avm_address(bb_atax_B3_aunroll_x_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B3_aunroll_x_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B3_aunroll_x_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B3_aunroll_x_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B3_aunroll_x_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B3_aunroll_x_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B3_aunroll_x_out_memdep_atax_avm_writedata),
        .out_notcmp77(bb_atax_B3_aunroll_x_out_notcmp77),
        .out_pipeline_valid_out(bb_atax_B3_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_atax_B3_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_atax_B3_aunroll_x_out_stall_out_1),
        .out_unnamed_atax6_atax_avm_address(bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_address),
        .out_unnamed_atax6_atax_avm_burstcount(bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_burstcount),
        .out_unnamed_atax6_atax_avm_byteenable(bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_byteenable),
        .out_unnamed_atax6_atax_avm_enable(bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_enable),
        .out_unnamed_atax6_atax_avm_read(bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_read),
        .out_unnamed_atax6_atax_avm_write(bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_write),
        .out_unnamed_atax6_atax_avm_writedata(bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B3_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_atax_B3_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_atax_B3_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax3(BLACKBOX,187)
    atax_loop_limiter_3 theloop_limiter_atax3 (
        .in_i_stall(bb_atax_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B4_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_atax_B3_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B4_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax3_out_o_stall),
        .out_o_valid(loop_limiter_atax3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4_sr_1_aunroll_x(BLACKBOX,339)
    atax_bb_B4_sr_1 thebb_atax_B4_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B4_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_atax3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B3_aunroll_x_out_idxprom),
        .in_i_data_2_tpl(bb_atax_B3_aunroll_x_out_notcmp77),
        .out_o_stall(bb_atax_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4_aunroll_x(BLACKBOX,338)
    atax_bb_B4 thebb_atax_B4_aunroll_x (
        .in_flush(in_start),
        .in_forked62_0(GND_q),
        .in_forked62_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom100_0(c_float_addrspace_67_undef30_q),
        .in_idxprom100_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_1_atax_avm_readdata(in_memdep_1_atax_avm_readdata),
        .in_memdep_1_atax_avm_readdatavalid(in_memdep_1_atax_avm_readdatavalid),
        .in_memdep_1_atax_avm_waitrequest(in_memdep_1_atax_avm_waitrequest),
        .in_memdep_1_atax_avm_writeack(in_memdep_1_atax_avm_writeack),
        .in_notcmp77101_0(GND_q),
        .in_notcmp77101_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax10_atax_avm_readdata(in_unnamed_atax10_atax_avm_readdata),
        .in_unnamed_atax10_atax_avm_readdatavalid(in_unnamed_atax10_atax_avm_readdatavalid),
        .in_unnamed_atax10_atax_avm_waitrequest(in_unnamed_atax10_atax_avm_waitrequest),
        .in_unnamed_atax10_atax_avm_writeack(in_unnamed_atax10_atax_avm_writeack),
        .in_unnamed_atax11_atax_avm_readdata(in_unnamed_atax11_atax_avm_readdata),
        .in_unnamed_atax11_atax_avm_readdatavalid(in_unnamed_atax11_atax_avm_readdatavalid),
        .in_unnamed_atax11_atax_avm_waitrequest(in_unnamed_atax11_atax_avm_waitrequest),
        .in_unnamed_atax11_atax_avm_writeack(in_unnamed_atax11_atax_avm_writeack),
        .in_unnamed_atax8_atax_avm_readdata(in_unnamed_atax8_atax_avm_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(in_unnamed_atax8_atax_avm_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(in_unnamed_atax8_atax_avm_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(in_unnamed_atax8_atax_avm_writeack),
        .in_unnamed_atax9_atax_avm_readdata(in_unnamed_atax9_atax_avm_readdata),
        .in_unnamed_atax9_atax_avm_readdatavalid(in_unnamed_atax9_atax_avm_readdatavalid),
        .in_unnamed_atax9_atax_avm_waitrequest(in_unnamed_atax9_atax_avm_waitrequest),
        .in_unnamed_atax9_atax_avm_writeack(in_unnamed_atax9_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B4_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_c0_exe9(bb_atax_B4_aunroll_x_out_c0_exe9),
        .out_exiting_stall_out(bb_atax_B4_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B4_aunroll_x_out_exiting_valid_out),
        .out_memdep_1_atax_avm_address(bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_address),
        .out_memdep_1_atax_avm_burstcount(bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_burstcount),
        .out_memdep_1_atax_avm_byteenable(bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_byteenable),
        .out_memdep_1_atax_avm_enable(bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_enable),
        .out_memdep_1_atax_avm_read(bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_read),
        .out_memdep_1_atax_avm_write(bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_write),
        .out_memdep_1_atax_avm_writedata(bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B4_aunroll_x_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B4_aunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_atax_B4_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_atax_B4_aunroll_x_out_stall_out_1),
        .out_unnamed_atax10_atax_avm_address(bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_address),
        .out_unnamed_atax10_atax_avm_burstcount(bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_burstcount),
        .out_unnamed_atax10_atax_avm_byteenable(bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_byteenable),
        .out_unnamed_atax10_atax_avm_enable(bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_enable),
        .out_unnamed_atax10_atax_avm_read(bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_read),
        .out_unnamed_atax10_atax_avm_write(bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_write),
        .out_unnamed_atax10_atax_avm_writedata(bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_writedata),
        .out_unnamed_atax11_atax_avm_address(bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_address),
        .out_unnamed_atax11_atax_avm_burstcount(bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_burstcount),
        .out_unnamed_atax11_atax_avm_byteenable(bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_byteenable),
        .out_unnamed_atax11_atax_avm_enable(bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_enable),
        .out_unnamed_atax11_atax_avm_read(bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_read),
        .out_unnamed_atax11_atax_avm_write(bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_write),
        .out_unnamed_atax11_atax_avm_writedata(bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_writedata),
        .out_unnamed_atax8_atax_avm_address(bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_writedata),
        .out_unnamed_atax9_atax_avm_address(bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_address),
        .out_unnamed_atax9_atax_avm_burstcount(bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_burstcount),
        .out_unnamed_atax9_atax_avm_byteenable(bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_byteenable),
        .out_unnamed_atax9_atax_avm_enable(bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_enable),
        .out_unnamed_atax9_atax_avm_read(bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_read),
        .out_unnamed_atax9_atax_avm_write(bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_write),
        .out_unnamed_atax9_atax_avm_writedata(bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B4_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_atax_B4_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_atax_B4_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5_sr_0_aunroll_x(BLACKBOX,340)
    atax_bb_B5_sr_0 thebb_atax_B5_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B5_out_stall_out_0),
        .in_i_valid(bb_atax_B4_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B4_aunroll_x_out_c0_exe9),
        .out_o_stall(bb_atax_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5(BLACKBOX,15)
    atax_bb_B5 thebb_atax_B5 (
        .in_c0_exe91_0(bb_atax_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_atax_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_atax_B5_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_atax_B5_out_stall_in_0),
        .out_stall_out_0(bb_atax_B5_out_stall_out_0),
        .out_valid_out_0(bb_atax_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B2_sr_0_aunroll_x(BLACKBOX,335)
    atax_bb_B2_sr_0 thebb_atax_B2_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B2_out_stall_out_0),
        .in_i_valid(bb_atax_B5_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B2(BLACKBOX,14)
    atax_bb_B2 thebb_atax_B2 (
        .in_stall_in_0(loop_limiter_atax1_out_o_stall),
        .in_valid_in_0(bb_atax_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_atax_B2_out_stall_out_0),
        .out_valid_out_0(bb_atax_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax1(BLACKBOX,185)
    atax_loop_limiter_1 theloop_limiter_atax1 (
        .in_i_stall(bb_atax_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B6_out_exiting_stall_out),
        .in_i_valid(bb_atax_B2_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax1_out_o_stall),
        .out_o_valid(loop_limiter_atax1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6_sr_1_aunroll_x(BLACKBOX,341)
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

    // bb_atax_B6(BLACKBOX,16)
    atax_bb_B6 thebb_atax_B6 (
        .in_arrayidx28_promoted2_atax_avm_readdata(in_arrayidx28_promoted2_atax_avm_readdata),
        .in_arrayidx28_promoted2_atax_avm_readdatavalid(in_arrayidx28_promoted2_atax_avm_readdatavalid),
        .in_arrayidx28_promoted2_atax_avm_waitrequest(in_arrayidx28_promoted2_atax_avm_waitrequest),
        .in_arrayidx28_promoted2_atax_avm_writeack(in_arrayidx28_promoted2_atax_avm_writeack),
        .in_flush(in_start),
        .in_forked87_0(GND_q),
        .in_forked87_1(bb_atax_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going58_atax2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going58_atax2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B6_sr_1_aunroll_x_out_o_valid),
        .out_arrayidx28_promoted2_atax_avm_address(bb_atax_B6_out_arrayidx28_promoted2_atax_avm_address),
        .out_arrayidx28_promoted2_atax_avm_burstcount(bb_atax_B6_out_arrayidx28_promoted2_atax_avm_burstcount),
        .out_arrayidx28_promoted2_atax_avm_byteenable(bb_atax_B6_out_arrayidx28_promoted2_atax_avm_byteenable),
        .out_arrayidx28_promoted2_atax_avm_enable(bb_atax_B6_out_arrayidx28_promoted2_atax_avm_enable),
        .out_arrayidx28_promoted2_atax_avm_read(bb_atax_B6_out_arrayidx28_promoted2_atax_avm_read),
        .out_arrayidx28_promoted2_atax_avm_write(bb_atax_B6_out_arrayidx28_promoted2_atax_avm_write),
        .out_arrayidx28_promoted2_atax_avm_writedata(bb_atax_B6_out_arrayidx28_promoted2_atax_avm_writedata),
        .out_c0_exe1136(bb_atax_B6_out_c0_exe1136),
        .out_c0_exe2137(bb_atax_B6_out_c0_exe2137),
        .out_c0_exe3138(bb_atax_B6_out_c0_exe3138),
        .out_c0_exe4139(bb_atax_B6_out_c0_exe4139),
        .out_c0_exe5140(bb_atax_B6_out_c0_exe5140),
        .out_c0_exe6141(bb_atax_B6_out_c0_exe6141),
        .out_exiting_stall_out(bb_atax_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_atax_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_atax_B6_out_stall_out_0),
        .out_stall_out_1(bb_atax_B6_out_stall_out_1),
        .out_valid_in_0(bb_atax_B6_out_valid_in_0),
        .out_valid_in_1(bb_atax_B6_out_valid_in_1),
        .out_valid_out_0(bb_atax_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax4(BLACKBOX,188)
    atax_loop_limiter_4 theloop_limiter_atax4 (
        .in_i_stall(bb_atax_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B7_out_exiting_stall_out),
        .in_i_valid(bb_atax_B6_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax4_out_o_stall),
        .out_o_valid(loop_limiter_atax4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_sr_1_aunroll_x(BLACKBOX,342)
    atax_bb_B7_sr_1 thebb_atax_B7_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_atax4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B6_out_c0_exe6141),
        .in_i_data_2_tpl(bb_atax_B6_out_c0_exe1136),
        .in_i_data_3_tpl(bb_atax_B6_out_c0_exe2137),
        .in_i_data_4_tpl(bb_atax_B6_out_c0_exe3138),
        .in_i_data_5_tpl(bb_atax_B6_out_c0_exe4139),
        .in_i_data_6_tpl(bb_atax_B6_out_c0_exe5140),
        .out_o_stall(bb_atax_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7(BLACKBOX,17)
    atax_bb_B7 thebb_atax_B7 (
        .in_arrayidx288105_0(c_float_addrspace_67_undef30_q),
        .in_arrayidx288105_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_arrayidx28_promoted2106_0(c_float_undef32_q),
        .in_arrayidx28_promoted2106_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_exitcond19107_0(GND_q),
        .in_exitcond19107_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked41_0(GND_q),
        .in_forked41_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked87103_0(GND_q),
        .in_forked87103_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_idxprom27104_0(c_float_addrspace_67_undef30_q),
        .in_idxprom27104_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp56108_0(GND_q),
        .in_notcmp56108_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going44_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .in_unnamed_atax13_atax_avm_readdata(in_unnamed_atax13_atax_avm_readdata),
        .in_unnamed_atax13_atax_avm_readdatavalid(in_unnamed_atax13_atax_avm_readdatavalid),
        .in_unnamed_atax13_atax_avm_waitrequest(in_unnamed_atax13_atax_avm_waitrequest),
        .in_unnamed_atax13_atax_avm_writeack(in_unnamed_atax13_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going44_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2159(bb_atax_B7_out_c0_exe2159),
        .out_c0_exe3160(bb_atax_B7_out_c0_exe3160),
        .out_c0_exe5162(bb_atax_B7_out_c0_exe5162),
        .out_c0_exe6163(bb_atax_B7_out_c0_exe6163),
        .out_c0_exe7164(bb_atax_B7_out_c0_exe7164),
        .out_c0_exe8165(bb_atax_B7_out_c0_exe8165),
        .out_exiting_stall_out(bb_atax_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B7_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_atax_B7_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B7_out_stall_in_0),
        .out_stall_out_0(bb_atax_B7_out_stall_out_0),
        .out_stall_out_1(bb_atax_B7_out_stall_out_1),
        .out_unnamed_atax12_atax_avm_address(bb_atax_B7_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(bb_atax_B7_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(bb_atax_B7_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(bb_atax_B7_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(bb_atax_B7_out_unnamed_atax12_atax_avm_writedata),
        .out_unnamed_atax13_atax_avm_address(bb_atax_B7_out_unnamed_atax13_atax_avm_address),
        .out_unnamed_atax13_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax13_atax_avm_burstcount),
        .out_unnamed_atax13_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax13_atax_avm_byteenable),
        .out_unnamed_atax13_atax_avm_enable(bb_atax_B7_out_unnamed_atax13_atax_avm_enable),
        .out_unnamed_atax13_atax_avm_read(bb_atax_B7_out_unnamed_atax13_atax_avm_read),
        .out_unnamed_atax13_atax_avm_write(bb_atax_B7_out_unnamed_atax13_atax_avm_write),
        .out_unnamed_atax13_atax_avm_writedata(bb_atax_B7_out_unnamed_atax13_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B7_out_valid_in_0),
        .out_valid_in_1(bb_atax_B7_out_valid_in_1),
        .out_valid_out_0(bb_atax_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B8_sr_0_aunroll_x(BLACKBOX,343)
    atax_bb_B8_sr_0 thebb_atax_B8_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B8_out_stall_out_0),
        .in_i_valid(bb_atax_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B7_out_c0_exe2159),
        .in_i_data_1_tpl(bb_atax_B7_out_c0_exe3160),
        .in_i_data_2_tpl(bb_atax_B7_out_c0_exe5162),
        .in_i_data_3_tpl(bb_atax_B7_out_c0_exe6163),
        .in_i_data_4_tpl(bb_atax_B7_out_c0_exe7164),
        .in_i_data_5_tpl(bb_atax_B7_out_c0_exe8165),
        .out_o_stall(bb_atax_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_atax_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B8(BLACKBOX,18)
    atax_bb_B8 thebb_atax_B8 (
        .in_c0_exe21592_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe31603_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe51624_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61635_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe71646_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe81657_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_feedback_in_20(bb_atax_B10_out_feedback_out_20),
        .in_feedback_valid_in_20(bb_atax_B10_out_feedback_valid_out_20),
        .in_flush(in_start),
        .in_memdep_5206_atax_avm_readdata(in_memdep_5206_atax_avm_readdata),
        .in_memdep_5206_atax_avm_readdatavalid(in_memdep_5206_atax_avm_readdatavalid),
        .in_memdep_5206_atax_avm_waitrequest(in_memdep_5206_atax_avm_waitrequest),
        .in_memdep_5206_atax_avm_writeack(in_memdep_5206_atax_avm_writeack),
        .in_stall_in_0(loop_limiter_atax5_out_o_stall),
        .in_unnamed_atax14_atax_avm_readdata(in_unnamed_atax14_atax_avm_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(in_unnamed_atax14_atax_avm_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(in_unnamed_atax14_atax_avm_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(in_unnamed_atax14_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B8_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1173(bb_atax_B8_out_c0_exe1173),
        .out_c0_exe21592(bb_atax_B8_out_c0_exe21592),
        .out_c0_exe71646(bb_atax_B8_out_c0_exe71646),
        .out_c0_exe81657(bb_atax_B8_out_c0_exe81657),
        .out_feedback_stall_out_20(bb_atax_B8_out_feedback_stall_out_20),
        .out_memdep_5206_atax_avm_address(bb_atax_B8_out_memdep_5206_atax_avm_address),
        .out_memdep_5206_atax_avm_burstcount(bb_atax_B8_out_memdep_5206_atax_avm_burstcount),
        .out_memdep_5206_atax_avm_byteenable(bb_atax_B8_out_memdep_5206_atax_avm_byteenable),
        .out_memdep_5206_atax_avm_enable(bb_atax_B8_out_memdep_5206_atax_avm_enable),
        .out_memdep_5206_atax_avm_read(bb_atax_B8_out_memdep_5206_atax_avm_read),
        .out_memdep_5206_atax_avm_write(bb_atax_B8_out_memdep_5206_atax_avm_write),
        .out_memdep_5206_atax_avm_writedata(bb_atax_B8_out_memdep_5206_atax_avm_writedata),
        .out_memdep_phi_pop20(bb_atax_B8_out_memdep_phi_pop20),
        .out_stall_out_0(bb_atax_B8_out_stall_out_0),
        .out_unnamed_atax14_atax_avm_address(bb_atax_B8_out_unnamed_atax14_atax_avm_address),
        .out_unnamed_atax14_atax_avm_burstcount(bb_atax_B8_out_unnamed_atax14_atax_avm_burstcount),
        .out_unnamed_atax14_atax_avm_byteenable(bb_atax_B8_out_unnamed_atax14_atax_avm_byteenable),
        .out_unnamed_atax14_atax_avm_enable(bb_atax_B8_out_unnamed_atax14_atax_avm_enable),
        .out_unnamed_atax14_atax_avm_read(bb_atax_B8_out_unnamed_atax14_atax_avm_read),
        .out_unnamed_atax14_atax_avm_write(bb_atax_B8_out_unnamed_atax14_atax_avm_write),
        .out_unnamed_atax14_atax_avm_writedata(bb_atax_B8_out_unnamed_atax14_atax_avm_writedata),
        .out_valid_out_0(bb_atax_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B10_sr_0_aunroll_x(BLACKBOX,330)
    atax_bb_B10_sr_0 thebb_atax_B10_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B10_out_stall_out_0),
        .in_i_valid(bb_atax_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B9_out_c0_exe2194),
        .in_i_data_1_tpl(bb_atax_B9_out_c0_exe4196),
        .in_i_data_2_tpl(bb_atax_B9_out_c0_exe5197),
        .out_o_stall(bb_atax_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B10(BLACKBOX,10)
    atax_bb_B10 thebb_atax_B10 (
        .in_c0_exe21948_0(bb_atax_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe41969_0(bb_atax_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe519710_0(bb_atax_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_20(bb_atax_B8_out_feedback_stall_out_20),
        .in_stall_in_0(bb_atax_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_atax_B10_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_20(bb_atax_B10_out_feedback_out_20),
        .out_feedback_valid_out_20(bb_atax_B10_out_feedback_valid_out_20),
        .out_stall_in_0(bb_atax_B10_out_stall_in_0),
        .out_stall_out_0(bb_atax_B10_out_stall_out_0),
        .out_valid_out_0(bb_atax_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B11_sr_0_aunroll_x(BLACKBOX,331)
    atax_bb_B11_sr_0 thebb_atax_B11_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B11_out_stall_out_0),
        .in_i_valid(bb_atax_B10_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
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

    // loop_limiter_atax2(BLACKBOX,186)
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

    // bb_atax_B12_sr_1_aunroll_x(BLACKBOX,332)
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

    // bb_atax_B12(BLACKBOX,12)
    atax_bb_B12 thebb_atax_B12 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_atax_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_1_0(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .in_memdep_7_atax_avm_readdata(in_memdep_7_atax_avm_readdata),
        .in_memdep_7_atax_avm_readdatavalid(in_memdep_7_atax_avm_readdatavalid),
        .in_memdep_7_atax_avm_waitrequest(in_memdep_7_atax_avm_waitrequest),
        .in_memdep_7_atax_avm_writeack(in_memdep_7_atax_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax18_atax_avm_readdata(in_unnamed_atax18_atax_avm_readdata),
        .in_unnamed_atax18_atax_avm_readdatavalid(in_unnamed_atax18_atax_avm_readdatavalid),
        .in_unnamed_atax18_atax_avm_waitrequest(in_unnamed_atax18_atax_avm_waitrequest),
        .in_unnamed_atax18_atax_avm_writeack(in_unnamed_atax18_atax_avm_writeack),
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
        .out_unnamed_atax18_atax_avm_address(bb_atax_B12_out_unnamed_atax18_atax_avm_address),
        .out_unnamed_atax18_atax_avm_burstcount(bb_atax_B12_out_unnamed_atax18_atax_avm_burstcount),
        .out_unnamed_atax18_atax_avm_byteenable(bb_atax_B12_out_unnamed_atax18_atax_avm_byteenable),
        .out_unnamed_atax18_atax_avm_enable(bb_atax_B12_out_unnamed_atax18_atax_avm_enable),
        .out_unnamed_atax18_atax_avm_read(bb_atax_B12_out_unnamed_atax18_atax_avm_read),
        .out_unnamed_atax18_atax_avm_write(bb_atax_B12_out_unnamed_atax18_atax_avm_write),
        .out_unnamed_atax18_atax_avm_writedata(bb_atax_B12_out_unnamed_atax18_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B12_out_valid_in_0),
        .out_valid_in_1(bb_atax_B12_out_valid_in_1),
        .out_valid_out_0(bb_atax_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B13_sr_0_aunroll_x(BLACKBOX,333)
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

    // bb_atax_B13(BLACKBOX,13)
    atax_bb_B13 thebb_atax_B13 (
        .in_feedback_stall_in_1(bb_atax_B1_start_aunroll_x_out_feedback_stall_out_1),
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

    // i_llvm_fpga_pipeline_keep_going83_atax1_valid_fifo(BLACKBOX,94)
    atax_i_llvm_fpga_pipeline_keep_going83_1_valid_fifo thei_llvm_fpga_pipeline_keep_going83_atax1_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going83_atax1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going83_atax1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going83_atax1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going83_atax1_sr(BLACKBOX,93)
    atax_i_llvm_fpga_pipeline_keep_going83_1_sr thei_llvm_fpga_pipeline_keep_going83_atax1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going83_atax1_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going83_atax1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going83_atax1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B1_start_aunroll_x(BLACKBOX,334)
    atax_bb_B1_start thebb_atax_B1_start_aunroll_x (
        .in_feedback_in_1(bb_atax_B13_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_atax_B13_out_feedback_valid_out_1),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going83_atax1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going83_atax1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_atax_B1_start_aunroll_x_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_1_0(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_atax_o_fifoalmost_full(bb_atax_B1_start_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(bb_atax_B1_start_aunroll_x_out_iord_bl_call_atax_o_fifoready),
        .out_pipeline_valid_out(bb_atax_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_atax_B1_start_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_atax_B1_start_aunroll_x_out_stall_out_1),
        .out_valid_in_0(bb_atax_B1_start_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_atax_B1_start_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_atax_B1_start_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
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
    assign atax_B1_start_x_i_stall_pred = bb_atax_B1_start_aunroll_x_out_stall_out_1;
    assign atax_B1_start_x_i_stall_succ = bb_atax_B13_out_stall_in_0;
    assign atax_B1_start_x_i_valid_loop = bb_atax_B1_start_aunroll_x_out_valid_in_0;
    assign atax_B1_start_x_i_valid_pred = bb_atax_B1_start_aunroll_x_out_valid_in_1;
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
    assign atax_B12_x_i_stall_pred = bb_atax_B12_sr_1_aunroll_x_out_o_stall;
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
    assign atax_B3_x_i_stall_pred = bb_atax_B3_sr_1_aunroll_x_out_o_stall;
    assign atax_B3_x_i_stall_succ = bb_atax_B5_out_stall_in_0;
    assign atax_B3_x_i_valid_loop = bb_atax_B3_aunroll_x_out_valid_in_0;
    assign atax_B3_x_i_valid_pred = bb_atax_B3_aunroll_x_out_valid_in_1;
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
    assign atax_B4_x_i_stall_pred = bb_atax_B4_sr_1_aunroll_x_out_o_stall;
    assign atax_B4_x_i_stall_succ = bb_atax_B4_aunroll_x_out_stall_in_0;
    assign atax_B4_x_i_valid_loop = bb_atax_B4_aunroll_x_out_valid_in_0;
    assign atax_B4_x_i_valid_pred = bb_atax_B4_aunroll_x_out_valid_in_1;
    assign atax_B4_x_i_valid_succ = bb_atax_B4_aunroll_x_out_valid_out_0;
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
    assign atax_B6_x_i_stall_pred = bb_atax_B6_sr_1_aunroll_x_out_o_stall;
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
    assign atax_B7_x_i_stall_pred = bb_atax_B7_sr_1_aunroll_x_out_o_stall;
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
    assign atax_B9_x_i_stall_pred = bb_atax_B9_sr_1_aunroll_x_out_o_stall;
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

    // out_arrayidx28_promoted2_atax_avm_address(GPOUT,190)
    assign out_arrayidx28_promoted2_atax_avm_address = bb_atax_B6_out_arrayidx28_promoted2_atax_avm_address;

    // out_arrayidx28_promoted2_atax_avm_burstcount(GPOUT,191)
    assign out_arrayidx28_promoted2_atax_avm_burstcount = bb_atax_B6_out_arrayidx28_promoted2_atax_avm_burstcount;

    // out_arrayidx28_promoted2_atax_avm_byteenable(GPOUT,192)
    assign out_arrayidx28_promoted2_atax_avm_byteenable = bb_atax_B6_out_arrayidx28_promoted2_atax_avm_byteenable;

    // out_arrayidx28_promoted2_atax_avm_enable(GPOUT,193)
    assign out_arrayidx28_promoted2_atax_avm_enable = bb_atax_B6_out_arrayidx28_promoted2_atax_avm_enable;

    // out_arrayidx28_promoted2_atax_avm_read(GPOUT,194)
    assign out_arrayidx28_promoted2_atax_avm_read = bb_atax_B6_out_arrayidx28_promoted2_atax_avm_read;

    // out_arrayidx28_promoted2_atax_avm_write(GPOUT,195)
    assign out_arrayidx28_promoted2_atax_avm_write = bb_atax_B6_out_arrayidx28_promoted2_atax_avm_write;

    // out_arrayidx28_promoted2_atax_avm_writedata(GPOUT,196)
    assign out_arrayidx28_promoted2_atax_avm_writedata = bb_atax_B6_out_arrayidx28_promoted2_atax_avm_writedata;

    // out_iord_bl_call_atax_o_fifoalmost_full(GPOUT,197)
    assign out_iord_bl_call_atax_o_fifoalmost_full = bb_atax_B1_start_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full;

    // out_iord_bl_call_atax_o_fifoready(GPOUT,198)
    assign out_iord_bl_call_atax_o_fifoready = bb_atax_B1_start_aunroll_x_out_iord_bl_call_atax_o_fifoready;

    // out_iowr_bl_return_atax_o_fifodata(GPOUT,199)
    assign out_iowr_bl_return_atax_o_fifodata = bb_atax_B13_out_iowr_bl_return_atax_o_fifodata;

    // out_iowr_bl_return_atax_o_fifovalid(GPOUT,200)
    assign out_iowr_bl_return_atax_o_fifovalid = bb_atax_B13_out_iowr_bl_return_atax_o_fifovalid;

    // out_memdep_1_atax_avm_address(GPOUT,201)
    assign out_memdep_1_atax_avm_address = bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_address;

    // out_memdep_1_atax_avm_burstcount(GPOUT,202)
    assign out_memdep_1_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_burstcount;

    // out_memdep_1_atax_avm_byteenable(GPOUT,203)
    assign out_memdep_1_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_byteenable;

    // out_memdep_1_atax_avm_enable(GPOUT,204)
    assign out_memdep_1_atax_avm_enable = bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_enable;

    // out_memdep_1_atax_avm_read(GPOUT,205)
    assign out_memdep_1_atax_avm_read = bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_read;

    // out_memdep_1_atax_avm_write(GPOUT,206)
    assign out_memdep_1_atax_avm_write = bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_write;

    // out_memdep_1_atax_avm_writedata(GPOUT,207)
    assign out_memdep_1_atax_avm_writedata = bb_atax_B4_aunroll_x_out_memdep_1_atax_avm_writedata;

    // out_memdep_3_atax_avm_address(GPOUT,208)
    assign out_memdep_3_atax_avm_address = bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_address;

    // out_memdep_3_atax_avm_burstcount(GPOUT,209)
    assign out_memdep_3_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_burstcount;

    // out_memdep_3_atax_avm_byteenable(GPOUT,210)
    assign out_memdep_3_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_byteenable;

    // out_memdep_3_atax_avm_enable(GPOUT,211)
    assign out_memdep_3_atax_avm_enable = bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_enable;

    // out_memdep_3_atax_avm_read(GPOUT,212)
    assign out_memdep_3_atax_avm_read = bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_read;

    // out_memdep_3_atax_avm_write(GPOUT,213)
    assign out_memdep_3_atax_avm_write = bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_write;

    // out_memdep_3_atax_avm_writedata(GPOUT,214)
    assign out_memdep_3_atax_avm_writedata = bb_atax_B3_aunroll_x_out_memdep_3_atax_avm_writedata;

    // out_memdep_4_atax_avm_address(GPOUT,215)
    assign out_memdep_4_atax_avm_address = bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_address;

    // out_memdep_4_atax_avm_burstcount(GPOUT,216)
    assign out_memdep_4_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_burstcount;

    // out_memdep_4_atax_avm_byteenable(GPOUT,217)
    assign out_memdep_4_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_byteenable;

    // out_memdep_4_atax_avm_enable(GPOUT,218)
    assign out_memdep_4_atax_avm_enable = bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_enable;

    // out_memdep_4_atax_avm_read(GPOUT,219)
    assign out_memdep_4_atax_avm_read = bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_read;

    // out_memdep_4_atax_avm_write(GPOUT,220)
    assign out_memdep_4_atax_avm_write = bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_write;

    // out_memdep_4_atax_avm_writedata(GPOUT,221)
    assign out_memdep_4_atax_avm_writedata = bb_atax_B3_aunroll_x_out_memdep_4_atax_avm_writedata;

    // out_memdep_5206_atax_avm_address(GPOUT,222)
    assign out_memdep_5206_atax_avm_address = bb_atax_B8_out_memdep_5206_atax_avm_address;

    // out_memdep_5206_atax_avm_burstcount(GPOUT,223)
    assign out_memdep_5206_atax_avm_burstcount = bb_atax_B8_out_memdep_5206_atax_avm_burstcount;

    // out_memdep_5206_atax_avm_byteenable(GPOUT,224)
    assign out_memdep_5206_atax_avm_byteenable = bb_atax_B8_out_memdep_5206_atax_avm_byteenable;

    // out_memdep_5206_atax_avm_enable(GPOUT,225)
    assign out_memdep_5206_atax_avm_enable = bb_atax_B8_out_memdep_5206_atax_avm_enable;

    // out_memdep_5206_atax_avm_read(GPOUT,226)
    assign out_memdep_5206_atax_avm_read = bb_atax_B8_out_memdep_5206_atax_avm_read;

    // out_memdep_5206_atax_avm_write(GPOUT,227)
    assign out_memdep_5206_atax_avm_write = bb_atax_B8_out_memdep_5206_atax_avm_write;

    // out_memdep_5206_atax_avm_writedata(GPOUT,228)
    assign out_memdep_5206_atax_avm_writedata = bb_atax_B8_out_memdep_5206_atax_avm_writedata;

    // out_memdep_6_atax_avm_address(GPOUT,229)
    assign out_memdep_6_atax_avm_address = bb_atax_B9_out_memdep_6_atax_avm_address;

    // out_memdep_6_atax_avm_burstcount(GPOUT,230)
    assign out_memdep_6_atax_avm_burstcount = bb_atax_B9_out_memdep_6_atax_avm_burstcount;

    // out_memdep_6_atax_avm_byteenable(GPOUT,231)
    assign out_memdep_6_atax_avm_byteenable = bb_atax_B9_out_memdep_6_atax_avm_byteenable;

    // out_memdep_6_atax_avm_enable(GPOUT,232)
    assign out_memdep_6_atax_avm_enable = bb_atax_B9_out_memdep_6_atax_avm_enable;

    // out_memdep_6_atax_avm_read(GPOUT,233)
    assign out_memdep_6_atax_avm_read = bb_atax_B9_out_memdep_6_atax_avm_read;

    // out_memdep_6_atax_avm_write(GPOUT,234)
    assign out_memdep_6_atax_avm_write = bb_atax_B9_out_memdep_6_atax_avm_write;

    // out_memdep_6_atax_avm_writedata(GPOUT,235)
    assign out_memdep_6_atax_avm_writedata = bb_atax_B9_out_memdep_6_atax_avm_writedata;

    // out_memdep_7_atax_avm_address(GPOUT,236)
    assign out_memdep_7_atax_avm_address = bb_atax_B12_out_memdep_7_atax_avm_address;

    // out_memdep_7_atax_avm_burstcount(GPOUT,237)
    assign out_memdep_7_atax_avm_burstcount = bb_atax_B12_out_memdep_7_atax_avm_burstcount;

    // out_memdep_7_atax_avm_byteenable(GPOUT,238)
    assign out_memdep_7_atax_avm_byteenable = bb_atax_B12_out_memdep_7_atax_avm_byteenable;

    // out_memdep_7_atax_avm_enable(GPOUT,239)
    assign out_memdep_7_atax_avm_enable = bb_atax_B12_out_memdep_7_atax_avm_enable;

    // out_memdep_7_atax_avm_read(GPOUT,240)
    assign out_memdep_7_atax_avm_read = bb_atax_B12_out_memdep_7_atax_avm_read;

    // out_memdep_7_atax_avm_write(GPOUT,241)
    assign out_memdep_7_atax_avm_write = bb_atax_B12_out_memdep_7_atax_avm_write;

    // out_memdep_7_atax_avm_writedata(GPOUT,242)
    assign out_memdep_7_atax_avm_writedata = bb_atax_B12_out_memdep_7_atax_avm_writedata;

    // out_memdep_atax_avm_address(GPOUT,243)
    assign out_memdep_atax_avm_address = bb_atax_B3_aunroll_x_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,244)
    assign out_memdep_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,245)
    assign out_memdep_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,246)
    assign out_memdep_atax_avm_enable = bb_atax_B3_aunroll_x_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,247)
    assign out_memdep_atax_avm_read = bb_atax_B3_aunroll_x_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,248)
    assign out_memdep_atax_avm_write = bb_atax_B3_aunroll_x_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,249)
    assign out_memdep_atax_avm_writedata = bb_atax_B3_aunroll_x_out_memdep_atax_avm_writedata;

    // out_o_active_memdep_7(GPOUT,250)
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

    // out_stall_out(GPOUT,251)
    assign out_stall_out = bb_atax_B0_runOnce_out_stall_out_0;

    // out_unnamed_atax10_atax_avm_address(GPOUT,252)
    assign out_unnamed_atax10_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_address;

    // out_unnamed_atax10_atax_avm_burstcount(GPOUT,253)
    assign out_unnamed_atax10_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_burstcount;

    // out_unnamed_atax10_atax_avm_byteenable(GPOUT,254)
    assign out_unnamed_atax10_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_byteenable;

    // out_unnamed_atax10_atax_avm_enable(GPOUT,255)
    assign out_unnamed_atax10_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_enable;

    // out_unnamed_atax10_atax_avm_read(GPOUT,256)
    assign out_unnamed_atax10_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_read;

    // out_unnamed_atax10_atax_avm_write(GPOUT,257)
    assign out_unnamed_atax10_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_write;

    // out_unnamed_atax10_atax_avm_writedata(GPOUT,258)
    assign out_unnamed_atax10_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_writedata;

    // out_unnamed_atax11_atax_avm_address(GPOUT,259)
    assign out_unnamed_atax11_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_address;

    // out_unnamed_atax11_atax_avm_burstcount(GPOUT,260)
    assign out_unnamed_atax11_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_burstcount;

    // out_unnamed_atax11_atax_avm_byteenable(GPOUT,261)
    assign out_unnamed_atax11_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_byteenable;

    // out_unnamed_atax11_atax_avm_enable(GPOUT,262)
    assign out_unnamed_atax11_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_enable;

    // out_unnamed_atax11_atax_avm_read(GPOUT,263)
    assign out_unnamed_atax11_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_read;

    // out_unnamed_atax11_atax_avm_write(GPOUT,264)
    assign out_unnamed_atax11_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_write;

    // out_unnamed_atax11_atax_avm_writedata(GPOUT,265)
    assign out_unnamed_atax11_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_writedata;

    // out_unnamed_atax12_atax_avm_address(GPOUT,266)
    assign out_unnamed_atax12_atax_avm_address = bb_atax_B7_out_unnamed_atax12_atax_avm_address;

    // out_unnamed_atax12_atax_avm_burstcount(GPOUT,267)
    assign out_unnamed_atax12_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax12_atax_avm_burstcount;

    // out_unnamed_atax12_atax_avm_byteenable(GPOUT,268)
    assign out_unnamed_atax12_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax12_atax_avm_byteenable;

    // out_unnamed_atax12_atax_avm_enable(GPOUT,269)
    assign out_unnamed_atax12_atax_avm_enable = bb_atax_B7_out_unnamed_atax12_atax_avm_enable;

    // out_unnamed_atax12_atax_avm_read(GPOUT,270)
    assign out_unnamed_atax12_atax_avm_read = bb_atax_B7_out_unnamed_atax12_atax_avm_read;

    // out_unnamed_atax12_atax_avm_write(GPOUT,271)
    assign out_unnamed_atax12_atax_avm_write = bb_atax_B7_out_unnamed_atax12_atax_avm_write;

    // out_unnamed_atax12_atax_avm_writedata(GPOUT,272)
    assign out_unnamed_atax12_atax_avm_writedata = bb_atax_B7_out_unnamed_atax12_atax_avm_writedata;

    // out_unnamed_atax13_atax_avm_address(GPOUT,273)
    assign out_unnamed_atax13_atax_avm_address = bb_atax_B7_out_unnamed_atax13_atax_avm_address;

    // out_unnamed_atax13_atax_avm_burstcount(GPOUT,274)
    assign out_unnamed_atax13_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax13_atax_avm_burstcount;

    // out_unnamed_atax13_atax_avm_byteenable(GPOUT,275)
    assign out_unnamed_atax13_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax13_atax_avm_byteenable;

    // out_unnamed_atax13_atax_avm_enable(GPOUT,276)
    assign out_unnamed_atax13_atax_avm_enable = bb_atax_B7_out_unnamed_atax13_atax_avm_enable;

    // out_unnamed_atax13_atax_avm_read(GPOUT,277)
    assign out_unnamed_atax13_atax_avm_read = bb_atax_B7_out_unnamed_atax13_atax_avm_read;

    // out_unnamed_atax13_atax_avm_write(GPOUT,278)
    assign out_unnamed_atax13_atax_avm_write = bb_atax_B7_out_unnamed_atax13_atax_avm_write;

    // out_unnamed_atax13_atax_avm_writedata(GPOUT,279)
    assign out_unnamed_atax13_atax_avm_writedata = bb_atax_B7_out_unnamed_atax13_atax_avm_writedata;

    // out_unnamed_atax14_atax_avm_address(GPOUT,280)
    assign out_unnamed_atax14_atax_avm_address = bb_atax_B8_out_unnamed_atax14_atax_avm_address;

    // out_unnamed_atax14_atax_avm_burstcount(GPOUT,281)
    assign out_unnamed_atax14_atax_avm_burstcount = bb_atax_B8_out_unnamed_atax14_atax_avm_burstcount;

    // out_unnamed_atax14_atax_avm_byteenable(GPOUT,282)
    assign out_unnamed_atax14_atax_avm_byteenable = bb_atax_B8_out_unnamed_atax14_atax_avm_byteenable;

    // out_unnamed_atax14_atax_avm_enable(GPOUT,283)
    assign out_unnamed_atax14_atax_avm_enable = bb_atax_B8_out_unnamed_atax14_atax_avm_enable;

    // out_unnamed_atax14_atax_avm_read(GPOUT,284)
    assign out_unnamed_atax14_atax_avm_read = bb_atax_B8_out_unnamed_atax14_atax_avm_read;

    // out_unnamed_atax14_atax_avm_write(GPOUT,285)
    assign out_unnamed_atax14_atax_avm_write = bb_atax_B8_out_unnamed_atax14_atax_avm_write;

    // out_unnamed_atax14_atax_avm_writedata(GPOUT,286)
    assign out_unnamed_atax14_atax_avm_writedata = bb_atax_B8_out_unnamed_atax14_atax_avm_writedata;

    // out_unnamed_atax16_atax_avm_address(GPOUT,287)
    assign out_unnamed_atax16_atax_avm_address = bb_atax_B9_out_unnamed_atax16_atax_avm_address;

    // out_unnamed_atax16_atax_avm_burstcount(GPOUT,288)
    assign out_unnamed_atax16_atax_avm_burstcount = bb_atax_B9_out_unnamed_atax16_atax_avm_burstcount;

    // out_unnamed_atax16_atax_avm_byteenable(GPOUT,289)
    assign out_unnamed_atax16_atax_avm_byteenable = bb_atax_B9_out_unnamed_atax16_atax_avm_byteenable;

    // out_unnamed_atax16_atax_avm_enable(GPOUT,290)
    assign out_unnamed_atax16_atax_avm_enable = bb_atax_B9_out_unnamed_atax16_atax_avm_enable;

    // out_unnamed_atax16_atax_avm_read(GPOUT,291)
    assign out_unnamed_atax16_atax_avm_read = bb_atax_B9_out_unnamed_atax16_atax_avm_read;

    // out_unnamed_atax16_atax_avm_write(GPOUT,292)
    assign out_unnamed_atax16_atax_avm_write = bb_atax_B9_out_unnamed_atax16_atax_avm_write;

    // out_unnamed_atax16_atax_avm_writedata(GPOUT,293)
    assign out_unnamed_atax16_atax_avm_writedata = bb_atax_B9_out_unnamed_atax16_atax_avm_writedata;

    // out_unnamed_atax17_atax_avm_address(GPOUT,294)
    assign out_unnamed_atax17_atax_avm_address = bb_atax_B9_out_unnamed_atax17_atax_avm_address;

    // out_unnamed_atax17_atax_avm_burstcount(GPOUT,295)
    assign out_unnamed_atax17_atax_avm_burstcount = bb_atax_B9_out_unnamed_atax17_atax_avm_burstcount;

    // out_unnamed_atax17_atax_avm_byteenable(GPOUT,296)
    assign out_unnamed_atax17_atax_avm_byteenable = bb_atax_B9_out_unnamed_atax17_atax_avm_byteenable;

    // out_unnamed_atax17_atax_avm_enable(GPOUT,297)
    assign out_unnamed_atax17_atax_avm_enable = bb_atax_B9_out_unnamed_atax17_atax_avm_enable;

    // out_unnamed_atax17_atax_avm_read(GPOUT,298)
    assign out_unnamed_atax17_atax_avm_read = bb_atax_B9_out_unnamed_atax17_atax_avm_read;

    // out_unnamed_atax17_atax_avm_write(GPOUT,299)
    assign out_unnamed_atax17_atax_avm_write = bb_atax_B9_out_unnamed_atax17_atax_avm_write;

    // out_unnamed_atax17_atax_avm_writedata(GPOUT,300)
    assign out_unnamed_atax17_atax_avm_writedata = bb_atax_B9_out_unnamed_atax17_atax_avm_writedata;

    // out_unnamed_atax18_atax_avm_address(GPOUT,301)
    assign out_unnamed_atax18_atax_avm_address = bb_atax_B12_out_unnamed_atax18_atax_avm_address;

    // out_unnamed_atax18_atax_avm_burstcount(GPOUT,302)
    assign out_unnamed_atax18_atax_avm_burstcount = bb_atax_B12_out_unnamed_atax18_atax_avm_burstcount;

    // out_unnamed_atax18_atax_avm_byteenable(GPOUT,303)
    assign out_unnamed_atax18_atax_avm_byteenable = bb_atax_B12_out_unnamed_atax18_atax_avm_byteenable;

    // out_unnamed_atax18_atax_avm_enable(GPOUT,304)
    assign out_unnamed_atax18_atax_avm_enable = bb_atax_B12_out_unnamed_atax18_atax_avm_enable;

    // out_unnamed_atax18_atax_avm_read(GPOUT,305)
    assign out_unnamed_atax18_atax_avm_read = bb_atax_B12_out_unnamed_atax18_atax_avm_read;

    // out_unnamed_atax18_atax_avm_write(GPOUT,306)
    assign out_unnamed_atax18_atax_avm_write = bb_atax_B12_out_unnamed_atax18_atax_avm_write;

    // out_unnamed_atax18_atax_avm_writedata(GPOUT,307)
    assign out_unnamed_atax18_atax_avm_writedata = bb_atax_B12_out_unnamed_atax18_atax_avm_writedata;

    // out_unnamed_atax6_atax_avm_address(GPOUT,308)
    assign out_unnamed_atax6_atax_avm_address = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_address;

    // out_unnamed_atax6_atax_avm_burstcount(GPOUT,309)
    assign out_unnamed_atax6_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_burstcount;

    // out_unnamed_atax6_atax_avm_byteenable(GPOUT,310)
    assign out_unnamed_atax6_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_byteenable;

    // out_unnamed_atax6_atax_avm_enable(GPOUT,311)
    assign out_unnamed_atax6_atax_avm_enable = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_enable;

    // out_unnamed_atax6_atax_avm_read(GPOUT,312)
    assign out_unnamed_atax6_atax_avm_read = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_read;

    // out_unnamed_atax6_atax_avm_write(GPOUT,313)
    assign out_unnamed_atax6_atax_avm_write = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_write;

    // out_unnamed_atax6_atax_avm_writedata(GPOUT,314)
    assign out_unnamed_atax6_atax_avm_writedata = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_writedata;

    // out_unnamed_atax8_atax_avm_address(GPOUT,315)
    assign out_unnamed_atax8_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_address;

    // out_unnamed_atax8_atax_avm_burstcount(GPOUT,316)
    assign out_unnamed_atax8_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_burstcount;

    // out_unnamed_atax8_atax_avm_byteenable(GPOUT,317)
    assign out_unnamed_atax8_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_byteenable;

    // out_unnamed_atax8_atax_avm_enable(GPOUT,318)
    assign out_unnamed_atax8_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_enable;

    // out_unnamed_atax8_atax_avm_read(GPOUT,319)
    assign out_unnamed_atax8_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_read;

    // out_unnamed_atax8_atax_avm_write(GPOUT,320)
    assign out_unnamed_atax8_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_write;

    // out_unnamed_atax8_atax_avm_writedata(GPOUT,321)
    assign out_unnamed_atax8_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_writedata;

    // out_unnamed_atax9_atax_avm_address(GPOUT,322)
    assign out_unnamed_atax9_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_address;

    // out_unnamed_atax9_atax_avm_burstcount(GPOUT,323)
    assign out_unnamed_atax9_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_burstcount;

    // out_unnamed_atax9_atax_avm_byteenable(GPOUT,324)
    assign out_unnamed_atax9_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_byteenable;

    // out_unnamed_atax9_atax_avm_enable(GPOUT,325)
    assign out_unnamed_atax9_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_enable;

    // out_unnamed_atax9_atax_avm_read(GPOUT,326)
    assign out_unnamed_atax9_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_read;

    // out_unnamed_atax9_atax_avm_write(GPOUT,327)
    assign out_unnamed_atax9_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_write;

    // out_unnamed_atax9_atax_avm_writedata(GPOUT,328)
    assign out_unnamed_atax9_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_writedata;

    // out_valid_out(GPOUT,329)
    assign out_valid_out = GND_q;

endmodule
