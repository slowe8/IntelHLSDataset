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

// SystemVerilog created from atax_bb_B4_stall_region
// SystemVerilog created on Wed Dec 13 00:56:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B4_stall_region (
    input wire [63:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked80,
    input wire [63:0] in_idxprom121,
    input wire [0:0] in_notcmp95122,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_atax8_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax8_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax8_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax8_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [63:0] out_unnamed_atax7_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_atax9_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax9_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax9_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax9_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax8_atax_avm_address,
    output wire [0:0] out_unnamed_atax8_atax_avm_enable,
    output wire [0:0] out_unnamed_atax8_atax_avm_read,
    output wire [0:0] out_unnamed_atax8_atax_avm_write,
    output wire [63:0] out_unnamed_atax8_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax8_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax8_atax_avm_burstcount,
    input wire [63:0] in_unnamed_atax10_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax10_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax10_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax10_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax9_atax_avm_address,
    output wire [0:0] out_unnamed_atax9_atax_avm_enable,
    output wire [0:0] out_unnamed_atax9_atax_avm_read,
    output wire [0:0] out_unnamed_atax9_atax_avm_write,
    output wire [63:0] out_unnamed_atax9_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax9_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax9_atax_avm_burstcount,
    input wire [63:0] in_unnamed_atax11_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax11_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax11_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax11_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax10_atax_avm_address,
    output wire [0:0] out_unnamed_atax10_atax_avm_enable,
    output wire [0:0] out_unnamed_atax10_atax_avm_read,
    output wire [0:0] out_unnamed_atax10_atax_avm_write,
    output wire [63:0] out_unnamed_atax10_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax10_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax10_atax_avm_burstcount,
    input wire [63:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax11_atax_avm_address,
    output wire [0:0] out_unnamed_atax11_atax_avm_enable,
    output wire [0:0] out_unnamed_atax11_atax_avm_read,
    output wire [0:0] out_unnamed_atax11_atax_avm_write,
    output wire [63:0] out_unnamed_atax11_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax11_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax11_atax_avm_burstcount,
    input wire [63:0] in_unnamed_atax13_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax13_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax13_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax13_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [63:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    input wire [63:0] in_unnamed_atax14_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax14_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax14_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax14_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax13_atax_avm_address,
    output wire [0:0] out_unnamed_atax13_atax_avm_enable,
    output wire [0:0] out_unnamed_atax13_atax_avm_read,
    output wire [0:0] out_unnamed_atax13_atax_avm_write,
    output wire [63:0] out_unnamed_atax13_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax13_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax13_atax_avm_burstcount,
    input wire [127:0] in_memdep_8_atax_avm_readdata,
    input wire [0:0] in_memdep_8_atax_avm_writeack,
    input wire [0:0] in_memdep_8_atax_avm_waitrequest,
    input wire [0:0] in_memdep_8_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax14_atax_avm_address,
    output wire [0:0] out_unnamed_atax14_atax_avm_enable,
    output wire [0:0] out_unnamed_atax14_atax_avm_read,
    output wire [0:0] out_unnamed_atax14_atax_avm_write,
    output wire [63:0] out_unnamed_atax14_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax14_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax14_atax_avm_burstcount,
    input wire [127:0] in_memdep_19_atax_avm_readdata,
    input wire [0:0] in_memdep_19_atax_avm_writeack,
    input wire [0:0] in_memdep_19_atax_avm_waitrequest,
    input wire [0:0] in_memdep_19_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_8_atax_avm_address,
    output wire [0:0] out_memdep_8_atax_avm_enable,
    output wire [0:0] out_memdep_8_atax_avm_read,
    output wire [0:0] out_memdep_8_atax_avm_write,
    output wire [127:0] out_memdep_8_atax_avm_writedata,
    output wire [15:0] out_memdep_8_atax_avm_byteenable,
    output wire [0:0] out_memdep_8_atax_avm_burstcount,
    output wire [31:0] out_memdep_19_atax_avm_address,
    output wire [0:0] out_memdep_19_atax_avm_enable,
    output wire [0:0] out_memdep_19_atax_avm_read,
    output wire [0:0] out_memdep_19_atax_avm_write,
    output wire [127:0] out_memdep_19_atax_avm_writedata,
    output wire [15:0] out_memdep_19_atax_avm_byteenable,
    output wire [0:0] out_memdep_19_atax_avm_burstcount,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax12_atax8_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax8_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax8_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax13_atax9_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax9_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax9_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax14_atax10_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax14_atax10_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax14_atax10_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax7_atax3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax3_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax8_atax4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax4_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_writedata;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] atax_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_6_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_8_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_9_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_10_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_11_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_14_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_address;
    wire [0:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_burstcount;
    wire [15:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_enable;
    wire [0:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_read;
    wire [0:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_write;
    wire [127:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_writedata;
    wire [31:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_address;
    wire [0:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_burstcount;
    wire [15:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_enable;
    wire [0:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_read;
    wire [0:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_write;
    wire [127:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_writedata;
    wire [0:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_o_valid;
    wire [128:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [128:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [128:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax6_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax6_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax11_atax7_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax11_atax7_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax12_atax8_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax12_atax8_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax13_atax9_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax13_atax9_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax14_atax10_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax14_atax10_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax7_atax3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax7_atax3_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax8_atax4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax8_atax4_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_b;
    wire [65:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [65:0] bubble_join_atax_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B4_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_atax_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_atax_B4_merge_reg_aunroll_x_d;
    wire [642:0] bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_h;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_j;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_k;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_n;
    wire [128:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [128:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg6;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg7;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg8;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg8;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed8;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg9;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg9;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed9;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or8;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V8;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V9;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and5;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and6;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and7;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,107)
    assign bubble_join_stall_entry_q = {in_notcmp95122, in_idxprom121, in_forked80};

    // bubble_select_stall_entry(BITSELECT,108)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);

    // SE_stall_entry(STALLENABLE,140)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B4_merge_reg_aunroll_x(BLACKBOX,45)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    atax_B4_merge_reg theatax_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_atax_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .out_stall_out(atax_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B4_merge_reg_aunroll_x(BITJOIN,111)
    assign bubble_join_atax_B4_merge_reg_aunroll_x_q = {atax_B4_merge_reg_aunroll_x_out_data_out_2_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_1_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_atax_B4_merge_reg_aunroll_x(BITSELECT,112)
    assign bubble_select_atax_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[65:65]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_atax_B4_merge_reg_aunroll_x(STALLENABLE,143)
    // Valid signal propagation
    assign SE_out_atax_B4_merge_reg_aunroll_x_V0 = SE_out_atax_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_atax_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_o_stall | ~ (SE_out_atax_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_atax_B4_merge_reg_aunroll_x_wireValid = atax_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x(BITJOIN,115)
    assign bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q = {i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_14_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_13_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_12_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_11_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_10_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_9_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_8_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_7_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_6_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_5_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_4_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_3_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x(BITSELECT,116)
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[192:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[256:193]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[320:257]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[384:321]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[448:385]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[512:449]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[576:513]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[640:577]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[641:641]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_q[642:642]);

    // join_for_coalesced_delay_1(BITJOIN,78)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_m};

    // bubble_join_i_llvm_fpga_mem_unnamed_atax14_atax10(BITJOIN,95)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax14_atax10_q = i_llvm_fpga_mem_unnamed_atax14_atax10_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax14_atax10(BITSELECT,96)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax14_atax10_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax14_atax10_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax13_atax9(BITJOIN,92)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax13_atax9_q = i_llvm_fpga_mem_unnamed_atax13_atax9_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax13_atax9(BITSELECT,93)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax13_atax9_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax13_atax9_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax12_atax8(BITJOIN,89)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax12_atax8_q = i_llvm_fpga_mem_unnamed_atax12_atax8_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax12_atax8(BITSELECT,90)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax12_atax8_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax12_atax8_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax11_atax7(BITJOIN,86)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax11_atax7_q = i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax11_atax7(BITSELECT,87)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax11_atax7_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax11_atax7_q[31:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,119)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,120)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[128:0]);

    // sel_for_coalesced_delay_0(BITSELECT,76)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[128:128]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax6(BITJOIN,83)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax6_q = i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax6(BITSELECT,84)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax6_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax6_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5(BITJOIN,104)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5_q = i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5(BITSELECT,105)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax8_atax4(BITJOIN,101)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax8_atax4_q = i_llvm_fpga_mem_unnamed_atax8_atax4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax8_atax4(BITSELECT,102)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax8_atax4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax8_atax4_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax7_atax3(BITJOIN,98)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax7_atax3_q = i_llvm_fpga_mem_unnamed_atax7_atax3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax7_atax3(BITSELECT,99)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax7_atax3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax7_atax3_q[31:0]);

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,153)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_and2 = i_llvm_fpga_mem_unnamed_atax8_atax4_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;
    assign SE_out_coalesced_delay_0_fifo_and3 = i_llvm_fpga_mem_unnamed_atax7_atax3_out_o_valid & SE_out_coalesced_delay_0_fifo_and2;
    assign SE_out_coalesced_delay_0_fifo_and4 = i_llvm_fpga_mem_unnamed_atax14_atax10_out_o_valid & SE_out_coalesced_delay_0_fifo_and3;
    assign SE_out_coalesced_delay_0_fifo_and5 = i_llvm_fpga_mem_unnamed_atax13_atax9_out_o_valid & SE_out_coalesced_delay_0_fifo_and4;
    assign SE_out_coalesced_delay_0_fifo_and6 = i_llvm_fpga_mem_unnamed_atax12_atax8_out_o_valid & SE_out_coalesced_delay_0_fifo_and5;
    assign SE_out_coalesced_delay_0_fifo_and7 = i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_valid & SE_out_coalesced_delay_0_fifo_and6;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_valid & SE_out_coalesced_delay_0_fifo_and7;

    // i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x(BLACKBOX,67)@34
    // in in_i_stall@20000000
    // out out_memdep_19_atax_avm_address@20000000
    // out out_memdep_19_atax_avm_burstcount@20000000
    // out out_memdep_19_atax_avm_byteenable@20000000
    // out out_memdep_19_atax_avm_enable@20000000
    // out out_memdep_19_atax_avm_read@20000000
    // out out_memdep_19_atax_avm_write@20000000
    // out out_memdep_19_atax_avm_writedata@20000000
    // out out_memdep_8_atax_avm_address@20000000
    // out out_memdep_8_atax_avm_burstcount@20000000
    // out out_memdep_8_atax_avm_byteenable@20000000
    // out out_memdep_8_atax_avm_enable@20000000
    // out out_memdep_8_atax_avm_read@20000000
    // out out_memdep_8_atax_avm_write@20000000
    // out out_memdep_8_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@39
    // out out_c1_exit_0_tpl@39
    atax_i_sfc_s_c1_in_for_body9_s_c1_enter_atax12 thei_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_memdep_19_atax_avm_readdata(in_memdep_19_atax_avm_readdata),
        .in_memdep_19_atax_avm_readdatavalid(in_memdep_19_atax_avm_readdatavalid),
        .in_memdep_19_atax_avm_waitrequest(in_memdep_19_atax_avm_waitrequest),
        .in_memdep_19_atax_avm_writeack(in_memdep_19_atax_avm_writeack),
        .in_memdep_8_atax_avm_readdata(in_memdep_8_atax_avm_readdata),
        .in_memdep_8_atax_avm_readdatavalid(in_memdep_8_atax_avm_readdatavalid),
        .in_memdep_8_atax_avm_waitrequest(in_memdep_8_atax_avm_waitrequest),
        .in_memdep_8_atax_avm_writeack(in_memdep_8_atax_avm_writeack),
        .in_c1_eni11_0_tpl(GND_q),
        .in_c1_eni11_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax7_atax3_b),
        .in_c1_eni11_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax8_atax4_b),
        .in_c1_eni11_3_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_b),
        .in_c1_eni11_4_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax6_b),
        .in_c1_eni11_5_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni11_6_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni11_7_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax11_atax7_b),
        .in_c1_eni11_8_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni11_9_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax12_atax8_b),
        .in_c1_eni11_10_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax13_atax9_b),
        .in_c1_eni11_11_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax14_atax10_b),
        .out_memdep_19_atax_avm_address(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_address),
        .out_memdep_19_atax_avm_burstcount(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_burstcount),
        .out_memdep_19_atax_avm_byteenable(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_byteenable),
        .out_memdep_19_atax_avm_enable(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_enable),
        .out_memdep_19_atax_avm_read(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_read),
        .out_memdep_19_atax_avm_write(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_write),
        .out_memdep_19_atax_avm_writedata(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_writedata),
        .out_memdep_8_atax_avm_address(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_address),
        .out_memdep_8_atax_avm_burstcount(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_burstcount),
        .out_memdep_8_atax_avm_byteenable(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_byteenable),
        .out_memdep_8_atax_avm_enable(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_enable),
        .out_memdep_8_atax_avm_read(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_read),
        .out_memdep_8_atax_avm_write(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_write),
        .out_memdep_8_atax_avm_writedata(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_writedata),
        .out_o_stall(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,155)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,81)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V9;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(38),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,75)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,80)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V8;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(129),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax9_atax5(BLACKBOX,14)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_atax9_atax_avm_address@20000000
    // out out_unnamed_atax9_atax_avm_burstcount@20000000
    // out out_unnamed_atax9_atax_avm_byteenable@20000000
    // out out_unnamed_atax9_atax_avm_enable@20000000
    // out out_unnamed_atax9_atax_avm_read@20000000
    // out out_unnamed_atax9_atax_avm_write@20000000
    // out out_unnamed_atax9_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_9_atax0 thei_llvm_fpga_mem_unnamed_atax9_atax5 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_f),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V7),
        .in_unnamed_atax9_atax_avm_readdata(in_unnamed_atax9_atax_avm_readdata),
        .in_unnamed_atax9_atax_avm_readdatavalid(in_unnamed_atax9_atax_avm_readdatavalid),
        .in_unnamed_atax9_atax_avm_waitrequest(in_unnamed_atax9_atax_avm_waitrequest),
        .in_unnamed_atax9_atax_avm_writeack(in_unnamed_atax9_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid),
        .out_unnamed_atax9_atax_avm_address(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_address),
        .out_unnamed_atax9_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_burstcount),
        .out_unnamed_atax9_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_byteenable),
        .out_unnamed_atax9_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_enable),
        .out_unnamed_atax9_atax_avm_read(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_read),
        .out_unnamed_atax9_atax_avm_write(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_write),
        .out_unnamed_atax9_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax8_atax4(BLACKBOX,13)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_atax8_atax_avm_address@20000000
    // out out_unnamed_atax8_atax_avm_burstcount@20000000
    // out out_unnamed_atax8_atax_avm_byteenable@20000000
    // out out_unnamed_atax8_atax_avm_enable@20000000
    // out out_unnamed_atax8_atax_avm_read@20000000
    // out out_unnamed_atax8_atax_avm_write@20000000
    // out out_unnamed_atax8_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_8_atax0 thei_llvm_fpga_mem_unnamed_atax8_atax4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V6),
        .in_unnamed_atax8_atax_avm_readdata(in_unnamed_atax8_atax_avm_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(in_unnamed_atax8_atax_avm_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(in_unnamed_atax8_atax_avm_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(in_unnamed_atax8_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax8_atax4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax8_atax4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax8_atax4_out_o_valid),
        .out_unnamed_atax8_atax_avm_address(i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax7_atax3(BLACKBOX,12)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_atax7_atax_avm_address@20000000
    // out out_unnamed_atax7_atax_avm_burstcount@20000000
    // out out_unnamed_atax7_atax_avm_byteenable@20000000
    // out out_unnamed_atax7_atax_avm_enable@20000000
    // out out_unnamed_atax7_atax_avm_read@20000000
    // out out_unnamed_atax7_atax_avm_write@20000000
    // out out_unnamed_atax7_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_7_atax0 thei_llvm_fpga_mem_unnamed_atax7_atax3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_c),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V5),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax7_atax3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax7_atax3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax7_atax3_out_o_valid),
        .out_unnamed_atax7_atax_avm_address(i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax14_atax10(BLACKBOX,11)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_atax14_atax_avm_address@20000000
    // out out_unnamed_atax14_atax_avm_burstcount@20000000
    // out out_unnamed_atax14_atax_avm_byteenable@20000000
    // out out_unnamed_atax14_atax_avm_enable@20000000
    // out out_unnamed_atax14_atax_avm_read@20000000
    // out out_unnamed_atax14_atax_avm_write@20000000
    // out out_unnamed_atax14_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_14_atax0 thei_llvm_fpga_mem_unnamed_atax14_atax10 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_l),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V4),
        .in_unnamed_atax14_atax_avm_readdata(in_unnamed_atax14_atax_avm_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(in_unnamed_atax14_atax_avm_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(in_unnamed_atax14_atax_avm_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(in_unnamed_atax14_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax14_atax10_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax14_atax10_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax14_atax10_out_o_valid),
        .out_unnamed_atax14_atax_avm_address(i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_address),
        .out_unnamed_atax14_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_burstcount),
        .out_unnamed_atax14_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_byteenable),
        .out_unnamed_atax14_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_enable),
        .out_unnamed_atax14_atax_avm_read(i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_read),
        .out_unnamed_atax14_atax_avm_write(i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_write),
        .out_unnamed_atax14_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax13_atax9(BLACKBOX,10)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_atax13_atax_avm_address@20000000
    // out out_unnamed_atax13_atax_avm_burstcount@20000000
    // out out_unnamed_atax13_atax_avm_byteenable@20000000
    // out out_unnamed_atax13_atax_avm_enable@20000000
    // out out_unnamed_atax13_atax_avm_read@20000000
    // out out_unnamed_atax13_atax_avm_write@20000000
    // out out_unnamed_atax13_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_13_atax0 thei_llvm_fpga_mem_unnamed_atax13_atax9 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_k),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V3),
        .in_unnamed_atax13_atax_avm_readdata(in_unnamed_atax13_atax_avm_readdata),
        .in_unnamed_atax13_atax_avm_readdatavalid(in_unnamed_atax13_atax_avm_readdatavalid),
        .in_unnamed_atax13_atax_avm_waitrequest(in_unnamed_atax13_atax_avm_waitrequest),
        .in_unnamed_atax13_atax_avm_writeack(in_unnamed_atax13_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax13_atax9_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax13_atax9_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax13_atax9_out_o_valid),
        .out_unnamed_atax13_atax_avm_address(i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_address),
        .out_unnamed_atax13_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_burstcount),
        .out_unnamed_atax13_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_byteenable),
        .out_unnamed_atax13_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_enable),
        .out_unnamed_atax13_atax_avm_read(i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_read),
        .out_unnamed_atax13_atax_avm_write(i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_write),
        .out_unnamed_atax13_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax12_atax8(BLACKBOX,9)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_atax12_atax_avm_address@20000000
    // out out_unnamed_atax12_atax_avm_burstcount@20000000
    // out out_unnamed_atax12_atax_avm_byteenable@20000000
    // out out_unnamed_atax12_atax_avm_enable@20000000
    // out out_unnamed_atax12_atax_avm_read@20000000
    // out out_unnamed_atax12_atax_avm_write@20000000
    // out out_unnamed_atax12_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_12_atax0 thei_llvm_fpga_mem_unnamed_atax12_atax8 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_j),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V2),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax12_atax8_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax12_atax8_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax12_atax8_out_o_valid),
        .out_unnamed_atax12_atax_avm_address(i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax11_atax7(BLACKBOX,8)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_atax11_atax_avm_address@20000000
    // out out_unnamed_atax11_atax_avm_burstcount@20000000
    // out out_unnamed_atax11_atax_avm_byteenable@20000000
    // out out_unnamed_atax11_atax_avm_enable@20000000
    // out out_unnamed_atax11_atax_avm_read@20000000
    // out out_unnamed_atax11_atax_avm_write@20000000
    // out out_unnamed_atax11_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_11_atax0 thei_llvm_fpga_mem_unnamed_atax11_atax7 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_h),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V1),
        .in_unnamed_atax11_atax_avm_readdata(in_unnamed_atax11_atax_avm_readdata),
        .in_unnamed_atax11_atax_avm_readdatavalid(in_unnamed_atax11_atax_avm_readdatavalid),
        .in_unnamed_atax11_atax_avm_waitrequest(in_unnamed_atax11_atax_avm_waitrequest),
        .in_unnamed_atax11_atax_avm_writeack(in_unnamed_atax11_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_valid),
        .out_unnamed_atax11_atax_avm_address(i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_address),
        .out_unnamed_atax11_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_burstcount),
        .out_unnamed_atax11_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_byteenable),
        .out_unnamed_atax11_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_enable),
        .out_unnamed_atax11_atax_avm_read(i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_read),
        .out_unnamed_atax11_atax_avm_write(i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_write),
        .out_unnamed_atax11_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax10_atax6(BLACKBOX,7)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_atax10_atax_avm_address@20000000
    // out out_unnamed_atax10_atax_avm_burstcount@20000000
    // out out_unnamed_atax10_atax_avm_byteenable@20000000
    // out out_unnamed_atax10_atax_avm_enable@20000000
    // out out_unnamed_atax10_atax_avm_read@20000000
    // out out_unnamed_atax10_atax_avm_write@20000000
    // out out_unnamed_atax10_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_10_atax0 thei_llvm_fpga_mem_unnamed_atax10_atax6 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_g),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V0),
        .in_unnamed_atax10_atax_avm_readdata(in_unnamed_atax10_atax_avm_readdata),
        .in_unnamed_atax10_atax_avm_readdatavalid(in_unnamed_atax10_atax_avm_readdatavalid),
        .in_unnamed_atax10_atax_avm_waitrequest(in_unnamed_atax10_atax_avm_waitrequest),
        .in_unnamed_atax10_atax_avm_writeack(in_unnamed_atax10_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_valid),
        .out_unnamed_atax10_atax_avm_address(i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_address),
        .out_unnamed_atax10_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_burstcount),
        .out_unnamed_atax10_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_byteenable),
        .out_unnamed_atax10_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_enable),
        .out_unnamed_atax10_atax_avm_read(i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_read),
        .out_unnamed_atax10_atax_avm_write(i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_write),
        .out_unnamed_atax10_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x(STALLENABLE,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg5 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg6 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg7 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg8 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg9 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg6 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg6;
            // Successor 7
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg7 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg7;
            // Successor 8
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg8 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg8;
            // Successor 9
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg9 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg9;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_unnamed_atax12_atax8_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed3 = (~ (i_llvm_fpga_mem_unnamed_atax13_atax9_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed4 = (~ (i_llvm_fpga_mem_unnamed_atax14_atax10_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed5 = (~ (i_llvm_fpga_mem_unnamed_atax7_atax3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg5;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed6 = (~ (i_llvm_fpga_mem_unnamed_atax8_atax4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg6;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed7 = (~ (i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg7;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed8 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg8;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed9 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg9;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed5;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg6 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed6;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg7 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed7;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg8 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed8;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_toReg9 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed9;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or5 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or4;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or6 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed6 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or5;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or7 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed7 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or6;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or8 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed8 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or7;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_consumed9 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_or8);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg5);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V6 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg6);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V7 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg7);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V8 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg8);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_V9 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_fromReg9);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x(BLACKBOX,66)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit145_0_tpl@2
    // out out_c0_exit145_1_tpl@2
    // out out_c0_exit145_2_tpl@2
    // out out_c0_exit145_3_tpl@2
    // out out_c0_exit145_4_tpl@2
    // out out_c0_exit145_5_tpl@2
    // out out_c0_exit145_6_tpl@2
    // out out_c0_exit145_7_tpl@2
    // out out_c0_exit145_8_tpl@2
    // out out_c0_exit145_9_tpl@2
    // out out_c0_exit145_10_tpl@2
    // out out_c0_exit145_11_tpl@2
    // out out_c0_exit145_12_tpl@2
    // out out_c0_exit145_13_tpl@2
    // out out_c0_exit145_14_tpl@2
    atax_i_sfc_s_c0_in_for_body9_s_c0_enter14314_atax1 thei_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_backStall),
        .in_i_valid(SE_out_atax_B4_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_b),
        .in_c0_eni3_2_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_c),
        .in_c0_eni3_3_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_d),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_stall_out(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_valid_out(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit145_0_tpl(),
        .out_c0_exit145_1_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_1_tpl),
        .out_c0_exit145_2_tpl(),
        .out_c0_exit145_3_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_3_tpl),
        .out_c0_exit145_4_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_4_tpl),
        .out_c0_exit145_5_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_5_tpl),
        .out_c0_exit145_6_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_6_tpl),
        .out_c0_exit145_7_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_7_tpl),
        .out_c0_exit145_8_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_8_tpl),
        .out_c0_exit145_9_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_9_tpl),
        .out_c0_exit145_10_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_10_tpl),
        .out_c0_exit145_11_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_11_tpl),
        .out_c0_exit145_12_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_12_tpl),
        .out_c0_exit145_13_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_13_tpl),
        .out_c0_exit145_14_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_c0_exit145_14_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_valid_out = i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_stall_out = i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,38)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body9_ataxs_c0_enter14314_atax1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,43)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,47)
    assign out_unnamed_atax7_atax_avm_address = i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_address;
    assign out_unnamed_atax7_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_enable;
    assign out_unnamed_atax7_atax_avm_read = i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_read;
    assign out_unnamed_atax7_atax_avm_write = i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_write;
    assign out_unnamed_atax7_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_writedata;
    assign out_unnamed_atax7_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_byteenable;
    assign out_unnamed_atax7_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax7_atax3_out_unnamed_atax7_atax_avm_burstcount;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,122)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,123)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,79)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,48)@39
    assign out_c0_exe13 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe14 = sel_for_coalesced_delay_1_c;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,50)
    assign out_unnamed_atax8_atax_avm_address = i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_address;
    assign out_unnamed_atax8_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_enable;
    assign out_unnamed_atax8_atax_avm_read = i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_read;
    assign out_unnamed_atax8_atax_avm_write = i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_write;
    assign out_unnamed_atax8_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_writedata;
    assign out_unnamed_atax8_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_byteenable;
    assign out_unnamed_atax8_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax8_atax4_out_unnamed_atax8_atax_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,52)
    assign out_unnamed_atax9_atax_avm_address = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_address;
    assign out_unnamed_atax9_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_enable;
    assign out_unnamed_atax9_atax_avm_read = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_read;
    assign out_unnamed_atax9_atax_avm_write = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_write;
    assign out_unnamed_atax9_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_writedata;
    assign out_unnamed_atax9_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_byteenable;
    assign out_unnamed_atax9_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,54)
    assign out_unnamed_atax10_atax_avm_address = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_address;
    assign out_unnamed_atax10_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_enable;
    assign out_unnamed_atax10_atax_avm_read = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_read;
    assign out_unnamed_atax10_atax_avm_write = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_write;
    assign out_unnamed_atax10_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_writedata;
    assign out_unnamed_atax10_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_byteenable;
    assign out_unnamed_atax10_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,56)
    assign out_unnamed_atax11_atax_avm_address = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_address;
    assign out_unnamed_atax11_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_enable;
    assign out_unnamed_atax11_atax_avm_read = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_read;
    assign out_unnamed_atax11_atax_avm_write = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_write;
    assign out_unnamed_atax11_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_writedata;
    assign out_unnamed_atax11_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_byteenable;
    assign out_unnamed_atax11_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,58)
    assign out_unnamed_atax12_atax_avm_address = i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_address;
    assign out_unnamed_atax12_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_enable;
    assign out_unnamed_atax12_atax_avm_read = i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_read;
    assign out_unnamed_atax12_atax_avm_write = i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_write;
    assign out_unnamed_atax12_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_writedata;
    assign out_unnamed_atax12_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_byteenable;
    assign out_unnamed_atax12_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax12_atax8_out_unnamed_atax12_atax_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,60)
    assign out_unnamed_atax13_atax_avm_address = i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_address;
    assign out_unnamed_atax13_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_enable;
    assign out_unnamed_atax13_atax_avm_read = i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_read;
    assign out_unnamed_atax13_atax_avm_write = i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_write;
    assign out_unnamed_atax13_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_writedata;
    assign out_unnamed_atax13_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_byteenable;
    assign out_unnamed_atax13_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax13_atax9_out_unnamed_atax13_atax_avm_burstcount;

    // dupName_7_ext_sig_sync_out_x(GPOUT,62)
    assign out_unnamed_atax14_atax_avm_address = i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_address;
    assign out_unnamed_atax14_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_enable;
    assign out_unnamed_atax14_atax_avm_read = i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_read;
    assign out_unnamed_atax14_atax_avm_write = i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_write;
    assign out_unnamed_atax14_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_writedata;
    assign out_unnamed_atax14_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_byteenable;
    assign out_unnamed_atax14_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax14_atax10_out_unnamed_atax14_atax_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,64)
    assign out_memdep_8_atax_avm_address = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_address;
    assign out_memdep_8_atax_avm_enable = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_enable;
    assign out_memdep_8_atax_avm_read = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_read;
    assign out_memdep_8_atax_avm_write = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_write;
    assign out_memdep_8_atax_avm_writedata = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_writedata;
    assign out_memdep_8_atax_avm_byteenable = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_byteenable;
    assign out_memdep_8_atax_avm_burstcount = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_8_atax_avm_burstcount;

    // dupName_9_ext_sig_sync_out_x(GPOUT,65)
    assign out_memdep_19_atax_avm_address = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_address;
    assign out_memdep_19_atax_avm_enable = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_enable;
    assign out_memdep_19_atax_avm_read = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_read;
    assign out_memdep_19_atax_avm_write = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_write;
    assign out_memdep_19_atax_avm_writedata = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_writedata;
    assign out_memdep_19_atax_avm_byteenable = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_byteenable;
    assign out_memdep_19_atax_avm_burstcount = i_sfc_s_c1_in_for_body9_ataxs_c1_enter_atax12_aunroll_x_out_memdep_19_atax_avm_burstcount;

endmodule
