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
// SystemVerilog created on Wed Dec 13 00:24:09 2023


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
    input wire [255:0] in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_247_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_247_atax_avm_writeack,
    input wire [255:0] in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_259_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_259_atax_avm_writeack,
    input wire [255:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack,
    input wire [255:0] in_memdep_12_atax_avm_readdata,
    input wire [0:0] in_memdep_12_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_12_atax_avm_waitrequest,
    input wire [0:0] in_memdep_12_atax_avm_writeack,
    input wire [31:0] in_memdep_13_atax_avm_readdata,
    input wire [0:0] in_memdep_13_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_13_atax_avm_waitrequest,
    input wire [0:0] in_memdep_13_atax_avm_writeack,
    input wire [31:0] in_memdep_14264_atax_avm_readdata,
    input wire [0:0] in_memdep_14264_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_14264_atax_avm_waitrequest,
    input wire [0:0] in_memdep_14264_atax_avm_writeack,
    input wire [63:0] in_memdep_15_atax_avm_readdata,
    input wire [0:0] in_memdep_15_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_15_atax_avm_waitrequest,
    input wire [0:0] in_memdep_15_atax_avm_writeack,
    input wire [63:0] in_memdep_16_atax_avm_readdata,
    input wire [0:0] in_memdep_16_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_16_atax_avm_waitrequest,
    input wire [0:0] in_memdep_16_atax_avm_writeack,
    input wire [63:0] in_memdep_18_atax_avm_readdata,
    input wire [0:0] in_memdep_18_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_18_atax_avm_waitrequest,
    input wire [0:0] in_memdep_18_atax_avm_writeack,
    input wire [63:0] in_memdep_20_atax_avm_readdata,
    input wire [0:0] in_memdep_20_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_20_atax_avm_waitrequest,
    input wire [0:0] in_memdep_20_atax_avm_writeack,
    input wire [63:0] in_memdep_23_atax_avm_readdata,
    input wire [0:0] in_memdep_23_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_23_atax_avm_waitrequest,
    input wire [0:0] in_memdep_23_atax_avm_writeack,
    input wire [63:0] in_memdep_27_atax_avm_readdata,
    input wire [0:0] in_memdep_27_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_27_atax_avm_waitrequest,
    input wire [0:0] in_memdep_27_atax_avm_writeack,
    input wire [63:0] in_memdep_32_atax_avm_readdata,
    input wire [0:0] in_memdep_32_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_32_atax_avm_waitrequest,
    input wire [0:0] in_memdep_32_atax_avm_writeack,
    input wire [255:0] in_memdep_38_atax_avm_readdata,
    input wire [0:0] in_memdep_38_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_38_atax_avm_waitrequest,
    input wire [0:0] in_memdep_38_atax_avm_writeack,
    input wire [63:0] in_memdep_39_atax_avm_readdata,
    input wire [0:0] in_memdep_39_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_39_atax_avm_waitrequest,
    input wire [0:0] in_memdep_39_atax_avm_writeack,
    input wire [255:0] in_memdep_6_atax_avm_readdata,
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
    input wire [63:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [63:0] in_unnamed_atax13_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax13_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax13_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax13_atax_avm_writeack,
    input wire [63:0] in_unnamed_atax14_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax14_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax14_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax14_atax_avm_writeack,
    input wire [255:0] in_unnamed_atax16_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax16_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax16_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax16_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax17_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax17_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax17_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax17_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax18_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax18_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax18_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax18_atax_avm_writeack,
    input wire [63:0] in_unnamed_atax5_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax5_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax5_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax5_atax_avm_writeack,
    input wire [63:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
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
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write,
    output wire [255:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write,
    output wire [255:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write,
    output wire [255:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata,
    output wire [31:0] out_memdep_12_atax_avm_address,
    output wire [0:0] out_memdep_12_atax_avm_burstcount,
    output wire [31:0] out_memdep_12_atax_avm_byteenable,
    output wire [0:0] out_memdep_12_atax_avm_enable,
    output wire [0:0] out_memdep_12_atax_avm_read,
    output wire [0:0] out_memdep_12_atax_avm_write,
    output wire [255:0] out_memdep_12_atax_avm_writedata,
    output wire [31:0] out_memdep_13_atax_avm_address,
    output wire [0:0] out_memdep_13_atax_avm_burstcount,
    output wire [3:0] out_memdep_13_atax_avm_byteenable,
    output wire [0:0] out_memdep_13_atax_avm_enable,
    output wire [0:0] out_memdep_13_atax_avm_read,
    output wire [0:0] out_memdep_13_atax_avm_write,
    output wire [31:0] out_memdep_13_atax_avm_writedata,
    output wire [31:0] out_memdep_14264_atax_avm_address,
    output wire [0:0] out_memdep_14264_atax_avm_burstcount,
    output wire [3:0] out_memdep_14264_atax_avm_byteenable,
    output wire [0:0] out_memdep_14264_atax_avm_enable,
    output wire [0:0] out_memdep_14264_atax_avm_read,
    output wire [0:0] out_memdep_14264_atax_avm_write,
    output wire [31:0] out_memdep_14264_atax_avm_writedata,
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
    output wire [63:0] out_memdep_18_atax_avm_address,
    output wire [0:0] out_memdep_18_atax_avm_burstcount,
    output wire [7:0] out_memdep_18_atax_avm_byteenable,
    output wire [0:0] out_memdep_18_atax_avm_enable,
    output wire [0:0] out_memdep_18_atax_avm_read,
    output wire [0:0] out_memdep_18_atax_avm_write,
    output wire [63:0] out_memdep_18_atax_avm_writedata,
    output wire [63:0] out_memdep_20_atax_avm_address,
    output wire [0:0] out_memdep_20_atax_avm_burstcount,
    output wire [7:0] out_memdep_20_atax_avm_byteenable,
    output wire [0:0] out_memdep_20_atax_avm_enable,
    output wire [0:0] out_memdep_20_atax_avm_read,
    output wire [0:0] out_memdep_20_atax_avm_write,
    output wire [63:0] out_memdep_20_atax_avm_writedata,
    output wire [63:0] out_memdep_23_atax_avm_address,
    output wire [0:0] out_memdep_23_atax_avm_burstcount,
    output wire [7:0] out_memdep_23_atax_avm_byteenable,
    output wire [0:0] out_memdep_23_atax_avm_enable,
    output wire [0:0] out_memdep_23_atax_avm_read,
    output wire [0:0] out_memdep_23_atax_avm_write,
    output wire [63:0] out_memdep_23_atax_avm_writedata,
    output wire [63:0] out_memdep_27_atax_avm_address,
    output wire [0:0] out_memdep_27_atax_avm_burstcount,
    output wire [7:0] out_memdep_27_atax_avm_byteenable,
    output wire [0:0] out_memdep_27_atax_avm_enable,
    output wire [0:0] out_memdep_27_atax_avm_read,
    output wire [0:0] out_memdep_27_atax_avm_write,
    output wire [63:0] out_memdep_27_atax_avm_writedata,
    output wire [63:0] out_memdep_32_atax_avm_address,
    output wire [0:0] out_memdep_32_atax_avm_burstcount,
    output wire [7:0] out_memdep_32_atax_avm_byteenable,
    output wire [0:0] out_memdep_32_atax_avm_enable,
    output wire [0:0] out_memdep_32_atax_avm_read,
    output wire [0:0] out_memdep_32_atax_avm_write,
    output wire [63:0] out_memdep_32_atax_avm_writedata,
    output wire [31:0] out_memdep_38_atax_avm_address,
    output wire [0:0] out_memdep_38_atax_avm_burstcount,
    output wire [31:0] out_memdep_38_atax_avm_byteenable,
    output wire [0:0] out_memdep_38_atax_avm_enable,
    output wire [0:0] out_memdep_38_atax_avm_read,
    output wire [0:0] out_memdep_38_atax_avm_write,
    output wire [255:0] out_memdep_38_atax_avm_writedata,
    output wire [63:0] out_memdep_39_atax_avm_address,
    output wire [0:0] out_memdep_39_atax_avm_burstcount,
    output wire [7:0] out_memdep_39_atax_avm_byteenable,
    output wire [0:0] out_memdep_39_atax_avm_enable,
    output wire [0:0] out_memdep_39_atax_avm_read,
    output wire [0:0] out_memdep_39_atax_avm_write,
    output wire [63:0] out_memdep_39_atax_avm_writedata,
    output wire [31:0] out_memdep_6_atax_avm_address,
    output wire [0:0] out_memdep_6_atax_avm_burstcount,
    output wire [31:0] out_memdep_6_atax_avm_byteenable,
    output wire [0:0] out_memdep_6_atax_avm_enable,
    output wire [0:0] out_memdep_6_atax_avm_read,
    output wire [0:0] out_memdep_6_atax_avm_write,
    output wire [255:0] out_memdep_6_atax_avm_writedata,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_o_active_memdep_15,
    output wire [0:0] out_o_active_memdep_16,
    output wire [0:0] out_o_active_memdep_18,
    output wire [0:0] out_o_active_memdep_20,
    output wire [0:0] out_o_active_memdep_23,
    output wire [0:0] out_o_active_memdep_27,
    output wire [0:0] out_o_active_memdep_32,
    output wire [0:0] out_o_active_memdep_39,
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
    output wire [63:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [63:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [63:0] out_unnamed_atax13_atax_avm_address,
    output wire [0:0] out_unnamed_atax13_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax13_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax13_atax_avm_enable,
    output wire [0:0] out_unnamed_atax13_atax_avm_read,
    output wire [0:0] out_unnamed_atax13_atax_avm_write,
    output wire [63:0] out_unnamed_atax13_atax_avm_writedata,
    output wire [63:0] out_unnamed_atax14_atax_avm_address,
    output wire [0:0] out_unnamed_atax14_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax14_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax14_atax_avm_enable,
    output wire [0:0] out_unnamed_atax14_atax_avm_read,
    output wire [0:0] out_unnamed_atax14_atax_avm_write,
    output wire [63:0] out_unnamed_atax14_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax16_atax_avm_address,
    output wire [0:0] out_unnamed_atax16_atax_avm_burstcount,
    output wire [31:0] out_unnamed_atax16_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax16_atax_avm_enable,
    output wire [0:0] out_unnamed_atax16_atax_avm_read,
    output wire [0:0] out_unnamed_atax16_atax_avm_write,
    output wire [255:0] out_unnamed_atax16_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax17_atax_avm_address,
    output wire [0:0] out_unnamed_atax17_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax17_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax17_atax_avm_enable,
    output wire [0:0] out_unnamed_atax17_atax_avm_read,
    output wire [0:0] out_unnamed_atax17_atax_avm_write,
    output wire [31:0] out_unnamed_atax17_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax18_atax_avm_address,
    output wire [0:0] out_unnamed_atax18_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax18_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax18_atax_avm_enable,
    output wire [0:0] out_unnamed_atax18_atax_avm_read,
    output wire [0:0] out_unnamed_atax18_atax_avm_write,
    output wire [31:0] out_unnamed_atax18_atax_avm_writedata,
    output wire [63:0] out_unnamed_atax5_atax_avm_address,
    output wire [0:0] out_unnamed_atax5_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax5_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax5_atax_avm_enable,
    output wire [0:0] out_unnamed_atax5_atax_avm_read,
    output wire [0:0] out_unnamed_atax5_atax_avm_write,
    output wire [63:0] out_unnamed_atax5_atax_avm_writedata,
    output wire [63:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [63:0] out_unnamed_atax7_atax_avm_writedata,
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
    wire [63:0] bb_atax_B6_out_c0_exe1180;
    wire [63:0] bb_atax_B6_out_c0_exe2181;
    wire [31:0] bb_atax_B6_out_c0_exe3182;
    wire [0:0] bb_atax_B6_out_c0_exe4183;
    wire [0:0] bb_atax_B6_out_c0_exe5184;
    wire [0:0] bb_atax_B6_out_c0_exe6185;
    wire [0:0] bb_atax_B6_out_exiting_stall_out;
    wire [0:0] bb_atax_B6_out_exiting_valid_out;
    wire [0:0] bb_atax_B6_out_pipeline_valid_out;
    wire [0:0] bb_atax_B6_out_stall_out_0;
    wire [0:0] bb_atax_B6_out_stall_out_1;
    wire [0:0] bb_atax_B6_out_valid_in_0;
    wire [0:0] bb_atax_B6_out_valid_in_1;
    wire [0:0] bb_atax_B6_out_valid_out_0;
    wire [63:0] bb_atax_B7_out_c0_exe2203;
    wire [31:0] bb_atax_B7_out_c0_exe3204;
    wire [0:0] bb_atax_B7_out_c0_exe5206;
    wire [63:0] bb_atax_B7_out_c0_exe6207;
    wire [0:0] bb_atax_B7_out_c0_exe7208;
    wire [0:0] bb_atax_B7_out_c0_exe8209;
    wire [0:0] bb_atax_B7_out_exiting_stall_out;
    wire [0:0] bb_atax_B7_out_exiting_valid_out;
    wire [0:0] bb_atax_B7_out_pipeline_valid_out;
    wire [0:0] bb_atax_B7_out_stall_in_0;
    wire [0:0] bb_atax_B7_out_stall_out_0;
    wire [0:0] bb_atax_B7_out_stall_out_1;
    wire [31:0] bb_atax_B7_out_unnamed_atax16_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax16_atax_avm_burstcount;
    wire [31:0] bb_atax_B7_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax16_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax16_atax_avm_write;
    wire [255:0] bb_atax_B7_out_unnamed_atax16_atax_avm_writedata;
    wire [31:0] bb_atax_B7_out_unnamed_atax17_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax17_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_unnamed_atax17_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax17_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax17_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax17_atax_avm_write;
    wire [31:0] bb_atax_B7_out_unnamed_atax17_atax_avm_writedata;
    wire [0:0] bb_atax_B7_out_valid_in_0;
    wire [0:0] bb_atax_B7_out_valid_in_1;
    wire [0:0] bb_atax_B7_out_valid_out_0;
    wire [31:0] bb_atax_B8_out_c0_exe1217;
    wire [63:0] bb_atax_B8_out_c0_exe22032;
    wire [0:0] bb_atax_B8_out_c0_exe72086;
    wire [0:0] bb_atax_B8_out_c0_exe82097;
    wire [0:0] bb_atax_B8_out_feedback_stall_out_20;
    wire [31:0] bb_atax_B8_out_memdep_14264_atax_avm_address;
    wire [0:0] bb_atax_B8_out_memdep_14264_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_out_memdep_14264_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_out_memdep_14264_atax_avm_enable;
    wire [0:0] bb_atax_B8_out_memdep_14264_atax_avm_read;
    wire [0:0] bb_atax_B8_out_memdep_14264_atax_avm_write;
    wire [31:0] bb_atax_B8_out_memdep_14264_atax_avm_writedata;
    wire [0:0] bb_atax_B8_out_memdep_phi_pop20;
    wire [0:0] bb_atax_B8_out_stall_out_0;
    wire [31:0] bb_atax_B8_out_unnamed_atax18_atax_avm_address;
    wire [0:0] bb_atax_B8_out_unnamed_atax18_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_out_unnamed_atax18_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_out_unnamed_atax18_atax_avm_enable;
    wire [0:0] bb_atax_B8_out_unnamed_atax18_atax_avm_read;
    wire [0:0] bb_atax_B8_out_unnamed_atax18_atax_avm_write;
    wire [31:0] bb_atax_B8_out_unnamed_atax18_atax_avm_writedata;
    wire [0:0] bb_atax_B8_out_valid_out_0;
    wire [0:0] bb_atax_B9_out_c0_exe2238;
    wire [0:0] bb_atax_B9_out_c0_exe4240;
    wire [0:0] bb_atax_B9_out_c0_exe5241;
    wire [0:0] bb_atax_B9_out_exiting_stall_out;
    wire [0:0] bb_atax_B9_out_exiting_valid_out;
    wire [31:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount;
    wire [31:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write;
    wire [255:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata;
    wire [31:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount;
    wire [31:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read;
    wire [0:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write;
    wire [255:0] bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata;
    wire [31:0] bb_atax_B9_out_memdep_38_atax_avm_address;
    wire [0:0] bb_atax_B9_out_memdep_38_atax_avm_burstcount;
    wire [31:0] bb_atax_B9_out_memdep_38_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_out_memdep_38_atax_avm_enable;
    wire [0:0] bb_atax_B9_out_memdep_38_atax_avm_read;
    wire [0:0] bb_atax_B9_out_memdep_38_atax_avm_write;
    wire [255:0] bb_atax_B9_out_memdep_38_atax_avm_writedata;
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
    wire [0:0] i_llvm_fpga_pipeline_keep_going102_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going102_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going102_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going102_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going116_atax0_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going116_atax0_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going120_atax1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going120_atax1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going120_atax1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going120_atax1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_atax2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_atax2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_atax2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_atax2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_sr_out_o_valid;
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
    wire [0:0] bb_atax_B12_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_atax_B12_aunroll_x_out_exiting_valid_out;
    wire [0:0] bb_atax_B12_aunroll_x_out_lsu_memdep_15_o_active;
    wire [0:0] bb_atax_B12_aunroll_x_out_lsu_memdep_16_o_active;
    wire [0:0] bb_atax_B12_aunroll_x_out_lsu_memdep_18_o_active;
    wire [0:0] bb_atax_B12_aunroll_x_out_lsu_memdep_20_o_active;
    wire [0:0] bb_atax_B12_aunroll_x_out_lsu_memdep_23_o_active;
    wire [0:0] bb_atax_B12_aunroll_x_out_lsu_memdep_27_o_active;
    wire [0:0] bb_atax_B12_aunroll_x_out_lsu_memdep_32_o_active;
    wire [0:0] bb_atax_B12_aunroll_x_out_lsu_memdep_39_o_active;
    wire [31:0] bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address;
    wire [0:0] bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount;
    wire [31:0] bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read;
    wire [0:0] bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write;
    wire [255:0] bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_address;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_enable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_read;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_write;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_writedata;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_address;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_enable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_read;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_write;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_writedata;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_address;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_enable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_read;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_write;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_writedata;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_address;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_enable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_read;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_write;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_writedata;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_address;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_enable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_read;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_write;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_writedata;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_address;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_enable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_read;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_write;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_writedata;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_address;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_enable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_read;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_write;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_writedata;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_address;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_enable;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_read;
    wire [0:0] bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_write;
    wire [63:0] bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_writedata;
    wire [0:0] bb_atax_B12_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_atax_B12_aunroll_x_out_stall_in_0;
    wire [0:0] bb_atax_B12_aunroll_x_out_stall_out_0;
    wire [0:0] bb_atax_B12_aunroll_x_out_stall_out_1;
    wire [0:0] bb_atax_B12_aunroll_x_out_valid_in_0;
    wire [0:0] bb_atax_B12_aunroll_x_out_valid_in_1;
    wire [0:0] bb_atax_B12_aunroll_x_out_valid_out_0;
    wire [0:0] bb_atax_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B1_start_aunroll_x_out_feedback_stall_out_1;
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
    wire [31:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_enable;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_read;
    wire [0:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_write;
    wire [255:0] bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_writedata;
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
    wire [0:0] bb_atax_B3_aunroll_x_out_notcmp114;
    wire [0:0] bb_atax_B3_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_atax_B3_aunroll_x_out_stall_out_0;
    wire [0:0] bb_atax_B3_aunroll_x_out_stall_out_1;
    wire [63:0] bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_address;
    wire [0:0] bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_burstcount;
    wire [7:0] bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_enable;
    wire [0:0] bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_read;
    wire [0:0] bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_write;
    wire [63:0] bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_writedata;
    wire [0:0] bb_atax_B3_aunroll_x_out_valid_in_0;
    wire [0:0] bb_atax_B3_aunroll_x_out_valid_in_1;
    wire [0:0] bb_atax_B3_aunroll_x_out_valid_out_0;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B4_aunroll_x_out_c0_exe13;
    wire [0:0] bb_atax_B4_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_atax_B4_aunroll_x_out_exiting_valid_out;
    wire [31:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_burstcount;
    wire [31:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_write;
    wire [255:0] bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_writedata;
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
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_burstcount;
    wire [7:0] bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_write;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_writedata;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_burstcount;
    wire [7:0] bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_write;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_writedata;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_burstcount;
    wire [7:0] bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_write;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_writedata;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_address;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_burstcount;
    wire [7:0] bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_read;
    wire [0:0] bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_write;
    wire [63:0] bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_writedata;
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


    // i_llvm_fpga_pipeline_keep_going_atax2_sr(BLACKBOX,93)
    atax_i_llvm_fpga_pipeline_keep_going_2_sr thei_llvm_fpga_pipeline_keep_going_atax2_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_atax_B12_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_atax_B12_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_atax2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_atax2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_067(CONSTANT,73)
    assign c_i2_067_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo(BLACKBOX,88)
    atax_i_llvm_fpga_pipeline_keep_going65_6_valid_fifo thei_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_undef32(FLOATCONSTANT,20)
    assign c_float_undef32_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going65_atax6_sr(BLACKBOX,87)
    atax_i_llvm_fpga_pipeline_keep_going65_6_sr thei_llvm_fpga_pipeline_keep_going65_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_addrspace_67_undef30(CONSTANT,19)
    assign c_float_addrspace_67_undef30_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_atax_B9(BLACKBOX,18)
    atax_bb_B9 thebb_atax_B9 (
        .in_exitcond57131_pop44158_0(GND_q),
        .in_exitcond57131_pop44158_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked62_0(GND_q),
        .in_forked62_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom27128_pop42153_0(c_float_addrspace_67_undef30_q),
        .in_idxprom27128_pop42153_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_247_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_247_atax_avm_writeack),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_259_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_259_atax_avm_writeack),
        .in_memdep_38_atax_avm_readdata(in_memdep_38_atax_avm_readdata),
        .in_memdep_38_atax_avm_readdatavalid(in_memdep_38_atax_avm_readdatavalid),
        .in_memdep_38_atax_avm_waitrequest(in_memdep_38_atax_avm_waitrequest),
        .in_memdep_38_atax_avm_writeack(in_memdep_38_atax_avm_writeack),
        .in_memdep_phi_pop20162_0(GND_q),
        .in_memdep_phi_pop20162_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp93133_pop45160_0(GND_q),
        .in_notcmp93133_pop45160_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going65_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax19_0(c_float_undef32_q),
        .in_unnamed_atax19_1(bb_atax_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going65_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2238(bb_atax_B9_out_c0_exe2238),
        .out_c0_exe4240(bb_atax_B9_out_c0_exe4240),
        .out_c0_exe5241(bb_atax_B9_out_c0_exe5241),
        .out_exiting_stall_out(bb_atax_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B9_out_exiting_valid_out),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata(bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata),
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

    // bb_atax_B9_sr_1_aunroll_x(BLACKBOX,470)
    atax_bb_B9_sr_1 thebb_atax_B9_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_atax5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B8_out_c0_exe22032),
        .in_i_data_2_tpl(bb_atax_B8_out_c0_exe72086),
        .in_i_data_3_tpl(bb_atax_B8_out_c0_exe82097),
        .in_i_data_4_tpl(bb_atax_B8_out_c0_exe1217),
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

    // loop_limiter_atax5(BLACKBOX,230)
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

    // i_llvm_fpga_pipeline_keep_going81_atax6_valid_fifo(BLACKBOX,90)
    atax_i_llvm_fpga_pipeline_keep_going81_6_valid_fifo thei_llvm_fpga_pipeline_keep_going81_atax6_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going81_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going81_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going81_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going81_atax6_sr(BLACKBOX,89)
    atax_i_llvm_fpga_pipeline_keep_going81_6_sr thei_llvm_fpga_pipeline_keep_going81_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going81_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going81_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going81_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going95_atax2_valid_fifo(BLACKBOX,92)
    atax_i_llvm_fpga_pipeline_keep_going95_2_valid_fifo thei_llvm_fpga_pipeline_keep_going95_atax2_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going95_atax2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going95_atax2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going95_atax2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going95_atax2_sr(BLACKBOX,91)
    atax_i_llvm_fpga_pipeline_keep_going95_2_sr thei_llvm_fpga_pipeline_keep_going95_atax2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going95_atax2_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going95_atax2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going95_atax2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going102_atax6_valid_fifo(BLACKBOX,83)
    atax_i_llvm_fpga_pipeline_keep_going102_6_valid_fifo thei_llvm_fpga_pipeline_keep_going102_atax6_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B4_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going102_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going102_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going102_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going102_atax6_sr(BLACKBOX,82)
    atax_i_llvm_fpga_pipeline_keep_going102_6_sr thei_llvm_fpga_pipeline_keep_going102_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going102_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B4_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going102_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going102_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going116_atax0_sr(BLACKBOX,84)
    atax_i_llvm_fpga_pipeline_keep_going116_0_sr thei_llvm_fpga_pipeline_keep_going116_atax0_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_atax_B3_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_atax_B3_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going116_atax0_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going116_atax0_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax0(BLACKBOX,225)
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

    // bb_atax_B3_sr_1_aunroll_x(BLACKBOX,463)
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

    // bb_atax_B3_aunroll_x(BLACKBOX,462)
    atax_bb_B3 thebb_atax_B3_aunroll_x (
        .in_flush(in_start),
        .in_forked123_0(GND_q),
        .in_forked123_1(bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl),
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
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going116_atax0_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax3_out_o_stall),
        .in_unnamed_atax5_atax_avm_readdata(in_unnamed_atax5_atax_avm_readdata),
        .in_unnamed_atax5_atax_avm_readdatavalid(in_unnamed_atax5_atax_avm_readdatavalid),
        .in_unnamed_atax5_atax_avm_waitrequest(in_unnamed_atax5_atax_avm_waitrequest),
        .in_unnamed_atax5_atax_avm_writeack(in_unnamed_atax5_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going116_atax0_sr_out_o_valid),
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
        .out_notcmp114(bb_atax_B3_aunroll_x_out_notcmp114),
        .out_pipeline_valid_out(bb_atax_B3_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_atax_B3_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_atax_B3_aunroll_x_out_stall_out_1),
        .out_unnamed_atax5_atax_avm_address(bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_address),
        .out_unnamed_atax5_atax_avm_burstcount(bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_burstcount),
        .out_unnamed_atax5_atax_avm_byteenable(bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_byteenable),
        .out_unnamed_atax5_atax_avm_enable(bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_enable),
        .out_unnamed_atax5_atax_avm_read(bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_read),
        .out_unnamed_atax5_atax_avm_write(bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_write),
        .out_unnamed_atax5_atax_avm_writedata(bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B3_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_atax_B3_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_atax_B3_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax3(BLACKBOX,228)
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

    // bb_atax_B4_sr_1_aunroll_x(BLACKBOX,465)
    atax_bb_B4_sr_1 thebb_atax_B4_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B4_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_atax3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B3_aunroll_x_out_idxprom),
        .in_i_data_2_tpl(bb_atax_B3_aunroll_x_out_notcmp114),
        .out_o_stall(bb_atax_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4_aunroll_x(BLACKBOX,464)
    atax_bb_B4 thebb_atax_B4_aunroll_x (
        .in_flush(in_start),
        .in_forked99_0(GND_q),
        .in_forked99_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom144_0(c_float_addrspace_67_undef30_q),
        .in_idxprom144_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .in_notcmp114145_0(GND_q),
        .in_notcmp114145_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going102_atax6_sr_out_o_stall),
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
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .in_unnamed_atax13_atax_avm_readdata(in_unnamed_atax13_atax_avm_readdata),
        .in_unnamed_atax13_atax_avm_readdatavalid(in_unnamed_atax13_atax_avm_readdatavalid),
        .in_unnamed_atax13_atax_avm_waitrequest(in_unnamed_atax13_atax_avm_waitrequest),
        .in_unnamed_atax13_atax_avm_writeack(in_unnamed_atax13_atax_avm_writeack),
        .in_unnamed_atax14_atax_avm_readdata(in_unnamed_atax14_atax_avm_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(in_unnamed_atax14_atax_avm_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(in_unnamed_atax14_atax_avm_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(in_unnamed_atax14_atax_avm_writeack),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .in_unnamed_atax8_atax_avm_readdata(in_unnamed_atax8_atax_avm_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(in_unnamed_atax8_atax_avm_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(in_unnamed_atax8_atax_avm_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(in_unnamed_atax8_atax_avm_writeack),
        .in_unnamed_atax9_atax_avm_readdata(in_unnamed_atax9_atax_avm_readdata),
        .in_unnamed_atax9_atax_avm_readdatavalid(in_unnamed_atax9_atax_avm_readdatavalid),
        .in_unnamed_atax9_atax_avm_waitrequest(in_unnamed_atax9_atax_avm_waitrequest),
        .in_unnamed_atax9_atax_avm_writeack(in_unnamed_atax9_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going102_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B4_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_c0_exe13(bb_atax_B4_aunroll_x_out_c0_exe13),
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
        .out_unnamed_atax12_atax_avm_address(bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_writedata),
        .out_unnamed_atax13_atax_avm_address(bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_address),
        .out_unnamed_atax13_atax_avm_burstcount(bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_burstcount),
        .out_unnamed_atax13_atax_avm_byteenable(bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_byteenable),
        .out_unnamed_atax13_atax_avm_enable(bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_enable),
        .out_unnamed_atax13_atax_avm_read(bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_read),
        .out_unnamed_atax13_atax_avm_write(bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_write),
        .out_unnamed_atax13_atax_avm_writedata(bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_writedata),
        .out_unnamed_atax14_atax_avm_address(bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_address),
        .out_unnamed_atax14_atax_avm_burstcount(bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_burstcount),
        .out_unnamed_atax14_atax_avm_byteenable(bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_byteenable),
        .out_unnamed_atax14_atax_avm_enable(bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_enable),
        .out_unnamed_atax14_atax_avm_read(bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_read),
        .out_unnamed_atax14_atax_avm_write(bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_write),
        .out_unnamed_atax14_atax_avm_writedata(bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_writedata),
        .out_unnamed_atax7_atax_avm_address(bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_writedata),
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

    // bb_atax_B5_sr_0_aunroll_x(BLACKBOX,466)
    atax_bb_B5_sr_0 thebb_atax_B5_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B5_out_stall_out_0),
        .in_i_valid(bb_atax_B4_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B4_aunroll_x_out_c0_exe13),
        .out_o_stall(bb_atax_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5(BLACKBOX,14)
    atax_bb_B5 thebb_atax_B5 (
        .in_c0_exe131_0(bb_atax_B5_sr_0_aunroll_x_out_o_data_0_tpl),
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

    // bb_atax_B2_sr_0_aunroll_x(BLACKBOX,461)
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

    // bb_atax_B2(BLACKBOX,13)
    atax_bb_B2 thebb_atax_B2 (
        .in_stall_in_0(loop_limiter_atax1_out_o_stall),
        .in_valid_in_0(bb_atax_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_atax_B2_out_stall_out_0),
        .out_valid_out_0(bb_atax_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax1(BLACKBOX,226)
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

    // bb_atax_B6_sr_1_aunroll_x(BLACKBOX,467)
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

    // bb_atax_B6(BLACKBOX,15)
    atax_bb_B6 thebb_atax_B6 (
        .in_arrayidx28_promoted11_atax_avm_readdata(in_arrayidx28_promoted11_atax_avm_readdata),
        .in_arrayidx28_promoted11_atax_avm_readdatavalid(in_arrayidx28_promoted11_atax_avm_readdatavalid),
        .in_arrayidx28_promoted11_atax_avm_waitrequest(in_arrayidx28_promoted11_atax_avm_waitrequest),
        .in_arrayidx28_promoted11_atax_avm_writeack(in_arrayidx28_promoted11_atax_avm_writeack),
        .in_flush(in_start),
        .in_forked124_0(GND_q),
        .in_forked124_1(bb_atax_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going95_atax2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going95_atax2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B6_sr_1_aunroll_x_out_o_valid),
        .out_arrayidx28_promoted11_atax_avm_address(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_address),
        .out_arrayidx28_promoted11_atax_avm_burstcount(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_burstcount),
        .out_arrayidx28_promoted11_atax_avm_byteenable(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_byteenable),
        .out_arrayidx28_promoted11_atax_avm_enable(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_enable),
        .out_arrayidx28_promoted11_atax_avm_read(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_read),
        .out_arrayidx28_promoted11_atax_avm_write(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_write),
        .out_arrayidx28_promoted11_atax_avm_writedata(bb_atax_B6_out_arrayidx28_promoted11_atax_avm_writedata),
        .out_c0_exe1180(bb_atax_B6_out_c0_exe1180),
        .out_c0_exe2181(bb_atax_B6_out_c0_exe2181),
        .out_c0_exe3182(bb_atax_B6_out_c0_exe3182),
        .out_c0_exe4183(bb_atax_B6_out_c0_exe4183),
        .out_c0_exe5184(bb_atax_B6_out_c0_exe5184),
        .out_c0_exe6185(bb_atax_B6_out_c0_exe6185),
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

    // loop_limiter_atax4(BLACKBOX,229)
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

    // bb_atax_B7_sr_1_aunroll_x(BLACKBOX,468)
    atax_bb_B7_sr_1 thebb_atax_B7_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_atax4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B6_out_c0_exe6185),
        .in_i_data_2_tpl(bb_atax_B6_out_c0_exe1180),
        .in_i_data_3_tpl(bb_atax_B6_out_c0_exe2181),
        .in_i_data_4_tpl(bb_atax_B6_out_c0_exe3182),
        .in_i_data_5_tpl(bb_atax_B6_out_c0_exe4183),
        .in_i_data_6_tpl(bb_atax_B6_out_c0_exe5184),
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

    // bb_atax_B7(BLACKBOX,16)
    atax_bb_B7 thebb_atax_B7 (
        .in_arrayidx2812149_0(c_float_addrspace_67_undef30_q),
        .in_arrayidx2812149_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_arrayidx28_promoted11150_0(c_float_undef32_q),
        .in_arrayidx28_promoted11150_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_exitcond57151_0(GND_q),
        .in_exitcond57151_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked124147_0(GND_q),
        .in_forked124147_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_forked78_0(GND_q),
        .in_forked78_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom27148_0(c_float_addrspace_67_undef30_q),
        .in_idxprom27148_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp93152_0(GND_q),
        .in_notcmp93152_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going81_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax16_atax_avm_readdata(in_unnamed_atax16_atax_avm_readdata),
        .in_unnamed_atax16_atax_avm_readdatavalid(in_unnamed_atax16_atax_avm_readdatavalid),
        .in_unnamed_atax16_atax_avm_waitrequest(in_unnamed_atax16_atax_avm_waitrequest),
        .in_unnamed_atax16_atax_avm_writeack(in_unnamed_atax16_atax_avm_writeack),
        .in_unnamed_atax17_atax_avm_readdata(in_unnamed_atax17_atax_avm_readdata),
        .in_unnamed_atax17_atax_avm_readdatavalid(in_unnamed_atax17_atax_avm_readdatavalid),
        .in_unnamed_atax17_atax_avm_waitrequest(in_unnamed_atax17_atax_avm_waitrequest),
        .in_unnamed_atax17_atax_avm_writeack(in_unnamed_atax17_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going81_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2203(bb_atax_B7_out_c0_exe2203),
        .out_c0_exe3204(bb_atax_B7_out_c0_exe3204),
        .out_c0_exe5206(bb_atax_B7_out_c0_exe5206),
        .out_c0_exe6207(bb_atax_B7_out_c0_exe6207),
        .out_c0_exe7208(bb_atax_B7_out_c0_exe7208),
        .out_c0_exe8209(bb_atax_B7_out_c0_exe8209),
        .out_exiting_stall_out(bb_atax_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B7_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_atax_B7_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B7_out_stall_in_0),
        .out_stall_out_0(bb_atax_B7_out_stall_out_0),
        .out_stall_out_1(bb_atax_B7_out_stall_out_1),
        .out_unnamed_atax16_atax_avm_address(bb_atax_B7_out_unnamed_atax16_atax_avm_address),
        .out_unnamed_atax16_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax16_atax_avm_burstcount),
        .out_unnamed_atax16_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax16_atax_avm_byteenable),
        .out_unnamed_atax16_atax_avm_enable(bb_atax_B7_out_unnamed_atax16_atax_avm_enable),
        .out_unnamed_atax16_atax_avm_read(bb_atax_B7_out_unnamed_atax16_atax_avm_read),
        .out_unnamed_atax16_atax_avm_write(bb_atax_B7_out_unnamed_atax16_atax_avm_write),
        .out_unnamed_atax16_atax_avm_writedata(bb_atax_B7_out_unnamed_atax16_atax_avm_writedata),
        .out_unnamed_atax17_atax_avm_address(bb_atax_B7_out_unnamed_atax17_atax_avm_address),
        .out_unnamed_atax17_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax17_atax_avm_burstcount),
        .out_unnamed_atax17_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax17_atax_avm_byteenable),
        .out_unnamed_atax17_atax_avm_enable(bb_atax_B7_out_unnamed_atax17_atax_avm_enable),
        .out_unnamed_atax17_atax_avm_read(bb_atax_B7_out_unnamed_atax17_atax_avm_read),
        .out_unnamed_atax17_atax_avm_write(bb_atax_B7_out_unnamed_atax17_atax_avm_write),
        .out_unnamed_atax17_atax_avm_writedata(bb_atax_B7_out_unnamed_atax17_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B7_out_valid_in_0),
        .out_valid_in_1(bb_atax_B7_out_valid_in_1),
        .out_valid_out_0(bb_atax_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B8_sr_0_aunroll_x(BLACKBOX,469)
    atax_bb_B8_sr_0 thebb_atax_B8_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B8_out_stall_out_0),
        .in_i_valid(bb_atax_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B7_out_c0_exe2203),
        .in_i_data_1_tpl(bb_atax_B7_out_c0_exe3204),
        .in_i_data_2_tpl(bb_atax_B7_out_c0_exe5206),
        .in_i_data_3_tpl(bb_atax_B7_out_c0_exe6207),
        .in_i_data_4_tpl(bb_atax_B7_out_c0_exe7208),
        .in_i_data_5_tpl(bb_atax_B7_out_c0_exe8209),
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

    // bb_atax_B8(BLACKBOX,17)
    atax_bb_B8 thebb_atax_B8 (
        .in_c0_exe22032_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe32043_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe52064_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe62075_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe72086_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe82097_0(bb_atax_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_feedback_in_20(bb_atax_B10_out_feedback_out_20),
        .in_feedback_valid_in_20(bb_atax_B10_out_feedback_valid_out_20),
        .in_flush(in_start),
        .in_memdep_14264_atax_avm_readdata(in_memdep_14264_atax_avm_readdata),
        .in_memdep_14264_atax_avm_readdatavalid(in_memdep_14264_atax_avm_readdatavalid),
        .in_memdep_14264_atax_avm_waitrequest(in_memdep_14264_atax_avm_waitrequest),
        .in_memdep_14264_atax_avm_writeack(in_memdep_14264_atax_avm_writeack),
        .in_stall_in_0(loop_limiter_atax5_out_o_stall),
        .in_unnamed_atax18_atax_avm_readdata(in_unnamed_atax18_atax_avm_readdata),
        .in_unnamed_atax18_atax_avm_readdatavalid(in_unnamed_atax18_atax_avm_readdatavalid),
        .in_unnamed_atax18_atax_avm_waitrequest(in_unnamed_atax18_atax_avm_waitrequest),
        .in_unnamed_atax18_atax_avm_writeack(in_unnamed_atax18_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B8_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1217(bb_atax_B8_out_c0_exe1217),
        .out_c0_exe22032(bb_atax_B8_out_c0_exe22032),
        .out_c0_exe72086(bb_atax_B8_out_c0_exe72086),
        .out_c0_exe82097(bb_atax_B8_out_c0_exe82097),
        .out_feedback_stall_out_20(bb_atax_B8_out_feedback_stall_out_20),
        .out_memdep_14264_atax_avm_address(bb_atax_B8_out_memdep_14264_atax_avm_address),
        .out_memdep_14264_atax_avm_burstcount(bb_atax_B8_out_memdep_14264_atax_avm_burstcount),
        .out_memdep_14264_atax_avm_byteenable(bb_atax_B8_out_memdep_14264_atax_avm_byteenable),
        .out_memdep_14264_atax_avm_enable(bb_atax_B8_out_memdep_14264_atax_avm_enable),
        .out_memdep_14264_atax_avm_read(bb_atax_B8_out_memdep_14264_atax_avm_read),
        .out_memdep_14264_atax_avm_write(bb_atax_B8_out_memdep_14264_atax_avm_write),
        .out_memdep_14264_atax_avm_writedata(bb_atax_B8_out_memdep_14264_atax_avm_writedata),
        .out_memdep_phi_pop20(bb_atax_B8_out_memdep_phi_pop20),
        .out_stall_out_0(bb_atax_B8_out_stall_out_0),
        .out_unnamed_atax18_atax_avm_address(bb_atax_B8_out_unnamed_atax18_atax_avm_address),
        .out_unnamed_atax18_atax_avm_burstcount(bb_atax_B8_out_unnamed_atax18_atax_avm_burstcount),
        .out_unnamed_atax18_atax_avm_byteenable(bb_atax_B8_out_unnamed_atax18_atax_avm_byteenable),
        .out_unnamed_atax18_atax_avm_enable(bb_atax_B8_out_unnamed_atax18_atax_avm_enable),
        .out_unnamed_atax18_atax_avm_read(bb_atax_B8_out_unnamed_atax18_atax_avm_read),
        .out_unnamed_atax18_atax_avm_write(bb_atax_B8_out_unnamed_atax18_atax_avm_write),
        .out_unnamed_atax18_atax_avm_writedata(bb_atax_B8_out_unnamed_atax18_atax_avm_writedata),
        .out_valid_out_0(bb_atax_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B10_sr_0_aunroll_x(BLACKBOX,455)
    atax_bb_B10_sr_0 thebb_atax_B10_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B10_out_stall_out_0),
        .in_i_valid(bb_atax_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B9_out_c0_exe2238),
        .in_i_data_1_tpl(bb_atax_B9_out_c0_exe4240),
        .in_i_data_2_tpl(bb_atax_B9_out_c0_exe5241),
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
        .in_c0_exe22388_0(bb_atax_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42409_0(bb_atax_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe524110_0(bb_atax_B10_sr_0_aunroll_x_out_o_data_2_tpl),
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

    // bb_atax_B11_sr_0_aunroll_x(BLACKBOX,456)
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

    // loop_limiter_atax2(BLACKBOX,227)
    atax_loop_limiter_2 theloop_limiter_atax2 (
        .in_i_stall(bb_atax_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B12_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_atax_B11_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B12_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax2_out_o_stall),
        .out_o_valid(loop_limiter_atax2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B12_sr_1_aunroll_x(BLACKBOX,458)
    atax_bb_B12_sr_1 thebb_atax_B12_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B12_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_atax2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_atax_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B12_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B12_aunroll_x(BLACKBOX,457)
    atax_bb_B12 thebb_atax_B12_aunroll_x (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_atax_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack),
        .in_memdep_15_atax_avm_readdata(in_memdep_15_atax_avm_readdata),
        .in_memdep_15_atax_avm_readdatavalid(in_memdep_15_atax_avm_readdatavalid),
        .in_memdep_15_atax_avm_waitrequest(in_memdep_15_atax_avm_waitrequest),
        .in_memdep_15_atax_avm_writeack(in_memdep_15_atax_avm_writeack),
        .in_memdep_16_atax_avm_readdata(in_memdep_16_atax_avm_readdata),
        .in_memdep_16_atax_avm_readdatavalid(in_memdep_16_atax_avm_readdatavalid),
        .in_memdep_16_atax_avm_waitrequest(in_memdep_16_atax_avm_waitrequest),
        .in_memdep_16_atax_avm_writeack(in_memdep_16_atax_avm_writeack),
        .in_memdep_18_atax_avm_readdata(in_memdep_18_atax_avm_readdata),
        .in_memdep_18_atax_avm_readdatavalid(in_memdep_18_atax_avm_readdatavalid),
        .in_memdep_18_atax_avm_waitrequest(in_memdep_18_atax_avm_waitrequest),
        .in_memdep_18_atax_avm_writeack(in_memdep_18_atax_avm_writeack),
        .in_memdep_20_atax_avm_readdata(in_memdep_20_atax_avm_readdata),
        .in_memdep_20_atax_avm_readdatavalid(in_memdep_20_atax_avm_readdatavalid),
        .in_memdep_20_atax_avm_waitrequest(in_memdep_20_atax_avm_waitrequest),
        .in_memdep_20_atax_avm_writeack(in_memdep_20_atax_avm_writeack),
        .in_memdep_23_atax_avm_readdata(in_memdep_23_atax_avm_readdata),
        .in_memdep_23_atax_avm_readdatavalid(in_memdep_23_atax_avm_readdatavalid),
        .in_memdep_23_atax_avm_waitrequest(in_memdep_23_atax_avm_waitrequest),
        .in_memdep_23_atax_avm_writeack(in_memdep_23_atax_avm_writeack),
        .in_memdep_27_atax_avm_readdata(in_memdep_27_atax_avm_readdata),
        .in_memdep_27_atax_avm_readdatavalid(in_memdep_27_atax_avm_readdatavalid),
        .in_memdep_27_atax_avm_waitrequest(in_memdep_27_atax_avm_waitrequest),
        .in_memdep_27_atax_avm_writeack(in_memdep_27_atax_avm_writeack),
        .in_memdep_32_atax_avm_readdata(in_memdep_32_atax_avm_readdata),
        .in_memdep_32_atax_avm_readdatavalid(in_memdep_32_atax_avm_readdatavalid),
        .in_memdep_32_atax_avm_waitrequest(in_memdep_32_atax_avm_waitrequest),
        .in_memdep_32_atax_avm_writeack(in_memdep_32_atax_avm_writeack),
        .in_memdep_39_atax_avm_readdata(in_memdep_39_atax_avm_readdata),
        .in_memdep_39_atax_avm_readdatavalid(in_memdep_39_atax_avm_readdatavalid),
        .in_memdep_39_atax_avm_waitrequest(in_memdep_39_atax_avm_waitrequest),
        .in_memdep_39_atax_avm_writeack(in_memdep_39_atax_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_atax2_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_atax2_sr_out_o_valid),
        .in_valid_in_1(bb_atax_B12_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_atax_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_exiting_stall_out(bb_atax_B12_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B12_aunroll_x_out_exiting_valid_out),
        .out_lsu_memdep_15_o_active(bb_atax_B12_aunroll_x_out_lsu_memdep_15_o_active),
        .out_lsu_memdep_16_o_active(bb_atax_B12_aunroll_x_out_lsu_memdep_16_o_active),
        .out_lsu_memdep_18_o_active(bb_atax_B12_aunroll_x_out_lsu_memdep_18_o_active),
        .out_lsu_memdep_20_o_active(bb_atax_B12_aunroll_x_out_lsu_memdep_20_o_active),
        .out_lsu_memdep_23_o_active(bb_atax_B12_aunroll_x_out_lsu_memdep_23_o_active),
        .out_lsu_memdep_27_o_active(bb_atax_B12_aunroll_x_out_lsu_memdep_27_o_active),
        .out_lsu_memdep_32_o_active(bb_atax_B12_aunroll_x_out_lsu_memdep_32_o_active),
        .out_lsu_memdep_39_o_active(bb_atax_B12_aunroll_x_out_lsu_memdep_39_o_active),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address(bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount(bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable(bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable(bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read(bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write(bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata(bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata),
        .out_memdep_15_atax_avm_address(bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_address),
        .out_memdep_15_atax_avm_burstcount(bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_burstcount),
        .out_memdep_15_atax_avm_byteenable(bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_byteenable),
        .out_memdep_15_atax_avm_enable(bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_enable),
        .out_memdep_15_atax_avm_read(bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_read),
        .out_memdep_15_atax_avm_write(bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_write),
        .out_memdep_15_atax_avm_writedata(bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_writedata),
        .out_memdep_16_atax_avm_address(bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_address),
        .out_memdep_16_atax_avm_burstcount(bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_burstcount),
        .out_memdep_16_atax_avm_byteenable(bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_byteenable),
        .out_memdep_16_atax_avm_enable(bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_enable),
        .out_memdep_16_atax_avm_read(bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_read),
        .out_memdep_16_atax_avm_write(bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_write),
        .out_memdep_16_atax_avm_writedata(bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_writedata),
        .out_memdep_18_atax_avm_address(bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_address),
        .out_memdep_18_atax_avm_burstcount(bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_burstcount),
        .out_memdep_18_atax_avm_byteenable(bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_byteenable),
        .out_memdep_18_atax_avm_enable(bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_enable),
        .out_memdep_18_atax_avm_read(bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_read),
        .out_memdep_18_atax_avm_write(bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_write),
        .out_memdep_18_atax_avm_writedata(bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_writedata),
        .out_memdep_20_atax_avm_address(bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_address),
        .out_memdep_20_atax_avm_burstcount(bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_burstcount),
        .out_memdep_20_atax_avm_byteenable(bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_byteenable),
        .out_memdep_20_atax_avm_enable(bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_enable),
        .out_memdep_20_atax_avm_read(bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_read),
        .out_memdep_20_atax_avm_write(bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_write),
        .out_memdep_20_atax_avm_writedata(bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_writedata),
        .out_memdep_23_atax_avm_address(bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_address),
        .out_memdep_23_atax_avm_burstcount(bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_burstcount),
        .out_memdep_23_atax_avm_byteenable(bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_byteenable),
        .out_memdep_23_atax_avm_enable(bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_enable),
        .out_memdep_23_atax_avm_read(bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_read),
        .out_memdep_23_atax_avm_write(bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_write),
        .out_memdep_23_atax_avm_writedata(bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_writedata),
        .out_memdep_27_atax_avm_address(bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_address),
        .out_memdep_27_atax_avm_burstcount(bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_burstcount),
        .out_memdep_27_atax_avm_byteenable(bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_byteenable),
        .out_memdep_27_atax_avm_enable(bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_enable),
        .out_memdep_27_atax_avm_read(bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_read),
        .out_memdep_27_atax_avm_write(bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_write),
        .out_memdep_27_atax_avm_writedata(bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_writedata),
        .out_memdep_32_atax_avm_address(bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_address),
        .out_memdep_32_atax_avm_burstcount(bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_burstcount),
        .out_memdep_32_atax_avm_byteenable(bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_byteenable),
        .out_memdep_32_atax_avm_enable(bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_enable),
        .out_memdep_32_atax_avm_read(bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_read),
        .out_memdep_32_atax_avm_write(bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_write),
        .out_memdep_32_atax_avm_writedata(bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_writedata),
        .out_memdep_39_atax_avm_address(bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_address),
        .out_memdep_39_atax_avm_burstcount(bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_burstcount),
        .out_memdep_39_atax_avm_byteenable(bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_byteenable),
        .out_memdep_39_atax_avm_enable(bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_enable),
        .out_memdep_39_atax_avm_read(bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_read),
        .out_memdep_39_atax_avm_write(bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_write),
        .out_memdep_39_atax_avm_writedata(bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B12_aunroll_x_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B12_aunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_atax_B12_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_atax_B12_aunroll_x_out_stall_out_1),
        .out_valid_in_0(bb_atax_B12_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_atax_B12_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_atax_B12_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B13_sr_0_aunroll_x(BLACKBOX,459)
    atax_bb_B13_sr_0 thebb_atax_B13_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B13_out_stall_out_0),
        .in_i_valid(bb_atax_B12_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_atax_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B13_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B13(BLACKBOX,12)
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

    // i_llvm_fpga_pipeline_keep_going120_atax1_valid_fifo(BLACKBOX,86)
    atax_i_llvm_fpga_pipeline_keep_going120_1_valid_fifo thei_llvm_fpga_pipeline_keep_going120_atax1_valid_fifo (
        .in_data_in(c_i2_067_q),
        .in_stall_in(bb_atax_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going120_atax1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going120_atax1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going120_atax1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going120_atax1_sr(BLACKBOX,85)
    atax_i_llvm_fpga_pipeline_keep_going120_1_sr thei_llvm_fpga_pipeline_keep_going120_atax1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going120_atax1_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going120_atax1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going120_atax1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B1_start_aunroll_x(BLACKBOX,460)
    atax_bb_B1_start thebb_atax_B1_start_aunroll_x (
        .in_feedback_in_1(bb_atax_B13_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_atax_B13_out_feedback_valid_out_1),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going120_atax1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going120_atax1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_atax_B1_start_aunroll_x_out_feedback_stall_out_1),
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
    assign atax_B12_x_i_stall_succ = bb_atax_B12_aunroll_x_out_stall_in_0;
    assign atax_B12_x_i_valid_loop = bb_atax_B12_aunroll_x_out_valid_in_0;
    assign atax_B12_x_i_valid_pred = bb_atax_B12_aunroll_x_out_valid_in_1;
    assign atax_B12_x_i_valid_succ = bb_atax_B12_aunroll_x_out_valid_out_0;
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

    // out_arrayidx28_promoted11_atax_avm_address(GPOUT,231)
    assign out_arrayidx28_promoted11_atax_avm_address = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_address;

    // out_arrayidx28_promoted11_atax_avm_burstcount(GPOUT,232)
    assign out_arrayidx28_promoted11_atax_avm_burstcount = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_burstcount;

    // out_arrayidx28_promoted11_atax_avm_byteenable(GPOUT,233)
    assign out_arrayidx28_promoted11_atax_avm_byteenable = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_byteenable;

    // out_arrayidx28_promoted11_atax_avm_enable(GPOUT,234)
    assign out_arrayidx28_promoted11_atax_avm_enable = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_enable;

    // out_arrayidx28_promoted11_atax_avm_read(GPOUT,235)
    assign out_arrayidx28_promoted11_atax_avm_read = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_read;

    // out_arrayidx28_promoted11_atax_avm_write(GPOUT,236)
    assign out_arrayidx28_promoted11_atax_avm_write = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_write;

    // out_arrayidx28_promoted11_atax_avm_writedata(GPOUT,237)
    assign out_arrayidx28_promoted11_atax_avm_writedata = bb_atax_B6_out_arrayidx28_promoted11_atax_avm_writedata;

    // out_iord_bl_call_atax_o_fifoalmost_full(GPOUT,238)
    assign out_iord_bl_call_atax_o_fifoalmost_full = bb_atax_B1_start_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full;

    // out_iord_bl_call_atax_o_fifoready(GPOUT,239)
    assign out_iord_bl_call_atax_o_fifoready = bb_atax_B1_start_aunroll_x_out_iord_bl_call_atax_o_fifoready;

    // out_iowr_bl_return_atax_o_fifodata(GPOUT,240)
    assign out_iowr_bl_return_atax_o_fifodata = bb_atax_B13_out_iowr_bl_return_atax_o_fifodata;

    // out_iowr_bl_return_atax_o_fifovalid(GPOUT,241)
    assign out_iowr_bl_return_atax_o_fifovalid = bb_atax_B13_out_iowr_bl_return_atax_o_fifovalid;

    // out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address(GPOUT,242)
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address;

    // out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount(GPOUT,243)
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount;

    // out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable(GPOUT,244)
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable;

    // out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable(GPOUT,245)
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable;

    // out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read(GPOUT,246)
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read;

    // out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write(GPOUT,247)
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write;

    // out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata(GPOUT,248)
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata;

    // out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address(GPOUT,249)
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address;

    // out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount(GPOUT,250)
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount;

    // out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable(GPOUT,251)
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable;

    // out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable(GPOUT,252)
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable;

    // out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read(GPOUT,253)
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read;

    // out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write(GPOUT,254)
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write;

    // out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata(GPOUT,255)
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata = bb_atax_B9_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address(GPOUT,256)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address = bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount(GPOUT,257)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount = bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable(GPOUT,258)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable = bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable(GPOUT,259)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable = bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read(GPOUT,260)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read = bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write(GPOUT,261)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write = bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata(GPOUT,262)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata = bb_atax_B12_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata;

    // out_memdep_12_atax_avm_address(GPOUT,263)
    assign out_memdep_12_atax_avm_address = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_address;

    // out_memdep_12_atax_avm_burstcount(GPOUT,264)
    assign out_memdep_12_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_burstcount;

    // out_memdep_12_atax_avm_byteenable(GPOUT,265)
    assign out_memdep_12_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_byteenable;

    // out_memdep_12_atax_avm_enable(GPOUT,266)
    assign out_memdep_12_atax_avm_enable = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_enable;

    // out_memdep_12_atax_avm_read(GPOUT,267)
    assign out_memdep_12_atax_avm_read = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_read;

    // out_memdep_12_atax_avm_write(GPOUT,268)
    assign out_memdep_12_atax_avm_write = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_write;

    // out_memdep_12_atax_avm_writedata(GPOUT,269)
    assign out_memdep_12_atax_avm_writedata = bb_atax_B3_aunroll_x_out_memdep_12_atax_avm_writedata;

    // out_memdep_13_atax_avm_address(GPOUT,270)
    assign out_memdep_13_atax_avm_address = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_address;

    // out_memdep_13_atax_avm_burstcount(GPOUT,271)
    assign out_memdep_13_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_burstcount;

    // out_memdep_13_atax_avm_byteenable(GPOUT,272)
    assign out_memdep_13_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_byteenable;

    // out_memdep_13_atax_avm_enable(GPOUT,273)
    assign out_memdep_13_atax_avm_enable = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_enable;

    // out_memdep_13_atax_avm_read(GPOUT,274)
    assign out_memdep_13_atax_avm_read = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_read;

    // out_memdep_13_atax_avm_write(GPOUT,275)
    assign out_memdep_13_atax_avm_write = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_write;

    // out_memdep_13_atax_avm_writedata(GPOUT,276)
    assign out_memdep_13_atax_avm_writedata = bb_atax_B3_aunroll_x_out_memdep_13_atax_avm_writedata;

    // out_memdep_14264_atax_avm_address(GPOUT,277)
    assign out_memdep_14264_atax_avm_address = bb_atax_B8_out_memdep_14264_atax_avm_address;

    // out_memdep_14264_atax_avm_burstcount(GPOUT,278)
    assign out_memdep_14264_atax_avm_burstcount = bb_atax_B8_out_memdep_14264_atax_avm_burstcount;

    // out_memdep_14264_atax_avm_byteenable(GPOUT,279)
    assign out_memdep_14264_atax_avm_byteenable = bb_atax_B8_out_memdep_14264_atax_avm_byteenable;

    // out_memdep_14264_atax_avm_enable(GPOUT,280)
    assign out_memdep_14264_atax_avm_enable = bb_atax_B8_out_memdep_14264_atax_avm_enable;

    // out_memdep_14264_atax_avm_read(GPOUT,281)
    assign out_memdep_14264_atax_avm_read = bb_atax_B8_out_memdep_14264_atax_avm_read;

    // out_memdep_14264_atax_avm_write(GPOUT,282)
    assign out_memdep_14264_atax_avm_write = bb_atax_B8_out_memdep_14264_atax_avm_write;

    // out_memdep_14264_atax_avm_writedata(GPOUT,283)
    assign out_memdep_14264_atax_avm_writedata = bb_atax_B8_out_memdep_14264_atax_avm_writedata;

    // out_memdep_15_atax_avm_address(GPOUT,284)
    assign out_memdep_15_atax_avm_address = bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_address;

    // out_memdep_15_atax_avm_burstcount(GPOUT,285)
    assign out_memdep_15_atax_avm_burstcount = bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_burstcount;

    // out_memdep_15_atax_avm_byteenable(GPOUT,286)
    assign out_memdep_15_atax_avm_byteenable = bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_byteenable;

    // out_memdep_15_atax_avm_enable(GPOUT,287)
    assign out_memdep_15_atax_avm_enable = bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_enable;

    // out_memdep_15_atax_avm_read(GPOUT,288)
    assign out_memdep_15_atax_avm_read = bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_read;

    // out_memdep_15_atax_avm_write(GPOUT,289)
    assign out_memdep_15_atax_avm_write = bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_write;

    // out_memdep_15_atax_avm_writedata(GPOUT,290)
    assign out_memdep_15_atax_avm_writedata = bb_atax_B12_aunroll_x_out_memdep_15_atax_avm_writedata;

    // out_memdep_16_atax_avm_address(GPOUT,291)
    assign out_memdep_16_atax_avm_address = bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_address;

    // out_memdep_16_atax_avm_burstcount(GPOUT,292)
    assign out_memdep_16_atax_avm_burstcount = bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_burstcount;

    // out_memdep_16_atax_avm_byteenable(GPOUT,293)
    assign out_memdep_16_atax_avm_byteenable = bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_byteenable;

    // out_memdep_16_atax_avm_enable(GPOUT,294)
    assign out_memdep_16_atax_avm_enable = bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_enable;

    // out_memdep_16_atax_avm_read(GPOUT,295)
    assign out_memdep_16_atax_avm_read = bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_read;

    // out_memdep_16_atax_avm_write(GPOUT,296)
    assign out_memdep_16_atax_avm_write = bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_write;

    // out_memdep_16_atax_avm_writedata(GPOUT,297)
    assign out_memdep_16_atax_avm_writedata = bb_atax_B12_aunroll_x_out_memdep_16_atax_avm_writedata;

    // out_memdep_18_atax_avm_address(GPOUT,298)
    assign out_memdep_18_atax_avm_address = bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_address;

    // out_memdep_18_atax_avm_burstcount(GPOUT,299)
    assign out_memdep_18_atax_avm_burstcount = bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_burstcount;

    // out_memdep_18_atax_avm_byteenable(GPOUT,300)
    assign out_memdep_18_atax_avm_byteenable = bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_byteenable;

    // out_memdep_18_atax_avm_enable(GPOUT,301)
    assign out_memdep_18_atax_avm_enable = bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_enable;

    // out_memdep_18_atax_avm_read(GPOUT,302)
    assign out_memdep_18_atax_avm_read = bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_read;

    // out_memdep_18_atax_avm_write(GPOUT,303)
    assign out_memdep_18_atax_avm_write = bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_write;

    // out_memdep_18_atax_avm_writedata(GPOUT,304)
    assign out_memdep_18_atax_avm_writedata = bb_atax_B12_aunroll_x_out_memdep_18_atax_avm_writedata;

    // out_memdep_20_atax_avm_address(GPOUT,305)
    assign out_memdep_20_atax_avm_address = bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_address;

    // out_memdep_20_atax_avm_burstcount(GPOUT,306)
    assign out_memdep_20_atax_avm_burstcount = bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_burstcount;

    // out_memdep_20_atax_avm_byteenable(GPOUT,307)
    assign out_memdep_20_atax_avm_byteenable = bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_byteenable;

    // out_memdep_20_atax_avm_enable(GPOUT,308)
    assign out_memdep_20_atax_avm_enable = bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_enable;

    // out_memdep_20_atax_avm_read(GPOUT,309)
    assign out_memdep_20_atax_avm_read = bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_read;

    // out_memdep_20_atax_avm_write(GPOUT,310)
    assign out_memdep_20_atax_avm_write = bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_write;

    // out_memdep_20_atax_avm_writedata(GPOUT,311)
    assign out_memdep_20_atax_avm_writedata = bb_atax_B12_aunroll_x_out_memdep_20_atax_avm_writedata;

    // out_memdep_23_atax_avm_address(GPOUT,312)
    assign out_memdep_23_atax_avm_address = bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_address;

    // out_memdep_23_atax_avm_burstcount(GPOUT,313)
    assign out_memdep_23_atax_avm_burstcount = bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_burstcount;

    // out_memdep_23_atax_avm_byteenable(GPOUT,314)
    assign out_memdep_23_atax_avm_byteenable = bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_byteenable;

    // out_memdep_23_atax_avm_enable(GPOUT,315)
    assign out_memdep_23_atax_avm_enable = bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_enable;

    // out_memdep_23_atax_avm_read(GPOUT,316)
    assign out_memdep_23_atax_avm_read = bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_read;

    // out_memdep_23_atax_avm_write(GPOUT,317)
    assign out_memdep_23_atax_avm_write = bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_write;

    // out_memdep_23_atax_avm_writedata(GPOUT,318)
    assign out_memdep_23_atax_avm_writedata = bb_atax_B12_aunroll_x_out_memdep_23_atax_avm_writedata;

    // out_memdep_27_atax_avm_address(GPOUT,319)
    assign out_memdep_27_atax_avm_address = bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_address;

    // out_memdep_27_atax_avm_burstcount(GPOUT,320)
    assign out_memdep_27_atax_avm_burstcount = bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_burstcount;

    // out_memdep_27_atax_avm_byteenable(GPOUT,321)
    assign out_memdep_27_atax_avm_byteenable = bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_byteenable;

    // out_memdep_27_atax_avm_enable(GPOUT,322)
    assign out_memdep_27_atax_avm_enable = bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_enable;

    // out_memdep_27_atax_avm_read(GPOUT,323)
    assign out_memdep_27_atax_avm_read = bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_read;

    // out_memdep_27_atax_avm_write(GPOUT,324)
    assign out_memdep_27_atax_avm_write = bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_write;

    // out_memdep_27_atax_avm_writedata(GPOUT,325)
    assign out_memdep_27_atax_avm_writedata = bb_atax_B12_aunroll_x_out_memdep_27_atax_avm_writedata;

    // out_memdep_32_atax_avm_address(GPOUT,326)
    assign out_memdep_32_atax_avm_address = bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_address;

    // out_memdep_32_atax_avm_burstcount(GPOUT,327)
    assign out_memdep_32_atax_avm_burstcount = bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_burstcount;

    // out_memdep_32_atax_avm_byteenable(GPOUT,328)
    assign out_memdep_32_atax_avm_byteenable = bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_byteenable;

    // out_memdep_32_atax_avm_enable(GPOUT,329)
    assign out_memdep_32_atax_avm_enable = bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_enable;

    // out_memdep_32_atax_avm_read(GPOUT,330)
    assign out_memdep_32_atax_avm_read = bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_read;

    // out_memdep_32_atax_avm_write(GPOUT,331)
    assign out_memdep_32_atax_avm_write = bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_write;

    // out_memdep_32_atax_avm_writedata(GPOUT,332)
    assign out_memdep_32_atax_avm_writedata = bb_atax_B12_aunroll_x_out_memdep_32_atax_avm_writedata;

    // out_memdep_38_atax_avm_address(GPOUT,333)
    assign out_memdep_38_atax_avm_address = bb_atax_B9_out_memdep_38_atax_avm_address;

    // out_memdep_38_atax_avm_burstcount(GPOUT,334)
    assign out_memdep_38_atax_avm_burstcount = bb_atax_B9_out_memdep_38_atax_avm_burstcount;

    // out_memdep_38_atax_avm_byteenable(GPOUT,335)
    assign out_memdep_38_atax_avm_byteenable = bb_atax_B9_out_memdep_38_atax_avm_byteenable;

    // out_memdep_38_atax_avm_enable(GPOUT,336)
    assign out_memdep_38_atax_avm_enable = bb_atax_B9_out_memdep_38_atax_avm_enable;

    // out_memdep_38_atax_avm_read(GPOUT,337)
    assign out_memdep_38_atax_avm_read = bb_atax_B9_out_memdep_38_atax_avm_read;

    // out_memdep_38_atax_avm_write(GPOUT,338)
    assign out_memdep_38_atax_avm_write = bb_atax_B9_out_memdep_38_atax_avm_write;

    // out_memdep_38_atax_avm_writedata(GPOUT,339)
    assign out_memdep_38_atax_avm_writedata = bb_atax_B9_out_memdep_38_atax_avm_writedata;

    // out_memdep_39_atax_avm_address(GPOUT,340)
    assign out_memdep_39_atax_avm_address = bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_address;

    // out_memdep_39_atax_avm_burstcount(GPOUT,341)
    assign out_memdep_39_atax_avm_burstcount = bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_burstcount;

    // out_memdep_39_atax_avm_byteenable(GPOUT,342)
    assign out_memdep_39_atax_avm_byteenable = bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_byteenable;

    // out_memdep_39_atax_avm_enable(GPOUT,343)
    assign out_memdep_39_atax_avm_enable = bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_enable;

    // out_memdep_39_atax_avm_read(GPOUT,344)
    assign out_memdep_39_atax_avm_read = bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_read;

    // out_memdep_39_atax_avm_write(GPOUT,345)
    assign out_memdep_39_atax_avm_write = bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_write;

    // out_memdep_39_atax_avm_writedata(GPOUT,346)
    assign out_memdep_39_atax_avm_writedata = bb_atax_B12_aunroll_x_out_memdep_39_atax_avm_writedata;

    // out_memdep_6_atax_avm_address(GPOUT,347)
    assign out_memdep_6_atax_avm_address = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_address;

    // out_memdep_6_atax_avm_burstcount(GPOUT,348)
    assign out_memdep_6_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_burstcount;

    // out_memdep_6_atax_avm_byteenable(GPOUT,349)
    assign out_memdep_6_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_byteenable;

    // out_memdep_6_atax_avm_enable(GPOUT,350)
    assign out_memdep_6_atax_avm_enable = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_enable;

    // out_memdep_6_atax_avm_read(GPOUT,351)
    assign out_memdep_6_atax_avm_read = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_read;

    // out_memdep_6_atax_avm_write(GPOUT,352)
    assign out_memdep_6_atax_avm_write = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_write;

    // out_memdep_6_atax_avm_writedata(GPOUT,353)
    assign out_memdep_6_atax_avm_writedata = bb_atax_B4_aunroll_x_out_memdep_6_atax_avm_writedata;

    // out_memdep_atax_avm_address(GPOUT,354)
    assign out_memdep_atax_avm_address = bb_atax_B3_aunroll_x_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,355)
    assign out_memdep_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,356)
    assign out_memdep_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,357)
    assign out_memdep_atax_avm_enable = bb_atax_B3_aunroll_x_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,358)
    assign out_memdep_atax_avm_read = bb_atax_B3_aunroll_x_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,359)
    assign out_memdep_atax_avm_write = bb_atax_B3_aunroll_x_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,360)
    assign out_memdep_atax_avm_writedata = bb_atax_B3_aunroll_x_out_memdep_atax_avm_writedata;

    // out_o_active_memdep_15(GPOUT,361)
    assign out_o_active_memdep_15 = bb_atax_B12_aunroll_x_out_lsu_memdep_15_o_active;

    // out_o_active_memdep_16(GPOUT,362)
    assign out_o_active_memdep_16 = bb_atax_B12_aunroll_x_out_lsu_memdep_16_o_active;

    // out_o_active_memdep_18(GPOUT,363)
    assign out_o_active_memdep_18 = bb_atax_B12_aunroll_x_out_lsu_memdep_18_o_active;

    // out_o_active_memdep_20(GPOUT,364)
    assign out_o_active_memdep_20 = bb_atax_B12_aunroll_x_out_lsu_memdep_20_o_active;

    // out_o_active_memdep_23(GPOUT,365)
    assign out_o_active_memdep_23 = bb_atax_B12_aunroll_x_out_lsu_memdep_23_o_active;

    // out_o_active_memdep_27(GPOUT,366)
    assign out_o_active_memdep_27 = bb_atax_B12_aunroll_x_out_lsu_memdep_27_o_active;

    // out_o_active_memdep_32(GPOUT,367)
    assign out_o_active_memdep_32 = bb_atax_B12_aunroll_x_out_lsu_memdep_32_o_active;

    // out_o_active_memdep_39(GPOUT,368)
    assign out_o_active_memdep_39 = bb_atax_B12_aunroll_x_out_lsu_memdep_39_o_active;

    // bb_atax_B0_runOnce(BLACKBOX,9)
    atax_bb_B0_runOnce thebb_atax_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_atax_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,369)
    assign out_stall_out = bb_atax_B0_runOnce_out_stall_out_0;

    // out_unnamed_atax10_atax_avm_address(GPOUT,370)
    assign out_unnamed_atax10_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_address;

    // out_unnamed_atax10_atax_avm_burstcount(GPOUT,371)
    assign out_unnamed_atax10_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_burstcount;

    // out_unnamed_atax10_atax_avm_byteenable(GPOUT,372)
    assign out_unnamed_atax10_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_byteenable;

    // out_unnamed_atax10_atax_avm_enable(GPOUT,373)
    assign out_unnamed_atax10_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_enable;

    // out_unnamed_atax10_atax_avm_read(GPOUT,374)
    assign out_unnamed_atax10_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_read;

    // out_unnamed_atax10_atax_avm_write(GPOUT,375)
    assign out_unnamed_atax10_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_write;

    // out_unnamed_atax10_atax_avm_writedata(GPOUT,376)
    assign out_unnamed_atax10_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax10_atax_avm_writedata;

    // out_unnamed_atax11_atax_avm_address(GPOUT,377)
    assign out_unnamed_atax11_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_address;

    // out_unnamed_atax11_atax_avm_burstcount(GPOUT,378)
    assign out_unnamed_atax11_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_burstcount;

    // out_unnamed_atax11_atax_avm_byteenable(GPOUT,379)
    assign out_unnamed_atax11_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_byteenable;

    // out_unnamed_atax11_atax_avm_enable(GPOUT,380)
    assign out_unnamed_atax11_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_enable;

    // out_unnamed_atax11_atax_avm_read(GPOUT,381)
    assign out_unnamed_atax11_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_read;

    // out_unnamed_atax11_atax_avm_write(GPOUT,382)
    assign out_unnamed_atax11_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_write;

    // out_unnamed_atax11_atax_avm_writedata(GPOUT,383)
    assign out_unnamed_atax11_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax11_atax_avm_writedata;

    // out_unnamed_atax12_atax_avm_address(GPOUT,384)
    assign out_unnamed_atax12_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_address;

    // out_unnamed_atax12_atax_avm_burstcount(GPOUT,385)
    assign out_unnamed_atax12_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_burstcount;

    // out_unnamed_atax12_atax_avm_byteenable(GPOUT,386)
    assign out_unnamed_atax12_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_byteenable;

    // out_unnamed_atax12_atax_avm_enable(GPOUT,387)
    assign out_unnamed_atax12_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_enable;

    // out_unnamed_atax12_atax_avm_read(GPOUT,388)
    assign out_unnamed_atax12_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_read;

    // out_unnamed_atax12_atax_avm_write(GPOUT,389)
    assign out_unnamed_atax12_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_write;

    // out_unnamed_atax12_atax_avm_writedata(GPOUT,390)
    assign out_unnamed_atax12_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax12_atax_avm_writedata;

    // out_unnamed_atax13_atax_avm_address(GPOUT,391)
    assign out_unnamed_atax13_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_address;

    // out_unnamed_atax13_atax_avm_burstcount(GPOUT,392)
    assign out_unnamed_atax13_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_burstcount;

    // out_unnamed_atax13_atax_avm_byteenable(GPOUT,393)
    assign out_unnamed_atax13_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_byteenable;

    // out_unnamed_atax13_atax_avm_enable(GPOUT,394)
    assign out_unnamed_atax13_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_enable;

    // out_unnamed_atax13_atax_avm_read(GPOUT,395)
    assign out_unnamed_atax13_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_read;

    // out_unnamed_atax13_atax_avm_write(GPOUT,396)
    assign out_unnamed_atax13_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_write;

    // out_unnamed_atax13_atax_avm_writedata(GPOUT,397)
    assign out_unnamed_atax13_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax13_atax_avm_writedata;

    // out_unnamed_atax14_atax_avm_address(GPOUT,398)
    assign out_unnamed_atax14_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_address;

    // out_unnamed_atax14_atax_avm_burstcount(GPOUT,399)
    assign out_unnamed_atax14_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_burstcount;

    // out_unnamed_atax14_atax_avm_byteenable(GPOUT,400)
    assign out_unnamed_atax14_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_byteenable;

    // out_unnamed_atax14_atax_avm_enable(GPOUT,401)
    assign out_unnamed_atax14_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_enable;

    // out_unnamed_atax14_atax_avm_read(GPOUT,402)
    assign out_unnamed_atax14_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_read;

    // out_unnamed_atax14_atax_avm_write(GPOUT,403)
    assign out_unnamed_atax14_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_write;

    // out_unnamed_atax14_atax_avm_writedata(GPOUT,404)
    assign out_unnamed_atax14_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax14_atax_avm_writedata;

    // out_unnamed_atax16_atax_avm_address(GPOUT,405)
    assign out_unnamed_atax16_atax_avm_address = bb_atax_B7_out_unnamed_atax16_atax_avm_address;

    // out_unnamed_atax16_atax_avm_burstcount(GPOUT,406)
    assign out_unnamed_atax16_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax16_atax_avm_burstcount;

    // out_unnamed_atax16_atax_avm_byteenable(GPOUT,407)
    assign out_unnamed_atax16_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax16_atax_avm_byteenable;

    // out_unnamed_atax16_atax_avm_enable(GPOUT,408)
    assign out_unnamed_atax16_atax_avm_enable = bb_atax_B7_out_unnamed_atax16_atax_avm_enable;

    // out_unnamed_atax16_atax_avm_read(GPOUT,409)
    assign out_unnamed_atax16_atax_avm_read = bb_atax_B7_out_unnamed_atax16_atax_avm_read;

    // out_unnamed_atax16_atax_avm_write(GPOUT,410)
    assign out_unnamed_atax16_atax_avm_write = bb_atax_B7_out_unnamed_atax16_atax_avm_write;

    // out_unnamed_atax16_atax_avm_writedata(GPOUT,411)
    assign out_unnamed_atax16_atax_avm_writedata = bb_atax_B7_out_unnamed_atax16_atax_avm_writedata;

    // out_unnamed_atax17_atax_avm_address(GPOUT,412)
    assign out_unnamed_atax17_atax_avm_address = bb_atax_B7_out_unnamed_atax17_atax_avm_address;

    // out_unnamed_atax17_atax_avm_burstcount(GPOUT,413)
    assign out_unnamed_atax17_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax17_atax_avm_burstcount;

    // out_unnamed_atax17_atax_avm_byteenable(GPOUT,414)
    assign out_unnamed_atax17_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax17_atax_avm_byteenable;

    // out_unnamed_atax17_atax_avm_enable(GPOUT,415)
    assign out_unnamed_atax17_atax_avm_enable = bb_atax_B7_out_unnamed_atax17_atax_avm_enable;

    // out_unnamed_atax17_atax_avm_read(GPOUT,416)
    assign out_unnamed_atax17_atax_avm_read = bb_atax_B7_out_unnamed_atax17_atax_avm_read;

    // out_unnamed_atax17_atax_avm_write(GPOUT,417)
    assign out_unnamed_atax17_atax_avm_write = bb_atax_B7_out_unnamed_atax17_atax_avm_write;

    // out_unnamed_atax17_atax_avm_writedata(GPOUT,418)
    assign out_unnamed_atax17_atax_avm_writedata = bb_atax_B7_out_unnamed_atax17_atax_avm_writedata;

    // out_unnamed_atax18_atax_avm_address(GPOUT,419)
    assign out_unnamed_atax18_atax_avm_address = bb_atax_B8_out_unnamed_atax18_atax_avm_address;

    // out_unnamed_atax18_atax_avm_burstcount(GPOUT,420)
    assign out_unnamed_atax18_atax_avm_burstcount = bb_atax_B8_out_unnamed_atax18_atax_avm_burstcount;

    // out_unnamed_atax18_atax_avm_byteenable(GPOUT,421)
    assign out_unnamed_atax18_atax_avm_byteenable = bb_atax_B8_out_unnamed_atax18_atax_avm_byteenable;

    // out_unnamed_atax18_atax_avm_enable(GPOUT,422)
    assign out_unnamed_atax18_atax_avm_enable = bb_atax_B8_out_unnamed_atax18_atax_avm_enable;

    // out_unnamed_atax18_atax_avm_read(GPOUT,423)
    assign out_unnamed_atax18_atax_avm_read = bb_atax_B8_out_unnamed_atax18_atax_avm_read;

    // out_unnamed_atax18_atax_avm_write(GPOUT,424)
    assign out_unnamed_atax18_atax_avm_write = bb_atax_B8_out_unnamed_atax18_atax_avm_write;

    // out_unnamed_atax18_atax_avm_writedata(GPOUT,425)
    assign out_unnamed_atax18_atax_avm_writedata = bb_atax_B8_out_unnamed_atax18_atax_avm_writedata;

    // out_unnamed_atax5_atax_avm_address(GPOUT,426)
    assign out_unnamed_atax5_atax_avm_address = bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_address;

    // out_unnamed_atax5_atax_avm_burstcount(GPOUT,427)
    assign out_unnamed_atax5_atax_avm_burstcount = bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_burstcount;

    // out_unnamed_atax5_atax_avm_byteenable(GPOUT,428)
    assign out_unnamed_atax5_atax_avm_byteenable = bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_byteenable;

    // out_unnamed_atax5_atax_avm_enable(GPOUT,429)
    assign out_unnamed_atax5_atax_avm_enable = bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_enable;

    // out_unnamed_atax5_atax_avm_read(GPOUT,430)
    assign out_unnamed_atax5_atax_avm_read = bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_read;

    // out_unnamed_atax5_atax_avm_write(GPOUT,431)
    assign out_unnamed_atax5_atax_avm_write = bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_write;

    // out_unnamed_atax5_atax_avm_writedata(GPOUT,432)
    assign out_unnamed_atax5_atax_avm_writedata = bb_atax_B3_aunroll_x_out_unnamed_atax5_atax_avm_writedata;

    // out_unnamed_atax7_atax_avm_address(GPOUT,433)
    assign out_unnamed_atax7_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_address;

    // out_unnamed_atax7_atax_avm_burstcount(GPOUT,434)
    assign out_unnamed_atax7_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_burstcount;

    // out_unnamed_atax7_atax_avm_byteenable(GPOUT,435)
    assign out_unnamed_atax7_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_byteenable;

    // out_unnamed_atax7_atax_avm_enable(GPOUT,436)
    assign out_unnamed_atax7_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_enable;

    // out_unnamed_atax7_atax_avm_read(GPOUT,437)
    assign out_unnamed_atax7_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_read;

    // out_unnamed_atax7_atax_avm_write(GPOUT,438)
    assign out_unnamed_atax7_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_write;

    // out_unnamed_atax7_atax_avm_writedata(GPOUT,439)
    assign out_unnamed_atax7_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax7_atax_avm_writedata;

    // out_unnamed_atax8_atax_avm_address(GPOUT,440)
    assign out_unnamed_atax8_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_address;

    // out_unnamed_atax8_atax_avm_burstcount(GPOUT,441)
    assign out_unnamed_atax8_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_burstcount;

    // out_unnamed_atax8_atax_avm_byteenable(GPOUT,442)
    assign out_unnamed_atax8_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_byteenable;

    // out_unnamed_atax8_atax_avm_enable(GPOUT,443)
    assign out_unnamed_atax8_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_enable;

    // out_unnamed_atax8_atax_avm_read(GPOUT,444)
    assign out_unnamed_atax8_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_read;

    // out_unnamed_atax8_atax_avm_write(GPOUT,445)
    assign out_unnamed_atax8_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_write;

    // out_unnamed_atax8_atax_avm_writedata(GPOUT,446)
    assign out_unnamed_atax8_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax8_atax_avm_writedata;

    // out_unnamed_atax9_atax_avm_address(GPOUT,447)
    assign out_unnamed_atax9_atax_avm_address = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_address;

    // out_unnamed_atax9_atax_avm_burstcount(GPOUT,448)
    assign out_unnamed_atax9_atax_avm_burstcount = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_burstcount;

    // out_unnamed_atax9_atax_avm_byteenable(GPOUT,449)
    assign out_unnamed_atax9_atax_avm_byteenable = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_byteenable;

    // out_unnamed_atax9_atax_avm_enable(GPOUT,450)
    assign out_unnamed_atax9_atax_avm_enable = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_enable;

    // out_unnamed_atax9_atax_avm_read(GPOUT,451)
    assign out_unnamed_atax9_atax_avm_read = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_read;

    // out_unnamed_atax9_atax_avm_write(GPOUT,452)
    assign out_unnamed_atax9_atax_avm_write = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_write;

    // out_unnamed_atax9_atax_avm_writedata(GPOUT,453)
    assign out_unnamed_atax9_atax_avm_writedata = bb_atax_B4_aunroll_x_out_unnamed_atax9_atax_avm_writedata;

    // out_valid_out(GPOUT,454)
    assign out_valid_out = GND_q;

endmodule
