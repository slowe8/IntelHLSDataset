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
// SystemVerilog created on Wed Dec 13 00:53:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_x,
    input wire [63:0] in_arg_y_out,
    input wire [31:0] in_arrayidx28_promoted11_atax_avm_readdata,
    input wire [0:0] in_arrayidx28_promoted11_atax_avm_readdatavalid,
    input wire [0:0] in_arrayidx28_promoted11_atax_avm_waitrequest,
    input wire [0:0] in_arrayidx28_promoted11_atax_avm_writeack,
    input wire [191:0] in_iord_bl_call_atax_i_fifodata,
    input wire [0:0] in_iord_bl_call_atax_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_atax_i_fifoready,
    input wire [63:0] in_memcoalesce_load_atax_fpgaunique_109_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_109_atax_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_109_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_109_atax_avm_writeack,
    input wire [63:0] in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writeack,
    input wire [127:0] in_memcoalesce_load_atax_fpgaunique_97_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_97_atax_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_97_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_97_atax_avm_writeack,
    input wire [63:0] in_memdep_12_atax_avm_readdata,
    input wire [0:0] in_memdep_12_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_12_atax_avm_waitrequest,
    input wire [0:0] in_memdep_12_atax_avm_writeack,
    input wire [31:0] in_memdep_13_atax_avm_readdata,
    input wire [0:0] in_memdep_13_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_13_atax_avm_waitrequest,
    input wire [0:0] in_memdep_13_atax_avm_writeack,
    input wire [31:0] in_memdep_14220_atax_avm_readdata,
    input wire [0:0] in_memdep_14220_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_14220_atax_avm_waitrequest,
    input wire [0:0] in_memdep_14220_atax_avm_writeack,
    input wire [63:0] in_memdep_15_atax_avm_readdata,
    input wire [0:0] in_memdep_15_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_15_atax_avm_waitrequest,
    input wire [0:0] in_memdep_15_atax_avm_writeack,
    input wire [63:0] in_memdep_16_atax_avm_readdata,
    input wire [0:0] in_memdep_16_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_16_atax_avm_waitrequest,
    input wire [0:0] in_memdep_16_atax_avm_writeack,
    input wire [63:0] in_memdep_38_atax_avm_readdata,
    input wire [0:0] in_memdep_38_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_38_atax_avm_waitrequest,
    input wire [0:0] in_memdep_38_atax_avm_writeack,
    input wire [127:0] in_memdep_6_atax_avm_readdata,
    input wire [0:0] in_memdep_6_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_6_atax_avm_waitrequest,
    input wire [0:0] in_memdep_6_atax_avm_writeack,
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
    output wire [31:0] out_arrayidx28_promoted11_atax_avm_address,
    output wire [0:0] out_arrayidx28_promoted11_atax_avm_burstcount,
    output wire [3:0] out_arrayidx28_promoted11_atax_avm_byteenable,
    output wire [0:0] out_arrayidx28_promoted11_atax_avm_enable,
    output wire [0:0] out_arrayidx28_promoted11_atax_avm_read,
    output wire [0:0] out_arrayidx28_promoted11_atax_avm_write,
    output wire [31:0] out_arrayidx28_promoted11_atax_avm_writedata,
    output wire [0:0] out_iord_bl_call_atax_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_atax_o_fifoready,
    output wire [0:0] out_iowr_bl_return_atax_o_fifodata,
    output wire [0:0] out_iowr_bl_return_atax_o_fifovalid,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_109_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_109_atax_avm_burstcount,
    output wire [7:0] out_memcoalesce_load_atax_fpgaunique_109_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_109_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_109_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_109_atax_avm_write,
    output wire [63:0] out_memcoalesce_load_atax_fpgaunique_109_atax_avm_writedata,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount,
    output wire [7:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write,
    output wire [63:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_97_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_97_atax_avm_burstcount,
    output wire [15:0] out_memcoalesce_load_atax_fpgaunique_97_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_97_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_97_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_97_atax_avm_write,
    output wire [127:0] out_memcoalesce_load_atax_fpgaunique_97_atax_avm_writedata,
    output wire [31:0] out_memdep_12_atax_avm_address,
    output wire [0:0] out_memdep_12_atax_avm_burstcount,
    output wire [7:0] out_memdep_12_atax_avm_byteenable,
    output wire [0:0] out_memdep_12_atax_avm_enable,
    output wire [0:0] out_memdep_12_atax_avm_read,
    output wire [0:0] out_memdep_12_atax_avm_write,
    output wire [63:0] out_memdep_12_atax_avm_writedata,
    output wire [31:0] out_memdep_13_atax_avm_address,
    output wire [0:0] out_memdep_13_atax_avm_burstcount,
    output wire [3:0] out_memdep_13_atax_avm_byteenable,
    output wire [0:0] out_memdep_13_atax_avm_enable,
    output wire [0:0] out_memdep_13_atax_avm_read,
    output wire [0:0] out_memdep_13_atax_avm_write,
    output wire [31:0] out_memdep_13_atax_avm_writedata,
    output wire [31:0] out_memdep_14220_atax_avm_address,
    output wire [0:0] out_memdep_14220_atax_avm_burstcount,
    output wire [3:0] out_memdep_14220_atax_avm_byteenable,
    output wire [0:0] out_memdep_14220_atax_avm_enable,
    output wire [0:0] out_memdep_14220_atax_avm_read,
    output wire [0:0] out_memdep_14220_atax_avm_write,
    output wire [31:0] out_memdep_14220_atax_avm_writedata,
    output wire [63:0] out_memdep_15_atax_avm_address,
    output wire [0:0] out_memdep_15_atax_avm_burstcount,
    output wire [7:0] out_memdep_15_atax_avm_byteenable,
    output wire [0:0] out_memdep_15_atax_avm_enable,
    output wire [0:0] out_memdep_15_atax_avm_read,
    output wire [0:0] out_memdep_15_atax_avm_write,
    output wire [63:0] out_memdep_15_atax_avm_writedata,
    output wire [63:0] out_memdep_16_atax_avm_address,
    output wire [0:0] out_memdep_16_atax_avm_burstcount,
    output wire [7:0] out_memdep_16_atax_avm_byteenable,
    output wire [0:0] out_memdep_16_atax_avm_enable,
    output wire [0:0] out_memdep_16_atax_avm_read,
    output wire [0:0] out_memdep_16_atax_avm_write,
    output wire [63:0] out_memdep_16_atax_avm_writedata,
    output wire [31:0] out_memdep_38_atax_avm_address,
    output wire [0:0] out_memdep_38_atax_avm_burstcount,
    output wire [7:0] out_memdep_38_atax_avm_byteenable,
    output wire [0:0] out_memdep_38_atax_avm_enable,
    output wire [0:0] out_memdep_38_atax_avm_read,
    output wire [0:0] out_memdep_38_atax_avm_write,
    output wire [63:0] out_memdep_38_atax_avm_writedata,
    output wire [31:0] out_memdep_6_atax_avm_address,
    output wire [0:0] out_memdep_6_atax_avm_burstcount,
    output wire [15:0] out_memdep_6_atax_avm_byteenable,
    output wire [0:0] out_memdep_6_atax_avm_enable,
    output wire [0:0] out_memdep_6_atax_avm_read,
    output wire [0:0] out_memdep_6_atax_avm_write,
    output wire [127:0] out_memdep_6_atax_avm_writedata,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_o_active_memdep_15,
    output wire [0:0] out_o_active_memdep_16,
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
    wire [0:0] bb_atax_B12_out_lsu_memdep_15_o_active;
    wire [0:0] bb_atax_B12_out_lsu_memdep_16_o_active;
    wire [31:0] bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address;
    wire [0:0] bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable;
    wire [0:0] bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read;
    wire [0:0] bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write;
    wire [63:0] bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata;
    wire [63:0] bb_atax_B12_out_memdep_15_atax_avm_address;
    wire [0:0] bb_atax_B12_out_memdep_15_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_out_memdep_15_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_out_memdep_15_atax_avm_enable;
    wire [0:0] bb_atax_B12_out_memdep_15_atax_avm_read;
    wire [0:0] bb_atax_B12_out_memdep_15_atax_avm_write;
    wire [63:0] bb_atax_B12_out_memdep_15_atax_avm_writedata;
    wire [63:0] bb_atax_B12_out_memdep_16_atax_avm_address;
    wire [0:0] bb_atax_B12_out_memdep_16_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_out_memdep_16_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_out_memdep_16_atax_avm_enable;
    wire [0:0] bb_atax_B12_out_memdep_16_atax_avm_read;
    wire [0:0] bb_atax_B12_out_memdep_16_atax_avm_write;
    wire [63:0] bb_atax_B12_out_memdep_16_atax_avm_writedata;
    wire [0:0] bb_atax_B12_out_pipeline_valid_out;
    wire [0:0] bb_atax_B12_out_stall_in_0;
    wire [0:0] bb_atax_B12_out_stall_out_0;
    wire [0:0] bb_atax_B12_out_stall_out_1;
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
    wire [31:0] bb_atax_B6_out_arrayidx28_promoted11_atax_avm_address;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted11_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_out_arrayidx28_promoted11_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted11_atax_avm_enable;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted11_atax_avm_read;
    wire [0:0] bb_atax_B6_out_arrayidx28_promoted11_atax_avm_write;
    wire [31:0] bb_atax_B6_out_arrayidx28_promoted11_atax_avm_writedata;
    wire [63:0] bb_atax_B6_out_c0_exe1148;
    wire [63:0] bb_atax_B6_out_c0_exe2149;
    wire [31:0] bb_atax_B6_out_c0_exe3150;
    wire [0:0] bb_atax_B6_out_c0_exe4151;
    wire [0:0] bb_atax_B6_out_c0_exe5152;
    wire [0:0] bb_atax_B6_out_c0_exe6153;
    wire [0:0] bb_atax_B6_out_exiting_stall_out;
    wire [0:0] bb_atax_B6_out_exiting_valid_out;
    wire [0:0] bb_atax_B6_out_pipeline_valid_out;
    wire [0:0] bb_atax_B6_out_stall_out_0;
    wire [0:0] bb_atax_B6_out_stall_out_1;
    wire [0:0] bb_atax_B6_out_valid_in_0;
    wire [0:0] bb_atax_B6_out_valid_in_1;
    wire [0:0] bb_atax_B6_out_valid_out_0;
    wire [63:0] bb_atax_B7_out_c0_exe2171;
    wire [31:0] bb_atax_B7_out_c0_exe3172;
    wire [0:0] bb_atax_B7_out_c0_exe5174;
    wire [63:0] bb_atax_B7_out_c0_exe6175;
    wire [0:0] bb_atax_B7_out_c0_exe7176;
    wire [0:0] bb_atax_B7_out_c0_exe8177;
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
    wire [31:0] bb_atax_B8_out_c0_exe1185;
    wire [63:0] bb_atax_B8_out_c0_exe21712;
    wire [0:0] bb_atax_B8_out_c0_exe71766;
    wire [0:0] bb_atax_B8_out_c0_exe81777;
    wire [0:0] bb_atax_B8_out_feedback_stall_out_20;
    wire [31:0] bb_atax_B8_out_memdep_14220_atax_avm_address;
    wire [0:0] bb_atax_B8_out_memdep_14220_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_out_memdep_14220_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_out_memdep_14220_atax_avm_enable;
    wire [0:0] bb_atax_B8_out_memdep_14220_atax_avm_read;
    wire [0:0] bb_atax_B8_out_memdep_14220_atax_avm_write;
    wire [31:0] bb_atax_B8_out_memdep_14220_atax_avm_writedata;
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
    wire [0:0] bb_atax_B9_out_c0_exe2206;
    wire [0:0] bb_atax_B9_out_c0_exe4208;
    wire [0:0] bb_atax_B9_out_c0_exe5209;
    wire [0:0] bb_atax_B9_out_exiting_stall_out;
    wire [0:0] bb_atax_B9_out_exiting_valid_out;
    wire [31:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_address;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_burstcount;
    wire [7:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_read;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_write;
    wire [63:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_writedata;
    wire [31:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_address;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_burstcount;
    wire [15:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_read;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_write;
    wire [127:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_writedata;
    wire [31:0] bb_atax_B9_out_memdep_38_atax_avm_address;
    wire [0:0] bb_atax_B9_out_memdep_38_atax_avm_burstcount;
    wire [7:0] bb_atax_B9_out_memdep_38_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_memdep_38_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_memdep_38_atax_avm_read;
    wire [0:0] bb_atax_B9_out_memdep_38_atax_avm_write;
    wire [63:0] bb_atax_B9_out_memdep_38_atax_avm_writedata;
    wire [0:0] bb_atax_B9_out_pipeline_valid_out;
    wire [0:0] bb_atax_B9_out_stall_in_0;
    wire [0:0] bb_atax_B9_out_stall_out_0;
    wire [0:0] bb_atax_B9_out_stall_out_1;
    wire [0:0] bb_atax_B9_out_valid_in_0;
    wire [0:0] bb_atax_B9_out_valid_in_1;
    wire [0:0] bb_atax_B9_out_valid_out_0;
    wire [63:0] c_float_addrspace_67_undef30_q;
    wire [31:0] c_float_undef32_q;
    wire [1:0] c_i2_067_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_atax2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_atax2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_atax2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_atax2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_atax0_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_atax0_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going94_atax1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going94_atax1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going94_atax1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going94_atax1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax3_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax3_sr_out_o_valid;
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
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_address;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_burstcount;
    wire [7:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_enable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_read;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_write;
    wire [63:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_writedata;
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_address;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_enable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_read;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_write;
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_writedata;
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B3_aunroll_x_out_notcmp88;
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
    wire [31:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_burstcount;
    wire [15:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_write;
    wire [127:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_writedata;
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


    // i_llvm_fpga_pipeline_keep_going_atax3_sr(BLACKBOX,94)
    atax_i_llvm_fpga_pipeline_keep_going_3_sr thei_llvm_fpga_pipeline_keep_going_atax3_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_atax_B12_out_stall_out_0),
        .in_i_valid(bb_atax_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_atax3_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_atax3_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_067(CONSTANT,74)
    assign c_i2_067_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going39_atax6_valid_fifo(BLACKBOX,84)
    atax_i_llvm_fpga_pipeline_keep_going39_6_valid_fifo thei_llvm_fpga_pipeline_keep_going39_atax6_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going39_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going39_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going39_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_undef32(FLOATCONSTANT,21)
    assign c_float_undef32_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going39_atax6_sr(BLACKBOX,83)
    atax_i_llvm_fpga_pipeline_keep_going39_6_sr thei_llvm_fpga_pipeline_keep_going39_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going39_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going39_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going39_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_addrspace_67_undef30(CONSTANT,20)
    assign c_float_addrspace_67_undef30_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_atax_B9(BLACKBOX,19)
    atax_bb_B9 thebb_atax_B9 (
        .in_exitcond29105_pop38126_0(GND_q),
        .in_exitcond29105_pop38126_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked36_0(GND_q),
        .in_forked36_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom27102_pop36121_0(c_float_addrspace_67_undef30_q),
        .in_idxprom27102_pop36121_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memcoalesce_load_atax_fpgaunique_109_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_109_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_109_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_109_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_109_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_109_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_109_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_109_atax_avm_writeack),
        .in_memcoalesce_load_atax_fpgaunique_97_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_97_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_97_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_97_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_97_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_97_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_97_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_97_atax_avm_writeack),
        .in_memdep_38_atax_avm_readdata(in_memdep_38_atax_avm_readdata),
        .in_memdep_38_atax_avm_readdatavalid(in_memdep_38_atax_avm_readdatavalid),
        .in_memdep_38_atax_avm_waitrequest(in_memdep_38_atax_avm_waitrequest),
        .in_memdep_38_atax_avm_writeack(in_memdep_38_atax_avm_writeack),
        .in_memdep_phi_pop20130_0(GND_q),
        .in_memdep_phi_pop20130_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp67107_pop39128_0(GND_q),
        .in_notcmp67107_pop39128_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going39_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax15_0(c_float_undef32_q),
        .in_unnamed_atax15_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going39_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2206(bb_atax_B9_out_c0_exe2206),
        .out_c0_exe4208(bb_atax_B9_out_c0_exe4208),
        .out_c0_exe5209(bb_atax_B9_out_c0_exe5209),
        .out_exiting_stall_out(bb_atax_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B9_out_exiting_valid_out),
        .out_memcoalesce_load_atax_fpgaunique_109_atax_avm_address(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_109_atax_avm_burstcount(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_109_atax_avm_byteenable(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_109_atax_avm_enable(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_109_atax_avm_read(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_109_atax_avm_write(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_109_atax_avm_writedata(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_writedata),
        .out_memcoalesce_load_atax_fpgaunique_97_atax_avm_address(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_97_atax_avm_burstcount(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_97_atax_avm_byteenable(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_97_atax_avm_enable(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_97_atax_avm_read(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_97_atax_avm_write(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_97_atax_avm_writedata(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_writedata),
        .out_memdep_38_atax_avm_address(bb_atax_B9_out_memdep_38_atax_avm_address),
        .out_memdep_38_atax_avm_burstcount(bb_atax_B9_out_memdep_38_atax_avm_burstcount),
        .out_memdep_38_atax_avm_byteenable(bb_atax_B9_out_memdep_38_atax_avm_byteenable),
        .out_memdep_38_atax_avm_enable(bb_atax_B9_out_memdep_38_atax_avm_enable),
        .out_memdep_38_atax_avm_read(bb_atax_B9_out_memdep_38_atax_avm_read),
        .out_memdep_38_atax_avm_write(bb_atax_B9_out_memdep_38_atax_avm_write),
        .out_memdep_38_atax_avm_writedata(bb_atax_B9_out_memdep_38_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B9_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B9_out_stall_in_0),
        .out_stall_out_0(bb_atax_B9_out_stall_out_0),
        .out_stall_out_1(bb_atax_B9_out_stall_out_1),
        .out_valid_in_0(bb_atax_B9_out_valid_in_0),
        .out_valid_in_1(bb_atax_B9_out_valid_in_1),
        .out_valid_out_0(bb_atax_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B9_sr_1_aunroll_x(BLACKBOX,354)
    atax_bb_B9_sr_1 thebb_atax_B9_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_atax5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B8_out_c0_exe21712),
        .in_i_data_2_tpl(bb_atax_B8_out_c0_exe71766),
        .in_i_data_3_tpl(bb_atax_B8_out_c0_exe81777),
        .in_i_data_4_tpl(bb_atax_B8_out_c0_exe1185),
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

    // loop_limiter_atax5(BLACKBOX,191)
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

    // i_llvm_fpga_pipeline_keep_going55_atax6_valid_fifo(BLACKBOX,86)
    atax_i_llvm_fpga_pipeline_keep_going55_6_valid_fifo thei_llvm_fpga_pipeline_keep_going55_atax6_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going55_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going55_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going55_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going55_atax6_sr(BLACKBOX,85)
    atax_i_llvm_fpga_pipeline_keep_going55_6_sr thei_llvm_fpga_pipeline_keep_going55_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going55_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going55_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going55_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going69_atax2_valid_fifo(BLACKBOX,88)
    atax_i_llvm_fpga_pipeline_keep_going69_2_valid_fifo thei_llvm_fpga_pipeline_keep_going69_atax2_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going69_atax2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going69_atax2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going69_atax2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going69_atax2_sr(BLACKBOX,87)
    atax_i_llvm_fpga_pipeline_keep_going69_2_sr thei_llvm_fpga_pipeline_keep_going69_atax2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going69_atax2_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going69_atax2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going69_atax2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going76_atax6_valid_fifo(BLACKBOX,90)
    atax_i_llvm_fpga_pipeline_keep_going76_6_valid_fifo thei_llvm_fpga_pipeline_keep_going76_atax6_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B4_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going76_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going76_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going76_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going76_atax6_sr(BLACKBOX,89)
    atax_i_llvm_fpga_pipeline_keep_going76_6_sr thei_llvm_fpga_pipeline_keep_going76_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going76_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B4_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going76_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going76_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going90_atax0_sr(BLACKBOX,91)
    atax_i_llvm_fpga_pipeline_keep_going90_0_sr thei_llvm_fpga_pipeline_keep_going90_atax0_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_atax_B3_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_atax_B3_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going90_atax0_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going90_atax0_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax0(BLACKBOX,186)
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

    // bb_atax_B3_sr_1_aunroll_x(BLACKBOX,347)
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

    // bb_atax_B3_aunroll_x(BLACKBOX,346)
    atax_bb_B3 thebb_atax_B3_aunroll_x (
        .in_flush(in_start),
        .in_forked97_0(GND_q),
        .in_forked97_1(bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_12_atax_avm_readdata(in_memdep_12_atax_avm_readdata),
        .in_memdep_12_atax_avm_readdatavalid(in_memdep_12_atax_avm_readdatavalid),
        .in_memdep_12_atax_avm_waitrequest(in_memdep_12_atax_avm_waitrequest),
        .in_memdep_12_atax_avm_writeack(in_memdep_12_atax_avm_writeack),
        .in_memdep_13_atax_avm_readdata(in_memdep_13_atax_avm_readdata),
        .in_memdep_13_atax_avm_readdatavalid(in_memdep_13_atax_avm_readdatavalid),
        .in_memdep_13_atax_avm_waitrequest(in_memdep_13_atax_avm_waitrequest),
        .in_memdep_13_atax_avm_writeack(in_memdep_13_atax_avm_writeack),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going90_atax0_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax3_out_o_stall),
        .in_unnamed_atax6_atax_avm_readdata(in_unnamed_atax6_atax_avm_readdata),
        .in_unnamed_atax6_atax_avm_readdatavalid(in_unnamed_atax6_atax_avm_readdatavalid),
        .in_unnamed_atax6_atax_avm_waitrequest(in_unnamed_atax6_atax_avm_waitrequest),
        .in_unnamed_atax6_atax_avm_writeack(in_unnamed_atax6_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going90_atax0_sr_out_o_valid),
        .in_valid_in_1(bb_atax_B3_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_exiting_stall_out(bb_atax_B3_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B3_aunroll_x_out_exiting_valid_out),
        .out_idxprom(bb_atax_B3_aunroll_x_out_idxprom),
        .out_memdep_12_atax_avm_address(bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_address),
        .out_memdep_12_atax_avm_burstcount(bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_burstcount),
        .out_memdep_12_atax_avm_byteenable(bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_byteenable),
        .out_memdep_12_atax_avm_enable(bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_enable),
        .out_memdep_12_atax_avm_read(bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_read),
        .out_memdep_12_atax_avm_write(bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_write),
        .out_memdep_12_atax_avm_writedata(bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_writedata),
        .out_memdep_13_atax_avm_address(bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_address),
        .out_memdep_13_atax_avm_burstcount(bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_burstcount),
        .out_memdep_13_atax_avm_byteenable(bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_byteenable),
        .out_memdep_13_atax_avm_enable(bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_enable),
        .out_memdep_13_atax_avm_read(bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_read),
        .out_memdep_13_atax_avm_write(bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_write),
        .out_memdep_13_atax_avm_writedata(bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_writedata),
        .out_memdep_atax_avm_address(bb_atax_B3_aunroll_x_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B3_aunroll_x_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B3_aunroll_x_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B3_aunroll_x_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B3_aunroll_x_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B3_aunroll_x_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B3_aunroll_x_out_memdep_atax_avm_writedata),
        .out_notcmp88(bb_atax_B3_aunroll_x_out_notcmp88),
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

    // loop_limiter_atax3(BLACKBOX,189)
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

    // bb_atax_B4_sr_1_aunroll_x(BLACKBOX,349)
    atax_bb_B4_sr_1 thebb_atax_B4_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B4_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_atax3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B3_aunroll_x_out_idxprom),
        .in_i_data_2_tpl(bb_atax_B3_aunroll_x_out_notcmp88),
        .out_o_stall(bb_atax_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4_aunroll_x(BLACKBOX,348)
    atax_bb_B4 thebb_atax_B4_aunroll_x (
        .in_flush(in_start),
        .in_forked73_0(GND_q),
        .in_forked73_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom112_0(c_float_addrspace_67_undef30_q),
        .in_idxprom112_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .in_notcmp88113_0(GND_q),
        .in_notcmp88113_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going76_atax6_sr_out_o_stall),
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
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going76_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B4_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_c0_exe9(bb_atax_B4_aunroll_x_out_c0_exe9),
        .out_exiting_stall_out(bb_atax_B4_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B4_aunroll_x_out_exiting_valid_out),
        .out_memdep_6_atax_avm_address(bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_writedata),
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

    // bb_atax_B5_sr_0_aunroll_x(BLACKBOX,350)
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

    // bb_atax_B2_sr_0_aunroll_x(BLACKBOX,345)
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

    // loop_limiter_atax1(BLACKBOX,187)
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

    // bb_atax_B6_sr_1_aunroll_x(BLACKBOX,351)
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
        .in_arrayidx28_promoted11_atax_avm_readdata(in_arrayidx28_promoted11_atax_avm_readdata),
        .in_arrayidx28_promoted11_atax_avm_readdatavalid(in_arrayidx28_promoted11_atax_avm_readdatavalid),
        .in_arrayidx28_promoted11_atax_avm_waitrequest(in_arrayidx28_promoted11_atax_avm_waitrequest),
        .in_arrayidx28_promoted11_atax_avm_writeack(in_arrayidx28_promoted11_atax_avm_writeack),
        .in_flush(in_start),
        .in_forked98_0(GND_q),
        .in_forked98_1(bb_atax_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going69_atax2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going69_atax2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B6_sr_1_aunroll_x_out_o_valid),
        .out_arrayidx28_promoted11_atax_avm_address(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_address),
        .out_arrayidx28_promoted11_atax_avm_burstcount(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_burstcount),
        .out_arrayidx28_promoted11_atax_avm_byteenable(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_byteenable),
        .out_arrayidx28_promoted11_atax_avm_enable(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_enable),
        .out_arrayidx28_promoted11_atax_avm_read(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_read),
        .out_arrayidx28_promoted11_atax_avm_write(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_write),
        .out_arrayidx28_promoted11_atax_avm_writedata(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_writedata),
        .out_c0_exe1148(bb_atax_B6_out_c0_exe1148),
        .out_c0_exe2149(bb_atax_B6_out_c0_exe2149),
        .out_c0_exe3150(bb_atax_B6_out_c0_exe3150),
        .out_c0_exe4151(bb_atax_B6_out_c0_exe4151),
        .out_c0_exe5152(bb_atax_B6_out_c0_exe5152),
        .out_c0_exe6153(bb_atax_B6_out_c0_exe6153),
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

    // loop_limiter_atax4(BLACKBOX,190)
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

    // bb_atax_B7_sr_1_aunroll_x(BLACKBOX,352)
    atax_bb_B7_sr_1 thebb_atax_B7_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_atax4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B6_out_c0_exe6153),
        .in_i_data_2_tpl(bb_atax_B6_out_c0_exe1148),
        .in_i_data_3_tpl(bb_atax_B6_out_c0_exe2149),
        .in_i_data_4_tpl(bb_atax_B6_out_c0_exe3150),
        .in_i_data_5_tpl(bb_atax_B6_out_c0_exe4151),
        .in_i_data_6_tpl(bb_atax_B6_out_c0_exe5152),
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
        .in_arrayidx288117_0(c_float_addrspace_67_undef30_q),
        .in_arrayidx288117_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_arrayidx28_promoted11118_0(c_float_undef32_q),
        .in_arrayidx28_promoted11118_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_exitcond29119_0(GND_q),
        .in_exitcond29119_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked52_0(GND_q),
        .in_forked52_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked98115_0(GND_q),
        .in_forked98115_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_idxprom27116_0(c_float_addrspace_67_undef30_q),
        .in_idxprom27116_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp67120_0(GND_q),
        .in_notcmp67120_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going55_atax6_sr_out_o_stall),
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
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going55_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2171(bb_atax_B7_out_c0_exe2171),
        .out_c0_exe3172(bb_atax_B7_out_c0_exe3172),
        .out_c0_exe5174(bb_atax_B7_out_c0_exe5174),
        .out_c0_exe6175(bb_atax_B7_out_c0_exe6175),
        .out_c0_exe7176(bb_atax_B7_out_c0_exe7176),
        .out_c0_exe8177(bb_atax_B7_out_c0_exe8177),
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

    // bb_atax_B8_sr_0_aunroll_x(BLACKBOX,353)
    atax_bb_B8_sr_0 thebb_atax_B8_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B8_out_stall_out_0),
        .in_i_valid(bb_atax_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B7_out_c0_exe2171),
        .in_i_data_1_tpl(bb_atax_B7_out_c0_exe3172),
        .in_i_data_2_tpl(bb_atax_B7_out_c0_exe5174),
        .in_i_data_3_tpl(bb_atax_B7_out_c0_exe6175),
        .in_i_data_4_tpl(bb_atax_B7_out_c0_exe7176),
        .in_i_data_5_tpl(bb_atax_B7_out_c0_exe8177),
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
        .in_c0_exe21712_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe31723_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe51744_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61755_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe71766_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe81777_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_feedback_in_20(bb_atax_B10_out_feedback_out_20),
        .in_feedback_valid_in_20(bb_atax_B10_out_feedback_valid_out_20),
        .in_flush(in_start),
        .in_memdep_14220_atax_avm_readdata(in_memdep_14220_atax_avm_readdata),
        .in_memdep_14220_atax_avm_readdatavalid(in_memdep_14220_atax_avm_readdatavalid),
        .in_memdep_14220_atax_avm_waitrequest(in_memdep_14220_atax_avm_waitrequest),
        .in_memdep_14220_atax_avm_writeack(in_memdep_14220_atax_avm_writeack),
        .in_stall_in_0(loop_limiter_atax5_out_o_stall),
        .in_unnamed_atax14_atax_avm_readdata(in_unnamed_atax14_atax_avm_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(in_unnamed_atax14_atax_avm_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(in_unnamed_atax14_atax_avm_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(in_unnamed_atax14_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B8_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1185(bb_atax_B8_out_c0_exe1185),
        .out_c0_exe21712(bb_atax_B8_out_c0_exe21712),
        .out_c0_exe71766(bb_atax_B8_out_c0_exe71766),
        .out_c0_exe81777(bb_atax_B8_out_c0_exe81777),
        .out_feedback_stall_out_20(bb_atax_B8_out_feedback_stall_out_20),
        .out_memdep_14220_atax_avm_address(bb_atax_B8_out_memdep_14220_atax_avm_address),
        .out_memdep_14220_atax_avm_burstcount(bb_atax_B8_out_memdep_14220_atax_avm_burstcount),
        .out_memdep_14220_atax_avm_byteenable(bb_atax_B8_out_memdep_14220_atax_avm_byteenable),
        .out_memdep_14220_atax_avm_enable(bb_atax_B8_out_memdep_14220_atax_avm_enable),
        .out_memdep_14220_atax_avm_read(bb_atax_B8_out_memdep_14220_atax_avm_read),
        .out_memdep_14220_atax_avm_write(bb_atax_B8_out_memdep_14220_atax_avm_write),
        .out_memdep_14220_atax_avm_writedata(bb_atax_B8_out_memdep_14220_atax_avm_writedata),
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

    // bb_atax_B10_sr_0_aunroll_x(BLACKBOX,340)
    atax_bb_B10_sr_0 thebb_atax_B10_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B10_out_stall_out_0),
        .in_i_valid(bb_atax_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B9_out_c0_exe2206),
        .in_i_data_1_tpl(bb_atax_B9_out_c0_exe4208),
        .in_i_data_2_tpl(bb_atax_B9_out_c0_exe5209),
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
        .in_c0_exe22068_0(bb_atax_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42089_0(bb_atax_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe520910_0(bb_atax_B10_sr_0_aunroll_x_out_o_data_2_tpl),
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

    // bb_atax_B11_sr_0_aunroll_x(BLACKBOX,341)
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

    // loop_limiter_atax2(BLACKBOX,188)
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

    // bb_atax_B12_sr_1_aunroll_x(BLACKBOX,342)
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
        .in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writeack),
        .in_memdep_15_atax_avm_readdata(in_memdep_15_atax_avm_readdata),
        .in_memdep_15_atax_avm_readdatavalid(in_memdep_15_atax_avm_readdatavalid),
        .in_memdep_15_atax_avm_waitrequest(in_memdep_15_atax_avm_waitrequest),
        .in_memdep_15_atax_avm_writeack(in_memdep_15_atax_avm_writeack),
        .in_memdep_16_atax_avm_readdata(in_memdep_16_atax_avm_readdata),
        .in_memdep_16_atax_avm_readdatavalid(in_memdep_16_atax_avm_readdatavalid),
        .in_memdep_16_atax_avm_waitrequest(in_memdep_16_atax_avm_waitrequest),
        .in_memdep_16_atax_avm_writeack(in_memdep_16_atax_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_atax3_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_atax3_sr_out_o_valid),
        .in_valid_in_1(bb_atax_B12_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_atax_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B12_out_exiting_valid_out),
        .out_lsu_memdep_15_o_active(bb_atax_B12_out_lsu_memdep_15_o_active),
        .out_lsu_memdep_16_o_active(bb_atax_B12_out_lsu_memdep_16_o_active),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address(bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount(bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable(bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable(bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read(bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write(bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata(bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata),
        .out_memdep_15_atax_avm_address(bb_atax_B12_out_memdep_15_atax_avm_address),
        .out_memdep_15_atax_avm_burstcount(bb_atax_B12_out_memdep_15_atax_avm_burstcount),
        .out_memdep_15_atax_avm_byteenable(bb_atax_B12_out_memdep_15_atax_avm_byteenable),
        .out_memdep_15_atax_avm_enable(bb_atax_B12_out_memdep_15_atax_avm_enable),
        .out_memdep_15_atax_avm_read(bb_atax_B12_out_memdep_15_atax_avm_read),
        .out_memdep_15_atax_avm_write(bb_atax_B12_out_memdep_15_atax_avm_write),
        .out_memdep_15_atax_avm_writedata(bb_atax_B12_out_memdep_15_atax_avm_writedata),
        .out_memdep_16_atax_avm_address(bb_atax_B12_out_memdep_16_atax_avm_address),
        .out_memdep_16_atax_avm_burstcount(bb_atax_B12_out_memdep_16_atax_avm_burstcount),
        .out_memdep_16_atax_avm_byteenable(bb_atax_B12_out_memdep_16_atax_avm_byteenable),
        .out_memdep_16_atax_avm_enable(bb_atax_B12_out_memdep_16_atax_avm_enable),
        .out_memdep_16_atax_avm_read(bb_atax_B12_out_memdep_16_atax_avm_read),
        .out_memdep_16_atax_avm_write(bb_atax_B12_out_memdep_16_atax_avm_write),
        .out_memdep_16_atax_avm_writedata(bb_atax_B12_out_memdep_16_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B12_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B12_out_stall_in_0),
        .out_stall_out_0(bb_atax_B12_out_stall_out_0),
        .out_stall_out_1(bb_atax_B12_out_stall_out_1),
        .out_valid_in_0(bb_atax_B12_out_valid_in_0),
        .out_valid_in_1(bb_atax_B12_out_valid_in_1),
        .out_valid_out_0(bb_atax_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B13_sr_0_aunroll_x(BLACKBOX,343)
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

    // i_llvm_fpga_pipeline_keep_going94_atax1_valid_fifo(BLACKBOX,93)
    atax_i_llvm_fpga_pipeline_keep_going94_1_valid_fifo thei_llvm_fpga_pipeline_keep_going94_atax1_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going94_atax1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going94_atax1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going94_atax1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going94_atax1_sr(BLACKBOX,92)
    atax_i_llvm_fpga_pipeline_keep_going94_1_sr thei_llvm_fpga_pipeline_keep_going94_atax1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going94_atax1_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going94_atax1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going94_atax1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B1_start_aunroll_x(BLACKBOX,344)
    atax_bb_B1_start thebb_atax_B1_start_aunroll_x (
        .in_feedback_in_1(bb_atax_B13_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_atax_B13_out_feedback_valid_out_1),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going94_atax1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going94_atax1_valid_fifo_out_valid_out),
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

    // out_arrayidx28_promoted11_atax_avm_address(GPOUT,192)
    assign out_arrayidx28_promoted11_atax_avm_address = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_address;

    // out_arrayidx28_promoted11_atax_avm_burstcount(GPOUT,193)
    assign out_arrayidx28_promoted11_atax_avm_burstcount = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_burstcount;

    // out_arrayidx28_promoted11_atax_avm_byteenable(GPOUT,194)
    assign out_arrayidx28_promoted11_atax_avm_byteenable = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_byteenable;

    // out_arrayidx28_promoted11_atax_avm_enable(GPOUT,195)
    assign out_arrayidx28_promoted11_atax_avm_enable = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_enable;

    // out_arrayidx28_promoted11_atax_avm_read(GPOUT,196)
    assign out_arrayidx28_promoted11_atax_avm_read = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_read;

    // out_arrayidx28_promoted11_atax_avm_write(GPOUT,197)
    assign out_arrayidx28_promoted11_atax_avm_write = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_write;

    // out_arrayidx28_promoted11_atax_avm_writedata(GPOUT,198)
    assign out_arrayidx28_promoted11_atax_avm_writedata = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_writedata;

    // out_iord_bl_call_atax_o_fifoalmost_full(GPOUT,199)
    assign out_iord_bl_call_atax_o_fifoalmost_full = bb_atax_B1_start_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full;

    // out_iord_bl_call_atax_o_fifoready(GPOUT,200)
    assign out_iord_bl_call_atax_o_fifoready = bb_atax_B1_start_aunroll_x_out_iord_bl_call_atax_o_fifoready;

    // out_iowr_bl_return_atax_o_fifodata(GPOUT,201)
    assign out_iowr_bl_return_atax_o_fifodata = bb_atax_B13_out_iowr_bl_return_atax_o_fifodata;

    // out_iowr_bl_return_atax_o_fifovalid(GPOUT,202)
    assign out_iowr_bl_return_atax_o_fifovalid = bb_atax_B13_out_iowr_bl_return_atax_o_fifovalid;

    // out_memcoalesce_load_atax_fpgaunique_109_atax_avm_address(GPOUT,203)
    assign out_memcoalesce_load_atax_fpgaunique_109_atax_avm_address = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_address;

    // out_memcoalesce_load_atax_fpgaunique_109_atax_avm_burstcount(GPOUT,204)
    assign out_memcoalesce_load_atax_fpgaunique_109_atax_avm_burstcount = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_burstcount;

    // out_memcoalesce_load_atax_fpgaunique_109_atax_avm_byteenable(GPOUT,205)
    assign out_memcoalesce_load_atax_fpgaunique_109_atax_avm_byteenable = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_byteenable;

    // out_memcoalesce_load_atax_fpgaunique_109_atax_avm_enable(GPOUT,206)
    assign out_memcoalesce_load_atax_fpgaunique_109_atax_avm_enable = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_enable;

    // out_memcoalesce_load_atax_fpgaunique_109_atax_avm_read(GPOUT,207)
    assign out_memcoalesce_load_atax_fpgaunique_109_atax_avm_read = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_read;

    // out_memcoalesce_load_atax_fpgaunique_109_atax_avm_write(GPOUT,208)
    assign out_memcoalesce_load_atax_fpgaunique_109_atax_avm_write = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_write;

    // out_memcoalesce_load_atax_fpgaunique_109_atax_avm_writedata(GPOUT,209)
    assign out_memcoalesce_load_atax_fpgaunique_109_atax_avm_writedata = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_109_atax_avm_writedata;

    // out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address(GPOUT,210)
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address = bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address;

    // out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount(GPOUT,211)
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount = bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount;

    // out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable(GPOUT,212)
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable = bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable;

    // out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable(GPOUT,213)
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable = bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable;

    // out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read(GPOUT,214)
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read = bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read;

    // out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write(GPOUT,215)
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write = bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write;

    // out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata(GPOUT,216)
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata = bb_atax_B12_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata;

    // out_memcoalesce_load_atax_fpgaunique_97_atax_avm_address(GPOUT,217)
    assign out_memcoalesce_load_atax_fpgaunique_97_atax_avm_address = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_address;

    // out_memcoalesce_load_atax_fpgaunique_97_atax_avm_burstcount(GPOUT,218)
    assign out_memcoalesce_load_atax_fpgaunique_97_atax_avm_burstcount = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_burstcount;

    // out_memcoalesce_load_atax_fpgaunique_97_atax_avm_byteenable(GPOUT,219)
    assign out_memcoalesce_load_atax_fpgaunique_97_atax_avm_byteenable = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_byteenable;

    // out_memcoalesce_load_atax_fpgaunique_97_atax_avm_enable(GPOUT,220)
    assign out_memcoalesce_load_atax_fpgaunique_97_atax_avm_enable = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_enable;

    // out_memcoalesce_load_atax_fpgaunique_97_atax_avm_read(GPOUT,221)
    assign out_memcoalesce_load_atax_fpgaunique_97_atax_avm_read = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_read;

    // out_memcoalesce_load_atax_fpgaunique_97_atax_avm_write(GPOUT,222)
    assign out_memcoalesce_load_atax_fpgaunique_97_atax_avm_write = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_write;

    // out_memcoalesce_load_atax_fpgaunique_97_atax_avm_writedata(GPOUT,223)
    assign out_memcoalesce_load_atax_fpgaunique_97_atax_avm_writedata = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_97_atax_avm_writedata;

    // out_memdep_12_atax_avm_address(GPOUT,224)
    assign out_memdep_12_atax_avm_address = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_address;

    // out_memdep_12_atax_avm_burstcount(GPOUT,225)
    assign out_memdep_12_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_burstcount;

    // out_memdep_12_atax_avm_byteenable(GPOUT,226)
    assign out_memdep_12_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_byteenable;

    // out_memdep_12_atax_avm_enable(GPOUT,227)
    assign out_memdep_12_atax_avm_enable = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_enable;

    // out_memdep_12_atax_avm_read(GPOUT,228)
    assign out_memdep_12_atax_avm_read = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_read;

    // out_memdep_12_atax_avm_write(GPOUT,229)
    assign out_memdep_12_atax_avm_write = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_write;

    // out_memdep_12_atax_avm_writedata(GPOUT,230)
    assign out_memdep_12_atax_avm_writedata = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_writedata;

    // out_memdep_13_atax_avm_address(GPOUT,231)
    assign out_memdep_13_atax_avm_address = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_address;

    // out_memdep_13_atax_avm_burstcount(GPOUT,232)
    assign out_memdep_13_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_burstcount;

    // out_memdep_13_atax_avm_byteenable(GPOUT,233)
    assign out_memdep_13_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_byteenable;

    // out_memdep_13_atax_avm_enable(GPOUT,234)
    assign out_memdep_13_atax_avm_enable = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_enable;

    // out_memdep_13_atax_avm_read(GPOUT,235)
    assign out_memdep_13_atax_avm_read = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_read;

    // out_memdep_13_atax_avm_write(GPOUT,236)
    assign out_memdep_13_atax_avm_write = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_write;

    // out_memdep_13_atax_avm_writedata(GPOUT,237)
    assign out_memdep_13_atax_avm_writedata = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_writedata;

    // out_memdep_14220_atax_avm_address(GPOUT,238)
    assign out_memdep_14220_atax_avm_address = bb_atax_B8_out_memdep_14220_atax_avm_address;

    // out_memdep_14220_atax_avm_burstcount(GPOUT,239)
    assign out_memdep_14220_atax_avm_burstcount = bb_atax_B8_out_memdep_14220_atax_avm_burstcount;

    // out_memdep_14220_atax_avm_byteenable(GPOUT,240)
    assign out_memdep_14220_atax_avm_byteenable = bb_atax_B8_out_memdep_14220_atax_avm_byteenable;

    // out_memdep_14220_atax_avm_enable(GPOUT,241)
    assign out_memdep_14220_atax_avm_enable = bb_atax_B8_out_memdep_14220_atax_avm_enable;

    // out_memdep_14220_atax_avm_read(GPOUT,242)
    assign out_memdep_14220_atax_avm_read = bb_atax_B8_out_memdep_14220_atax_avm_read;

    // out_memdep_14220_atax_avm_write(GPOUT,243)
    assign out_memdep_14220_atax_avm_write = bb_atax_B8_out_memdep_14220_atax_avm_write;

    // out_memdep_14220_atax_avm_writedata(GPOUT,244)
    assign out_memdep_14220_atax_avm_writedata = bb_atax_B8_out_memdep_14220_atax_avm_writedata;

    // out_memdep_15_atax_avm_address(GPOUT,245)
    assign out_memdep_15_atax_avm_address = bb_atax_B12_out_memdep_15_atax_avm_address;

    // out_memdep_15_atax_avm_burstcount(GPOUT,246)
    assign out_memdep_15_atax_avm_burstcount = bb_atax_B12_out_memdep_15_atax_avm_burstcount;

    // out_memdep_15_atax_avm_byteenable(GPOUT,247)
    assign out_memdep_15_atax_avm_byteenable = bb_atax_B12_out_memdep_15_atax_avm_byteenable;

    // out_memdep_15_atax_avm_enable(GPOUT,248)
    assign out_memdep_15_atax_avm_enable = bb_atax_B12_out_memdep_15_atax_avm_enable;

    // out_memdep_15_atax_avm_read(GPOUT,249)
    assign out_memdep_15_atax_avm_read = bb_atax_B12_out_memdep_15_atax_avm_read;

    // out_memdep_15_atax_avm_write(GPOUT,250)
    assign out_memdep_15_atax_avm_write = bb_atax_B12_out_memdep_15_atax_avm_write;

    // out_memdep_15_atax_avm_writedata(GPOUT,251)
    assign out_memdep_15_atax_avm_writedata = bb_atax_B12_out_memdep_15_atax_avm_writedata;

    // out_memdep_16_atax_avm_address(GPOUT,252)
    assign out_memdep_16_atax_avm_address = bb_atax_B12_out_memdep_16_atax_avm_address;

    // out_memdep_16_atax_avm_burstcount(GPOUT,253)
    assign out_memdep_16_atax_avm_burstcount = bb_atax_B12_out_memdep_16_atax_avm_burstcount;

    // out_memdep_16_atax_avm_byteenable(GPOUT,254)
    assign out_memdep_16_atax_avm_byteenable = bb_atax_B12_out_memdep_16_atax_avm_byteenable;

    // out_memdep_16_atax_avm_enable(GPOUT,255)
    assign out_memdep_16_atax_avm_enable = bb_atax_B12_out_memdep_16_atax_avm_enable;

    // out_memdep_16_atax_avm_read(GPOUT,256)
    assign out_memdep_16_atax_avm_read = bb_atax_B12_out_memdep_16_atax_avm_read;

    // out_memdep_16_atax_avm_write(GPOUT,257)
    assign out_memdep_16_atax_avm_write = bb_atax_B12_out_memdep_16_atax_avm_write;

    // out_memdep_16_atax_avm_writedata(GPOUT,258)
    assign out_memdep_16_atax_avm_writedata = bb_atax_B12_out_memdep_16_atax_avm_writedata;

    // out_memdep_38_atax_avm_address(GPOUT,259)
    assign out_memdep_38_atax_avm_address = bb_atax_B9_out_memdep_38_atax_avm_address;

    // out_memdep_38_atax_avm_burstcount(GPOUT,260)
    assign out_memdep_38_atax_avm_burstcount = bb_atax_B9_out_memdep_38_atax_avm_burstcount;

    // out_memdep_38_atax_avm_byteenable(GPOUT,261)
    assign out_memdep_38_atax_avm_byteenable = bb_atax_B9_out_memdep_38_atax_avm_byteenable;

    // out_memdep_38_atax_avm_enable(GPOUT,262)
    assign out_memdep_38_atax_avm_enable = bb_atax_B9_out_memdep_38_atax_avm_enable;

    // out_memdep_38_atax_avm_read(GPOUT,263)
    assign out_memdep_38_atax_avm_read = bb_atax_B9_out_memdep_38_atax_avm_read;

    // out_memdep_38_atax_avm_write(GPOUT,264)
    assign out_memdep_38_atax_avm_write = bb_atax_B9_out_memdep_38_atax_avm_write;

    // out_memdep_38_atax_avm_writedata(GPOUT,265)
    assign out_memdep_38_atax_avm_writedata = bb_atax_B9_out_memdep_38_atax_avm_writedata;

    // out_memdep_6_atax_avm_address(GPOUT,266)
    assign out_memdep_6_atax_avm_address = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_address;

    // out_memdep_6_atax_avm_burstcount(GPOUT,267)
    assign out_memdep_6_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_burstcount;

    // out_memdep_6_atax_avm_byteenable(GPOUT,268)
    assign out_memdep_6_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_byteenable;

    // out_memdep_6_atax_avm_enable(GPOUT,269)
    assign out_memdep_6_atax_avm_enable = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_enable;

    // out_memdep_6_atax_avm_read(GPOUT,270)
    assign out_memdep_6_atax_avm_read = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_read;

    // out_memdep_6_atax_avm_write(GPOUT,271)
    assign out_memdep_6_atax_avm_write = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_write;

    // out_memdep_6_atax_avm_writedata(GPOUT,272)
    assign out_memdep_6_atax_avm_writedata = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_writedata;

    // out_memdep_atax_avm_address(GPOUT,273)
    assign out_memdep_atax_avm_address = bb_atax_B3_aunroll_x_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,274)
    assign out_memdep_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,275)
    assign out_memdep_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,276)
    assign out_memdep_atax_avm_enable = bb_atax_B3_aunroll_x_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,277)
    assign out_memdep_atax_avm_read = bb_atax_B3_aunroll_x_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,278)
    assign out_memdep_atax_avm_write = bb_atax_B3_aunroll_x_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,279)
    assign out_memdep_atax_avm_writedata = bb_atax_B3_aunroll_x_out_memdep_atax_avm_writedata;

    // out_o_active_memdep_15(GPOUT,280)
    assign out_o_active_memdep_15 = bb_atax_B12_out_lsu_memdep_15_o_active;

    // out_o_active_memdep_16(GPOUT,281)
    assign out_o_active_memdep_16 = bb_atax_B12_out_lsu_memdep_16_o_active;

    // bb_atax_B0_runOnce(BLACKBOX,9)
    atax_bb_B0_runOnce thebb_atax_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_atax_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,282)
    assign out_stall_out = bb_atax_B0_runOnce_out_stall_out_0;

    // out_unnamed_atax10_atax_avm_address(GPOUT,283)
    assign out_unnamed_atax10_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_address;

    // out_unnamed_atax10_atax_avm_burstcount(GPOUT,284)
    assign out_unnamed_atax10_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_burstcount;

    // out_unnamed_atax10_atax_avm_byteenable(GPOUT,285)
    assign out_unnamed_atax10_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_byteenable;

    // out_unnamed_atax10_atax_avm_enable(GPOUT,286)
    assign out_unnamed_atax10_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_enable;

    // out_unnamed_atax10_atax_avm_read(GPOUT,287)
    assign out_unnamed_atax10_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_read;

    // out_unnamed_atax10_atax_avm_write(GPOUT,288)
    assign out_unnamed_atax10_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_write;

    // out_unnamed_atax10_atax_avm_writedata(GPOUT,289)
    assign out_unnamed_atax10_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_writedata;

    // out_unnamed_atax11_atax_avm_address(GPOUT,290)
    assign out_unnamed_atax11_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_address;

    // out_unnamed_atax11_atax_avm_burstcount(GPOUT,291)
    assign out_unnamed_atax11_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_burstcount;

    // out_unnamed_atax11_atax_avm_byteenable(GPOUT,292)
    assign out_unnamed_atax11_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_byteenable;

    // out_unnamed_atax11_atax_avm_enable(GPOUT,293)
    assign out_unnamed_atax11_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_enable;

    // out_unnamed_atax11_atax_avm_read(GPOUT,294)
    assign out_unnamed_atax11_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_read;

    // out_unnamed_atax11_atax_avm_write(GPOUT,295)
    assign out_unnamed_atax11_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_write;

    // out_unnamed_atax11_atax_avm_writedata(GPOUT,296)
    assign out_unnamed_atax11_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_writedata;

    // out_unnamed_atax12_atax_avm_address(GPOUT,297)
    assign out_unnamed_atax12_atax_avm_address = bb_atax_B7_out_unnamed_atax12_atax_avm_address;

    // out_unnamed_atax12_atax_avm_burstcount(GPOUT,298)
    assign out_unnamed_atax12_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax12_atax_avm_burstcount;

    // out_unnamed_atax12_atax_avm_byteenable(GPOUT,299)
    assign out_unnamed_atax12_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax12_atax_avm_byteenable;

    // out_unnamed_atax12_atax_avm_enable(GPOUT,300)
    assign out_unnamed_atax12_atax_avm_enable = bb_atax_B7_out_unnamed_atax12_atax_avm_enable;

    // out_unnamed_atax12_atax_avm_read(GPOUT,301)
    assign out_unnamed_atax12_atax_avm_read = bb_atax_B7_out_unnamed_atax12_atax_avm_read;

    // out_unnamed_atax12_atax_avm_write(GPOUT,302)
    assign out_unnamed_atax12_atax_avm_write = bb_atax_B7_out_unnamed_atax12_atax_avm_write;

    // out_unnamed_atax12_atax_avm_writedata(GPOUT,303)
    assign out_unnamed_atax12_atax_avm_writedata = bb_atax_B7_out_unnamed_atax12_atax_avm_writedata;

    // out_unnamed_atax13_atax_avm_address(GPOUT,304)
    assign out_unnamed_atax13_atax_avm_address = bb_atax_B7_out_unnamed_atax13_atax_avm_address;

    // out_unnamed_atax13_atax_avm_burstcount(GPOUT,305)
    assign out_unnamed_atax13_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax13_atax_avm_burstcount;

    // out_unnamed_atax13_atax_avm_byteenable(GPOUT,306)
    assign out_unnamed_atax13_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax13_atax_avm_byteenable;

    // out_unnamed_atax13_atax_avm_enable(GPOUT,307)
    assign out_unnamed_atax13_atax_avm_enable = bb_atax_B7_out_unnamed_atax13_atax_avm_enable;

    // out_unnamed_atax13_atax_avm_read(GPOUT,308)
    assign out_unnamed_atax13_atax_avm_read = bb_atax_B7_out_unnamed_atax13_atax_avm_read;

    // out_unnamed_atax13_atax_avm_write(GPOUT,309)
    assign out_unnamed_atax13_atax_avm_write = bb_atax_B7_out_unnamed_atax13_atax_avm_write;

    // out_unnamed_atax13_atax_avm_writedata(GPOUT,310)
    assign out_unnamed_atax13_atax_avm_writedata = bb_atax_B7_out_unnamed_atax13_atax_avm_writedata;

    // out_unnamed_atax14_atax_avm_address(GPOUT,311)
    assign out_unnamed_atax14_atax_avm_address = bb_atax_B8_out_unnamed_atax14_atax_avm_address;

    // out_unnamed_atax14_atax_avm_burstcount(GPOUT,312)
    assign out_unnamed_atax14_atax_avm_burstcount = bb_atax_B8_out_unnamed_atax14_atax_avm_burstcount;

    // out_unnamed_atax14_atax_avm_byteenable(GPOUT,313)
    assign out_unnamed_atax14_atax_avm_byteenable = bb_atax_B8_out_unnamed_atax14_atax_avm_byteenable;

    // out_unnamed_atax14_atax_avm_enable(GPOUT,314)
    assign out_unnamed_atax14_atax_avm_enable = bb_atax_B8_out_unnamed_atax14_atax_avm_enable;

    // out_unnamed_atax14_atax_avm_read(GPOUT,315)
    assign out_unnamed_atax14_atax_avm_read = bb_atax_B8_out_unnamed_atax14_atax_avm_read;

    // out_unnamed_atax14_atax_avm_write(GPOUT,316)
    assign out_unnamed_atax14_atax_avm_write = bb_atax_B8_out_unnamed_atax14_atax_avm_write;

    // out_unnamed_atax14_atax_avm_writedata(GPOUT,317)
    assign out_unnamed_atax14_atax_avm_writedata = bb_atax_B8_out_unnamed_atax14_atax_avm_writedata;

    // out_unnamed_atax6_atax_avm_address(GPOUT,318)
    assign out_unnamed_atax6_atax_avm_address = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_address;

    // out_unnamed_atax6_atax_avm_burstcount(GPOUT,319)
    assign out_unnamed_atax6_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_burstcount;

    // out_unnamed_atax6_atax_avm_byteenable(GPOUT,320)
    assign out_unnamed_atax6_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_byteenable;

    // out_unnamed_atax6_atax_avm_enable(GPOUT,321)
    assign out_unnamed_atax6_atax_avm_enable = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_enable;

    // out_unnamed_atax6_atax_avm_read(GPOUT,322)
    assign out_unnamed_atax6_atax_avm_read = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_read;

    // out_unnamed_atax6_atax_avm_write(GPOUT,323)
    assign out_unnamed_atax6_atax_avm_write = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_write;

    // out_unnamed_atax6_atax_avm_writedata(GPOUT,324)
    assign out_unnamed_atax6_atax_avm_writedata = bb_atax_B3_aunroll_x_out_unnamed_atax6_atax_avm_writedata;

    // out_unnamed_atax8_atax_avm_address(GPOUT,325)
    assign out_unnamed_atax8_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_address;

    // out_unnamed_atax8_atax_avm_burstcount(GPOUT,326)
    assign out_unnamed_atax8_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_burstcount;

    // out_unnamed_atax8_atax_avm_byteenable(GPOUT,327)
    assign out_unnamed_atax8_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_byteenable;

    // out_unnamed_atax8_atax_avm_enable(GPOUT,328)
    assign out_unnamed_atax8_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_enable;

    // out_unnamed_atax8_atax_avm_read(GPOUT,329)
    assign out_unnamed_atax8_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_read;

    // out_unnamed_atax8_atax_avm_write(GPOUT,330)
    assign out_unnamed_atax8_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_write;

    // out_unnamed_atax8_atax_avm_writedata(GPOUT,331)
    assign out_unnamed_atax8_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_writedata;

    // out_unnamed_atax9_atax_avm_address(GPOUT,332)
    assign out_unnamed_atax9_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_address;

    // out_unnamed_atax9_atax_avm_burstcount(GPOUT,333)
    assign out_unnamed_atax9_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_burstcount;

    // out_unnamed_atax9_atax_avm_byteenable(GPOUT,334)
    assign out_unnamed_atax9_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_byteenable;

    // out_unnamed_atax9_atax_avm_enable(GPOUT,335)
    assign out_unnamed_atax9_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_enable;

    // out_unnamed_atax9_atax_avm_read(GPOUT,336)
    assign out_unnamed_atax9_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_read;

    // out_unnamed_atax9_atax_avm_write(GPOUT,337)
    assign out_unnamed_atax9_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_write;

    // out_unnamed_atax9_atax_avm_writedata(GPOUT,338)
    assign out_unnamed_atax9_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_writedata;

    // out_valid_out(GPOUT,339)
    assign out_valid_out = GND_q;

endmodule
