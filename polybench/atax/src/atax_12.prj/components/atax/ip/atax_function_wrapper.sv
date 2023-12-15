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

// SystemVerilog created from atax_function_wrapper
// SystemVerilog created on Wed Dec 13 00:14:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_function_wrapper (
    input wire [63:0] A,
    input wire [31:0] avm_arrayidx28_promoted11_atax_readdata,
    input wire [0:0] avm_arrayidx28_promoted11_atax_readdatavalid,
    input wire [0:0] avm_arrayidx28_promoted11_atax_waitrequest,
    input wire [0:0] avm_arrayidx28_promoted11_atax_writeack,
    input wire [255:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_readdata,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_waitrequest,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_writeack,
    input wire [255:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_readdata,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_waitrequest,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_writeack,
    input wire [255:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_readdata,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_waitrequest,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_writeack,
    input wire [255:0] avm_memdep_12_atax_readdata,
    input wire [0:0] avm_memdep_12_atax_readdatavalid,
    input wire [0:0] avm_memdep_12_atax_waitrequest,
    input wire [0:0] avm_memdep_12_atax_writeack,
    input wire [31:0] avm_memdep_13_atax_readdata,
    input wire [0:0] avm_memdep_13_atax_readdatavalid,
    input wire [0:0] avm_memdep_13_atax_waitrequest,
    input wire [0:0] avm_memdep_13_atax_writeack,
    input wire [31:0] avm_memdep_14264_atax_readdata,
    input wire [0:0] avm_memdep_14264_atax_readdatavalid,
    input wire [0:0] avm_memdep_14264_atax_waitrequest,
    input wire [0:0] avm_memdep_14264_atax_writeack,
    input wire [63:0] avm_memdep_15_atax_readdata,
    input wire [0:0] avm_memdep_15_atax_readdatavalid,
    input wire [0:0] avm_memdep_15_atax_waitrequest,
    input wire [0:0] avm_memdep_15_atax_writeack,
    input wire [63:0] avm_memdep_16_atax_readdata,
    input wire [0:0] avm_memdep_16_atax_readdatavalid,
    input wire [0:0] avm_memdep_16_atax_waitrequest,
    input wire [0:0] avm_memdep_16_atax_writeack,
    input wire [63:0] avm_memdep_18_atax_readdata,
    input wire [0:0] avm_memdep_18_atax_readdatavalid,
    input wire [0:0] avm_memdep_18_atax_waitrequest,
    input wire [0:0] avm_memdep_18_atax_writeack,
    input wire [63:0] avm_memdep_20_atax_readdata,
    input wire [0:0] avm_memdep_20_atax_readdatavalid,
    input wire [0:0] avm_memdep_20_atax_waitrequest,
    input wire [0:0] avm_memdep_20_atax_writeack,
    input wire [63:0] avm_memdep_23_atax_readdata,
    input wire [0:0] avm_memdep_23_atax_readdatavalid,
    input wire [0:0] avm_memdep_23_atax_waitrequest,
    input wire [0:0] avm_memdep_23_atax_writeack,
    input wire [63:0] avm_memdep_27_atax_readdata,
    input wire [0:0] avm_memdep_27_atax_readdatavalid,
    input wire [0:0] avm_memdep_27_atax_waitrequest,
    input wire [0:0] avm_memdep_27_atax_writeack,
    input wire [63:0] avm_memdep_32_atax_readdata,
    input wire [0:0] avm_memdep_32_atax_readdatavalid,
    input wire [0:0] avm_memdep_32_atax_waitrequest,
    input wire [0:0] avm_memdep_32_atax_writeack,
    input wire [255:0] avm_memdep_38_atax_readdata,
    input wire [0:0] avm_memdep_38_atax_readdatavalid,
    input wire [0:0] avm_memdep_38_atax_waitrequest,
    input wire [0:0] avm_memdep_38_atax_writeack,
    input wire [63:0] avm_memdep_39_atax_readdata,
    input wire [0:0] avm_memdep_39_atax_readdatavalid,
    input wire [0:0] avm_memdep_39_atax_waitrequest,
    input wire [0:0] avm_memdep_39_atax_writeack,
    input wire [255:0] avm_memdep_6_atax_readdata,
    input wire [0:0] avm_memdep_6_atax_readdatavalid,
    input wire [0:0] avm_memdep_6_atax_waitrequest,
    input wire [0:0] avm_memdep_6_atax_writeack,
    input wire [31:0] avm_memdep_atax_readdata,
    input wire [0:0] avm_memdep_atax_readdatavalid,
    input wire [0:0] avm_memdep_atax_waitrequest,
    input wire [0:0] avm_memdep_atax_writeack,
    input wire [63:0] avm_unnamed_atax10_atax_readdata,
    input wire [0:0] avm_unnamed_atax10_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax10_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax10_atax_writeack,
    input wire [63:0] avm_unnamed_atax11_atax_readdata,
    input wire [0:0] avm_unnamed_atax11_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax11_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax11_atax_writeack,
    input wire [63:0] avm_unnamed_atax12_atax_readdata,
    input wire [0:0] avm_unnamed_atax12_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax12_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax12_atax_writeack,
    input wire [63:0] avm_unnamed_atax13_atax_readdata,
    input wire [0:0] avm_unnamed_atax13_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax13_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax13_atax_writeack,
    input wire [63:0] avm_unnamed_atax14_atax_readdata,
    input wire [0:0] avm_unnamed_atax14_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax14_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax14_atax_writeack,
    input wire [255:0] avm_unnamed_atax16_atax_readdata,
    input wire [0:0] avm_unnamed_atax16_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax16_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax16_atax_writeack,
    input wire [31:0] avm_unnamed_atax17_atax_readdata,
    input wire [0:0] avm_unnamed_atax17_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax17_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax17_atax_writeack,
    input wire [31:0] avm_unnamed_atax18_atax_readdata,
    input wire [0:0] avm_unnamed_atax18_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax18_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax18_atax_writeack,
    input wire [63:0] avm_unnamed_atax5_atax_readdata,
    input wire [0:0] avm_unnamed_atax5_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax5_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax5_atax_writeack,
    input wire [63:0] avm_unnamed_atax7_atax_readdata,
    input wire [0:0] avm_unnamed_atax7_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax7_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax7_atax_writeack,
    input wire [63:0] avm_unnamed_atax8_atax_readdata,
    input wire [0:0] avm_unnamed_atax8_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax8_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax8_atax_writeack,
    input wire [63:0] avm_unnamed_atax9_atax_readdata,
    input wire [0:0] avm_unnamed_atax9_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax9_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax9_atax_writeack,
    input wire [191:0] avst_iord_bl_call_atax_data,
    input wire [0:0] avst_iord_bl_call_atax_valid,
    input wire [0:0] avst_iowr_bl_return_atax_almostfull,
    input wire [0:0] avst_iowr_bl_return_atax_ready,
    input wire [0:0] clock2x,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [63:0] x,
    input wire [63:0] y_out,
    output wire [31:0] avm_arrayidx28_promoted11_atax_address,
    output wire [0:0] avm_arrayidx28_promoted11_atax_burstcount,
    output wire [3:0] avm_arrayidx28_promoted11_atax_byteenable,
    output wire [0:0] avm_arrayidx28_promoted11_atax_enable,
    output wire [0:0] avm_arrayidx28_promoted11_atax_read,
    output wire [0:0] avm_arrayidx28_promoted11_atax_write,
    output wire [31:0] avm_arrayidx28_promoted11_atax_writedata,
    output wire [31:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_address,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_burstcount,
    output wire [31:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_byteenable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_enable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_read,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_write,
    output wire [255:0] avm_memcoalesce_load_atax_fpgaunique_247_atax_writedata,
    output wire [31:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_address,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_burstcount,
    output wire [31:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_byteenable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_enable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_read,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_write,
    output wire [255:0] avm_memcoalesce_load_atax_fpgaunique_259_atax_writedata,
    output wire [31:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_address,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_burstcount,
    output wire [31:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_byteenable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_enable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_read,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_write,
    output wire [255:0] avm_memcoalesce_load_atax_fpgaunique_2610_atax_writedata,
    output wire [31:0] avm_memdep_12_atax_address,
    output wire [0:0] avm_memdep_12_atax_burstcount,
    output wire [31:0] avm_memdep_12_atax_byteenable,
    output wire [0:0] avm_memdep_12_atax_enable,
    output wire [0:0] avm_memdep_12_atax_read,
    output wire [0:0] avm_memdep_12_atax_write,
    output wire [255:0] avm_memdep_12_atax_writedata,
    output wire [31:0] avm_memdep_13_atax_address,
    output wire [0:0] avm_memdep_13_atax_burstcount,
    output wire [3:0] avm_memdep_13_atax_byteenable,
    output wire [0:0] avm_memdep_13_atax_enable,
    output wire [0:0] avm_memdep_13_atax_read,
    output wire [0:0] avm_memdep_13_atax_write,
    output wire [31:0] avm_memdep_13_atax_writedata,
    output wire [31:0] avm_memdep_14264_atax_address,
    output wire [0:0] avm_memdep_14264_atax_burstcount,
    output wire [3:0] avm_memdep_14264_atax_byteenable,
    output wire [0:0] avm_memdep_14264_atax_enable,
    output wire [0:0] avm_memdep_14264_atax_read,
    output wire [0:0] avm_memdep_14264_atax_write,
    output wire [31:0] avm_memdep_14264_atax_writedata,
    output wire [63:0] avm_memdep_15_atax_address,
    output wire [0:0] avm_memdep_15_atax_burstcount,
    output wire [7:0] avm_memdep_15_atax_byteenable,
    output wire [0:0] avm_memdep_15_atax_enable,
    output wire [0:0] avm_memdep_15_atax_read,
    output wire [0:0] avm_memdep_15_atax_write,
    output wire [63:0] avm_memdep_15_atax_writedata,
    output wire [63:0] avm_memdep_16_atax_address,
    output wire [0:0] avm_memdep_16_atax_burstcount,
    output wire [7:0] avm_memdep_16_atax_byteenable,
    output wire [0:0] avm_memdep_16_atax_enable,
    output wire [0:0] avm_memdep_16_atax_read,
    output wire [0:0] avm_memdep_16_atax_write,
    output wire [63:0] avm_memdep_16_atax_writedata,
    output wire [63:0] avm_memdep_18_atax_address,
    output wire [0:0] avm_memdep_18_atax_burstcount,
    output wire [7:0] avm_memdep_18_atax_byteenable,
    output wire [0:0] avm_memdep_18_atax_enable,
    output wire [0:0] avm_memdep_18_atax_read,
    output wire [0:0] avm_memdep_18_atax_write,
    output wire [63:0] avm_memdep_18_atax_writedata,
    output wire [63:0] avm_memdep_20_atax_address,
    output wire [0:0] avm_memdep_20_atax_burstcount,
    output wire [7:0] avm_memdep_20_atax_byteenable,
    output wire [0:0] avm_memdep_20_atax_enable,
    output wire [0:0] avm_memdep_20_atax_read,
    output wire [0:0] avm_memdep_20_atax_write,
    output wire [63:0] avm_memdep_20_atax_writedata,
    output wire [63:0] avm_memdep_23_atax_address,
    output wire [0:0] avm_memdep_23_atax_burstcount,
    output wire [7:0] avm_memdep_23_atax_byteenable,
    output wire [0:0] avm_memdep_23_atax_enable,
    output wire [0:0] avm_memdep_23_atax_read,
    output wire [0:0] avm_memdep_23_atax_write,
    output wire [63:0] avm_memdep_23_atax_writedata,
    output wire [63:0] avm_memdep_27_atax_address,
    output wire [0:0] avm_memdep_27_atax_burstcount,
    output wire [7:0] avm_memdep_27_atax_byteenable,
    output wire [0:0] avm_memdep_27_atax_enable,
    output wire [0:0] avm_memdep_27_atax_read,
    output wire [0:0] avm_memdep_27_atax_write,
    output wire [63:0] avm_memdep_27_atax_writedata,
    output wire [63:0] avm_memdep_32_atax_address,
    output wire [0:0] avm_memdep_32_atax_burstcount,
    output wire [7:0] avm_memdep_32_atax_byteenable,
    output wire [0:0] avm_memdep_32_atax_enable,
    output wire [0:0] avm_memdep_32_atax_read,
    output wire [0:0] avm_memdep_32_atax_write,
    output wire [63:0] avm_memdep_32_atax_writedata,
    output wire [31:0] avm_memdep_38_atax_address,
    output wire [0:0] avm_memdep_38_atax_burstcount,
    output wire [31:0] avm_memdep_38_atax_byteenable,
    output wire [0:0] avm_memdep_38_atax_enable,
    output wire [0:0] avm_memdep_38_atax_read,
    output wire [0:0] avm_memdep_38_atax_write,
    output wire [255:0] avm_memdep_38_atax_writedata,
    output wire [63:0] avm_memdep_39_atax_address,
    output wire [0:0] avm_memdep_39_atax_burstcount,
    output wire [7:0] avm_memdep_39_atax_byteenable,
    output wire [0:0] avm_memdep_39_atax_enable,
    output wire [0:0] avm_memdep_39_atax_read,
    output wire [0:0] avm_memdep_39_atax_write,
    output wire [63:0] avm_memdep_39_atax_writedata,
    output wire [31:0] avm_memdep_6_atax_address,
    output wire [0:0] avm_memdep_6_atax_burstcount,
    output wire [31:0] avm_memdep_6_atax_byteenable,
    output wire [0:0] avm_memdep_6_atax_enable,
    output wire [0:0] avm_memdep_6_atax_read,
    output wire [0:0] avm_memdep_6_atax_write,
    output wire [255:0] avm_memdep_6_atax_writedata,
    output wire [31:0] avm_memdep_atax_address,
    output wire [0:0] avm_memdep_atax_burstcount,
    output wire [3:0] avm_memdep_atax_byteenable,
    output wire [0:0] avm_memdep_atax_enable,
    output wire [0:0] avm_memdep_atax_read,
    output wire [0:0] avm_memdep_atax_write,
    output wire [31:0] avm_memdep_atax_writedata,
    output wire [63:0] avm_unnamed_atax10_atax_address,
    output wire [0:0] avm_unnamed_atax10_atax_burstcount,
    output wire [7:0] avm_unnamed_atax10_atax_byteenable,
    output wire [0:0] avm_unnamed_atax10_atax_enable,
    output wire [0:0] avm_unnamed_atax10_atax_read,
    output wire [0:0] avm_unnamed_atax10_atax_write,
    output wire [63:0] avm_unnamed_atax10_atax_writedata,
    output wire [63:0] avm_unnamed_atax11_atax_address,
    output wire [0:0] avm_unnamed_atax11_atax_burstcount,
    output wire [7:0] avm_unnamed_atax11_atax_byteenable,
    output wire [0:0] avm_unnamed_atax11_atax_enable,
    output wire [0:0] avm_unnamed_atax11_atax_read,
    output wire [0:0] avm_unnamed_atax11_atax_write,
    output wire [63:0] avm_unnamed_atax11_atax_writedata,
    output wire [63:0] avm_unnamed_atax12_atax_address,
    output wire [0:0] avm_unnamed_atax12_atax_burstcount,
    output wire [7:0] avm_unnamed_atax12_atax_byteenable,
    output wire [0:0] avm_unnamed_atax12_atax_enable,
    output wire [0:0] avm_unnamed_atax12_atax_read,
    output wire [0:0] avm_unnamed_atax12_atax_write,
    output wire [63:0] avm_unnamed_atax12_atax_writedata,
    output wire [63:0] avm_unnamed_atax13_atax_address,
    output wire [0:0] avm_unnamed_atax13_atax_burstcount,
    output wire [7:0] avm_unnamed_atax13_atax_byteenable,
    output wire [0:0] avm_unnamed_atax13_atax_enable,
    output wire [0:0] avm_unnamed_atax13_atax_read,
    output wire [0:0] avm_unnamed_atax13_atax_write,
    output wire [63:0] avm_unnamed_atax13_atax_writedata,
    output wire [63:0] avm_unnamed_atax14_atax_address,
    output wire [0:0] avm_unnamed_atax14_atax_burstcount,
    output wire [7:0] avm_unnamed_atax14_atax_byteenable,
    output wire [0:0] avm_unnamed_atax14_atax_enable,
    output wire [0:0] avm_unnamed_atax14_atax_read,
    output wire [0:0] avm_unnamed_atax14_atax_write,
    output wire [63:0] avm_unnamed_atax14_atax_writedata,
    output wire [31:0] avm_unnamed_atax16_atax_address,
    output wire [0:0] avm_unnamed_atax16_atax_burstcount,
    output wire [31:0] avm_unnamed_atax16_atax_byteenable,
    output wire [0:0] avm_unnamed_atax16_atax_enable,
    output wire [0:0] avm_unnamed_atax16_atax_read,
    output wire [0:0] avm_unnamed_atax16_atax_write,
    output wire [255:0] avm_unnamed_atax16_atax_writedata,
    output wire [31:0] avm_unnamed_atax17_atax_address,
    output wire [0:0] avm_unnamed_atax17_atax_burstcount,
    output wire [3:0] avm_unnamed_atax17_atax_byteenable,
    output wire [0:0] avm_unnamed_atax17_atax_enable,
    output wire [0:0] avm_unnamed_atax17_atax_read,
    output wire [0:0] avm_unnamed_atax17_atax_write,
    output wire [31:0] avm_unnamed_atax17_atax_writedata,
    output wire [31:0] avm_unnamed_atax18_atax_address,
    output wire [0:0] avm_unnamed_atax18_atax_burstcount,
    output wire [3:0] avm_unnamed_atax18_atax_byteenable,
    output wire [0:0] avm_unnamed_atax18_atax_enable,
    output wire [0:0] avm_unnamed_atax18_atax_read,
    output wire [0:0] avm_unnamed_atax18_atax_write,
    output wire [31:0] avm_unnamed_atax18_atax_writedata,
    output wire [63:0] avm_unnamed_atax5_atax_address,
    output wire [0:0] avm_unnamed_atax5_atax_burstcount,
    output wire [7:0] avm_unnamed_atax5_atax_byteenable,
    output wire [0:0] avm_unnamed_atax5_atax_enable,
    output wire [0:0] avm_unnamed_atax5_atax_read,
    output wire [0:0] avm_unnamed_atax5_atax_write,
    output wire [63:0] avm_unnamed_atax5_atax_writedata,
    output wire [63:0] avm_unnamed_atax7_atax_address,
    output wire [0:0] avm_unnamed_atax7_atax_burstcount,
    output wire [7:0] avm_unnamed_atax7_atax_byteenable,
    output wire [0:0] avm_unnamed_atax7_atax_enable,
    output wire [0:0] avm_unnamed_atax7_atax_read,
    output wire [0:0] avm_unnamed_atax7_atax_write,
    output wire [63:0] avm_unnamed_atax7_atax_writedata,
    output wire [63:0] avm_unnamed_atax8_atax_address,
    output wire [0:0] avm_unnamed_atax8_atax_burstcount,
    output wire [7:0] avm_unnamed_atax8_atax_byteenable,
    output wire [0:0] avm_unnamed_atax8_atax_enable,
    output wire [0:0] avm_unnamed_atax8_atax_read,
    output wire [0:0] avm_unnamed_atax8_atax_write,
    output wire [63:0] avm_unnamed_atax8_atax_writedata,
    output wire [63:0] avm_unnamed_atax9_atax_address,
    output wire [0:0] avm_unnamed_atax9_atax_burstcount,
    output wire [7:0] avm_unnamed_atax9_atax_byteenable,
    output wire [0:0] avm_unnamed_atax9_atax_enable,
    output wire [0:0] avm_unnamed_atax9_atax_read,
    output wire [0:0] avm_unnamed_atax9_atax_write,
    output wire [63:0] avm_unnamed_atax9_atax_writedata,
    output wire [0:0] avst_iord_bl_call_atax_almost_full,
    output wire [0:0] avst_iord_bl_call_atax_ready,
    output wire [0:0] avst_iowr_bl_return_atax_data,
    output wire [0:0] avst_iowr_bl_return_atax_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_const_q;
    wire [31:0] atax_function_out_arrayidx28_promoted11_atax_avm_address;
    wire [0:0] atax_function_out_arrayidx28_promoted11_atax_avm_burstcount;
    wire [3:0] atax_function_out_arrayidx28_promoted11_atax_avm_byteenable;
    wire [0:0] atax_function_out_arrayidx28_promoted11_atax_avm_enable;
    wire [0:0] atax_function_out_arrayidx28_promoted11_atax_avm_read;
    wire [0:0] atax_function_out_arrayidx28_promoted11_atax_avm_write;
    wire [31:0] atax_function_out_arrayidx28_promoted11_atax_avm_writedata;
    wire [0:0] atax_function_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] atax_function_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] atax_function_out_iowr_bl_return_atax_o_fifodata;
    wire [0:0] atax_function_out_iowr_bl_return_atax_o_fifovalid;
    wire [31:0] atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount;
    wire [31:0] atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write;
    wire [255:0] atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata;
    wire [31:0] atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount;
    wire [31:0] atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write;
    wire [255:0] atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata;
    wire [31:0] atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount;
    wire [31:0] atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write;
    wire [255:0] atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_12_atax_avm_address;
    wire [0:0] atax_function_out_memdep_12_atax_avm_burstcount;
    wire [31:0] atax_function_out_memdep_12_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_12_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_12_atax_avm_read;
    wire [0:0] atax_function_out_memdep_12_atax_avm_write;
    wire [255:0] atax_function_out_memdep_12_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_13_atax_avm_address;
    wire [0:0] atax_function_out_memdep_13_atax_avm_burstcount;
    wire [3:0] atax_function_out_memdep_13_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_13_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_13_atax_avm_read;
    wire [0:0] atax_function_out_memdep_13_atax_avm_write;
    wire [31:0] atax_function_out_memdep_13_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_14264_atax_avm_address;
    wire [0:0] atax_function_out_memdep_14264_atax_avm_burstcount;
    wire [3:0] atax_function_out_memdep_14264_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_14264_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_14264_atax_avm_read;
    wire [0:0] atax_function_out_memdep_14264_atax_avm_write;
    wire [31:0] atax_function_out_memdep_14264_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_15_atax_avm_address;
    wire [0:0] atax_function_out_memdep_15_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_15_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_15_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_15_atax_avm_read;
    wire [0:0] atax_function_out_memdep_15_atax_avm_write;
    wire [63:0] atax_function_out_memdep_15_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_16_atax_avm_address;
    wire [0:0] atax_function_out_memdep_16_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_16_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_16_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_16_atax_avm_read;
    wire [0:0] atax_function_out_memdep_16_atax_avm_write;
    wire [63:0] atax_function_out_memdep_16_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_18_atax_avm_address;
    wire [0:0] atax_function_out_memdep_18_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_18_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_18_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_18_atax_avm_read;
    wire [0:0] atax_function_out_memdep_18_atax_avm_write;
    wire [63:0] atax_function_out_memdep_18_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_20_atax_avm_address;
    wire [0:0] atax_function_out_memdep_20_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_20_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_20_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_20_atax_avm_read;
    wire [0:0] atax_function_out_memdep_20_atax_avm_write;
    wire [63:0] atax_function_out_memdep_20_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_23_atax_avm_address;
    wire [0:0] atax_function_out_memdep_23_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_23_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_23_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_23_atax_avm_read;
    wire [0:0] atax_function_out_memdep_23_atax_avm_write;
    wire [63:0] atax_function_out_memdep_23_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_27_atax_avm_address;
    wire [0:0] atax_function_out_memdep_27_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_27_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_27_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_27_atax_avm_read;
    wire [0:0] atax_function_out_memdep_27_atax_avm_write;
    wire [63:0] atax_function_out_memdep_27_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_32_atax_avm_address;
    wire [0:0] atax_function_out_memdep_32_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_32_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_32_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_32_atax_avm_read;
    wire [0:0] atax_function_out_memdep_32_atax_avm_write;
    wire [63:0] atax_function_out_memdep_32_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_38_atax_avm_address;
    wire [0:0] atax_function_out_memdep_38_atax_avm_burstcount;
    wire [31:0] atax_function_out_memdep_38_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_38_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_38_atax_avm_read;
    wire [0:0] atax_function_out_memdep_38_atax_avm_write;
    wire [255:0] atax_function_out_memdep_38_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_39_atax_avm_address;
    wire [0:0] atax_function_out_memdep_39_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_39_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_39_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_39_atax_avm_read;
    wire [0:0] atax_function_out_memdep_39_atax_avm_write;
    wire [63:0] atax_function_out_memdep_39_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_6_atax_avm_address;
    wire [0:0] atax_function_out_memdep_6_atax_avm_burstcount;
    wire [31:0] atax_function_out_memdep_6_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_6_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_6_atax_avm_read;
    wire [0:0] atax_function_out_memdep_6_atax_avm_write;
    wire [255:0] atax_function_out_memdep_6_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_atax_avm_address;
    wire [0:0] atax_function_out_memdep_atax_avm_burstcount;
    wire [3:0] atax_function_out_memdep_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_atax_avm_read;
    wire [0:0] atax_function_out_memdep_atax_avm_write;
    wire [31:0] atax_function_out_memdep_atax_avm_writedata;
    wire [63:0] atax_function_out_unnamed_atax10_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax10_atax_avm_burstcount;
    wire [7:0] atax_function_out_unnamed_atax10_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax10_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax10_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax10_atax_avm_write;
    wire [63:0] atax_function_out_unnamed_atax10_atax_avm_writedata;
    wire [63:0] atax_function_out_unnamed_atax11_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax11_atax_avm_burstcount;
    wire [7:0] atax_function_out_unnamed_atax11_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax11_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax11_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax11_atax_avm_write;
    wire [63:0] atax_function_out_unnamed_atax11_atax_avm_writedata;
    wire [63:0] atax_function_out_unnamed_atax12_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax12_atax_avm_burstcount;
    wire [7:0] atax_function_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax12_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax12_atax_avm_write;
    wire [63:0] atax_function_out_unnamed_atax12_atax_avm_writedata;
    wire [63:0] atax_function_out_unnamed_atax13_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax13_atax_avm_burstcount;
    wire [7:0] atax_function_out_unnamed_atax13_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax13_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax13_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax13_atax_avm_write;
    wire [63:0] atax_function_out_unnamed_atax13_atax_avm_writedata;
    wire [63:0] atax_function_out_unnamed_atax14_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax14_atax_avm_burstcount;
    wire [7:0] atax_function_out_unnamed_atax14_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax14_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax14_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax14_atax_avm_write;
    wire [63:0] atax_function_out_unnamed_atax14_atax_avm_writedata;
    wire [31:0] atax_function_out_unnamed_atax16_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax16_atax_avm_burstcount;
    wire [31:0] atax_function_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax16_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax16_atax_avm_write;
    wire [255:0] atax_function_out_unnamed_atax16_atax_avm_writedata;
    wire [31:0] atax_function_out_unnamed_atax17_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax17_atax_avm_burstcount;
    wire [3:0] atax_function_out_unnamed_atax17_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax17_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax17_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax17_atax_avm_write;
    wire [31:0] atax_function_out_unnamed_atax17_atax_avm_writedata;
    wire [31:0] atax_function_out_unnamed_atax18_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax18_atax_avm_burstcount;
    wire [3:0] atax_function_out_unnamed_atax18_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax18_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax18_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax18_atax_avm_write;
    wire [31:0] atax_function_out_unnamed_atax18_atax_avm_writedata;
    wire [63:0] atax_function_out_unnamed_atax5_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax5_atax_avm_burstcount;
    wire [7:0] atax_function_out_unnamed_atax5_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax5_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax5_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax5_atax_avm_write;
    wire [63:0] atax_function_out_unnamed_atax5_atax_avm_writedata;
    wire [63:0] atax_function_out_unnamed_atax7_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax7_atax_avm_burstcount;
    wire [7:0] atax_function_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax7_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax7_atax_avm_write;
    wire [63:0] atax_function_out_unnamed_atax7_atax_avm_writedata;
    wire [63:0] atax_function_out_unnamed_atax8_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax8_atax_avm_burstcount;
    wire [7:0] atax_function_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax8_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax8_atax_avm_write;
    wire [63:0] atax_function_out_unnamed_atax8_atax_avm_writedata;
    wire [63:0] atax_function_out_unnamed_atax9_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax9_atax_avm_burstcount;
    wire [7:0] atax_function_out_unnamed_atax9_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax9_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax9_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax9_atax_avm_write;
    wire [63:0] atax_function_out_unnamed_atax9_atax_avm_writedata;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [191:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,143)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,9)
    assign implicit_input_q = {y_out, x, A};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // atax_function(BLACKBOX,3)
    atax_function theatax_function (
        .in_arg_A(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_arg_x(A_const_q),
        .in_arg_y_out(A_const_q),
        .in_arrayidx28_promoted11_atax_avm_readdata(avm_arrayidx28_promoted11_atax_readdata),
        .in_arrayidx28_promoted11_atax_avm_readdatavalid(avm_arrayidx28_promoted11_atax_readdatavalid),
        .in_arrayidx28_promoted11_atax_avm_waitrequest(avm_arrayidx28_promoted11_atax_waitrequest),
        .in_arrayidx28_promoted11_atax_avm_writeack(avm_arrayidx28_promoted11_atax_writeack),
        .in_iord_bl_call_atax_i_fifodata(implicit_input_q),
        .in_iord_bl_call_atax_i_fifovalid(start),
        .in_iowr_bl_return_atax_i_fifoready(not_stall_q),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdata(avm_memcoalesce_load_atax_fpgaunique_247_atax_readdata),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdatavalid(avm_memcoalesce_load_atax_fpgaunique_247_atax_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_waitrequest(avm_memcoalesce_load_atax_fpgaunique_247_atax_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_writeack(avm_memcoalesce_load_atax_fpgaunique_247_atax_writeack),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdata(avm_memcoalesce_load_atax_fpgaunique_259_atax_readdata),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdatavalid(avm_memcoalesce_load_atax_fpgaunique_259_atax_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_waitrequest(avm_memcoalesce_load_atax_fpgaunique_259_atax_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_writeack(avm_memcoalesce_load_atax_fpgaunique_259_atax_writeack),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata(avm_memcoalesce_load_atax_fpgaunique_2610_atax_readdata),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid(avm_memcoalesce_load_atax_fpgaunique_2610_atax_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest(avm_memcoalesce_load_atax_fpgaunique_2610_atax_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack(avm_memcoalesce_load_atax_fpgaunique_2610_atax_writeack),
        .in_memdep_12_atax_avm_readdata(avm_memdep_12_atax_readdata),
        .in_memdep_12_atax_avm_readdatavalid(avm_memdep_12_atax_readdatavalid),
        .in_memdep_12_atax_avm_waitrequest(avm_memdep_12_atax_waitrequest),
        .in_memdep_12_atax_avm_writeack(avm_memdep_12_atax_writeack),
        .in_memdep_13_atax_avm_readdata(avm_memdep_13_atax_readdata),
        .in_memdep_13_atax_avm_readdatavalid(avm_memdep_13_atax_readdatavalid),
        .in_memdep_13_atax_avm_waitrequest(avm_memdep_13_atax_waitrequest),
        .in_memdep_13_atax_avm_writeack(avm_memdep_13_atax_writeack),
        .in_memdep_14264_atax_avm_readdata(avm_memdep_14264_atax_readdata),
        .in_memdep_14264_atax_avm_readdatavalid(avm_memdep_14264_atax_readdatavalid),
        .in_memdep_14264_atax_avm_waitrequest(avm_memdep_14264_atax_waitrequest),
        .in_memdep_14264_atax_avm_writeack(avm_memdep_14264_atax_writeack),
        .in_memdep_15_atax_avm_readdata(avm_memdep_15_atax_readdata),
        .in_memdep_15_atax_avm_readdatavalid(avm_memdep_15_atax_readdatavalid),
        .in_memdep_15_atax_avm_waitrequest(avm_memdep_15_atax_waitrequest),
        .in_memdep_15_atax_avm_writeack(avm_memdep_15_atax_writeack),
        .in_memdep_16_atax_avm_readdata(avm_memdep_16_atax_readdata),
        .in_memdep_16_atax_avm_readdatavalid(avm_memdep_16_atax_readdatavalid),
        .in_memdep_16_atax_avm_waitrequest(avm_memdep_16_atax_waitrequest),
        .in_memdep_16_atax_avm_writeack(avm_memdep_16_atax_writeack),
        .in_memdep_18_atax_avm_readdata(avm_memdep_18_atax_readdata),
        .in_memdep_18_atax_avm_readdatavalid(avm_memdep_18_atax_readdatavalid),
        .in_memdep_18_atax_avm_waitrequest(avm_memdep_18_atax_waitrequest),
        .in_memdep_18_atax_avm_writeack(avm_memdep_18_atax_writeack),
        .in_memdep_20_atax_avm_readdata(avm_memdep_20_atax_readdata),
        .in_memdep_20_atax_avm_readdatavalid(avm_memdep_20_atax_readdatavalid),
        .in_memdep_20_atax_avm_waitrequest(avm_memdep_20_atax_waitrequest),
        .in_memdep_20_atax_avm_writeack(avm_memdep_20_atax_writeack),
        .in_memdep_23_atax_avm_readdata(avm_memdep_23_atax_readdata),
        .in_memdep_23_atax_avm_readdatavalid(avm_memdep_23_atax_readdatavalid),
        .in_memdep_23_atax_avm_waitrequest(avm_memdep_23_atax_waitrequest),
        .in_memdep_23_atax_avm_writeack(avm_memdep_23_atax_writeack),
        .in_memdep_27_atax_avm_readdata(avm_memdep_27_atax_readdata),
        .in_memdep_27_atax_avm_readdatavalid(avm_memdep_27_atax_readdatavalid),
        .in_memdep_27_atax_avm_waitrequest(avm_memdep_27_atax_waitrequest),
        .in_memdep_27_atax_avm_writeack(avm_memdep_27_atax_writeack),
        .in_memdep_32_atax_avm_readdata(avm_memdep_32_atax_readdata),
        .in_memdep_32_atax_avm_readdatavalid(avm_memdep_32_atax_readdatavalid),
        .in_memdep_32_atax_avm_waitrequest(avm_memdep_32_atax_waitrequest),
        .in_memdep_32_atax_avm_writeack(avm_memdep_32_atax_writeack),
        .in_memdep_38_atax_avm_readdata(avm_memdep_38_atax_readdata),
        .in_memdep_38_atax_avm_readdatavalid(avm_memdep_38_atax_readdatavalid),
        .in_memdep_38_atax_avm_waitrequest(avm_memdep_38_atax_waitrequest),
        .in_memdep_38_atax_avm_writeack(avm_memdep_38_atax_writeack),
        .in_memdep_39_atax_avm_readdata(avm_memdep_39_atax_readdata),
        .in_memdep_39_atax_avm_readdatavalid(avm_memdep_39_atax_readdatavalid),
        .in_memdep_39_atax_avm_waitrequest(avm_memdep_39_atax_waitrequest),
        .in_memdep_39_atax_avm_writeack(avm_memdep_39_atax_writeack),
        .in_memdep_6_atax_avm_readdata(avm_memdep_6_atax_readdata),
        .in_memdep_6_atax_avm_readdatavalid(avm_memdep_6_atax_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(avm_memdep_6_atax_waitrequest),
        .in_memdep_6_atax_avm_writeack(avm_memdep_6_atax_writeack),
        .in_memdep_atax_avm_readdata(avm_memdep_atax_readdata),
        .in_memdep_atax_avm_readdatavalid(avm_memdep_atax_readdatavalid),
        .in_memdep_atax_avm_waitrequest(avm_memdep_atax_waitrequest),
        .in_memdep_atax_avm_writeack(avm_memdep_atax_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_atax10_atax_avm_readdata(avm_unnamed_atax10_atax_readdata),
        .in_unnamed_atax10_atax_avm_readdatavalid(avm_unnamed_atax10_atax_readdatavalid),
        .in_unnamed_atax10_atax_avm_waitrequest(avm_unnamed_atax10_atax_waitrequest),
        .in_unnamed_atax10_atax_avm_writeack(avm_unnamed_atax10_atax_writeack),
        .in_unnamed_atax11_atax_avm_readdata(avm_unnamed_atax11_atax_readdata),
        .in_unnamed_atax11_atax_avm_readdatavalid(avm_unnamed_atax11_atax_readdatavalid),
        .in_unnamed_atax11_atax_avm_waitrequest(avm_unnamed_atax11_atax_waitrequest),
        .in_unnamed_atax11_atax_avm_writeack(avm_unnamed_atax11_atax_writeack),
        .in_unnamed_atax12_atax_avm_readdata(avm_unnamed_atax12_atax_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(avm_unnamed_atax12_atax_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(avm_unnamed_atax12_atax_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(avm_unnamed_atax12_atax_writeack),
        .in_unnamed_atax13_atax_avm_readdata(avm_unnamed_atax13_atax_readdata),
        .in_unnamed_atax13_atax_avm_readdatavalid(avm_unnamed_atax13_atax_readdatavalid),
        .in_unnamed_atax13_atax_avm_waitrequest(avm_unnamed_atax13_atax_waitrequest),
        .in_unnamed_atax13_atax_avm_writeack(avm_unnamed_atax13_atax_writeack),
        .in_unnamed_atax14_atax_avm_readdata(avm_unnamed_atax14_atax_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(avm_unnamed_atax14_atax_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(avm_unnamed_atax14_atax_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(avm_unnamed_atax14_atax_writeack),
        .in_unnamed_atax16_atax_avm_readdata(avm_unnamed_atax16_atax_readdata),
        .in_unnamed_atax16_atax_avm_readdatavalid(avm_unnamed_atax16_atax_readdatavalid),
        .in_unnamed_atax16_atax_avm_waitrequest(avm_unnamed_atax16_atax_waitrequest),
        .in_unnamed_atax16_atax_avm_writeack(avm_unnamed_atax16_atax_writeack),
        .in_unnamed_atax17_atax_avm_readdata(avm_unnamed_atax17_atax_readdata),
        .in_unnamed_atax17_atax_avm_readdatavalid(avm_unnamed_atax17_atax_readdatavalid),
        .in_unnamed_atax17_atax_avm_waitrequest(avm_unnamed_atax17_atax_waitrequest),
        .in_unnamed_atax17_atax_avm_writeack(avm_unnamed_atax17_atax_writeack),
        .in_unnamed_atax18_atax_avm_readdata(avm_unnamed_atax18_atax_readdata),
        .in_unnamed_atax18_atax_avm_readdatavalid(avm_unnamed_atax18_atax_readdatavalid),
        .in_unnamed_atax18_atax_avm_waitrequest(avm_unnamed_atax18_atax_waitrequest),
        .in_unnamed_atax18_atax_avm_writeack(avm_unnamed_atax18_atax_writeack),
        .in_unnamed_atax5_atax_avm_readdata(avm_unnamed_atax5_atax_readdata),
        .in_unnamed_atax5_atax_avm_readdatavalid(avm_unnamed_atax5_atax_readdatavalid),
        .in_unnamed_atax5_atax_avm_waitrequest(avm_unnamed_atax5_atax_waitrequest),
        .in_unnamed_atax5_atax_avm_writeack(avm_unnamed_atax5_atax_writeack),
        .in_unnamed_atax7_atax_avm_readdata(avm_unnamed_atax7_atax_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(avm_unnamed_atax7_atax_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(avm_unnamed_atax7_atax_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(avm_unnamed_atax7_atax_writeack),
        .in_unnamed_atax8_atax_avm_readdata(avm_unnamed_atax8_atax_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(avm_unnamed_atax8_atax_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(avm_unnamed_atax8_atax_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(avm_unnamed_atax8_atax_writeack),
        .in_unnamed_atax9_atax_avm_readdata(avm_unnamed_atax9_atax_readdata),
        .in_unnamed_atax9_atax_avm_readdatavalid(avm_unnamed_atax9_atax_readdatavalid),
        .in_unnamed_atax9_atax_avm_waitrequest(avm_unnamed_atax9_atax_waitrequest),
        .in_unnamed_atax9_atax_avm_writeack(avm_unnamed_atax9_atax_writeack),
        .in_valid_in(VCC_q),
        .out_arrayidx28_promoted11_atax_avm_address(atax_function_out_arrayidx28_promoted11_atax_avm_address),
        .out_arrayidx28_promoted11_atax_avm_burstcount(atax_function_out_arrayidx28_promoted11_atax_avm_burstcount),
        .out_arrayidx28_promoted11_atax_avm_byteenable(atax_function_out_arrayidx28_promoted11_atax_avm_byteenable),
        .out_arrayidx28_promoted11_atax_avm_enable(atax_function_out_arrayidx28_promoted11_atax_avm_enable),
        .out_arrayidx28_promoted11_atax_avm_read(atax_function_out_arrayidx28_promoted11_atax_avm_read),
        .out_arrayidx28_promoted11_atax_avm_write(atax_function_out_arrayidx28_promoted11_atax_avm_write),
        .out_arrayidx28_promoted11_atax_avm_writedata(atax_function_out_arrayidx28_promoted11_atax_avm_writedata),
        .out_iord_bl_call_atax_o_fifoalmost_full(atax_function_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(atax_function_out_iord_bl_call_atax_o_fifoready),
        .out_iowr_bl_return_atax_o_fifodata(atax_function_out_iowr_bl_return_atax_o_fifodata),
        .out_iowr_bl_return_atax_o_fifovalid(atax_function_out_iowr_bl_return_atax_o_fifovalid),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address(atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount(atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable(atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable(atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read(atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write(atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata(atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address(atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount(atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable(atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable(atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read(atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write(atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata(atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address(atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount(atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable(atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable(atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read(atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write(atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata(atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata),
        .out_memdep_12_atax_avm_address(atax_function_out_memdep_12_atax_avm_address),
        .out_memdep_12_atax_avm_burstcount(atax_function_out_memdep_12_atax_avm_burstcount),
        .out_memdep_12_atax_avm_byteenable(atax_function_out_memdep_12_atax_avm_byteenable),
        .out_memdep_12_atax_avm_enable(atax_function_out_memdep_12_atax_avm_enable),
        .out_memdep_12_atax_avm_read(atax_function_out_memdep_12_atax_avm_read),
        .out_memdep_12_atax_avm_write(atax_function_out_memdep_12_atax_avm_write),
        .out_memdep_12_atax_avm_writedata(atax_function_out_memdep_12_atax_avm_writedata),
        .out_memdep_13_atax_avm_address(atax_function_out_memdep_13_atax_avm_address),
        .out_memdep_13_atax_avm_burstcount(atax_function_out_memdep_13_atax_avm_burstcount),
        .out_memdep_13_atax_avm_byteenable(atax_function_out_memdep_13_atax_avm_byteenable),
        .out_memdep_13_atax_avm_enable(atax_function_out_memdep_13_atax_avm_enable),
        .out_memdep_13_atax_avm_read(atax_function_out_memdep_13_atax_avm_read),
        .out_memdep_13_atax_avm_write(atax_function_out_memdep_13_atax_avm_write),
        .out_memdep_13_atax_avm_writedata(atax_function_out_memdep_13_atax_avm_writedata),
        .out_memdep_14264_atax_avm_address(atax_function_out_memdep_14264_atax_avm_address),
        .out_memdep_14264_atax_avm_burstcount(atax_function_out_memdep_14264_atax_avm_burstcount),
        .out_memdep_14264_atax_avm_byteenable(atax_function_out_memdep_14264_atax_avm_byteenable),
        .out_memdep_14264_atax_avm_enable(atax_function_out_memdep_14264_atax_avm_enable),
        .out_memdep_14264_atax_avm_read(atax_function_out_memdep_14264_atax_avm_read),
        .out_memdep_14264_atax_avm_write(atax_function_out_memdep_14264_atax_avm_write),
        .out_memdep_14264_atax_avm_writedata(atax_function_out_memdep_14264_atax_avm_writedata),
        .out_memdep_15_atax_avm_address(atax_function_out_memdep_15_atax_avm_address),
        .out_memdep_15_atax_avm_burstcount(atax_function_out_memdep_15_atax_avm_burstcount),
        .out_memdep_15_atax_avm_byteenable(atax_function_out_memdep_15_atax_avm_byteenable),
        .out_memdep_15_atax_avm_enable(atax_function_out_memdep_15_atax_avm_enable),
        .out_memdep_15_atax_avm_read(atax_function_out_memdep_15_atax_avm_read),
        .out_memdep_15_atax_avm_write(atax_function_out_memdep_15_atax_avm_write),
        .out_memdep_15_atax_avm_writedata(atax_function_out_memdep_15_atax_avm_writedata),
        .out_memdep_16_atax_avm_address(atax_function_out_memdep_16_atax_avm_address),
        .out_memdep_16_atax_avm_burstcount(atax_function_out_memdep_16_atax_avm_burstcount),
        .out_memdep_16_atax_avm_byteenable(atax_function_out_memdep_16_atax_avm_byteenable),
        .out_memdep_16_atax_avm_enable(atax_function_out_memdep_16_atax_avm_enable),
        .out_memdep_16_atax_avm_read(atax_function_out_memdep_16_atax_avm_read),
        .out_memdep_16_atax_avm_write(atax_function_out_memdep_16_atax_avm_write),
        .out_memdep_16_atax_avm_writedata(atax_function_out_memdep_16_atax_avm_writedata),
        .out_memdep_18_atax_avm_address(atax_function_out_memdep_18_atax_avm_address),
        .out_memdep_18_atax_avm_burstcount(atax_function_out_memdep_18_atax_avm_burstcount),
        .out_memdep_18_atax_avm_byteenable(atax_function_out_memdep_18_atax_avm_byteenable),
        .out_memdep_18_atax_avm_enable(atax_function_out_memdep_18_atax_avm_enable),
        .out_memdep_18_atax_avm_read(atax_function_out_memdep_18_atax_avm_read),
        .out_memdep_18_atax_avm_write(atax_function_out_memdep_18_atax_avm_write),
        .out_memdep_18_atax_avm_writedata(atax_function_out_memdep_18_atax_avm_writedata),
        .out_memdep_20_atax_avm_address(atax_function_out_memdep_20_atax_avm_address),
        .out_memdep_20_atax_avm_burstcount(atax_function_out_memdep_20_atax_avm_burstcount),
        .out_memdep_20_atax_avm_byteenable(atax_function_out_memdep_20_atax_avm_byteenable),
        .out_memdep_20_atax_avm_enable(atax_function_out_memdep_20_atax_avm_enable),
        .out_memdep_20_atax_avm_read(atax_function_out_memdep_20_atax_avm_read),
        .out_memdep_20_atax_avm_write(atax_function_out_memdep_20_atax_avm_write),
        .out_memdep_20_atax_avm_writedata(atax_function_out_memdep_20_atax_avm_writedata),
        .out_memdep_23_atax_avm_address(atax_function_out_memdep_23_atax_avm_address),
        .out_memdep_23_atax_avm_burstcount(atax_function_out_memdep_23_atax_avm_burstcount),
        .out_memdep_23_atax_avm_byteenable(atax_function_out_memdep_23_atax_avm_byteenable),
        .out_memdep_23_atax_avm_enable(atax_function_out_memdep_23_atax_avm_enable),
        .out_memdep_23_atax_avm_read(atax_function_out_memdep_23_atax_avm_read),
        .out_memdep_23_atax_avm_write(atax_function_out_memdep_23_atax_avm_write),
        .out_memdep_23_atax_avm_writedata(atax_function_out_memdep_23_atax_avm_writedata),
        .out_memdep_27_atax_avm_address(atax_function_out_memdep_27_atax_avm_address),
        .out_memdep_27_atax_avm_burstcount(atax_function_out_memdep_27_atax_avm_burstcount),
        .out_memdep_27_atax_avm_byteenable(atax_function_out_memdep_27_atax_avm_byteenable),
        .out_memdep_27_atax_avm_enable(atax_function_out_memdep_27_atax_avm_enable),
        .out_memdep_27_atax_avm_read(atax_function_out_memdep_27_atax_avm_read),
        .out_memdep_27_atax_avm_write(atax_function_out_memdep_27_atax_avm_write),
        .out_memdep_27_atax_avm_writedata(atax_function_out_memdep_27_atax_avm_writedata),
        .out_memdep_32_atax_avm_address(atax_function_out_memdep_32_atax_avm_address),
        .out_memdep_32_atax_avm_burstcount(atax_function_out_memdep_32_atax_avm_burstcount),
        .out_memdep_32_atax_avm_byteenable(atax_function_out_memdep_32_atax_avm_byteenable),
        .out_memdep_32_atax_avm_enable(atax_function_out_memdep_32_atax_avm_enable),
        .out_memdep_32_atax_avm_read(atax_function_out_memdep_32_atax_avm_read),
        .out_memdep_32_atax_avm_write(atax_function_out_memdep_32_atax_avm_write),
        .out_memdep_32_atax_avm_writedata(atax_function_out_memdep_32_atax_avm_writedata),
        .out_memdep_38_atax_avm_address(atax_function_out_memdep_38_atax_avm_address),
        .out_memdep_38_atax_avm_burstcount(atax_function_out_memdep_38_atax_avm_burstcount),
        .out_memdep_38_atax_avm_byteenable(atax_function_out_memdep_38_atax_avm_byteenable),
        .out_memdep_38_atax_avm_enable(atax_function_out_memdep_38_atax_avm_enable),
        .out_memdep_38_atax_avm_read(atax_function_out_memdep_38_atax_avm_read),
        .out_memdep_38_atax_avm_write(atax_function_out_memdep_38_atax_avm_write),
        .out_memdep_38_atax_avm_writedata(atax_function_out_memdep_38_atax_avm_writedata),
        .out_memdep_39_atax_avm_address(atax_function_out_memdep_39_atax_avm_address),
        .out_memdep_39_atax_avm_burstcount(atax_function_out_memdep_39_atax_avm_burstcount),
        .out_memdep_39_atax_avm_byteenable(atax_function_out_memdep_39_atax_avm_byteenable),
        .out_memdep_39_atax_avm_enable(atax_function_out_memdep_39_atax_avm_enable),
        .out_memdep_39_atax_avm_read(atax_function_out_memdep_39_atax_avm_read),
        .out_memdep_39_atax_avm_write(atax_function_out_memdep_39_atax_avm_write),
        .out_memdep_39_atax_avm_writedata(atax_function_out_memdep_39_atax_avm_writedata),
        .out_memdep_6_atax_avm_address(atax_function_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(atax_function_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(atax_function_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(atax_function_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(atax_function_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(atax_function_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(atax_function_out_memdep_6_atax_avm_writedata),
        .out_memdep_atax_avm_address(atax_function_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(atax_function_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(atax_function_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(atax_function_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(atax_function_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(atax_function_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(atax_function_out_memdep_atax_avm_writedata),
        .out_o_active_memdep_15(),
        .out_o_active_memdep_16(),
        .out_o_active_memdep_18(),
        .out_o_active_memdep_20(),
        .out_o_active_memdep_23(),
        .out_o_active_memdep_27(),
        .out_o_active_memdep_32(),
        .out_o_active_memdep_39(),
        .out_stall_out(),
        .out_unnamed_atax10_atax_avm_address(atax_function_out_unnamed_atax10_atax_avm_address),
        .out_unnamed_atax10_atax_avm_burstcount(atax_function_out_unnamed_atax10_atax_avm_burstcount),
        .out_unnamed_atax10_atax_avm_byteenable(atax_function_out_unnamed_atax10_atax_avm_byteenable),
        .out_unnamed_atax10_atax_avm_enable(atax_function_out_unnamed_atax10_atax_avm_enable),
        .out_unnamed_atax10_atax_avm_read(atax_function_out_unnamed_atax10_atax_avm_read),
        .out_unnamed_atax10_atax_avm_write(atax_function_out_unnamed_atax10_atax_avm_write),
        .out_unnamed_atax10_atax_avm_writedata(atax_function_out_unnamed_atax10_atax_avm_writedata),
        .out_unnamed_atax11_atax_avm_address(atax_function_out_unnamed_atax11_atax_avm_address),
        .out_unnamed_atax11_atax_avm_burstcount(atax_function_out_unnamed_atax11_atax_avm_burstcount),
        .out_unnamed_atax11_atax_avm_byteenable(atax_function_out_unnamed_atax11_atax_avm_byteenable),
        .out_unnamed_atax11_atax_avm_enable(atax_function_out_unnamed_atax11_atax_avm_enable),
        .out_unnamed_atax11_atax_avm_read(atax_function_out_unnamed_atax11_atax_avm_read),
        .out_unnamed_atax11_atax_avm_write(atax_function_out_unnamed_atax11_atax_avm_write),
        .out_unnamed_atax11_atax_avm_writedata(atax_function_out_unnamed_atax11_atax_avm_writedata),
        .out_unnamed_atax12_atax_avm_address(atax_function_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(atax_function_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(atax_function_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(atax_function_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(atax_function_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(atax_function_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(atax_function_out_unnamed_atax12_atax_avm_writedata),
        .out_unnamed_atax13_atax_avm_address(atax_function_out_unnamed_atax13_atax_avm_address),
        .out_unnamed_atax13_atax_avm_burstcount(atax_function_out_unnamed_atax13_atax_avm_burstcount),
        .out_unnamed_atax13_atax_avm_byteenable(atax_function_out_unnamed_atax13_atax_avm_byteenable),
        .out_unnamed_atax13_atax_avm_enable(atax_function_out_unnamed_atax13_atax_avm_enable),
        .out_unnamed_atax13_atax_avm_read(atax_function_out_unnamed_atax13_atax_avm_read),
        .out_unnamed_atax13_atax_avm_write(atax_function_out_unnamed_atax13_atax_avm_write),
        .out_unnamed_atax13_atax_avm_writedata(atax_function_out_unnamed_atax13_atax_avm_writedata),
        .out_unnamed_atax14_atax_avm_address(atax_function_out_unnamed_atax14_atax_avm_address),
        .out_unnamed_atax14_atax_avm_burstcount(atax_function_out_unnamed_atax14_atax_avm_burstcount),
        .out_unnamed_atax14_atax_avm_byteenable(atax_function_out_unnamed_atax14_atax_avm_byteenable),
        .out_unnamed_atax14_atax_avm_enable(atax_function_out_unnamed_atax14_atax_avm_enable),
        .out_unnamed_atax14_atax_avm_read(atax_function_out_unnamed_atax14_atax_avm_read),
        .out_unnamed_atax14_atax_avm_write(atax_function_out_unnamed_atax14_atax_avm_write),
        .out_unnamed_atax14_atax_avm_writedata(atax_function_out_unnamed_atax14_atax_avm_writedata),
        .out_unnamed_atax16_atax_avm_address(atax_function_out_unnamed_atax16_atax_avm_address),
        .out_unnamed_atax16_atax_avm_burstcount(atax_function_out_unnamed_atax16_atax_avm_burstcount),
        .out_unnamed_atax16_atax_avm_byteenable(atax_function_out_unnamed_atax16_atax_avm_byteenable),
        .out_unnamed_atax16_atax_avm_enable(atax_function_out_unnamed_atax16_atax_avm_enable),
        .out_unnamed_atax16_atax_avm_read(atax_function_out_unnamed_atax16_atax_avm_read),
        .out_unnamed_atax16_atax_avm_write(atax_function_out_unnamed_atax16_atax_avm_write),
        .out_unnamed_atax16_atax_avm_writedata(atax_function_out_unnamed_atax16_atax_avm_writedata),
        .out_unnamed_atax17_atax_avm_address(atax_function_out_unnamed_atax17_atax_avm_address),
        .out_unnamed_atax17_atax_avm_burstcount(atax_function_out_unnamed_atax17_atax_avm_burstcount),
        .out_unnamed_atax17_atax_avm_byteenable(atax_function_out_unnamed_atax17_atax_avm_byteenable),
        .out_unnamed_atax17_atax_avm_enable(atax_function_out_unnamed_atax17_atax_avm_enable),
        .out_unnamed_atax17_atax_avm_read(atax_function_out_unnamed_atax17_atax_avm_read),
        .out_unnamed_atax17_atax_avm_write(atax_function_out_unnamed_atax17_atax_avm_write),
        .out_unnamed_atax17_atax_avm_writedata(atax_function_out_unnamed_atax17_atax_avm_writedata),
        .out_unnamed_atax18_atax_avm_address(atax_function_out_unnamed_atax18_atax_avm_address),
        .out_unnamed_atax18_atax_avm_burstcount(atax_function_out_unnamed_atax18_atax_avm_burstcount),
        .out_unnamed_atax18_atax_avm_byteenable(atax_function_out_unnamed_atax18_atax_avm_byteenable),
        .out_unnamed_atax18_atax_avm_enable(atax_function_out_unnamed_atax18_atax_avm_enable),
        .out_unnamed_atax18_atax_avm_read(atax_function_out_unnamed_atax18_atax_avm_read),
        .out_unnamed_atax18_atax_avm_write(atax_function_out_unnamed_atax18_atax_avm_write),
        .out_unnamed_atax18_atax_avm_writedata(atax_function_out_unnamed_atax18_atax_avm_writedata),
        .out_unnamed_atax5_atax_avm_address(atax_function_out_unnamed_atax5_atax_avm_address),
        .out_unnamed_atax5_atax_avm_burstcount(atax_function_out_unnamed_atax5_atax_avm_burstcount),
        .out_unnamed_atax5_atax_avm_byteenable(atax_function_out_unnamed_atax5_atax_avm_byteenable),
        .out_unnamed_atax5_atax_avm_enable(atax_function_out_unnamed_atax5_atax_avm_enable),
        .out_unnamed_atax5_atax_avm_read(atax_function_out_unnamed_atax5_atax_avm_read),
        .out_unnamed_atax5_atax_avm_write(atax_function_out_unnamed_atax5_atax_avm_write),
        .out_unnamed_atax5_atax_avm_writedata(atax_function_out_unnamed_atax5_atax_avm_writedata),
        .out_unnamed_atax7_atax_avm_address(atax_function_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(atax_function_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(atax_function_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(atax_function_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(atax_function_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(atax_function_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(atax_function_out_unnamed_atax7_atax_avm_writedata),
        .out_unnamed_atax8_atax_avm_address(atax_function_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(atax_function_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(atax_function_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(atax_function_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(atax_function_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(atax_function_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(atax_function_out_unnamed_atax8_atax_avm_writedata),
        .out_unnamed_atax9_atax_avm_address(atax_function_out_unnamed_atax9_atax_avm_address),
        .out_unnamed_atax9_atax_avm_burstcount(atax_function_out_unnamed_atax9_atax_avm_burstcount),
        .out_unnamed_atax9_atax_avm_byteenable(atax_function_out_unnamed_atax9_atax_avm_byteenable),
        .out_unnamed_atax9_atax_avm_enable(atax_function_out_unnamed_atax9_atax_avm_enable),
        .out_unnamed_atax9_atax_avm_read(atax_function_out_unnamed_atax9_atax_avm_read),
        .out_unnamed_atax9_atax_avm_write(atax_function_out_unnamed_atax9_atax_avm_write),
        .out_unnamed_atax9_atax_avm_writedata(atax_function_out_unnamed_atax9_atax_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_arrayidx28_promoted11_atax_address(GPOUT,144)
    assign avm_arrayidx28_promoted11_atax_address = atax_function_out_arrayidx28_promoted11_atax_avm_address;

    // avm_arrayidx28_promoted11_atax_burstcount(GPOUT,145)
    assign avm_arrayidx28_promoted11_atax_burstcount = atax_function_out_arrayidx28_promoted11_atax_avm_burstcount;

    // avm_arrayidx28_promoted11_atax_byteenable(GPOUT,146)
    assign avm_arrayidx28_promoted11_atax_byteenable = atax_function_out_arrayidx28_promoted11_atax_avm_byteenable;

    // avm_arrayidx28_promoted11_atax_enable(GPOUT,147)
    assign avm_arrayidx28_promoted11_atax_enable = atax_function_out_arrayidx28_promoted11_atax_avm_enable;

    // avm_arrayidx28_promoted11_atax_read(GPOUT,148)
    assign avm_arrayidx28_promoted11_atax_read = atax_function_out_arrayidx28_promoted11_atax_avm_read;

    // avm_arrayidx28_promoted11_atax_write(GPOUT,149)
    assign avm_arrayidx28_promoted11_atax_write = atax_function_out_arrayidx28_promoted11_atax_avm_write;

    // avm_arrayidx28_promoted11_atax_writedata(GPOUT,150)
    assign avm_arrayidx28_promoted11_atax_writedata = atax_function_out_arrayidx28_promoted11_atax_avm_writedata;

    // avm_memcoalesce_load_atax_fpgaunique_247_atax_address(GPOUT,151)
    assign avm_memcoalesce_load_atax_fpgaunique_247_atax_address = atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address;

    // avm_memcoalesce_load_atax_fpgaunique_247_atax_burstcount(GPOUT,152)
    assign avm_memcoalesce_load_atax_fpgaunique_247_atax_burstcount = atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount;

    // avm_memcoalesce_load_atax_fpgaunique_247_atax_byteenable(GPOUT,153)
    assign avm_memcoalesce_load_atax_fpgaunique_247_atax_byteenable = atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable;

    // avm_memcoalesce_load_atax_fpgaunique_247_atax_enable(GPOUT,154)
    assign avm_memcoalesce_load_atax_fpgaunique_247_atax_enable = atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable;

    // avm_memcoalesce_load_atax_fpgaunique_247_atax_read(GPOUT,155)
    assign avm_memcoalesce_load_atax_fpgaunique_247_atax_read = atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read;

    // avm_memcoalesce_load_atax_fpgaunique_247_atax_write(GPOUT,156)
    assign avm_memcoalesce_load_atax_fpgaunique_247_atax_write = atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write;

    // avm_memcoalesce_load_atax_fpgaunique_247_atax_writedata(GPOUT,157)
    assign avm_memcoalesce_load_atax_fpgaunique_247_atax_writedata = atax_function_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata;

    // avm_memcoalesce_load_atax_fpgaunique_259_atax_address(GPOUT,158)
    assign avm_memcoalesce_load_atax_fpgaunique_259_atax_address = atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address;

    // avm_memcoalesce_load_atax_fpgaunique_259_atax_burstcount(GPOUT,159)
    assign avm_memcoalesce_load_atax_fpgaunique_259_atax_burstcount = atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount;

    // avm_memcoalesce_load_atax_fpgaunique_259_atax_byteenable(GPOUT,160)
    assign avm_memcoalesce_load_atax_fpgaunique_259_atax_byteenable = atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable;

    // avm_memcoalesce_load_atax_fpgaunique_259_atax_enable(GPOUT,161)
    assign avm_memcoalesce_load_atax_fpgaunique_259_atax_enable = atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable;

    // avm_memcoalesce_load_atax_fpgaunique_259_atax_read(GPOUT,162)
    assign avm_memcoalesce_load_atax_fpgaunique_259_atax_read = atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read;

    // avm_memcoalesce_load_atax_fpgaunique_259_atax_write(GPOUT,163)
    assign avm_memcoalesce_load_atax_fpgaunique_259_atax_write = atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write;

    // avm_memcoalesce_load_atax_fpgaunique_259_atax_writedata(GPOUT,164)
    assign avm_memcoalesce_load_atax_fpgaunique_259_atax_writedata = atax_function_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata;

    // avm_memcoalesce_load_atax_fpgaunique_2610_atax_address(GPOUT,165)
    assign avm_memcoalesce_load_atax_fpgaunique_2610_atax_address = atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address;

    // avm_memcoalesce_load_atax_fpgaunique_2610_atax_burstcount(GPOUT,166)
    assign avm_memcoalesce_load_atax_fpgaunique_2610_atax_burstcount = atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount;

    // avm_memcoalesce_load_atax_fpgaunique_2610_atax_byteenable(GPOUT,167)
    assign avm_memcoalesce_load_atax_fpgaunique_2610_atax_byteenable = atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable;

    // avm_memcoalesce_load_atax_fpgaunique_2610_atax_enable(GPOUT,168)
    assign avm_memcoalesce_load_atax_fpgaunique_2610_atax_enable = atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable;

    // avm_memcoalesce_load_atax_fpgaunique_2610_atax_read(GPOUT,169)
    assign avm_memcoalesce_load_atax_fpgaunique_2610_atax_read = atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read;

    // avm_memcoalesce_load_atax_fpgaunique_2610_atax_write(GPOUT,170)
    assign avm_memcoalesce_load_atax_fpgaunique_2610_atax_write = atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write;

    // avm_memcoalesce_load_atax_fpgaunique_2610_atax_writedata(GPOUT,171)
    assign avm_memcoalesce_load_atax_fpgaunique_2610_atax_writedata = atax_function_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata;

    // avm_memdep_12_atax_address(GPOUT,172)
    assign avm_memdep_12_atax_address = atax_function_out_memdep_12_atax_avm_address;

    // avm_memdep_12_atax_burstcount(GPOUT,173)
    assign avm_memdep_12_atax_burstcount = atax_function_out_memdep_12_atax_avm_burstcount;

    // avm_memdep_12_atax_byteenable(GPOUT,174)
    assign avm_memdep_12_atax_byteenable = atax_function_out_memdep_12_atax_avm_byteenable;

    // avm_memdep_12_atax_enable(GPOUT,175)
    assign avm_memdep_12_atax_enable = atax_function_out_memdep_12_atax_avm_enable;

    // avm_memdep_12_atax_read(GPOUT,176)
    assign avm_memdep_12_atax_read = atax_function_out_memdep_12_atax_avm_read;

    // avm_memdep_12_atax_write(GPOUT,177)
    assign avm_memdep_12_atax_write = atax_function_out_memdep_12_atax_avm_write;

    // avm_memdep_12_atax_writedata(GPOUT,178)
    assign avm_memdep_12_atax_writedata = atax_function_out_memdep_12_atax_avm_writedata;

    // avm_memdep_13_atax_address(GPOUT,179)
    assign avm_memdep_13_atax_address = atax_function_out_memdep_13_atax_avm_address;

    // avm_memdep_13_atax_burstcount(GPOUT,180)
    assign avm_memdep_13_atax_burstcount = atax_function_out_memdep_13_atax_avm_burstcount;

    // avm_memdep_13_atax_byteenable(GPOUT,181)
    assign avm_memdep_13_atax_byteenable = atax_function_out_memdep_13_atax_avm_byteenable;

    // avm_memdep_13_atax_enable(GPOUT,182)
    assign avm_memdep_13_atax_enable = atax_function_out_memdep_13_atax_avm_enable;

    // avm_memdep_13_atax_read(GPOUT,183)
    assign avm_memdep_13_atax_read = atax_function_out_memdep_13_atax_avm_read;

    // avm_memdep_13_atax_write(GPOUT,184)
    assign avm_memdep_13_atax_write = atax_function_out_memdep_13_atax_avm_write;

    // avm_memdep_13_atax_writedata(GPOUT,185)
    assign avm_memdep_13_atax_writedata = atax_function_out_memdep_13_atax_avm_writedata;

    // avm_memdep_14264_atax_address(GPOUT,186)
    assign avm_memdep_14264_atax_address = atax_function_out_memdep_14264_atax_avm_address;

    // avm_memdep_14264_atax_burstcount(GPOUT,187)
    assign avm_memdep_14264_atax_burstcount = atax_function_out_memdep_14264_atax_avm_burstcount;

    // avm_memdep_14264_atax_byteenable(GPOUT,188)
    assign avm_memdep_14264_atax_byteenable = atax_function_out_memdep_14264_atax_avm_byteenable;

    // avm_memdep_14264_atax_enable(GPOUT,189)
    assign avm_memdep_14264_atax_enable = atax_function_out_memdep_14264_atax_avm_enable;

    // avm_memdep_14264_atax_read(GPOUT,190)
    assign avm_memdep_14264_atax_read = atax_function_out_memdep_14264_atax_avm_read;

    // avm_memdep_14264_atax_write(GPOUT,191)
    assign avm_memdep_14264_atax_write = atax_function_out_memdep_14264_atax_avm_write;

    // avm_memdep_14264_atax_writedata(GPOUT,192)
    assign avm_memdep_14264_atax_writedata = atax_function_out_memdep_14264_atax_avm_writedata;

    // avm_memdep_15_atax_address(GPOUT,193)
    assign avm_memdep_15_atax_address = atax_function_out_memdep_15_atax_avm_address;

    // avm_memdep_15_atax_burstcount(GPOUT,194)
    assign avm_memdep_15_atax_burstcount = atax_function_out_memdep_15_atax_avm_burstcount;

    // avm_memdep_15_atax_byteenable(GPOUT,195)
    assign avm_memdep_15_atax_byteenable = atax_function_out_memdep_15_atax_avm_byteenable;

    // avm_memdep_15_atax_enable(GPOUT,196)
    assign avm_memdep_15_atax_enable = atax_function_out_memdep_15_atax_avm_enable;

    // avm_memdep_15_atax_read(GPOUT,197)
    assign avm_memdep_15_atax_read = atax_function_out_memdep_15_atax_avm_read;

    // avm_memdep_15_atax_write(GPOUT,198)
    assign avm_memdep_15_atax_write = atax_function_out_memdep_15_atax_avm_write;

    // avm_memdep_15_atax_writedata(GPOUT,199)
    assign avm_memdep_15_atax_writedata = atax_function_out_memdep_15_atax_avm_writedata;

    // avm_memdep_16_atax_address(GPOUT,200)
    assign avm_memdep_16_atax_address = atax_function_out_memdep_16_atax_avm_address;

    // avm_memdep_16_atax_burstcount(GPOUT,201)
    assign avm_memdep_16_atax_burstcount = atax_function_out_memdep_16_atax_avm_burstcount;

    // avm_memdep_16_atax_byteenable(GPOUT,202)
    assign avm_memdep_16_atax_byteenable = atax_function_out_memdep_16_atax_avm_byteenable;

    // avm_memdep_16_atax_enable(GPOUT,203)
    assign avm_memdep_16_atax_enable = atax_function_out_memdep_16_atax_avm_enable;

    // avm_memdep_16_atax_read(GPOUT,204)
    assign avm_memdep_16_atax_read = atax_function_out_memdep_16_atax_avm_read;

    // avm_memdep_16_atax_write(GPOUT,205)
    assign avm_memdep_16_atax_write = atax_function_out_memdep_16_atax_avm_write;

    // avm_memdep_16_atax_writedata(GPOUT,206)
    assign avm_memdep_16_atax_writedata = atax_function_out_memdep_16_atax_avm_writedata;

    // avm_memdep_18_atax_address(GPOUT,207)
    assign avm_memdep_18_atax_address = atax_function_out_memdep_18_atax_avm_address;

    // avm_memdep_18_atax_burstcount(GPOUT,208)
    assign avm_memdep_18_atax_burstcount = atax_function_out_memdep_18_atax_avm_burstcount;

    // avm_memdep_18_atax_byteenable(GPOUT,209)
    assign avm_memdep_18_atax_byteenable = atax_function_out_memdep_18_atax_avm_byteenable;

    // avm_memdep_18_atax_enable(GPOUT,210)
    assign avm_memdep_18_atax_enable = atax_function_out_memdep_18_atax_avm_enable;

    // avm_memdep_18_atax_read(GPOUT,211)
    assign avm_memdep_18_atax_read = atax_function_out_memdep_18_atax_avm_read;

    // avm_memdep_18_atax_write(GPOUT,212)
    assign avm_memdep_18_atax_write = atax_function_out_memdep_18_atax_avm_write;

    // avm_memdep_18_atax_writedata(GPOUT,213)
    assign avm_memdep_18_atax_writedata = atax_function_out_memdep_18_atax_avm_writedata;

    // avm_memdep_20_atax_address(GPOUT,214)
    assign avm_memdep_20_atax_address = atax_function_out_memdep_20_atax_avm_address;

    // avm_memdep_20_atax_burstcount(GPOUT,215)
    assign avm_memdep_20_atax_burstcount = atax_function_out_memdep_20_atax_avm_burstcount;

    // avm_memdep_20_atax_byteenable(GPOUT,216)
    assign avm_memdep_20_atax_byteenable = atax_function_out_memdep_20_atax_avm_byteenable;

    // avm_memdep_20_atax_enable(GPOUT,217)
    assign avm_memdep_20_atax_enable = atax_function_out_memdep_20_atax_avm_enable;

    // avm_memdep_20_atax_read(GPOUT,218)
    assign avm_memdep_20_atax_read = atax_function_out_memdep_20_atax_avm_read;

    // avm_memdep_20_atax_write(GPOUT,219)
    assign avm_memdep_20_atax_write = atax_function_out_memdep_20_atax_avm_write;

    // avm_memdep_20_atax_writedata(GPOUT,220)
    assign avm_memdep_20_atax_writedata = atax_function_out_memdep_20_atax_avm_writedata;

    // avm_memdep_23_atax_address(GPOUT,221)
    assign avm_memdep_23_atax_address = atax_function_out_memdep_23_atax_avm_address;

    // avm_memdep_23_atax_burstcount(GPOUT,222)
    assign avm_memdep_23_atax_burstcount = atax_function_out_memdep_23_atax_avm_burstcount;

    // avm_memdep_23_atax_byteenable(GPOUT,223)
    assign avm_memdep_23_atax_byteenable = atax_function_out_memdep_23_atax_avm_byteenable;

    // avm_memdep_23_atax_enable(GPOUT,224)
    assign avm_memdep_23_atax_enable = atax_function_out_memdep_23_atax_avm_enable;

    // avm_memdep_23_atax_read(GPOUT,225)
    assign avm_memdep_23_atax_read = atax_function_out_memdep_23_atax_avm_read;

    // avm_memdep_23_atax_write(GPOUT,226)
    assign avm_memdep_23_atax_write = atax_function_out_memdep_23_atax_avm_write;

    // avm_memdep_23_atax_writedata(GPOUT,227)
    assign avm_memdep_23_atax_writedata = atax_function_out_memdep_23_atax_avm_writedata;

    // avm_memdep_27_atax_address(GPOUT,228)
    assign avm_memdep_27_atax_address = atax_function_out_memdep_27_atax_avm_address;

    // avm_memdep_27_atax_burstcount(GPOUT,229)
    assign avm_memdep_27_atax_burstcount = atax_function_out_memdep_27_atax_avm_burstcount;

    // avm_memdep_27_atax_byteenable(GPOUT,230)
    assign avm_memdep_27_atax_byteenable = atax_function_out_memdep_27_atax_avm_byteenable;

    // avm_memdep_27_atax_enable(GPOUT,231)
    assign avm_memdep_27_atax_enable = atax_function_out_memdep_27_atax_avm_enable;

    // avm_memdep_27_atax_read(GPOUT,232)
    assign avm_memdep_27_atax_read = atax_function_out_memdep_27_atax_avm_read;

    // avm_memdep_27_atax_write(GPOUT,233)
    assign avm_memdep_27_atax_write = atax_function_out_memdep_27_atax_avm_write;

    // avm_memdep_27_atax_writedata(GPOUT,234)
    assign avm_memdep_27_atax_writedata = atax_function_out_memdep_27_atax_avm_writedata;

    // avm_memdep_32_atax_address(GPOUT,235)
    assign avm_memdep_32_atax_address = atax_function_out_memdep_32_atax_avm_address;

    // avm_memdep_32_atax_burstcount(GPOUT,236)
    assign avm_memdep_32_atax_burstcount = atax_function_out_memdep_32_atax_avm_burstcount;

    // avm_memdep_32_atax_byteenable(GPOUT,237)
    assign avm_memdep_32_atax_byteenable = atax_function_out_memdep_32_atax_avm_byteenable;

    // avm_memdep_32_atax_enable(GPOUT,238)
    assign avm_memdep_32_atax_enable = atax_function_out_memdep_32_atax_avm_enable;

    // avm_memdep_32_atax_read(GPOUT,239)
    assign avm_memdep_32_atax_read = atax_function_out_memdep_32_atax_avm_read;

    // avm_memdep_32_atax_write(GPOUT,240)
    assign avm_memdep_32_atax_write = atax_function_out_memdep_32_atax_avm_write;

    // avm_memdep_32_atax_writedata(GPOUT,241)
    assign avm_memdep_32_atax_writedata = atax_function_out_memdep_32_atax_avm_writedata;

    // avm_memdep_38_atax_address(GPOUT,242)
    assign avm_memdep_38_atax_address = atax_function_out_memdep_38_atax_avm_address;

    // avm_memdep_38_atax_burstcount(GPOUT,243)
    assign avm_memdep_38_atax_burstcount = atax_function_out_memdep_38_atax_avm_burstcount;

    // avm_memdep_38_atax_byteenable(GPOUT,244)
    assign avm_memdep_38_atax_byteenable = atax_function_out_memdep_38_atax_avm_byteenable;

    // avm_memdep_38_atax_enable(GPOUT,245)
    assign avm_memdep_38_atax_enable = atax_function_out_memdep_38_atax_avm_enable;

    // avm_memdep_38_atax_read(GPOUT,246)
    assign avm_memdep_38_atax_read = atax_function_out_memdep_38_atax_avm_read;

    // avm_memdep_38_atax_write(GPOUT,247)
    assign avm_memdep_38_atax_write = atax_function_out_memdep_38_atax_avm_write;

    // avm_memdep_38_atax_writedata(GPOUT,248)
    assign avm_memdep_38_atax_writedata = atax_function_out_memdep_38_atax_avm_writedata;

    // avm_memdep_39_atax_address(GPOUT,249)
    assign avm_memdep_39_atax_address = atax_function_out_memdep_39_atax_avm_address;

    // avm_memdep_39_atax_burstcount(GPOUT,250)
    assign avm_memdep_39_atax_burstcount = atax_function_out_memdep_39_atax_avm_burstcount;

    // avm_memdep_39_atax_byteenable(GPOUT,251)
    assign avm_memdep_39_atax_byteenable = atax_function_out_memdep_39_atax_avm_byteenable;

    // avm_memdep_39_atax_enable(GPOUT,252)
    assign avm_memdep_39_atax_enable = atax_function_out_memdep_39_atax_avm_enable;

    // avm_memdep_39_atax_read(GPOUT,253)
    assign avm_memdep_39_atax_read = atax_function_out_memdep_39_atax_avm_read;

    // avm_memdep_39_atax_write(GPOUT,254)
    assign avm_memdep_39_atax_write = atax_function_out_memdep_39_atax_avm_write;

    // avm_memdep_39_atax_writedata(GPOUT,255)
    assign avm_memdep_39_atax_writedata = atax_function_out_memdep_39_atax_avm_writedata;

    // avm_memdep_6_atax_address(GPOUT,256)
    assign avm_memdep_6_atax_address = atax_function_out_memdep_6_atax_avm_address;

    // avm_memdep_6_atax_burstcount(GPOUT,257)
    assign avm_memdep_6_atax_burstcount = atax_function_out_memdep_6_atax_avm_burstcount;

    // avm_memdep_6_atax_byteenable(GPOUT,258)
    assign avm_memdep_6_atax_byteenable = atax_function_out_memdep_6_atax_avm_byteenable;

    // avm_memdep_6_atax_enable(GPOUT,259)
    assign avm_memdep_6_atax_enable = atax_function_out_memdep_6_atax_avm_enable;

    // avm_memdep_6_atax_read(GPOUT,260)
    assign avm_memdep_6_atax_read = atax_function_out_memdep_6_atax_avm_read;

    // avm_memdep_6_atax_write(GPOUT,261)
    assign avm_memdep_6_atax_write = atax_function_out_memdep_6_atax_avm_write;

    // avm_memdep_6_atax_writedata(GPOUT,262)
    assign avm_memdep_6_atax_writedata = atax_function_out_memdep_6_atax_avm_writedata;

    // avm_memdep_atax_address(GPOUT,263)
    assign avm_memdep_atax_address = atax_function_out_memdep_atax_avm_address;

    // avm_memdep_atax_burstcount(GPOUT,264)
    assign avm_memdep_atax_burstcount = atax_function_out_memdep_atax_avm_burstcount;

    // avm_memdep_atax_byteenable(GPOUT,265)
    assign avm_memdep_atax_byteenable = atax_function_out_memdep_atax_avm_byteenable;

    // avm_memdep_atax_enable(GPOUT,266)
    assign avm_memdep_atax_enable = atax_function_out_memdep_atax_avm_enable;

    // avm_memdep_atax_read(GPOUT,267)
    assign avm_memdep_atax_read = atax_function_out_memdep_atax_avm_read;

    // avm_memdep_atax_write(GPOUT,268)
    assign avm_memdep_atax_write = atax_function_out_memdep_atax_avm_write;

    // avm_memdep_atax_writedata(GPOUT,269)
    assign avm_memdep_atax_writedata = atax_function_out_memdep_atax_avm_writedata;

    // avm_unnamed_atax10_atax_address(GPOUT,270)
    assign avm_unnamed_atax10_atax_address = atax_function_out_unnamed_atax10_atax_avm_address;

    // avm_unnamed_atax10_atax_burstcount(GPOUT,271)
    assign avm_unnamed_atax10_atax_burstcount = atax_function_out_unnamed_atax10_atax_avm_burstcount;

    // avm_unnamed_atax10_atax_byteenable(GPOUT,272)
    assign avm_unnamed_atax10_atax_byteenable = atax_function_out_unnamed_atax10_atax_avm_byteenable;

    // avm_unnamed_atax10_atax_enable(GPOUT,273)
    assign avm_unnamed_atax10_atax_enable = atax_function_out_unnamed_atax10_atax_avm_enable;

    // avm_unnamed_atax10_atax_read(GPOUT,274)
    assign avm_unnamed_atax10_atax_read = atax_function_out_unnamed_atax10_atax_avm_read;

    // avm_unnamed_atax10_atax_write(GPOUT,275)
    assign avm_unnamed_atax10_atax_write = atax_function_out_unnamed_atax10_atax_avm_write;

    // avm_unnamed_atax10_atax_writedata(GPOUT,276)
    assign avm_unnamed_atax10_atax_writedata = atax_function_out_unnamed_atax10_atax_avm_writedata;

    // avm_unnamed_atax11_atax_address(GPOUT,277)
    assign avm_unnamed_atax11_atax_address = atax_function_out_unnamed_atax11_atax_avm_address;

    // avm_unnamed_atax11_atax_burstcount(GPOUT,278)
    assign avm_unnamed_atax11_atax_burstcount = atax_function_out_unnamed_atax11_atax_avm_burstcount;

    // avm_unnamed_atax11_atax_byteenable(GPOUT,279)
    assign avm_unnamed_atax11_atax_byteenable = atax_function_out_unnamed_atax11_atax_avm_byteenable;

    // avm_unnamed_atax11_atax_enable(GPOUT,280)
    assign avm_unnamed_atax11_atax_enable = atax_function_out_unnamed_atax11_atax_avm_enable;

    // avm_unnamed_atax11_atax_read(GPOUT,281)
    assign avm_unnamed_atax11_atax_read = atax_function_out_unnamed_atax11_atax_avm_read;

    // avm_unnamed_atax11_atax_write(GPOUT,282)
    assign avm_unnamed_atax11_atax_write = atax_function_out_unnamed_atax11_atax_avm_write;

    // avm_unnamed_atax11_atax_writedata(GPOUT,283)
    assign avm_unnamed_atax11_atax_writedata = atax_function_out_unnamed_atax11_atax_avm_writedata;

    // avm_unnamed_atax12_atax_address(GPOUT,284)
    assign avm_unnamed_atax12_atax_address = atax_function_out_unnamed_atax12_atax_avm_address;

    // avm_unnamed_atax12_atax_burstcount(GPOUT,285)
    assign avm_unnamed_atax12_atax_burstcount = atax_function_out_unnamed_atax12_atax_avm_burstcount;

    // avm_unnamed_atax12_atax_byteenable(GPOUT,286)
    assign avm_unnamed_atax12_atax_byteenable = atax_function_out_unnamed_atax12_atax_avm_byteenable;

    // avm_unnamed_atax12_atax_enable(GPOUT,287)
    assign avm_unnamed_atax12_atax_enable = atax_function_out_unnamed_atax12_atax_avm_enable;

    // avm_unnamed_atax12_atax_read(GPOUT,288)
    assign avm_unnamed_atax12_atax_read = atax_function_out_unnamed_atax12_atax_avm_read;

    // avm_unnamed_atax12_atax_write(GPOUT,289)
    assign avm_unnamed_atax12_atax_write = atax_function_out_unnamed_atax12_atax_avm_write;

    // avm_unnamed_atax12_atax_writedata(GPOUT,290)
    assign avm_unnamed_atax12_atax_writedata = atax_function_out_unnamed_atax12_atax_avm_writedata;

    // avm_unnamed_atax13_atax_address(GPOUT,291)
    assign avm_unnamed_atax13_atax_address = atax_function_out_unnamed_atax13_atax_avm_address;

    // avm_unnamed_atax13_atax_burstcount(GPOUT,292)
    assign avm_unnamed_atax13_atax_burstcount = atax_function_out_unnamed_atax13_atax_avm_burstcount;

    // avm_unnamed_atax13_atax_byteenable(GPOUT,293)
    assign avm_unnamed_atax13_atax_byteenable = atax_function_out_unnamed_atax13_atax_avm_byteenable;

    // avm_unnamed_atax13_atax_enable(GPOUT,294)
    assign avm_unnamed_atax13_atax_enable = atax_function_out_unnamed_atax13_atax_avm_enable;

    // avm_unnamed_atax13_atax_read(GPOUT,295)
    assign avm_unnamed_atax13_atax_read = atax_function_out_unnamed_atax13_atax_avm_read;

    // avm_unnamed_atax13_atax_write(GPOUT,296)
    assign avm_unnamed_atax13_atax_write = atax_function_out_unnamed_atax13_atax_avm_write;

    // avm_unnamed_atax13_atax_writedata(GPOUT,297)
    assign avm_unnamed_atax13_atax_writedata = atax_function_out_unnamed_atax13_atax_avm_writedata;

    // avm_unnamed_atax14_atax_address(GPOUT,298)
    assign avm_unnamed_atax14_atax_address = atax_function_out_unnamed_atax14_atax_avm_address;

    // avm_unnamed_atax14_atax_burstcount(GPOUT,299)
    assign avm_unnamed_atax14_atax_burstcount = atax_function_out_unnamed_atax14_atax_avm_burstcount;

    // avm_unnamed_atax14_atax_byteenable(GPOUT,300)
    assign avm_unnamed_atax14_atax_byteenable = atax_function_out_unnamed_atax14_atax_avm_byteenable;

    // avm_unnamed_atax14_atax_enable(GPOUT,301)
    assign avm_unnamed_atax14_atax_enable = atax_function_out_unnamed_atax14_atax_avm_enable;

    // avm_unnamed_atax14_atax_read(GPOUT,302)
    assign avm_unnamed_atax14_atax_read = atax_function_out_unnamed_atax14_atax_avm_read;

    // avm_unnamed_atax14_atax_write(GPOUT,303)
    assign avm_unnamed_atax14_atax_write = atax_function_out_unnamed_atax14_atax_avm_write;

    // avm_unnamed_atax14_atax_writedata(GPOUT,304)
    assign avm_unnamed_atax14_atax_writedata = atax_function_out_unnamed_atax14_atax_avm_writedata;

    // avm_unnamed_atax16_atax_address(GPOUT,305)
    assign avm_unnamed_atax16_atax_address = atax_function_out_unnamed_atax16_atax_avm_address;

    // avm_unnamed_atax16_atax_burstcount(GPOUT,306)
    assign avm_unnamed_atax16_atax_burstcount = atax_function_out_unnamed_atax16_atax_avm_burstcount;

    // avm_unnamed_atax16_atax_byteenable(GPOUT,307)
    assign avm_unnamed_atax16_atax_byteenable = atax_function_out_unnamed_atax16_atax_avm_byteenable;

    // avm_unnamed_atax16_atax_enable(GPOUT,308)
    assign avm_unnamed_atax16_atax_enable = atax_function_out_unnamed_atax16_atax_avm_enable;

    // avm_unnamed_atax16_atax_read(GPOUT,309)
    assign avm_unnamed_atax16_atax_read = atax_function_out_unnamed_atax16_atax_avm_read;

    // avm_unnamed_atax16_atax_write(GPOUT,310)
    assign avm_unnamed_atax16_atax_write = atax_function_out_unnamed_atax16_atax_avm_write;

    // avm_unnamed_atax16_atax_writedata(GPOUT,311)
    assign avm_unnamed_atax16_atax_writedata = atax_function_out_unnamed_atax16_atax_avm_writedata;

    // avm_unnamed_atax17_atax_address(GPOUT,312)
    assign avm_unnamed_atax17_atax_address = atax_function_out_unnamed_atax17_atax_avm_address;

    // avm_unnamed_atax17_atax_burstcount(GPOUT,313)
    assign avm_unnamed_atax17_atax_burstcount = atax_function_out_unnamed_atax17_atax_avm_burstcount;

    // avm_unnamed_atax17_atax_byteenable(GPOUT,314)
    assign avm_unnamed_atax17_atax_byteenable = atax_function_out_unnamed_atax17_atax_avm_byteenable;

    // avm_unnamed_atax17_atax_enable(GPOUT,315)
    assign avm_unnamed_atax17_atax_enable = atax_function_out_unnamed_atax17_atax_avm_enable;

    // avm_unnamed_atax17_atax_read(GPOUT,316)
    assign avm_unnamed_atax17_atax_read = atax_function_out_unnamed_atax17_atax_avm_read;

    // avm_unnamed_atax17_atax_write(GPOUT,317)
    assign avm_unnamed_atax17_atax_write = atax_function_out_unnamed_atax17_atax_avm_write;

    // avm_unnamed_atax17_atax_writedata(GPOUT,318)
    assign avm_unnamed_atax17_atax_writedata = atax_function_out_unnamed_atax17_atax_avm_writedata;

    // avm_unnamed_atax18_atax_address(GPOUT,319)
    assign avm_unnamed_atax18_atax_address = atax_function_out_unnamed_atax18_atax_avm_address;

    // avm_unnamed_atax18_atax_burstcount(GPOUT,320)
    assign avm_unnamed_atax18_atax_burstcount = atax_function_out_unnamed_atax18_atax_avm_burstcount;

    // avm_unnamed_atax18_atax_byteenable(GPOUT,321)
    assign avm_unnamed_atax18_atax_byteenable = atax_function_out_unnamed_atax18_atax_avm_byteenable;

    // avm_unnamed_atax18_atax_enable(GPOUT,322)
    assign avm_unnamed_atax18_atax_enable = atax_function_out_unnamed_atax18_atax_avm_enable;

    // avm_unnamed_atax18_atax_read(GPOUT,323)
    assign avm_unnamed_atax18_atax_read = atax_function_out_unnamed_atax18_atax_avm_read;

    // avm_unnamed_atax18_atax_write(GPOUT,324)
    assign avm_unnamed_atax18_atax_write = atax_function_out_unnamed_atax18_atax_avm_write;

    // avm_unnamed_atax18_atax_writedata(GPOUT,325)
    assign avm_unnamed_atax18_atax_writedata = atax_function_out_unnamed_atax18_atax_avm_writedata;

    // avm_unnamed_atax5_atax_address(GPOUT,326)
    assign avm_unnamed_atax5_atax_address = atax_function_out_unnamed_atax5_atax_avm_address;

    // avm_unnamed_atax5_atax_burstcount(GPOUT,327)
    assign avm_unnamed_atax5_atax_burstcount = atax_function_out_unnamed_atax5_atax_avm_burstcount;

    // avm_unnamed_atax5_atax_byteenable(GPOUT,328)
    assign avm_unnamed_atax5_atax_byteenable = atax_function_out_unnamed_atax5_atax_avm_byteenable;

    // avm_unnamed_atax5_atax_enable(GPOUT,329)
    assign avm_unnamed_atax5_atax_enable = atax_function_out_unnamed_atax5_atax_avm_enable;

    // avm_unnamed_atax5_atax_read(GPOUT,330)
    assign avm_unnamed_atax5_atax_read = atax_function_out_unnamed_atax5_atax_avm_read;

    // avm_unnamed_atax5_atax_write(GPOUT,331)
    assign avm_unnamed_atax5_atax_write = atax_function_out_unnamed_atax5_atax_avm_write;

    // avm_unnamed_atax5_atax_writedata(GPOUT,332)
    assign avm_unnamed_atax5_atax_writedata = atax_function_out_unnamed_atax5_atax_avm_writedata;

    // avm_unnamed_atax7_atax_address(GPOUT,333)
    assign avm_unnamed_atax7_atax_address = atax_function_out_unnamed_atax7_atax_avm_address;

    // avm_unnamed_atax7_atax_burstcount(GPOUT,334)
    assign avm_unnamed_atax7_atax_burstcount = atax_function_out_unnamed_atax7_atax_avm_burstcount;

    // avm_unnamed_atax7_atax_byteenable(GPOUT,335)
    assign avm_unnamed_atax7_atax_byteenable = atax_function_out_unnamed_atax7_atax_avm_byteenable;

    // avm_unnamed_atax7_atax_enable(GPOUT,336)
    assign avm_unnamed_atax7_atax_enable = atax_function_out_unnamed_atax7_atax_avm_enable;

    // avm_unnamed_atax7_atax_read(GPOUT,337)
    assign avm_unnamed_atax7_atax_read = atax_function_out_unnamed_atax7_atax_avm_read;

    // avm_unnamed_atax7_atax_write(GPOUT,338)
    assign avm_unnamed_atax7_atax_write = atax_function_out_unnamed_atax7_atax_avm_write;

    // avm_unnamed_atax7_atax_writedata(GPOUT,339)
    assign avm_unnamed_atax7_atax_writedata = atax_function_out_unnamed_atax7_atax_avm_writedata;

    // avm_unnamed_atax8_atax_address(GPOUT,340)
    assign avm_unnamed_atax8_atax_address = atax_function_out_unnamed_atax8_atax_avm_address;

    // avm_unnamed_atax8_atax_burstcount(GPOUT,341)
    assign avm_unnamed_atax8_atax_burstcount = atax_function_out_unnamed_atax8_atax_avm_burstcount;

    // avm_unnamed_atax8_atax_byteenable(GPOUT,342)
    assign avm_unnamed_atax8_atax_byteenable = atax_function_out_unnamed_atax8_atax_avm_byteenable;

    // avm_unnamed_atax8_atax_enable(GPOUT,343)
    assign avm_unnamed_atax8_atax_enable = atax_function_out_unnamed_atax8_atax_avm_enable;

    // avm_unnamed_atax8_atax_read(GPOUT,344)
    assign avm_unnamed_atax8_atax_read = atax_function_out_unnamed_atax8_atax_avm_read;

    // avm_unnamed_atax8_atax_write(GPOUT,345)
    assign avm_unnamed_atax8_atax_write = atax_function_out_unnamed_atax8_atax_avm_write;

    // avm_unnamed_atax8_atax_writedata(GPOUT,346)
    assign avm_unnamed_atax8_atax_writedata = atax_function_out_unnamed_atax8_atax_avm_writedata;

    // avm_unnamed_atax9_atax_address(GPOUT,347)
    assign avm_unnamed_atax9_atax_address = atax_function_out_unnamed_atax9_atax_avm_address;

    // avm_unnamed_atax9_atax_burstcount(GPOUT,348)
    assign avm_unnamed_atax9_atax_burstcount = atax_function_out_unnamed_atax9_atax_avm_burstcount;

    // avm_unnamed_atax9_atax_byteenable(GPOUT,349)
    assign avm_unnamed_atax9_atax_byteenable = atax_function_out_unnamed_atax9_atax_avm_byteenable;

    // avm_unnamed_atax9_atax_enable(GPOUT,350)
    assign avm_unnamed_atax9_atax_enable = atax_function_out_unnamed_atax9_atax_avm_enable;

    // avm_unnamed_atax9_atax_read(GPOUT,351)
    assign avm_unnamed_atax9_atax_read = atax_function_out_unnamed_atax9_atax_avm_read;

    // avm_unnamed_atax9_atax_write(GPOUT,352)
    assign avm_unnamed_atax9_atax_write = atax_function_out_unnamed_atax9_atax_avm_write;

    // avm_unnamed_atax9_atax_writedata(GPOUT,353)
    assign avm_unnamed_atax9_atax_writedata = atax_function_out_unnamed_atax9_atax_avm_writedata;

    // avst_iord_bl_call_atax_almost_full(GPOUT,354)
    assign avst_iord_bl_call_atax_almost_full = atax_function_out_iord_bl_call_atax_o_fifoalmost_full;

    // avst_iord_bl_call_atax_ready(GPOUT,355)
    assign avst_iord_bl_call_atax_ready = atax_function_out_iord_bl_call_atax_o_fifoready;

    // avst_iowr_bl_return_atax_data(GPOUT,356)
    assign avst_iowr_bl_return_atax_data = atax_function_out_iowr_bl_return_atax_o_fifodata;

    // avst_iowr_bl_return_atax_valid(GPOUT,357)
    assign avst_iowr_bl_return_atax_valid = atax_function_out_iowr_bl_return_atax_o_fifovalid;

    // not_ready(LOGICAL,142)
    assign not_ready_q = ~ (atax_function_out_iord_bl_call_atax_o_fifoready);

    // busy_and(LOGICAL,4)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,361)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,360)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,5)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,358)
    assign busy = busy_or_q;

    // done(GPOUT,359)
    assign done = atax_function_out_iowr_bl_return_atax_o_fifovalid;

endmodule
