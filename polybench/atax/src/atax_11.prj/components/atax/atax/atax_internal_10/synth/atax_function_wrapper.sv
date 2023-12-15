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
// SystemVerilog created on Wed Dec 13 00:10:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_function_wrapper (
    input wire [63:0] A,
    input wire [31:0] avm_arrayidx28_promoted14_atax_readdata,
    input wire [0:0] avm_arrayidx28_promoted14_atax_readdatavalid,
    input wire [0:0] avm_arrayidx28_promoted14_atax_waitrequest,
    input wire [0:0] avm_arrayidx28_promoted14_atax_writeack,
    input wire [127:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_readdata,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_waitrequest,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_writeack,
    input wire [127:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_readdata,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_waitrequest,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_writeack,
    input wire [127:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_readdata,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_waitrequest,
    input wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_writeack,
    input wire [127:0] avm_memdep_15_atax_readdata,
    input wire [0:0] avm_memdep_15_atax_readdatavalid,
    input wire [0:0] avm_memdep_15_atax_waitrequest,
    input wire [0:0] avm_memdep_15_atax_writeack,
    input wire [31:0] avm_memdep_16_atax_readdata,
    input wire [0:0] avm_memdep_16_atax_readdatavalid,
    input wire [0:0] avm_memdep_16_atax_waitrequest,
    input wire [0:0] avm_memdep_16_atax_writeack,
    input wire [31:0] avm_memdep_17233_atax_readdata,
    input wire [0:0] avm_memdep_17233_atax_readdatavalid,
    input wire [0:0] avm_memdep_17233_atax_waitrequest,
    input wire [0:0] avm_memdep_17233_atax_writeack,
    input wire [63:0] avm_memdep_18_atax_readdata,
    input wire [0:0] avm_memdep_18_atax_readdatavalid,
    input wire [0:0] avm_memdep_18_atax_waitrequest,
    input wire [0:0] avm_memdep_18_atax_writeack,
    input wire [127:0] avm_memdep_19_atax_readdata,
    input wire [0:0] avm_memdep_19_atax_readdatavalid,
    input wire [0:0] avm_memdep_19_atax_waitrequest,
    input wire [0:0] avm_memdep_19_atax_writeack,
    input wire [63:0] avm_memdep_20_atax_readdata,
    input wire [0:0] avm_memdep_20_atax_readdatavalid,
    input wire [0:0] avm_memdep_20_atax_waitrequest,
    input wire [0:0] avm_memdep_20_atax_writeack,
    input wire [63:0] avm_memdep_22_atax_readdata,
    input wire [0:0] avm_memdep_22_atax_readdatavalid,
    input wire [0:0] avm_memdep_22_atax_waitrequest,
    input wire [0:0] avm_memdep_22_atax_writeack,
    input wire [63:0] avm_memdep_24_atax_readdata,
    input wire [0:0] avm_memdep_24_atax_readdatavalid,
    input wire [0:0] avm_memdep_24_atax_waitrequest,
    input wire [0:0] avm_memdep_24_atax_writeack,
    input wire [127:0] avm_memdep_511_atax_readdata,
    input wire [0:0] avm_memdep_511_atax_readdatavalid,
    input wire [0:0] avm_memdep_511_atax_waitrequest,
    input wire [0:0] avm_memdep_511_atax_writeack,
    input wire [127:0] avm_memdep_8_atax_readdata,
    input wire [0:0] avm_memdep_8_atax_readdatavalid,
    input wire [0:0] avm_memdep_8_atax_waitrequest,
    input wire [0:0] avm_memdep_8_atax_writeack,
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
    input wire [127:0] avm_unnamed_atax16_atax_readdata,
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
    output wire [31:0] avm_arrayidx28_promoted14_atax_address,
    output wire [0:0] avm_arrayidx28_promoted14_atax_burstcount,
    output wire [3:0] avm_arrayidx28_promoted14_atax_byteenable,
    output wire [0:0] avm_arrayidx28_promoted14_atax_enable,
    output wire [0:0] avm_arrayidx28_promoted14_atax_read,
    output wire [0:0] avm_arrayidx28_promoted14_atax_write,
    output wire [31:0] avm_arrayidx28_promoted14_atax_writedata,
    output wire [31:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_address,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_burstcount,
    output wire [15:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_byteenable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_enable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_read,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_write,
    output wire [127:0] avm_memcoalesce_load_atax_fpgaunique_1510_atax_writedata,
    output wire [31:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_address,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_burstcount,
    output wire [15:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_byteenable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_enable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_read,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_write,
    output wire [127:0] avm_memcoalesce_load_atax_fpgaunique_1612_atax_writedata,
    output wire [31:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_address,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_burstcount,
    output wire [15:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_byteenable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_enable,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_read,
    output wire [0:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_write,
    output wire [127:0] avm_memcoalesce_load_atax_fpgaunique_1713_atax_writedata,
    output wire [31:0] avm_memdep_15_atax_address,
    output wire [0:0] avm_memdep_15_atax_burstcount,
    output wire [15:0] avm_memdep_15_atax_byteenable,
    output wire [0:0] avm_memdep_15_atax_enable,
    output wire [0:0] avm_memdep_15_atax_read,
    output wire [0:0] avm_memdep_15_atax_write,
    output wire [127:0] avm_memdep_15_atax_writedata,
    output wire [31:0] avm_memdep_16_atax_address,
    output wire [0:0] avm_memdep_16_atax_burstcount,
    output wire [3:0] avm_memdep_16_atax_byteenable,
    output wire [0:0] avm_memdep_16_atax_enable,
    output wire [0:0] avm_memdep_16_atax_read,
    output wire [0:0] avm_memdep_16_atax_write,
    output wire [31:0] avm_memdep_16_atax_writedata,
    output wire [31:0] avm_memdep_17233_atax_address,
    output wire [0:0] avm_memdep_17233_atax_burstcount,
    output wire [3:0] avm_memdep_17233_atax_byteenable,
    output wire [0:0] avm_memdep_17233_atax_enable,
    output wire [0:0] avm_memdep_17233_atax_read,
    output wire [0:0] avm_memdep_17233_atax_write,
    output wire [31:0] avm_memdep_17233_atax_writedata,
    output wire [63:0] avm_memdep_18_atax_address,
    output wire [0:0] avm_memdep_18_atax_burstcount,
    output wire [7:0] avm_memdep_18_atax_byteenable,
    output wire [0:0] avm_memdep_18_atax_enable,
    output wire [0:0] avm_memdep_18_atax_read,
    output wire [0:0] avm_memdep_18_atax_write,
    output wire [63:0] avm_memdep_18_atax_writedata,
    output wire [31:0] avm_memdep_19_atax_address,
    output wire [0:0] avm_memdep_19_atax_burstcount,
    output wire [15:0] avm_memdep_19_atax_byteenable,
    output wire [0:0] avm_memdep_19_atax_enable,
    output wire [0:0] avm_memdep_19_atax_read,
    output wire [0:0] avm_memdep_19_atax_write,
    output wire [127:0] avm_memdep_19_atax_writedata,
    output wire [63:0] avm_memdep_20_atax_address,
    output wire [0:0] avm_memdep_20_atax_burstcount,
    output wire [7:0] avm_memdep_20_atax_byteenable,
    output wire [0:0] avm_memdep_20_atax_enable,
    output wire [0:0] avm_memdep_20_atax_read,
    output wire [0:0] avm_memdep_20_atax_write,
    output wire [63:0] avm_memdep_20_atax_writedata,
    output wire [63:0] avm_memdep_22_atax_address,
    output wire [0:0] avm_memdep_22_atax_burstcount,
    output wire [7:0] avm_memdep_22_atax_byteenable,
    output wire [0:0] avm_memdep_22_atax_enable,
    output wire [0:0] avm_memdep_22_atax_read,
    output wire [0:0] avm_memdep_22_atax_write,
    output wire [63:0] avm_memdep_22_atax_writedata,
    output wire [63:0] avm_memdep_24_atax_address,
    output wire [0:0] avm_memdep_24_atax_burstcount,
    output wire [7:0] avm_memdep_24_atax_byteenable,
    output wire [0:0] avm_memdep_24_atax_enable,
    output wire [0:0] avm_memdep_24_atax_read,
    output wire [0:0] avm_memdep_24_atax_write,
    output wire [63:0] avm_memdep_24_atax_writedata,
    output wire [31:0] avm_memdep_511_atax_address,
    output wire [0:0] avm_memdep_511_atax_burstcount,
    output wire [15:0] avm_memdep_511_atax_byteenable,
    output wire [0:0] avm_memdep_511_atax_enable,
    output wire [0:0] avm_memdep_511_atax_read,
    output wire [0:0] avm_memdep_511_atax_write,
    output wire [127:0] avm_memdep_511_atax_writedata,
    output wire [31:0] avm_memdep_8_atax_address,
    output wire [0:0] avm_memdep_8_atax_burstcount,
    output wire [15:0] avm_memdep_8_atax_byteenable,
    output wire [0:0] avm_memdep_8_atax_enable,
    output wire [0:0] avm_memdep_8_atax_read,
    output wire [0:0] avm_memdep_8_atax_write,
    output wire [127:0] avm_memdep_8_atax_writedata,
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
    output wire [15:0] avm_unnamed_atax16_atax_byteenable,
    output wire [0:0] avm_unnamed_atax16_atax_enable,
    output wire [0:0] avm_unnamed_atax16_atax_read,
    output wire [0:0] avm_unnamed_atax16_atax_write,
    output wire [127:0] avm_unnamed_atax16_atax_writedata,
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
    wire [31:0] atax_function_out_arrayidx28_promoted14_atax_avm_address;
    wire [0:0] atax_function_out_arrayidx28_promoted14_atax_avm_burstcount;
    wire [3:0] atax_function_out_arrayidx28_promoted14_atax_avm_byteenable;
    wire [0:0] atax_function_out_arrayidx28_promoted14_atax_avm_enable;
    wire [0:0] atax_function_out_arrayidx28_promoted14_atax_avm_read;
    wire [0:0] atax_function_out_arrayidx28_promoted14_atax_avm_write;
    wire [31:0] atax_function_out_arrayidx28_promoted14_atax_avm_writedata;
    wire [0:0] atax_function_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] atax_function_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] atax_function_out_iowr_bl_return_atax_o_fifodata;
    wire [0:0] atax_function_out_iowr_bl_return_atax_o_fifovalid;
    wire [31:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount;
    wire [15:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write;
    wire [127:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata;
    wire [31:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount;
    wire [15:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write;
    wire [127:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata;
    wire [31:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount;
    wire [15:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read;
    wire [0:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write;
    wire [127:0] atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_15_atax_avm_address;
    wire [0:0] atax_function_out_memdep_15_atax_avm_burstcount;
    wire [15:0] atax_function_out_memdep_15_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_15_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_15_atax_avm_read;
    wire [0:0] atax_function_out_memdep_15_atax_avm_write;
    wire [127:0] atax_function_out_memdep_15_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_16_atax_avm_address;
    wire [0:0] atax_function_out_memdep_16_atax_avm_burstcount;
    wire [3:0] atax_function_out_memdep_16_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_16_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_16_atax_avm_read;
    wire [0:0] atax_function_out_memdep_16_atax_avm_write;
    wire [31:0] atax_function_out_memdep_16_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_17233_atax_avm_address;
    wire [0:0] atax_function_out_memdep_17233_atax_avm_burstcount;
    wire [3:0] atax_function_out_memdep_17233_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_17233_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_17233_atax_avm_read;
    wire [0:0] atax_function_out_memdep_17233_atax_avm_write;
    wire [31:0] atax_function_out_memdep_17233_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_18_atax_avm_address;
    wire [0:0] atax_function_out_memdep_18_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_18_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_18_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_18_atax_avm_read;
    wire [0:0] atax_function_out_memdep_18_atax_avm_write;
    wire [63:0] atax_function_out_memdep_18_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_19_atax_avm_address;
    wire [0:0] atax_function_out_memdep_19_atax_avm_burstcount;
    wire [15:0] atax_function_out_memdep_19_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_19_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_19_atax_avm_read;
    wire [0:0] atax_function_out_memdep_19_atax_avm_write;
    wire [127:0] atax_function_out_memdep_19_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_20_atax_avm_address;
    wire [0:0] atax_function_out_memdep_20_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_20_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_20_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_20_atax_avm_read;
    wire [0:0] atax_function_out_memdep_20_atax_avm_write;
    wire [63:0] atax_function_out_memdep_20_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_22_atax_avm_address;
    wire [0:0] atax_function_out_memdep_22_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_22_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_22_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_22_atax_avm_read;
    wire [0:0] atax_function_out_memdep_22_atax_avm_write;
    wire [63:0] atax_function_out_memdep_22_atax_avm_writedata;
    wire [63:0] atax_function_out_memdep_24_atax_avm_address;
    wire [0:0] atax_function_out_memdep_24_atax_avm_burstcount;
    wire [7:0] atax_function_out_memdep_24_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_24_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_24_atax_avm_read;
    wire [0:0] atax_function_out_memdep_24_atax_avm_write;
    wire [63:0] atax_function_out_memdep_24_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_511_atax_avm_address;
    wire [0:0] atax_function_out_memdep_511_atax_avm_burstcount;
    wire [15:0] atax_function_out_memdep_511_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_511_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_511_atax_avm_read;
    wire [0:0] atax_function_out_memdep_511_atax_avm_write;
    wire [127:0] atax_function_out_memdep_511_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_8_atax_avm_address;
    wire [0:0] atax_function_out_memdep_8_atax_avm_burstcount;
    wire [15:0] atax_function_out_memdep_8_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_8_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_8_atax_avm_read;
    wire [0:0] atax_function_out_memdep_8_atax_avm_write;
    wire [127:0] atax_function_out_memdep_8_atax_avm_writedata;
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
    wire [15:0] atax_function_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax16_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax16_atax_avm_write;
    wire [127:0] atax_function_out_unnamed_atax16_atax_avm_writedata;
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

    // not_stall(LOGICAL,131)
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
        .in_arrayidx28_promoted14_atax_avm_readdata(avm_arrayidx28_promoted14_atax_readdata),
        .in_arrayidx28_promoted14_atax_avm_readdatavalid(avm_arrayidx28_promoted14_atax_readdatavalid),
        .in_arrayidx28_promoted14_atax_avm_waitrequest(avm_arrayidx28_promoted14_atax_waitrequest),
        .in_arrayidx28_promoted14_atax_avm_writeack(avm_arrayidx28_promoted14_atax_writeack),
        .in_iord_bl_call_atax_i_fifodata(implicit_input_q),
        .in_iord_bl_call_atax_i_fifovalid(start),
        .in_iowr_bl_return_atax_i_fifoready(not_stall_q),
        .in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_readdata(avm_memcoalesce_load_atax_fpgaunique_1510_atax_readdata),
        .in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_readdatavalid(avm_memcoalesce_load_atax_fpgaunique_1510_atax_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_waitrequest(avm_memcoalesce_load_atax_fpgaunique_1510_atax_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writeack(avm_memcoalesce_load_atax_fpgaunique_1510_atax_writeack),
        .in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_readdata(avm_memcoalesce_load_atax_fpgaunique_1612_atax_readdata),
        .in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_readdatavalid(avm_memcoalesce_load_atax_fpgaunique_1612_atax_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_waitrequest(avm_memcoalesce_load_atax_fpgaunique_1612_atax_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writeack(avm_memcoalesce_load_atax_fpgaunique_1612_atax_writeack),
        .in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_readdata(avm_memcoalesce_load_atax_fpgaunique_1713_atax_readdata),
        .in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_readdatavalid(avm_memcoalesce_load_atax_fpgaunique_1713_atax_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_waitrequest(avm_memcoalesce_load_atax_fpgaunique_1713_atax_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writeack(avm_memcoalesce_load_atax_fpgaunique_1713_atax_writeack),
        .in_memdep_15_atax_avm_readdata(avm_memdep_15_atax_readdata),
        .in_memdep_15_atax_avm_readdatavalid(avm_memdep_15_atax_readdatavalid),
        .in_memdep_15_atax_avm_waitrequest(avm_memdep_15_atax_waitrequest),
        .in_memdep_15_atax_avm_writeack(avm_memdep_15_atax_writeack),
        .in_memdep_16_atax_avm_readdata(avm_memdep_16_atax_readdata),
        .in_memdep_16_atax_avm_readdatavalid(avm_memdep_16_atax_readdatavalid),
        .in_memdep_16_atax_avm_waitrequest(avm_memdep_16_atax_waitrequest),
        .in_memdep_16_atax_avm_writeack(avm_memdep_16_atax_writeack),
        .in_memdep_17233_atax_avm_readdata(avm_memdep_17233_atax_readdata),
        .in_memdep_17233_atax_avm_readdatavalid(avm_memdep_17233_atax_readdatavalid),
        .in_memdep_17233_atax_avm_waitrequest(avm_memdep_17233_atax_waitrequest),
        .in_memdep_17233_atax_avm_writeack(avm_memdep_17233_atax_writeack),
        .in_memdep_18_atax_avm_readdata(avm_memdep_18_atax_readdata),
        .in_memdep_18_atax_avm_readdatavalid(avm_memdep_18_atax_readdatavalid),
        .in_memdep_18_atax_avm_waitrequest(avm_memdep_18_atax_waitrequest),
        .in_memdep_18_atax_avm_writeack(avm_memdep_18_atax_writeack),
        .in_memdep_19_atax_avm_readdata(avm_memdep_19_atax_readdata),
        .in_memdep_19_atax_avm_readdatavalid(avm_memdep_19_atax_readdatavalid),
        .in_memdep_19_atax_avm_waitrequest(avm_memdep_19_atax_waitrequest),
        .in_memdep_19_atax_avm_writeack(avm_memdep_19_atax_writeack),
        .in_memdep_20_atax_avm_readdata(avm_memdep_20_atax_readdata),
        .in_memdep_20_atax_avm_readdatavalid(avm_memdep_20_atax_readdatavalid),
        .in_memdep_20_atax_avm_waitrequest(avm_memdep_20_atax_waitrequest),
        .in_memdep_20_atax_avm_writeack(avm_memdep_20_atax_writeack),
        .in_memdep_22_atax_avm_readdata(avm_memdep_22_atax_readdata),
        .in_memdep_22_atax_avm_readdatavalid(avm_memdep_22_atax_readdatavalid),
        .in_memdep_22_atax_avm_waitrequest(avm_memdep_22_atax_waitrequest),
        .in_memdep_22_atax_avm_writeack(avm_memdep_22_atax_writeack),
        .in_memdep_24_atax_avm_readdata(avm_memdep_24_atax_readdata),
        .in_memdep_24_atax_avm_readdatavalid(avm_memdep_24_atax_readdatavalid),
        .in_memdep_24_atax_avm_waitrequest(avm_memdep_24_atax_waitrequest),
        .in_memdep_24_atax_avm_writeack(avm_memdep_24_atax_writeack),
        .in_memdep_511_atax_avm_readdata(avm_memdep_511_atax_readdata),
        .in_memdep_511_atax_avm_readdatavalid(avm_memdep_511_atax_readdatavalid),
        .in_memdep_511_atax_avm_waitrequest(avm_memdep_511_atax_waitrequest),
        .in_memdep_511_atax_avm_writeack(avm_memdep_511_atax_writeack),
        .in_memdep_8_atax_avm_readdata(avm_memdep_8_atax_readdata),
        .in_memdep_8_atax_avm_readdatavalid(avm_memdep_8_atax_readdatavalid),
        .in_memdep_8_atax_avm_waitrequest(avm_memdep_8_atax_waitrequest),
        .in_memdep_8_atax_avm_writeack(avm_memdep_8_atax_writeack),
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
        .out_arrayidx28_promoted14_atax_avm_address(atax_function_out_arrayidx28_promoted14_atax_avm_address),
        .out_arrayidx28_promoted14_atax_avm_burstcount(atax_function_out_arrayidx28_promoted14_atax_avm_burstcount),
        .out_arrayidx28_promoted14_atax_avm_byteenable(atax_function_out_arrayidx28_promoted14_atax_avm_byteenable),
        .out_arrayidx28_promoted14_atax_avm_enable(atax_function_out_arrayidx28_promoted14_atax_avm_enable),
        .out_arrayidx28_promoted14_atax_avm_read(atax_function_out_arrayidx28_promoted14_atax_avm_read),
        .out_arrayidx28_promoted14_atax_avm_write(atax_function_out_arrayidx28_promoted14_atax_avm_write),
        .out_arrayidx28_promoted14_atax_avm_writedata(atax_function_out_arrayidx28_promoted14_atax_avm_writedata),
        .out_iord_bl_call_atax_o_fifoalmost_full(atax_function_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(atax_function_out_iord_bl_call_atax_o_fifoready),
        .out_iowr_bl_return_atax_o_fifodata(atax_function_out_iowr_bl_return_atax_o_fifodata),
        .out_iowr_bl_return_atax_o_fifovalid(atax_function_out_iowr_bl_return_atax_o_fifovalid),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address(atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount(atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable(atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable(atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read(atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write(atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata(atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address(atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount(atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable(atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable(atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read(atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write(atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata(atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address(atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount(atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable(atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable(atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read(atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write(atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata(atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata),
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
        .out_memdep_17233_atax_avm_address(atax_function_out_memdep_17233_atax_avm_address),
        .out_memdep_17233_atax_avm_burstcount(atax_function_out_memdep_17233_atax_avm_burstcount),
        .out_memdep_17233_atax_avm_byteenable(atax_function_out_memdep_17233_atax_avm_byteenable),
        .out_memdep_17233_atax_avm_enable(atax_function_out_memdep_17233_atax_avm_enable),
        .out_memdep_17233_atax_avm_read(atax_function_out_memdep_17233_atax_avm_read),
        .out_memdep_17233_atax_avm_write(atax_function_out_memdep_17233_atax_avm_write),
        .out_memdep_17233_atax_avm_writedata(atax_function_out_memdep_17233_atax_avm_writedata),
        .out_memdep_18_atax_avm_address(atax_function_out_memdep_18_atax_avm_address),
        .out_memdep_18_atax_avm_burstcount(atax_function_out_memdep_18_atax_avm_burstcount),
        .out_memdep_18_atax_avm_byteenable(atax_function_out_memdep_18_atax_avm_byteenable),
        .out_memdep_18_atax_avm_enable(atax_function_out_memdep_18_atax_avm_enable),
        .out_memdep_18_atax_avm_read(atax_function_out_memdep_18_atax_avm_read),
        .out_memdep_18_atax_avm_write(atax_function_out_memdep_18_atax_avm_write),
        .out_memdep_18_atax_avm_writedata(atax_function_out_memdep_18_atax_avm_writedata),
        .out_memdep_19_atax_avm_address(atax_function_out_memdep_19_atax_avm_address),
        .out_memdep_19_atax_avm_burstcount(atax_function_out_memdep_19_atax_avm_burstcount),
        .out_memdep_19_atax_avm_byteenable(atax_function_out_memdep_19_atax_avm_byteenable),
        .out_memdep_19_atax_avm_enable(atax_function_out_memdep_19_atax_avm_enable),
        .out_memdep_19_atax_avm_read(atax_function_out_memdep_19_atax_avm_read),
        .out_memdep_19_atax_avm_write(atax_function_out_memdep_19_atax_avm_write),
        .out_memdep_19_atax_avm_writedata(atax_function_out_memdep_19_atax_avm_writedata),
        .out_memdep_20_atax_avm_address(atax_function_out_memdep_20_atax_avm_address),
        .out_memdep_20_atax_avm_burstcount(atax_function_out_memdep_20_atax_avm_burstcount),
        .out_memdep_20_atax_avm_byteenable(atax_function_out_memdep_20_atax_avm_byteenable),
        .out_memdep_20_atax_avm_enable(atax_function_out_memdep_20_atax_avm_enable),
        .out_memdep_20_atax_avm_read(atax_function_out_memdep_20_atax_avm_read),
        .out_memdep_20_atax_avm_write(atax_function_out_memdep_20_atax_avm_write),
        .out_memdep_20_atax_avm_writedata(atax_function_out_memdep_20_atax_avm_writedata),
        .out_memdep_22_atax_avm_address(atax_function_out_memdep_22_atax_avm_address),
        .out_memdep_22_atax_avm_burstcount(atax_function_out_memdep_22_atax_avm_burstcount),
        .out_memdep_22_atax_avm_byteenable(atax_function_out_memdep_22_atax_avm_byteenable),
        .out_memdep_22_atax_avm_enable(atax_function_out_memdep_22_atax_avm_enable),
        .out_memdep_22_atax_avm_read(atax_function_out_memdep_22_atax_avm_read),
        .out_memdep_22_atax_avm_write(atax_function_out_memdep_22_atax_avm_write),
        .out_memdep_22_atax_avm_writedata(atax_function_out_memdep_22_atax_avm_writedata),
        .out_memdep_24_atax_avm_address(atax_function_out_memdep_24_atax_avm_address),
        .out_memdep_24_atax_avm_burstcount(atax_function_out_memdep_24_atax_avm_burstcount),
        .out_memdep_24_atax_avm_byteenable(atax_function_out_memdep_24_atax_avm_byteenable),
        .out_memdep_24_atax_avm_enable(atax_function_out_memdep_24_atax_avm_enable),
        .out_memdep_24_atax_avm_read(atax_function_out_memdep_24_atax_avm_read),
        .out_memdep_24_atax_avm_write(atax_function_out_memdep_24_atax_avm_write),
        .out_memdep_24_atax_avm_writedata(atax_function_out_memdep_24_atax_avm_writedata),
        .out_memdep_511_atax_avm_address(atax_function_out_memdep_511_atax_avm_address),
        .out_memdep_511_atax_avm_burstcount(atax_function_out_memdep_511_atax_avm_burstcount),
        .out_memdep_511_atax_avm_byteenable(atax_function_out_memdep_511_atax_avm_byteenable),
        .out_memdep_511_atax_avm_enable(atax_function_out_memdep_511_atax_avm_enable),
        .out_memdep_511_atax_avm_read(atax_function_out_memdep_511_atax_avm_read),
        .out_memdep_511_atax_avm_write(atax_function_out_memdep_511_atax_avm_write),
        .out_memdep_511_atax_avm_writedata(atax_function_out_memdep_511_atax_avm_writedata),
        .out_memdep_8_atax_avm_address(atax_function_out_memdep_8_atax_avm_address),
        .out_memdep_8_atax_avm_burstcount(atax_function_out_memdep_8_atax_avm_burstcount),
        .out_memdep_8_atax_avm_byteenable(atax_function_out_memdep_8_atax_avm_byteenable),
        .out_memdep_8_atax_avm_enable(atax_function_out_memdep_8_atax_avm_enable),
        .out_memdep_8_atax_avm_read(atax_function_out_memdep_8_atax_avm_read),
        .out_memdep_8_atax_avm_write(atax_function_out_memdep_8_atax_avm_write),
        .out_memdep_8_atax_avm_writedata(atax_function_out_memdep_8_atax_avm_writedata),
        .out_memdep_atax_avm_address(atax_function_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(atax_function_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(atax_function_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(atax_function_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(atax_function_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(atax_function_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(atax_function_out_memdep_atax_avm_writedata),
        .out_o_active_memdep_18(),
        .out_o_active_memdep_20(),
        .out_o_active_memdep_22(),
        .out_o_active_memdep_24(),
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

    // avm_arrayidx28_promoted14_atax_address(GPOUT,132)
    assign avm_arrayidx28_promoted14_atax_address = atax_function_out_arrayidx28_promoted14_atax_avm_address;

    // avm_arrayidx28_promoted14_atax_burstcount(GPOUT,133)
    assign avm_arrayidx28_promoted14_atax_burstcount = atax_function_out_arrayidx28_promoted14_atax_avm_burstcount;

    // avm_arrayidx28_promoted14_atax_byteenable(GPOUT,134)
    assign avm_arrayidx28_promoted14_atax_byteenable = atax_function_out_arrayidx28_promoted14_atax_avm_byteenable;

    // avm_arrayidx28_promoted14_atax_enable(GPOUT,135)
    assign avm_arrayidx28_promoted14_atax_enable = atax_function_out_arrayidx28_promoted14_atax_avm_enable;

    // avm_arrayidx28_promoted14_atax_read(GPOUT,136)
    assign avm_arrayidx28_promoted14_atax_read = atax_function_out_arrayidx28_promoted14_atax_avm_read;

    // avm_arrayidx28_promoted14_atax_write(GPOUT,137)
    assign avm_arrayidx28_promoted14_atax_write = atax_function_out_arrayidx28_promoted14_atax_avm_write;

    // avm_arrayidx28_promoted14_atax_writedata(GPOUT,138)
    assign avm_arrayidx28_promoted14_atax_writedata = atax_function_out_arrayidx28_promoted14_atax_avm_writedata;

    // avm_memcoalesce_load_atax_fpgaunique_1510_atax_address(GPOUT,139)
    assign avm_memcoalesce_load_atax_fpgaunique_1510_atax_address = atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address;

    // avm_memcoalesce_load_atax_fpgaunique_1510_atax_burstcount(GPOUT,140)
    assign avm_memcoalesce_load_atax_fpgaunique_1510_atax_burstcount = atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount;

    // avm_memcoalesce_load_atax_fpgaunique_1510_atax_byteenable(GPOUT,141)
    assign avm_memcoalesce_load_atax_fpgaunique_1510_atax_byteenable = atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable;

    // avm_memcoalesce_load_atax_fpgaunique_1510_atax_enable(GPOUT,142)
    assign avm_memcoalesce_load_atax_fpgaunique_1510_atax_enable = atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable;

    // avm_memcoalesce_load_atax_fpgaunique_1510_atax_read(GPOUT,143)
    assign avm_memcoalesce_load_atax_fpgaunique_1510_atax_read = atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read;

    // avm_memcoalesce_load_atax_fpgaunique_1510_atax_write(GPOUT,144)
    assign avm_memcoalesce_load_atax_fpgaunique_1510_atax_write = atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write;

    // avm_memcoalesce_load_atax_fpgaunique_1510_atax_writedata(GPOUT,145)
    assign avm_memcoalesce_load_atax_fpgaunique_1510_atax_writedata = atax_function_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata;

    // avm_memcoalesce_load_atax_fpgaunique_1612_atax_address(GPOUT,146)
    assign avm_memcoalesce_load_atax_fpgaunique_1612_atax_address = atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address;

    // avm_memcoalesce_load_atax_fpgaunique_1612_atax_burstcount(GPOUT,147)
    assign avm_memcoalesce_load_atax_fpgaunique_1612_atax_burstcount = atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount;

    // avm_memcoalesce_load_atax_fpgaunique_1612_atax_byteenable(GPOUT,148)
    assign avm_memcoalesce_load_atax_fpgaunique_1612_atax_byteenable = atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable;

    // avm_memcoalesce_load_atax_fpgaunique_1612_atax_enable(GPOUT,149)
    assign avm_memcoalesce_load_atax_fpgaunique_1612_atax_enable = atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable;

    // avm_memcoalesce_load_atax_fpgaunique_1612_atax_read(GPOUT,150)
    assign avm_memcoalesce_load_atax_fpgaunique_1612_atax_read = atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read;

    // avm_memcoalesce_load_atax_fpgaunique_1612_atax_write(GPOUT,151)
    assign avm_memcoalesce_load_atax_fpgaunique_1612_atax_write = atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write;

    // avm_memcoalesce_load_atax_fpgaunique_1612_atax_writedata(GPOUT,152)
    assign avm_memcoalesce_load_atax_fpgaunique_1612_atax_writedata = atax_function_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata;

    // avm_memcoalesce_load_atax_fpgaunique_1713_atax_address(GPOUT,153)
    assign avm_memcoalesce_load_atax_fpgaunique_1713_atax_address = atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address;

    // avm_memcoalesce_load_atax_fpgaunique_1713_atax_burstcount(GPOUT,154)
    assign avm_memcoalesce_load_atax_fpgaunique_1713_atax_burstcount = atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount;

    // avm_memcoalesce_load_atax_fpgaunique_1713_atax_byteenable(GPOUT,155)
    assign avm_memcoalesce_load_atax_fpgaunique_1713_atax_byteenable = atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable;

    // avm_memcoalesce_load_atax_fpgaunique_1713_atax_enable(GPOUT,156)
    assign avm_memcoalesce_load_atax_fpgaunique_1713_atax_enable = atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable;

    // avm_memcoalesce_load_atax_fpgaunique_1713_atax_read(GPOUT,157)
    assign avm_memcoalesce_load_atax_fpgaunique_1713_atax_read = atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read;

    // avm_memcoalesce_load_atax_fpgaunique_1713_atax_write(GPOUT,158)
    assign avm_memcoalesce_load_atax_fpgaunique_1713_atax_write = atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write;

    // avm_memcoalesce_load_atax_fpgaunique_1713_atax_writedata(GPOUT,159)
    assign avm_memcoalesce_load_atax_fpgaunique_1713_atax_writedata = atax_function_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata;

    // avm_memdep_15_atax_address(GPOUT,160)
    assign avm_memdep_15_atax_address = atax_function_out_memdep_15_atax_avm_address;

    // avm_memdep_15_atax_burstcount(GPOUT,161)
    assign avm_memdep_15_atax_burstcount = atax_function_out_memdep_15_atax_avm_burstcount;

    // avm_memdep_15_atax_byteenable(GPOUT,162)
    assign avm_memdep_15_atax_byteenable = atax_function_out_memdep_15_atax_avm_byteenable;

    // avm_memdep_15_atax_enable(GPOUT,163)
    assign avm_memdep_15_atax_enable = atax_function_out_memdep_15_atax_avm_enable;

    // avm_memdep_15_atax_read(GPOUT,164)
    assign avm_memdep_15_atax_read = atax_function_out_memdep_15_atax_avm_read;

    // avm_memdep_15_atax_write(GPOUT,165)
    assign avm_memdep_15_atax_write = atax_function_out_memdep_15_atax_avm_write;

    // avm_memdep_15_atax_writedata(GPOUT,166)
    assign avm_memdep_15_atax_writedata = atax_function_out_memdep_15_atax_avm_writedata;

    // avm_memdep_16_atax_address(GPOUT,167)
    assign avm_memdep_16_atax_address = atax_function_out_memdep_16_atax_avm_address;

    // avm_memdep_16_atax_burstcount(GPOUT,168)
    assign avm_memdep_16_atax_burstcount = atax_function_out_memdep_16_atax_avm_burstcount;

    // avm_memdep_16_atax_byteenable(GPOUT,169)
    assign avm_memdep_16_atax_byteenable = atax_function_out_memdep_16_atax_avm_byteenable;

    // avm_memdep_16_atax_enable(GPOUT,170)
    assign avm_memdep_16_atax_enable = atax_function_out_memdep_16_atax_avm_enable;

    // avm_memdep_16_atax_read(GPOUT,171)
    assign avm_memdep_16_atax_read = atax_function_out_memdep_16_atax_avm_read;

    // avm_memdep_16_atax_write(GPOUT,172)
    assign avm_memdep_16_atax_write = atax_function_out_memdep_16_atax_avm_write;

    // avm_memdep_16_atax_writedata(GPOUT,173)
    assign avm_memdep_16_atax_writedata = atax_function_out_memdep_16_atax_avm_writedata;

    // avm_memdep_17233_atax_address(GPOUT,174)
    assign avm_memdep_17233_atax_address = atax_function_out_memdep_17233_atax_avm_address;

    // avm_memdep_17233_atax_burstcount(GPOUT,175)
    assign avm_memdep_17233_atax_burstcount = atax_function_out_memdep_17233_atax_avm_burstcount;

    // avm_memdep_17233_atax_byteenable(GPOUT,176)
    assign avm_memdep_17233_atax_byteenable = atax_function_out_memdep_17233_atax_avm_byteenable;

    // avm_memdep_17233_atax_enable(GPOUT,177)
    assign avm_memdep_17233_atax_enable = atax_function_out_memdep_17233_atax_avm_enable;

    // avm_memdep_17233_atax_read(GPOUT,178)
    assign avm_memdep_17233_atax_read = atax_function_out_memdep_17233_atax_avm_read;

    // avm_memdep_17233_atax_write(GPOUT,179)
    assign avm_memdep_17233_atax_write = atax_function_out_memdep_17233_atax_avm_write;

    // avm_memdep_17233_atax_writedata(GPOUT,180)
    assign avm_memdep_17233_atax_writedata = atax_function_out_memdep_17233_atax_avm_writedata;

    // avm_memdep_18_atax_address(GPOUT,181)
    assign avm_memdep_18_atax_address = atax_function_out_memdep_18_atax_avm_address;

    // avm_memdep_18_atax_burstcount(GPOUT,182)
    assign avm_memdep_18_atax_burstcount = atax_function_out_memdep_18_atax_avm_burstcount;

    // avm_memdep_18_atax_byteenable(GPOUT,183)
    assign avm_memdep_18_atax_byteenable = atax_function_out_memdep_18_atax_avm_byteenable;

    // avm_memdep_18_atax_enable(GPOUT,184)
    assign avm_memdep_18_atax_enable = atax_function_out_memdep_18_atax_avm_enable;

    // avm_memdep_18_atax_read(GPOUT,185)
    assign avm_memdep_18_atax_read = atax_function_out_memdep_18_atax_avm_read;

    // avm_memdep_18_atax_write(GPOUT,186)
    assign avm_memdep_18_atax_write = atax_function_out_memdep_18_atax_avm_write;

    // avm_memdep_18_atax_writedata(GPOUT,187)
    assign avm_memdep_18_atax_writedata = atax_function_out_memdep_18_atax_avm_writedata;

    // avm_memdep_19_atax_address(GPOUT,188)
    assign avm_memdep_19_atax_address = atax_function_out_memdep_19_atax_avm_address;

    // avm_memdep_19_atax_burstcount(GPOUT,189)
    assign avm_memdep_19_atax_burstcount = atax_function_out_memdep_19_atax_avm_burstcount;

    // avm_memdep_19_atax_byteenable(GPOUT,190)
    assign avm_memdep_19_atax_byteenable = atax_function_out_memdep_19_atax_avm_byteenable;

    // avm_memdep_19_atax_enable(GPOUT,191)
    assign avm_memdep_19_atax_enable = atax_function_out_memdep_19_atax_avm_enable;

    // avm_memdep_19_atax_read(GPOUT,192)
    assign avm_memdep_19_atax_read = atax_function_out_memdep_19_atax_avm_read;

    // avm_memdep_19_atax_write(GPOUT,193)
    assign avm_memdep_19_atax_write = atax_function_out_memdep_19_atax_avm_write;

    // avm_memdep_19_atax_writedata(GPOUT,194)
    assign avm_memdep_19_atax_writedata = atax_function_out_memdep_19_atax_avm_writedata;

    // avm_memdep_20_atax_address(GPOUT,195)
    assign avm_memdep_20_atax_address = atax_function_out_memdep_20_atax_avm_address;

    // avm_memdep_20_atax_burstcount(GPOUT,196)
    assign avm_memdep_20_atax_burstcount = atax_function_out_memdep_20_atax_avm_burstcount;

    // avm_memdep_20_atax_byteenable(GPOUT,197)
    assign avm_memdep_20_atax_byteenable = atax_function_out_memdep_20_atax_avm_byteenable;

    // avm_memdep_20_atax_enable(GPOUT,198)
    assign avm_memdep_20_atax_enable = atax_function_out_memdep_20_atax_avm_enable;

    // avm_memdep_20_atax_read(GPOUT,199)
    assign avm_memdep_20_atax_read = atax_function_out_memdep_20_atax_avm_read;

    // avm_memdep_20_atax_write(GPOUT,200)
    assign avm_memdep_20_atax_write = atax_function_out_memdep_20_atax_avm_write;

    // avm_memdep_20_atax_writedata(GPOUT,201)
    assign avm_memdep_20_atax_writedata = atax_function_out_memdep_20_atax_avm_writedata;

    // avm_memdep_22_atax_address(GPOUT,202)
    assign avm_memdep_22_atax_address = atax_function_out_memdep_22_atax_avm_address;

    // avm_memdep_22_atax_burstcount(GPOUT,203)
    assign avm_memdep_22_atax_burstcount = atax_function_out_memdep_22_atax_avm_burstcount;

    // avm_memdep_22_atax_byteenable(GPOUT,204)
    assign avm_memdep_22_atax_byteenable = atax_function_out_memdep_22_atax_avm_byteenable;

    // avm_memdep_22_atax_enable(GPOUT,205)
    assign avm_memdep_22_atax_enable = atax_function_out_memdep_22_atax_avm_enable;

    // avm_memdep_22_atax_read(GPOUT,206)
    assign avm_memdep_22_atax_read = atax_function_out_memdep_22_atax_avm_read;

    // avm_memdep_22_atax_write(GPOUT,207)
    assign avm_memdep_22_atax_write = atax_function_out_memdep_22_atax_avm_write;

    // avm_memdep_22_atax_writedata(GPOUT,208)
    assign avm_memdep_22_atax_writedata = atax_function_out_memdep_22_atax_avm_writedata;

    // avm_memdep_24_atax_address(GPOUT,209)
    assign avm_memdep_24_atax_address = atax_function_out_memdep_24_atax_avm_address;

    // avm_memdep_24_atax_burstcount(GPOUT,210)
    assign avm_memdep_24_atax_burstcount = atax_function_out_memdep_24_atax_avm_burstcount;

    // avm_memdep_24_atax_byteenable(GPOUT,211)
    assign avm_memdep_24_atax_byteenable = atax_function_out_memdep_24_atax_avm_byteenable;

    // avm_memdep_24_atax_enable(GPOUT,212)
    assign avm_memdep_24_atax_enable = atax_function_out_memdep_24_atax_avm_enable;

    // avm_memdep_24_atax_read(GPOUT,213)
    assign avm_memdep_24_atax_read = atax_function_out_memdep_24_atax_avm_read;

    // avm_memdep_24_atax_write(GPOUT,214)
    assign avm_memdep_24_atax_write = atax_function_out_memdep_24_atax_avm_write;

    // avm_memdep_24_atax_writedata(GPOUT,215)
    assign avm_memdep_24_atax_writedata = atax_function_out_memdep_24_atax_avm_writedata;

    // avm_memdep_511_atax_address(GPOUT,216)
    assign avm_memdep_511_atax_address = atax_function_out_memdep_511_atax_avm_address;

    // avm_memdep_511_atax_burstcount(GPOUT,217)
    assign avm_memdep_511_atax_burstcount = atax_function_out_memdep_511_atax_avm_burstcount;

    // avm_memdep_511_atax_byteenable(GPOUT,218)
    assign avm_memdep_511_atax_byteenable = atax_function_out_memdep_511_atax_avm_byteenable;

    // avm_memdep_511_atax_enable(GPOUT,219)
    assign avm_memdep_511_atax_enable = atax_function_out_memdep_511_atax_avm_enable;

    // avm_memdep_511_atax_read(GPOUT,220)
    assign avm_memdep_511_atax_read = atax_function_out_memdep_511_atax_avm_read;

    // avm_memdep_511_atax_write(GPOUT,221)
    assign avm_memdep_511_atax_write = atax_function_out_memdep_511_atax_avm_write;

    // avm_memdep_511_atax_writedata(GPOUT,222)
    assign avm_memdep_511_atax_writedata = atax_function_out_memdep_511_atax_avm_writedata;

    // avm_memdep_8_atax_address(GPOUT,223)
    assign avm_memdep_8_atax_address = atax_function_out_memdep_8_atax_avm_address;

    // avm_memdep_8_atax_burstcount(GPOUT,224)
    assign avm_memdep_8_atax_burstcount = atax_function_out_memdep_8_atax_avm_burstcount;

    // avm_memdep_8_atax_byteenable(GPOUT,225)
    assign avm_memdep_8_atax_byteenable = atax_function_out_memdep_8_atax_avm_byteenable;

    // avm_memdep_8_atax_enable(GPOUT,226)
    assign avm_memdep_8_atax_enable = atax_function_out_memdep_8_atax_avm_enable;

    // avm_memdep_8_atax_read(GPOUT,227)
    assign avm_memdep_8_atax_read = atax_function_out_memdep_8_atax_avm_read;

    // avm_memdep_8_atax_write(GPOUT,228)
    assign avm_memdep_8_atax_write = atax_function_out_memdep_8_atax_avm_write;

    // avm_memdep_8_atax_writedata(GPOUT,229)
    assign avm_memdep_8_atax_writedata = atax_function_out_memdep_8_atax_avm_writedata;

    // avm_memdep_atax_address(GPOUT,230)
    assign avm_memdep_atax_address = atax_function_out_memdep_atax_avm_address;

    // avm_memdep_atax_burstcount(GPOUT,231)
    assign avm_memdep_atax_burstcount = atax_function_out_memdep_atax_avm_burstcount;

    // avm_memdep_atax_byteenable(GPOUT,232)
    assign avm_memdep_atax_byteenable = atax_function_out_memdep_atax_avm_byteenable;

    // avm_memdep_atax_enable(GPOUT,233)
    assign avm_memdep_atax_enable = atax_function_out_memdep_atax_avm_enable;

    // avm_memdep_atax_read(GPOUT,234)
    assign avm_memdep_atax_read = atax_function_out_memdep_atax_avm_read;

    // avm_memdep_atax_write(GPOUT,235)
    assign avm_memdep_atax_write = atax_function_out_memdep_atax_avm_write;

    // avm_memdep_atax_writedata(GPOUT,236)
    assign avm_memdep_atax_writedata = atax_function_out_memdep_atax_avm_writedata;

    // avm_unnamed_atax10_atax_address(GPOUT,237)
    assign avm_unnamed_atax10_atax_address = atax_function_out_unnamed_atax10_atax_avm_address;

    // avm_unnamed_atax10_atax_burstcount(GPOUT,238)
    assign avm_unnamed_atax10_atax_burstcount = atax_function_out_unnamed_atax10_atax_avm_burstcount;

    // avm_unnamed_atax10_atax_byteenable(GPOUT,239)
    assign avm_unnamed_atax10_atax_byteenable = atax_function_out_unnamed_atax10_atax_avm_byteenable;

    // avm_unnamed_atax10_atax_enable(GPOUT,240)
    assign avm_unnamed_atax10_atax_enable = atax_function_out_unnamed_atax10_atax_avm_enable;

    // avm_unnamed_atax10_atax_read(GPOUT,241)
    assign avm_unnamed_atax10_atax_read = atax_function_out_unnamed_atax10_atax_avm_read;

    // avm_unnamed_atax10_atax_write(GPOUT,242)
    assign avm_unnamed_atax10_atax_write = atax_function_out_unnamed_atax10_atax_avm_write;

    // avm_unnamed_atax10_atax_writedata(GPOUT,243)
    assign avm_unnamed_atax10_atax_writedata = atax_function_out_unnamed_atax10_atax_avm_writedata;

    // avm_unnamed_atax11_atax_address(GPOUT,244)
    assign avm_unnamed_atax11_atax_address = atax_function_out_unnamed_atax11_atax_avm_address;

    // avm_unnamed_atax11_atax_burstcount(GPOUT,245)
    assign avm_unnamed_atax11_atax_burstcount = atax_function_out_unnamed_atax11_atax_avm_burstcount;

    // avm_unnamed_atax11_atax_byteenable(GPOUT,246)
    assign avm_unnamed_atax11_atax_byteenable = atax_function_out_unnamed_atax11_atax_avm_byteenable;

    // avm_unnamed_atax11_atax_enable(GPOUT,247)
    assign avm_unnamed_atax11_atax_enable = atax_function_out_unnamed_atax11_atax_avm_enable;

    // avm_unnamed_atax11_atax_read(GPOUT,248)
    assign avm_unnamed_atax11_atax_read = atax_function_out_unnamed_atax11_atax_avm_read;

    // avm_unnamed_atax11_atax_write(GPOUT,249)
    assign avm_unnamed_atax11_atax_write = atax_function_out_unnamed_atax11_atax_avm_write;

    // avm_unnamed_atax11_atax_writedata(GPOUT,250)
    assign avm_unnamed_atax11_atax_writedata = atax_function_out_unnamed_atax11_atax_avm_writedata;

    // avm_unnamed_atax12_atax_address(GPOUT,251)
    assign avm_unnamed_atax12_atax_address = atax_function_out_unnamed_atax12_atax_avm_address;

    // avm_unnamed_atax12_atax_burstcount(GPOUT,252)
    assign avm_unnamed_atax12_atax_burstcount = atax_function_out_unnamed_atax12_atax_avm_burstcount;

    // avm_unnamed_atax12_atax_byteenable(GPOUT,253)
    assign avm_unnamed_atax12_atax_byteenable = atax_function_out_unnamed_atax12_atax_avm_byteenable;

    // avm_unnamed_atax12_atax_enable(GPOUT,254)
    assign avm_unnamed_atax12_atax_enable = atax_function_out_unnamed_atax12_atax_avm_enable;

    // avm_unnamed_atax12_atax_read(GPOUT,255)
    assign avm_unnamed_atax12_atax_read = atax_function_out_unnamed_atax12_atax_avm_read;

    // avm_unnamed_atax12_atax_write(GPOUT,256)
    assign avm_unnamed_atax12_atax_write = atax_function_out_unnamed_atax12_atax_avm_write;

    // avm_unnamed_atax12_atax_writedata(GPOUT,257)
    assign avm_unnamed_atax12_atax_writedata = atax_function_out_unnamed_atax12_atax_avm_writedata;

    // avm_unnamed_atax13_atax_address(GPOUT,258)
    assign avm_unnamed_atax13_atax_address = atax_function_out_unnamed_atax13_atax_avm_address;

    // avm_unnamed_atax13_atax_burstcount(GPOUT,259)
    assign avm_unnamed_atax13_atax_burstcount = atax_function_out_unnamed_atax13_atax_avm_burstcount;

    // avm_unnamed_atax13_atax_byteenable(GPOUT,260)
    assign avm_unnamed_atax13_atax_byteenable = atax_function_out_unnamed_atax13_atax_avm_byteenable;

    // avm_unnamed_atax13_atax_enable(GPOUT,261)
    assign avm_unnamed_atax13_atax_enable = atax_function_out_unnamed_atax13_atax_avm_enable;

    // avm_unnamed_atax13_atax_read(GPOUT,262)
    assign avm_unnamed_atax13_atax_read = atax_function_out_unnamed_atax13_atax_avm_read;

    // avm_unnamed_atax13_atax_write(GPOUT,263)
    assign avm_unnamed_atax13_atax_write = atax_function_out_unnamed_atax13_atax_avm_write;

    // avm_unnamed_atax13_atax_writedata(GPOUT,264)
    assign avm_unnamed_atax13_atax_writedata = atax_function_out_unnamed_atax13_atax_avm_writedata;

    // avm_unnamed_atax14_atax_address(GPOUT,265)
    assign avm_unnamed_atax14_atax_address = atax_function_out_unnamed_atax14_atax_avm_address;

    // avm_unnamed_atax14_atax_burstcount(GPOUT,266)
    assign avm_unnamed_atax14_atax_burstcount = atax_function_out_unnamed_atax14_atax_avm_burstcount;

    // avm_unnamed_atax14_atax_byteenable(GPOUT,267)
    assign avm_unnamed_atax14_atax_byteenable = atax_function_out_unnamed_atax14_atax_avm_byteenable;

    // avm_unnamed_atax14_atax_enable(GPOUT,268)
    assign avm_unnamed_atax14_atax_enable = atax_function_out_unnamed_atax14_atax_avm_enable;

    // avm_unnamed_atax14_atax_read(GPOUT,269)
    assign avm_unnamed_atax14_atax_read = atax_function_out_unnamed_atax14_atax_avm_read;

    // avm_unnamed_atax14_atax_write(GPOUT,270)
    assign avm_unnamed_atax14_atax_write = atax_function_out_unnamed_atax14_atax_avm_write;

    // avm_unnamed_atax14_atax_writedata(GPOUT,271)
    assign avm_unnamed_atax14_atax_writedata = atax_function_out_unnamed_atax14_atax_avm_writedata;

    // avm_unnamed_atax16_atax_address(GPOUT,272)
    assign avm_unnamed_atax16_atax_address = atax_function_out_unnamed_atax16_atax_avm_address;

    // avm_unnamed_atax16_atax_burstcount(GPOUT,273)
    assign avm_unnamed_atax16_atax_burstcount = atax_function_out_unnamed_atax16_atax_avm_burstcount;

    // avm_unnamed_atax16_atax_byteenable(GPOUT,274)
    assign avm_unnamed_atax16_atax_byteenable = atax_function_out_unnamed_atax16_atax_avm_byteenable;

    // avm_unnamed_atax16_atax_enable(GPOUT,275)
    assign avm_unnamed_atax16_atax_enable = atax_function_out_unnamed_atax16_atax_avm_enable;

    // avm_unnamed_atax16_atax_read(GPOUT,276)
    assign avm_unnamed_atax16_atax_read = atax_function_out_unnamed_atax16_atax_avm_read;

    // avm_unnamed_atax16_atax_write(GPOUT,277)
    assign avm_unnamed_atax16_atax_write = atax_function_out_unnamed_atax16_atax_avm_write;

    // avm_unnamed_atax16_atax_writedata(GPOUT,278)
    assign avm_unnamed_atax16_atax_writedata = atax_function_out_unnamed_atax16_atax_avm_writedata;

    // avm_unnamed_atax17_atax_address(GPOUT,279)
    assign avm_unnamed_atax17_atax_address = atax_function_out_unnamed_atax17_atax_avm_address;

    // avm_unnamed_atax17_atax_burstcount(GPOUT,280)
    assign avm_unnamed_atax17_atax_burstcount = atax_function_out_unnamed_atax17_atax_avm_burstcount;

    // avm_unnamed_atax17_atax_byteenable(GPOUT,281)
    assign avm_unnamed_atax17_atax_byteenable = atax_function_out_unnamed_atax17_atax_avm_byteenable;

    // avm_unnamed_atax17_atax_enable(GPOUT,282)
    assign avm_unnamed_atax17_atax_enable = atax_function_out_unnamed_atax17_atax_avm_enable;

    // avm_unnamed_atax17_atax_read(GPOUT,283)
    assign avm_unnamed_atax17_atax_read = atax_function_out_unnamed_atax17_atax_avm_read;

    // avm_unnamed_atax17_atax_write(GPOUT,284)
    assign avm_unnamed_atax17_atax_write = atax_function_out_unnamed_atax17_atax_avm_write;

    // avm_unnamed_atax17_atax_writedata(GPOUT,285)
    assign avm_unnamed_atax17_atax_writedata = atax_function_out_unnamed_atax17_atax_avm_writedata;

    // avm_unnamed_atax18_atax_address(GPOUT,286)
    assign avm_unnamed_atax18_atax_address = atax_function_out_unnamed_atax18_atax_avm_address;

    // avm_unnamed_atax18_atax_burstcount(GPOUT,287)
    assign avm_unnamed_atax18_atax_burstcount = atax_function_out_unnamed_atax18_atax_avm_burstcount;

    // avm_unnamed_atax18_atax_byteenable(GPOUT,288)
    assign avm_unnamed_atax18_atax_byteenable = atax_function_out_unnamed_atax18_atax_avm_byteenable;

    // avm_unnamed_atax18_atax_enable(GPOUT,289)
    assign avm_unnamed_atax18_atax_enable = atax_function_out_unnamed_atax18_atax_avm_enable;

    // avm_unnamed_atax18_atax_read(GPOUT,290)
    assign avm_unnamed_atax18_atax_read = atax_function_out_unnamed_atax18_atax_avm_read;

    // avm_unnamed_atax18_atax_write(GPOUT,291)
    assign avm_unnamed_atax18_atax_write = atax_function_out_unnamed_atax18_atax_avm_write;

    // avm_unnamed_atax18_atax_writedata(GPOUT,292)
    assign avm_unnamed_atax18_atax_writedata = atax_function_out_unnamed_atax18_atax_avm_writedata;

    // avm_unnamed_atax5_atax_address(GPOUT,293)
    assign avm_unnamed_atax5_atax_address = atax_function_out_unnamed_atax5_atax_avm_address;

    // avm_unnamed_atax5_atax_burstcount(GPOUT,294)
    assign avm_unnamed_atax5_atax_burstcount = atax_function_out_unnamed_atax5_atax_avm_burstcount;

    // avm_unnamed_atax5_atax_byteenable(GPOUT,295)
    assign avm_unnamed_atax5_atax_byteenable = atax_function_out_unnamed_atax5_atax_avm_byteenable;

    // avm_unnamed_atax5_atax_enable(GPOUT,296)
    assign avm_unnamed_atax5_atax_enable = atax_function_out_unnamed_atax5_atax_avm_enable;

    // avm_unnamed_atax5_atax_read(GPOUT,297)
    assign avm_unnamed_atax5_atax_read = atax_function_out_unnamed_atax5_atax_avm_read;

    // avm_unnamed_atax5_atax_write(GPOUT,298)
    assign avm_unnamed_atax5_atax_write = atax_function_out_unnamed_atax5_atax_avm_write;

    // avm_unnamed_atax5_atax_writedata(GPOUT,299)
    assign avm_unnamed_atax5_atax_writedata = atax_function_out_unnamed_atax5_atax_avm_writedata;

    // avm_unnamed_atax7_atax_address(GPOUT,300)
    assign avm_unnamed_atax7_atax_address = atax_function_out_unnamed_atax7_atax_avm_address;

    // avm_unnamed_atax7_atax_burstcount(GPOUT,301)
    assign avm_unnamed_atax7_atax_burstcount = atax_function_out_unnamed_atax7_atax_avm_burstcount;

    // avm_unnamed_atax7_atax_byteenable(GPOUT,302)
    assign avm_unnamed_atax7_atax_byteenable = atax_function_out_unnamed_atax7_atax_avm_byteenable;

    // avm_unnamed_atax7_atax_enable(GPOUT,303)
    assign avm_unnamed_atax7_atax_enable = atax_function_out_unnamed_atax7_atax_avm_enable;

    // avm_unnamed_atax7_atax_read(GPOUT,304)
    assign avm_unnamed_atax7_atax_read = atax_function_out_unnamed_atax7_atax_avm_read;

    // avm_unnamed_atax7_atax_write(GPOUT,305)
    assign avm_unnamed_atax7_atax_write = atax_function_out_unnamed_atax7_atax_avm_write;

    // avm_unnamed_atax7_atax_writedata(GPOUT,306)
    assign avm_unnamed_atax7_atax_writedata = atax_function_out_unnamed_atax7_atax_avm_writedata;

    // avm_unnamed_atax8_atax_address(GPOUT,307)
    assign avm_unnamed_atax8_atax_address = atax_function_out_unnamed_atax8_atax_avm_address;

    // avm_unnamed_atax8_atax_burstcount(GPOUT,308)
    assign avm_unnamed_atax8_atax_burstcount = atax_function_out_unnamed_atax8_atax_avm_burstcount;

    // avm_unnamed_atax8_atax_byteenable(GPOUT,309)
    assign avm_unnamed_atax8_atax_byteenable = atax_function_out_unnamed_atax8_atax_avm_byteenable;

    // avm_unnamed_atax8_atax_enable(GPOUT,310)
    assign avm_unnamed_atax8_atax_enable = atax_function_out_unnamed_atax8_atax_avm_enable;

    // avm_unnamed_atax8_atax_read(GPOUT,311)
    assign avm_unnamed_atax8_atax_read = atax_function_out_unnamed_atax8_atax_avm_read;

    // avm_unnamed_atax8_atax_write(GPOUT,312)
    assign avm_unnamed_atax8_atax_write = atax_function_out_unnamed_atax8_atax_avm_write;

    // avm_unnamed_atax8_atax_writedata(GPOUT,313)
    assign avm_unnamed_atax8_atax_writedata = atax_function_out_unnamed_atax8_atax_avm_writedata;

    // avm_unnamed_atax9_atax_address(GPOUT,314)
    assign avm_unnamed_atax9_atax_address = atax_function_out_unnamed_atax9_atax_avm_address;

    // avm_unnamed_atax9_atax_burstcount(GPOUT,315)
    assign avm_unnamed_atax9_atax_burstcount = atax_function_out_unnamed_atax9_atax_avm_burstcount;

    // avm_unnamed_atax9_atax_byteenable(GPOUT,316)
    assign avm_unnamed_atax9_atax_byteenable = atax_function_out_unnamed_atax9_atax_avm_byteenable;

    // avm_unnamed_atax9_atax_enable(GPOUT,317)
    assign avm_unnamed_atax9_atax_enable = atax_function_out_unnamed_atax9_atax_avm_enable;

    // avm_unnamed_atax9_atax_read(GPOUT,318)
    assign avm_unnamed_atax9_atax_read = atax_function_out_unnamed_atax9_atax_avm_read;

    // avm_unnamed_atax9_atax_write(GPOUT,319)
    assign avm_unnamed_atax9_atax_write = atax_function_out_unnamed_atax9_atax_avm_write;

    // avm_unnamed_atax9_atax_writedata(GPOUT,320)
    assign avm_unnamed_atax9_atax_writedata = atax_function_out_unnamed_atax9_atax_avm_writedata;

    // avst_iord_bl_call_atax_almost_full(GPOUT,321)
    assign avst_iord_bl_call_atax_almost_full = atax_function_out_iord_bl_call_atax_o_fifoalmost_full;

    // avst_iord_bl_call_atax_ready(GPOUT,322)
    assign avst_iord_bl_call_atax_ready = atax_function_out_iord_bl_call_atax_o_fifoready;

    // avst_iowr_bl_return_atax_data(GPOUT,323)
    assign avst_iowr_bl_return_atax_data = atax_function_out_iowr_bl_return_atax_o_fifodata;

    // avst_iowr_bl_return_atax_valid(GPOUT,324)
    assign avst_iowr_bl_return_atax_valid = atax_function_out_iowr_bl_return_atax_o_fifovalid;

    // not_ready(LOGICAL,130)
    assign not_ready_q = ~ (atax_function_out_iord_bl_call_atax_o_fifoready);

    // busy_and(LOGICAL,4)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,328)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,327)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,5)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,325)
    assign busy = busy_or_q;

    // done(GPOUT,326)
    assign done = atax_function_out_iowr_bl_return_atax_o_fifovalid;

endmodule
