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
// SystemVerilog created on Tue Jan  2 20:41:09 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B4_stall_region (
    input wire [63:0] in_unnamed_atax8_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax8_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax8_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax8_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked62,
    input wire [63:0] in_idxprom100,
    input wire [0:0] in_notcmp77101,
    input wire [0:0] in_valid_in,
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
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_valid_out,
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
    input wire [127:0] in_memdep_1_atax_avm_readdata,
    input wire [0:0] in_memdep_1_atax_avm_writeack,
    input wire [0:0] in_memdep_1_atax_avm_waitrequest,
    input wire [0:0] in_memdep_1_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax11_atax_avm_address,
    output wire [0:0] out_unnamed_atax11_atax_avm_enable,
    output wire [0:0] out_unnamed_atax11_atax_avm_read,
    output wire [0:0] out_unnamed_atax11_atax_avm_write,
    output wire [63:0] out_unnamed_atax11_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax11_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax11_atax_avm_burstcount,
    output wire [31:0] out_memdep_1_atax_avm_address,
    output wire [0:0] out_memdep_1_atax_avm_enable,
    output wire [0:0] out_memdep_1_atax_avm_read,
    output wire [0:0] out_memdep_1_atax_avm_write,
    output wire [127:0] out_memdep_1_atax_avm_writedata,
    output wire [15:0] out_memdep_1_atax_avm_byteenable,
    output wire [0:0] out_memdep_1_atax_avm_burstcount,
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
    wire [31:0] i_llvm_fpga_mem_unnamed_atax8_atax3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax3_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_writedata;
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
    wire [31:0] i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_burstcount;
    wire [15:0] i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_write;
    wire [127:0] i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_6_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_9_tpl;
    wire [64:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_out;
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
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax8_atax3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax8_atax3_b;
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
    wire [322:0] bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_i;
    wire [64:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V5;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,72)
    assign bubble_join_stall_entry_q = {in_notcmp77101, in_idxprom100, in_forked62};

    // bubble_select_stall_entry(BITSELECT,73)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);

    // SE_stall_entry(STALLENABLE,97)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B4_merge_reg_aunroll_x(BLACKBOX,33)@0
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

    // bubble_join_atax_B4_merge_reg_aunroll_x(BITJOIN,76)
    assign bubble_join_atax_B4_merge_reg_aunroll_x_q = {atax_B4_merge_reg_aunroll_x_out_data_out_2_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_1_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_atax_B4_merge_reg_aunroll_x(BITSELECT,77)
    assign bubble_select_atax_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[65:65]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_atax_B4_merge_reg_aunroll_x(STALLENABLE,100)
    // Valid signal propagation
    assign SE_out_atax_B4_merge_reg_aunroll_x_V0 = SE_out_atax_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_atax_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_o_stall | ~ (SE_out_atax_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_atax_B4_merge_reg_aunroll_x_wireValid = atax_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x(BITJOIN,81)
    assign bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_q = {i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_9_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_8_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_7_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_6_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_5_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_4_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_3_tpl, i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x(BITSELECT,82)
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_q[192:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_q[256:193]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_q[320:257]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_q[321:321]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_q[322:322]);

    // join_for_coalesced_delay_1(BITJOIN,55)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_h};

    // bubble_join_i_llvm_fpga_mem_unnamed_atax11_atax7(BITJOIN,63)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax11_atax7_q = i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax11_atax7(BITSELECT,64)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax11_atax7_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax11_atax7_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax6(BITJOIN,60)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax6_q = i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax6(BITSELECT,61)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax6_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax6_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5(BITJOIN,69)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5_q = i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5(BITSELECT,70)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax8_atax3(BITJOIN,66)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax8_atax3_q = i_llvm_fpga_mem_unnamed_atax8_atax3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax8_atax3(BITSELECT,67)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax8_atax3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax8_atax3_q[31:0]);

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,110)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_and2 = i_llvm_fpga_mem_unnamed_atax8_atax3_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;
    assign SE_out_coalesced_delay_0_fifo_and3 = i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_valid & SE_out_coalesced_delay_0_fifo_and2;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_valid & SE_out_coalesced_delay_0_fifo_and3;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,84)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,85)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[64:0]);

    // sel_for_coalesced_delay_0(BITSELECT,53)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_1_atax9_aunroll_x(BLACKBOX,44)@35
    // in in_i_stall@20000000
    // out out_memdep_1_atax_avm_address@20000000
    // out out_memdep_1_atax_avm_burstcount@20000000
    // out out_memdep_1_atax_avm_byteenable@20000000
    // out out_memdep_1_atax_avm_enable@20000000
    // out out_memdep_1_atax_avm_read@20000000
    // out out_memdep_1_atax_avm_write@20000000
    // out out_memdep_1_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_o_writeack@36
    atax_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_atax9_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_memdep_1_atax_avm_readdata(in_memdep_1_atax_avm_readdata),
        .in_memdep_1_atax_avm_readdatavalid(in_memdep_1_atax_avm_readdatavalid),
        .in_memdep_1_atax_avm_waitrequest(in_memdep_1_atax_avm_waitrequest),
        .in_memdep_1_atax_avm_writeack(in_memdep_1_atax_avm_writeack),
        .in_i_writedata_0_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax8_atax3_b),
        .in_i_writedata_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_b),
        .in_i_writedata_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax6_b),
        .in_i_writedata_3_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax11_atax7_b),
        .out_memdep_1_atax_avm_address(i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_address),
        .out_memdep_1_atax_avm_burstcount(i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_burstcount),
        .out_memdep_1_atax_avm_byteenable(i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_byteenable),
        .out_memdep_1_atax_avm_enable(i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_enable),
        .out_memdep_1_atax_avm_read(i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_read),
        .out_memdep_1_atax_avm_write(i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_write),
        .out_memdep_1_atax_avm_writedata(i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,112)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,58)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V5;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
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

    // join_for_coalesced_delay_0(BITJOIN,52)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,57)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V4;
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
        .DATA_WIDTH(65),
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

    // i_llvm_fpga_mem_unnamed_atax9_atax5(BLACKBOX,10)@3
    // in in_i_stall@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_unnamed_atax9_atax_avm_address@20000000
    // out out_unnamed_atax9_atax_avm_burstcount@20000000
    // out out_unnamed_atax9_atax_avm_byteenable@20000000
    // out out_unnamed_atax9_atax_avm_enable@20000000
    // out out_unnamed_atax9_atax_avm_read@20000000
    // out out_unnamed_atax9_atax_avm_write@20000000
    // out out_unnamed_atax9_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_9_atax0 thei_llvm_fpga_mem_unnamed_atax9_atax5 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V3),
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

    // i_llvm_fpga_mem_unnamed_atax8_atax3(BLACKBOX,9)@3
    // in in_i_stall@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_unnamed_atax8_atax_avm_address@20000000
    // out out_unnamed_atax8_atax_avm_burstcount@20000000
    // out out_unnamed_atax8_atax_avm_byteenable@20000000
    // out out_unnamed_atax8_atax_avm_enable@20000000
    // out out_unnamed_atax8_atax_avm_read@20000000
    // out out_unnamed_atax8_atax_avm_write@20000000
    // out out_unnamed_atax8_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_8_atax0 thei_llvm_fpga_mem_unnamed_atax8_atax3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_c),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V2),
        .in_unnamed_atax8_atax_avm_readdata(in_unnamed_atax8_atax_avm_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(in_unnamed_atax8_atax_avm_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(in_unnamed_atax8_atax_avm_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(in_unnamed_atax8_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax8_atax3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax8_atax3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax8_atax3_out_o_valid),
        .out_unnamed_atax8_atax_avm_address(i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax11_atax7(BLACKBOX,8)@3
    // in in_i_stall@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_unnamed_atax11_atax_avm_address@20000000
    // out out_unnamed_atax11_atax_avm_burstcount@20000000
    // out out_unnamed_atax11_atax_avm_byteenable@20000000
    // out out_unnamed_atax11_atax_avm_enable@20000000
    // out out_unnamed_atax11_atax_avm_read@20000000
    // out out_unnamed_atax11_atax_avm_write@20000000
    // out out_unnamed_atax11_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_11_atax0 thei_llvm_fpga_mem_unnamed_atax11_atax7 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_g),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V1),
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

    // i_llvm_fpga_mem_unnamed_atax10_atax6(BLACKBOX,7)@3
    // in in_i_stall@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_unnamed_atax10_atax_avm_address@20000000
    // out out_unnamed_atax10_atax_avm_burstcount@20000000
    // out out_unnamed_atax10_atax_avm_byteenable@20000000
    // out out_unnamed_atax10_atax_avm_enable@20000000
    // out out_unnamed_atax10_atax_avm_read@20000000
    // out out_unnamed_atax10_atax_avm_write@20000000
    // out out_unnamed_atax10_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_10_atax0 thei_llvm_fpga_mem_unnamed_atax10_atax6 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_f),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V0),
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

    // SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x(STALLENABLE,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_atax10_atax6_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_atax11_atax7_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_unnamed_atax8_atax3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed3 = (~ (i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed4 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed5 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_or4);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x(BLACKBOX,45)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@3
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit124_0_tpl@3
    // out out_c0_exit124_1_tpl@3
    // out out_c0_exit124_2_tpl@3
    // out out_c0_exit124_3_tpl@3
    // out out_c0_exit124_4_tpl@3
    // out out_c0_exit124_5_tpl@3
    // out out_c0_exit124_6_tpl@3
    // out out_c0_exit124_7_tpl@3
    // out out_c0_exit124_8_tpl@3
    // out out_c0_exit124_9_tpl@3
    atax_i_sfc_s_c0_in_for_body9_s_c0_enter12214_atax1 thei_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_backStall),
        .in_i_valid(SE_out_atax_B4_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_b),
        .in_c0_eni3_2_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_c),
        .in_c0_eni3_3_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_d),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit124_0_tpl(),
        .out_c0_exit124_1_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_1_tpl),
        .out_c0_exit124_2_tpl(),
        .out_c0_exit124_3_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_3_tpl),
        .out_c0_exit124_4_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_4_tpl),
        .out_c0_exit124_5_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_5_tpl),
        .out_c0_exit124_6_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_6_tpl),
        .out_c0_exit124_7_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_7_tpl),
        .out_c0_exit124_8_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_8_tpl),
        .out_c0_exit124_9_tpl(i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_c0_exit124_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out = i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out = i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,26)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body9_ataxs_c0_enter12214_atax1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,35)
    assign out_unnamed_atax8_atax_avm_address = i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_address;
    assign out_unnamed_atax8_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_enable;
    assign out_unnamed_atax8_atax_avm_read = i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_read;
    assign out_unnamed_atax8_atax_avm_write = i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_write;
    assign out_unnamed_atax8_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_writedata;
    assign out_unnamed_atax8_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_byteenable;
    assign out_unnamed_atax8_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax8_atax3_out_unnamed_atax8_atax_avm_burstcount;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,87)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,88)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,56)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,36)@36
    assign out_c0_exe8 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe9 = sel_for_coalesced_delay_1_c;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,38)
    assign out_unnamed_atax9_atax_avm_address = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_address;
    assign out_unnamed_atax9_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_enable;
    assign out_unnamed_atax9_atax_avm_read = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_read;
    assign out_unnamed_atax9_atax_avm_write = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_write;
    assign out_unnamed_atax9_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_writedata;
    assign out_unnamed_atax9_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_byteenable;
    assign out_unnamed_atax9_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,40)
    assign out_unnamed_atax10_atax_avm_address = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_address;
    assign out_unnamed_atax10_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_enable;
    assign out_unnamed_atax10_atax_avm_read = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_read;
    assign out_unnamed_atax10_atax_avm_write = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_write;
    assign out_unnamed_atax10_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_writedata;
    assign out_unnamed_atax10_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_byteenable;
    assign out_unnamed_atax10_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax10_atax6_out_unnamed_atax10_atax_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,42)
    assign out_unnamed_atax11_atax_avm_address = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_address;
    assign out_unnamed_atax11_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_enable;
    assign out_unnamed_atax11_atax_avm_read = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_read;
    assign out_unnamed_atax11_atax_avm_write = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_write;
    assign out_unnamed_atax11_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_writedata;
    assign out_unnamed_atax11_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_byteenable;
    assign out_unnamed_atax11_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax11_atax7_out_unnamed_atax11_atax_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,43)
    assign out_memdep_1_atax_avm_address = i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_address;
    assign out_memdep_1_atax_avm_enable = i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_enable;
    assign out_memdep_1_atax_avm_read = i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_read;
    assign out_memdep_1_atax_avm_write = i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_write;
    assign out_memdep_1_atax_avm_writedata = i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_writedata;
    assign out_memdep_1_atax_avm_byteenable = i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_byteenable;
    assign out_memdep_1_atax_avm_burstcount = i_llvm_fpga_mem_memdep_1_atax9_aunroll_x_out_memdep_1_atax_avm_burstcount;

endmodule
