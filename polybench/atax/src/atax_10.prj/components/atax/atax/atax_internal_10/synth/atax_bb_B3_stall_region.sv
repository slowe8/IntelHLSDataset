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

// SystemVerilog created from atax_bb_B3_stall_region
// SystemVerilog created on Wed Dec 13 00:05:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B3_stall_region (
    input wire [63:0] in_unnamed_atax5_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax5_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax5_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax5_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going97_atax0_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going97_atax0_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked104,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax5_atax_avm_address,
    output wire [0:0] out_unnamed_atax5_atax_avm_enable,
    output wire [0:0] out_unnamed_atax5_atax_avm_read,
    output wire [0:0] out_unnamed_atax5_atax_avm_write,
    output wire [63:0] out_unnamed_atax5_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax5_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax5_atax_avm_burstcount,
    output wire [63:0] out_idxprom,
    output wire [0:0] out_notcmp95,
    output wire [0:0] out_valid_out,
    input wire [127:0] in_memdep_15_atax_avm_readdata,
    input wire [0:0] in_memdep_15_atax_avm_writeack,
    input wire [0:0] in_memdep_15_atax_avm_waitrequest,
    input wire [0:0] in_memdep_15_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    input wire [31:0] in_memdep_16_atax_avm_readdata,
    input wire [0:0] in_memdep_16_atax_avm_writeack,
    input wire [0:0] in_memdep_16_atax_avm_waitrequest,
    input wire [0:0] in_memdep_16_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_15_atax_avm_address,
    output wire [0:0] out_memdep_15_atax_avm_enable,
    output wire [0:0] out_memdep_15_atax_avm_read,
    output wire [0:0] out_memdep_15_atax_avm_write,
    output wire [127:0] out_memdep_15_atax_avm_writedata,
    output wire [15:0] out_memdep_15_atax_avm_byteenable,
    output wire [0:0] out_memdep_15_atax_avm_burstcount,
    output wire [31:0] out_memdep_16_atax_avm_address,
    output wire [0:0] out_memdep_16_atax_avm_enable,
    output wire [0:0] out_memdep_16_atax_avm_read,
    output wire [0:0] out_memdep_16_atax_avm_write,
    output wire [31:0] out_memdep_16_atax_avm_writedata,
    output wire [3:0] out_memdep_16_atax_avm_byteenable,
    output wire [0:0] out_memdep_16_atax_avm_burstcount,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_x_pmem_q;
    wire [63:0] c_atax_buff_y_out_pmem_q;
    wire [63:0] c_atax_tmp1_pmem_q;
    wire [31:0] c_float_0_000000e_0025_q;
    wire [31:0] c_i32_023_q;
    wire [31:0] c_i32_129_q;
    wire [6:0] c_i7_128_q;
    wire [6:0] c_i7_6226_q;
    wire [1:0] i_arrayidx21_atax7_vt_const_1_q;
    wire [63:0] i_arrayidx21_atax7_vt_join_q;
    wire [61:0] i_arrayidx21_atax7_vt_select_63_b;
    wire [63:0] i_arrayidx42_atax9_vt_join_q;
    wire [61:0] i_arrayidx42_atax9_vt_select_63_b;
    wire [63:0] i_arrayidx63_atax11_vt_join_q;
    wire [61:0] i_arrayidx63_atax11_vt_select_63_b;
    wire [7:0] i_fpga_indvars_iv_next28_atax18_a;
    wire [7:0] i_fpga_indvars_iv_next28_atax18_b;
    logic [7:0] i_fpga_indvars_iv_next28_atax18_o;
    wire [7:0] i_fpga_indvars_iv_next28_atax18_q;
    wire [63:0] i_idxprom_atax4_vt_join_q;
    wire [31:0] i_idxprom_atax4_vt_select_31_b;
    wire [32:0] i_inc19_atax20_a;
    wire [32:0] i_inc19_atax20_b;
    logic [32:0] i_inc19_atax20_o;
    wire [32:0] i_inc19_atax20_q;
    wire [31:0] i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_burstcount;
    wire [15:0] i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_write;
    wire [127:0] i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax10_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax10_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax12_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax12_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_atax8_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_atax8_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax5_atax6_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax6_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax6_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going97_atax0_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going97_atax0_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going97_atax0_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going97_atax0_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going97_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going97_atax0_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_valid_out;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond98_atax17_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond98_atax17_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond98_atax17_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond98_atax17_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_040_push17_atax21_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_i_040_push17_atax21_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i32_i_040_push17_atax21_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_040_push17_atax21_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_valid_out;
    wire [0:0] i_notcmp95_atax16_qi;
    reg [0:0] i_notcmp95_atax16_q;
    wire [0:0] atax_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] atax_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next28_atax18_sel_x_b;
    wire [31:0] bgTrunc_i_inc19_atax20_sel_x_b;
    wire [64:0] i_arrayidx21_atax0_add_x_a;
    wire [64:0] i_arrayidx21_atax0_add_x_b;
    logic [64:0] i_arrayidx21_atax0_add_x_o;
    wire [64:0] i_arrayidx21_atax0_add_x_q;
    wire [61:0] i_arrayidx21_atax0_narrow_x_b;
    wire [63:0] i_arrayidx21_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx21_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx42_atax0_add_x_a;
    wire [64:0] i_arrayidx42_atax0_add_x_b;
    logic [64:0] i_arrayidx42_atax0_add_x_o;
    wire [64:0] i_arrayidx42_atax0_add_x_q;
    wire [63:0] i_arrayidx42_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx63_atax0_add_x_a;
    wire [64:0] i_arrayidx63_atax0_add_x_b;
    logic [64:0] i_arrayidx63_atax0_add_x_o;
    wire [64:0] i_arrayidx63_atax0_add_x_q;
    wire [63:0] i_arrayidx63_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_atax0_add_x_a;
    wire [64:0] i_arrayidx_atax0_add_x_b;
    logic [64:0] i_arrayidx_atax0_add_x_o;
    wire [64:0] i_arrayidx_atax0_add_x_q;
    wire [63:0] i_arrayidx_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom_atax4_sel_x_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [0:0] i_exitcond29_atax14_cmp_nsign_q;
    wire [0:0] redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_in;
    wire redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_in;
    wire redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_data_in;
    wire [0:0] redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_out;
    wire redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_out;
    wire redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_data_out;
    wire [0:0] redist1_i_notcmp95_atax16_q_33_fifo_valid_in;
    wire redist1_i_notcmp95_atax16_q_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_notcmp95_atax16_q_33_fifo_stall_in;
    wire redist1_i_notcmp95_atax16_q_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist1_i_notcmp95_atax16_q_33_fifo_data_in;
    wire [0:0] redist1_i_notcmp95_atax16_q_33_fifo_valid_out;
    wire redist1_i_notcmp95_atax16_q_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_notcmp95_atax16_q_33_fifo_stall_out;
    wire redist1_i_notcmp95_atax16_q_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist1_i_notcmp95_atax16_q_33_fifo_data_out;
    wire [0:0] redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_in;
    wire redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_in;
    wire redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist2_i_idxprom_atax4_vt_join_q_33_fifo_data_in;
    wire [0:0] redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_out;
    wire redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_out;
    wire redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist2_i_idxprom_atax4_vt_join_q_33_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax5_atax6_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax5_atax6_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_040_pop17_atax3_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_040_pop17_atax3_b;
    wire [6:0] bubble_join_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_q;
    wire [6:0] bubble_select_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_atax_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B3_merge_reg_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_b;
    wire [63:0] bubble_join_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_q;
    wire [63:0] bubble_select_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_b;
    wire [0:0] bubble_join_redist1_i_notcmp95_atax16_q_33_fifo_q;
    wire [0:0] bubble_select_redist1_i_notcmp95_atax16_q_33_fifo_b;
    wire [63:0] bubble_join_redist2_i_idxprom_atax4_vt_join_q_33_fifo_q;
    wire [63:0] bubble_select_redist2_i_idxprom_atax4_vt_join_q_33_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going97_atax0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going97_atax0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going97_atax0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V4;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond98_atax17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond98_atax17_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_040_push17_atax21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_040_push17_atax21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_backStall;
    reg [0:0] SE_i_notcmp95_atax16_R_v_0;
    wire [0:0] SE_i_notcmp95_atax16_v_s_0;
    wire [0:0] SE_i_notcmp95_atax16_s_tv_0;
    wire [0:0] SE_i_notcmp95_atax16_backEN;
    wire [0:0] SE_i_notcmp95_atax16_backStall;
    wire [0:0] SE_i_notcmp95_atax16_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_atax_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_atax_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_atax_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_atax_B3_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_atax_B3_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_V0;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_toReg2;
    reg [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg2;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed2;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_or0;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_or1;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_backStall;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_V0;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_V1;
    wire [0:0] SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_V2;
    wire [0:0] SE_in_redist1_i_notcmp95_atax16_q_33_fifo_wireValid;
    wire [0:0] SE_in_redist1_i_notcmp95_atax16_q_33_fifo_backStall;
    wire [0:0] SE_in_redist1_i_notcmp95_atax16_q_33_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_out_bitsignaltemp;
    reg [0:0] bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_R_v_0;
    wire [0:0] bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_v_s_0;
    wire [0:0] bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_s_tv_0;
    wire [0:0] bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_backEN;
    wire [0:0] bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_backStall;
    wire [0:0] bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_V0;


    // bubble_join_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13(BITJOIN,141)
    assign bubble_join_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_q = i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13(BITSELECT,142)
    assign bubble_select_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_b = $unsigned(bubble_join_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_q[6:0]);

    // i_exitcond29_atax14_cmp_nsign(LOGICAL,123)@2
    assign i_exitcond29_atax14_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_b[6:6]));

    // i_notcmp95_atax16(LOGICAL,46)@2 + 1
    assign i_notcmp95_atax16_qi = i_exitcond29_atax14_cmp_nsign_q ^ VCC_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_notcmp95_atax16_delay ( .xin(i_notcmp95_atax16_qi), .xout(i_notcmp95_atax16_q), .ena(SE_i_notcmp95_atax16_backEN[0]), .clk(clock), .aclr(resetn) );

    // c_float_0_000000e_0025(FLOATCONSTANT,7)
    assign c_float_0_000000e_0025_q = $unsigned(32'b00000000000000000000000000000000);

    // SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3(STALLENABLE,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg3 <= SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_backStall) & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed1 = (~ (redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed2 = (~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed3 = (~ (redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_StallValid = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_backStall & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_StallValid & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_StallValid & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg2 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_StallValid & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed2;
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_toReg3 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_StallValid & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_or0 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_or1 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_or0;
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_or2 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed2 & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_or1;
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_consumed3 & SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_or2);
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_backStall = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V0 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V1 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V2 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V3 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_wireValid = i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x(STALLENABLE,214)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_backStall = i_llvm_fpga_mem_unnamed_atax5_atax6_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_and0 = i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_wireValid = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V2 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_and0;

    // c_i32_023(CONSTANT,12)
    assign c_i32_023_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_pop_i32_i_040_pop17_atax3(BITJOIN,138)
    assign bubble_join_i_llvm_fpga_pop_i32_i_040_pop17_atax3_q = i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_040_pop17_atax3(BITSELECT,139)
    assign bubble_select_i_llvm_fpga_pop_i32_i_040_pop17_atax3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_040_pop17_atax3_q[31:0]);

    // i_idxprom_atax4_sel_x(BITSELECT,116)@2
    assign i_idxprom_atax4_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_040_pop17_atax3_b[31:0]};

    // i_idxprom_atax4_vt_select_31(BITSELECT,34)@2
    assign i_idxprom_atax4_vt_select_31_b = i_idxprom_atax4_sel_x_b[31:0];

    // i_idxprom_atax4_vt_join(BITJOIN,33)@2
    assign i_idxprom_atax4_vt_join_q = {c_i32_023_q, i_idxprom_atax4_vt_select_31_b};

    // i_arrayidx21_atax0_narrow_x(BITSELECT,94)@2
    assign i_arrayidx21_atax0_narrow_x_b = i_idxprom_atax4_vt_join_q[61:0];

    // i_arrayidx21_atax7_vt_const_1(CONSTANT,20)
    assign i_arrayidx21_atax7_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx21_atax0_shift_join_x(BITJOIN,95)@2
    assign i_arrayidx21_atax0_shift_join_x_q = {i_arrayidx21_atax0_narrow_x_b, i_arrayidx21_atax7_vt_const_1_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x(BITJOIN,154)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_out_dest_data_out_0_0_1_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x(BITSELECT,155)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_q[63:0]);

    // i_arrayidx_atax0_add_x(ADD,110)@2
    assign i_arrayidx_atax0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_b};
    assign i_arrayidx_atax0_add_x_b = {1'b0, i_arrayidx21_atax0_shift_join_x_q};
    assign i_arrayidx_atax0_add_x_o = $unsigned(i_arrayidx_atax0_add_x_a) + $unsigned(i_arrayidx_atax0_add_x_b);
    assign i_arrayidx_atax0_add_x_q = i_arrayidx_atax0_add_x_o[64:0];

    // i_arrayidx_atax0_dupName_0_trunc_sel_x(BITSELECT,115)@2
    assign i_arrayidx_atax0_dupName_0_trunc_sel_x_b = i_arrayidx_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_atax5_atax6(BLACKBOX,39)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_atax5_atax_avm_address@20000000
    // out out_unnamed_atax5_atax_avm_burstcount@20000000
    // out out_unnamed_atax5_atax_avm_byteenable@20000000
    // out out_unnamed_atax5_atax_avm_enable@20000000
    // out out_unnamed_atax5_atax_avm_read@20000000
    // out out_unnamed_atax5_atax_avm_write@20000000
    // out out_unnamed_atax5_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_5_atax0 thei_llvm_fpga_mem_unnamed_atax5_atax6 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx_atax0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_V0),
        .in_unnamed_atax5_atax_avm_readdata(in_unnamed_atax5_atax_avm_readdata),
        .in_unnamed_atax5_atax_avm_readdatavalid(in_unnamed_atax5_atax_avm_readdatavalid),
        .in_unnamed_atax5_atax_avm_waitrequest(in_unnamed_atax5_atax_avm_waitrequest),
        .in_unnamed_atax5_atax_avm_writeack(in_unnamed_atax5_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax5_atax6_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax5_atax6_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax5_atax6_out_o_valid),
        .out_unnamed_atax5_atax_avm_address(i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_address),
        .out_unnamed_atax5_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_burstcount),
        .out_unnamed_atax5_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_byteenable),
        .out_unnamed_atax5_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_enable),
        .out_unnamed_atax5_atax_avm_read(i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_read),
        .out_unnamed_atax5_atax_avm_write(i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_write),
        .out_unnamed_atax5_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6(STALLENABLE,182)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_V0 = SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_backStall = i_llvm_fpga_mem_memdep_atax8_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_and0 = i_llvm_fpga_mem_unnamed_atax5_atax6_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_wireValid = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_V0 & SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_and0;

    // redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo(STALLFIFO,127)
    assign redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V3;
    assign redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_in = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_backStall;
    assign redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_data_in = i_arrayidx21_atax0_shift_join_x_q;
    assign redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_in_bitsignaltemp = redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_in[0];
    assign redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_in_bitsignaltemp = redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_in[0];
    assign redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_out[0] = redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_out[0] = redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo (
        .valid_in(redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx21_atax0_shift_join_x_q),
        .valid_out(redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo(STALLENABLE,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg0 <= '0;
            SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg1 <= '0;
            SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg0 <= SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg1 <= SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_toReg1;
            // Successor 2
            SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg2 <= SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_backStall) & SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireValid) | SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg0;
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed1 = (~ (i_llvm_fpga_mem_memdep_15_atax10_out_o_stall) & SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireValid) | SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg1;
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed2 = (~ (i_llvm_fpga_mem_memdep_16_atax12_out_o_stall) & SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireValid) | SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg2;
    // Consuming
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_StallValid = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_backStall & SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireValid;
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_toReg0 = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_StallValid & SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed0;
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_toReg1 = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_StallValid & SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed1;
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_toReg2 = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_StallValid & SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_or0 = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed0;
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_or1 = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed1 & SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_or0;
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireStall = ~ (SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_consumed2 & SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_or1);
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_backStall = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_V0 = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireValid & ~ (SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg0);
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_V1 = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireValid & ~ (SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg1);
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_V2 = SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireValid & ~ (SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_wireValid = redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_valid_out;

    // bubble_join_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo(BITJOIN,157)
    assign bubble_join_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_q = redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_data_out;

    // bubble_select_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo(BITSELECT,158)
    assign bubble_select_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_b = $unsigned(bubble_join_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_q[63:0]);

    // c_atax_buff_y_out_pmem(CONSTANT,5)
    assign c_atax_buff_y_out_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx42_atax0_add_x(ADD,98)@34
    assign i_arrayidx42_atax0_add_x_a = {1'b0, c_atax_buff_y_out_pmem_q};
    assign i_arrayidx42_atax0_add_x_b = {1'b0, bubble_select_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_b};
    assign i_arrayidx42_atax0_add_x_o = $unsigned(i_arrayidx42_atax0_add_x_a) + $unsigned(i_arrayidx42_atax0_add_x_b);
    assign i_arrayidx42_atax0_add_x_q = i_arrayidx42_atax0_add_x_o[64:0];

    // i_arrayidx42_atax0_dupName_0_trunc_sel_x(BITSELECT,103)@34
    assign i_arrayidx42_atax0_dupName_0_trunc_sel_x_b = i_arrayidx42_atax0_add_x_q[63:0];

    // i_arrayidx42_atax9_vt_select_63(BITSELECT,25)@34
    assign i_arrayidx42_atax9_vt_select_63_b = i_arrayidx42_atax0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx42_atax9_vt_join(BITJOIN,24)@34
    assign i_arrayidx42_atax9_vt_join_q = {i_arrayidx42_atax9_vt_select_63_b, i_arrayidx21_atax7_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_15_atax10(BLACKBOX,36)@34
    // in in_i_stall@20000000
    // out out_memdep_15_atax_avm_address@20000000
    // out out_memdep_15_atax_avm_burstcount@20000000
    // out out_memdep_15_atax_avm_byteenable@20000000
    // out out_memdep_15_atax_avm_enable@20000000
    // out out_memdep_15_atax_avm_read@20000000
    // out out_memdep_15_atax_avm_write@20000000
    // out out_memdep_15_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_o_writeack@35
    atax_i_llvm_fpga_mem_memdep_15_0 thei_llvm_fpga_mem_memdep_15_atax10 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx42_atax9_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_backStall),
        .in_i_valid(SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_V1),
        .in_i_writedata(c_float_0_000000e_0025_q),
        .in_memdep_15_atax_avm_readdata(in_memdep_15_atax_avm_readdata),
        .in_memdep_15_atax_avm_readdatavalid(in_memdep_15_atax_avm_readdatavalid),
        .in_memdep_15_atax_avm_waitrequest(in_memdep_15_atax_avm_waitrequest),
        .in_memdep_15_atax_avm_writeack(in_memdep_15_atax_avm_writeack),
        .out_memdep_15_atax_avm_address(i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_address),
        .out_memdep_15_atax_avm_burstcount(i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_burstcount),
        .out_memdep_15_atax_avm_byteenable(i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_byteenable),
        .out_memdep_15_atax_avm_enable(i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_enable),
        .out_memdep_15_atax_avm_read(i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_read),
        .out_memdep_15_atax_avm_write(i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_write),
        .out_memdep_15_atax_avm_writedata(i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_15_atax10_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_15_atax10_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_atax_tmp1_pmem(CONSTANT,6)
    assign c_atax_tmp1_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx63_atax0_add_x(ADD,104)@34
    assign i_arrayidx63_atax0_add_x_a = {1'b0, c_atax_tmp1_pmem_q};
    assign i_arrayidx63_atax0_add_x_b = {1'b0, bubble_select_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_b};
    assign i_arrayidx63_atax0_add_x_o = $unsigned(i_arrayidx63_atax0_add_x_a) + $unsigned(i_arrayidx63_atax0_add_x_b);
    assign i_arrayidx63_atax0_add_x_q = i_arrayidx63_atax0_add_x_o[64:0];

    // i_arrayidx63_atax0_dupName_0_trunc_sel_x(BITSELECT,109)@34
    assign i_arrayidx63_atax0_dupName_0_trunc_sel_x_b = i_arrayidx63_atax0_add_x_q[63:0];

    // i_arrayidx63_atax11_vt_select_63(BITSELECT,28)@34
    assign i_arrayidx63_atax11_vt_select_63_b = i_arrayidx63_atax0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx63_atax11_vt_join(BITJOIN,27)@34
    assign i_arrayidx63_atax11_vt_join_q = {i_arrayidx63_atax11_vt_select_63_b, i_arrayidx21_atax7_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_16_atax12(BLACKBOX,37)@34
    // in in_i_stall@20000000
    // out out_memdep_16_atax_avm_address@20000000
    // out out_memdep_16_atax_avm_burstcount@20000000
    // out out_memdep_16_atax_avm_byteenable@20000000
    // out out_memdep_16_atax_avm_enable@20000000
    // out out_memdep_16_atax_avm_read@20000000
    // out out_memdep_16_atax_avm_write@20000000
    // out out_memdep_16_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_o_writeack@35
    atax_i_llvm_fpga_mem_memdep_16_0 thei_llvm_fpga_mem_memdep_16_atax12 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx63_atax11_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_backStall),
        .in_i_valid(SE_out_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_V2),
        .in_i_writedata(c_float_0_000000e_0025_q),
        .in_memdep_16_atax_avm_readdata(in_memdep_16_atax_avm_readdata),
        .in_memdep_16_atax_avm_readdatavalid(in_memdep_16_atax_avm_readdatavalid),
        .in_memdep_16_atax_avm_waitrequest(in_memdep_16_atax_avm_waitrequest),
        .in_memdep_16_atax_avm_writeack(in_memdep_16_atax_avm_writeack),
        .out_memdep_16_atax_avm_address(i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_address),
        .out_memdep_16_atax_avm_burstcount(i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_burstcount),
        .out_memdep_16_atax_avm_byteenable(i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_byteenable),
        .out_memdep_16_atax_avm_enable(i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_enable),
        .out_memdep_16_atax_avm_read(i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_read),
        .out_memdep_16_atax_avm_write(i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_write),
        .out_memdep_16_atax_avm_writedata(i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_16_atax12_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_16_atax12_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_atax5_atax6(BITJOIN,134)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax5_atax6_q = i_llvm_fpga_mem_unnamed_atax5_atax6_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax5_atax6(BITSELECT,135)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax5_atax6_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax5_atax6_q[31:0]);

    // c_atax_buff_x_pmem(CONSTANT,4)
    assign c_atax_buff_x_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx21_atax0_add_x(ADD,92)@34
    assign i_arrayidx21_atax0_add_x_a = {1'b0, c_atax_buff_x_pmem_q};
    assign i_arrayidx21_atax0_add_x_b = {1'b0, bubble_select_redist0_i_arrayidx21_atax0_shift_join_x_q_32_fifo_b};
    assign i_arrayidx21_atax0_add_x_o = $unsigned(i_arrayidx21_atax0_add_x_a) + $unsigned(i_arrayidx21_atax0_add_x_b);
    assign i_arrayidx21_atax0_add_x_q = i_arrayidx21_atax0_add_x_o[64:0];

    // i_arrayidx21_atax0_dupName_0_trunc_sel_x(BITSELECT,97)@34
    assign i_arrayidx21_atax0_dupName_0_trunc_sel_x_b = i_arrayidx21_atax0_add_x_q[63:0];

    // i_arrayidx21_atax7_vt_select_63(BITSELECT,22)@34
    assign i_arrayidx21_atax7_vt_select_63_b = i_arrayidx21_atax0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx21_atax7_vt_join(BITJOIN,21)@34
    assign i_arrayidx21_atax7_vt_join_q = {i_arrayidx21_atax7_vt_select_63_b, i_arrayidx21_atax7_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_atax8(BLACKBOX,38)@34
    // in in_i_stall@20000000
    // out out_memdep_atax_avm_address@20000000
    // out out_memdep_atax_avm_burstcount@20000000
    // out out_memdep_atax_avm_byteenable@20000000
    // out out_memdep_atax_avm_enable@20000000
    // out out_memdep_atax_avm_read@20000000
    // out out_memdep_atax_avm_write@20000000
    // out out_memdep_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_o_writeack@35
    atax_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_atax8 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx21_atax7_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_atax5_atax6_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_atax5_atax6_b),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .out_memdep_atax_avm_address(i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_atax8_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_atax8_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_idxprom_atax4_vt_join_q_33_fifo(STALLFIFO,129)
    assign redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V1;
    assign redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_backStall;
    assign redist2_i_idxprom_atax4_vt_join_q_33_fifo_data_in = i_idxprom_atax4_vt_join_q;
    assign redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_in_bitsignaltemp = redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_in[0];
    assign redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_in_bitsignaltemp = redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_in[0];
    assign redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_out[0] = redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_out_bitsignaltemp;
    assign redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_out[0] = redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist2_i_idxprom_atax4_vt_join_q_33_fifo (
        .valid_in(redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_idxprom_atax4_vt_join_q),
        .valid_out(redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_idxprom_atax4_vt_join_q_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_idxprom_atax4_vt_join_q_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg(STALLFIFO,274)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going97_atax0_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1(STALLENABLE,243)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and0 = bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and1 = bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and2 = redist2_i_idxprom_atax4_vt_join_q_33_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and3 = redist1_i_notcmp95_atax16_q_33_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and4 = i_llvm_fpga_mem_memdep_atax8_out_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and5 = i_llvm_fpga_mem_memdep_16_atax12_out_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_wireValid = i_llvm_fpga_mem_memdep_15_atax10_out_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_and5;

    // redist1_i_notcmp95_atax16_q_33_fifo(STALLFIFO,128)
    assign redist1_i_notcmp95_atax16_q_33_fifo_valid_in = SE_in_redist1_i_notcmp95_atax16_q_33_fifo_V0;
    assign redist1_i_notcmp95_atax16_q_33_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_backStall;
    assign redist1_i_notcmp95_atax16_q_33_fifo_data_in = i_notcmp95_atax16_q;
    assign redist1_i_notcmp95_atax16_q_33_fifo_valid_in_bitsignaltemp = redist1_i_notcmp95_atax16_q_33_fifo_valid_in[0];
    assign redist1_i_notcmp95_atax16_q_33_fifo_stall_in_bitsignaltemp = redist1_i_notcmp95_atax16_q_33_fifo_stall_in[0];
    assign redist1_i_notcmp95_atax16_q_33_fifo_valid_out[0] = redist1_i_notcmp95_atax16_q_33_fifo_valid_out_bitsignaltemp;
    assign redist1_i_notcmp95_atax16_q_33_fifo_stall_out[0] = redist1_i_notcmp95_atax16_q_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist1_i_notcmp95_atax16_q_33_fifo (
        .valid_in(redist1_i_notcmp95_atax16_q_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_notcmp95_atax16_q_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_notcmp95_atax16_q),
        .valid_out(redist1_i_notcmp95_atax16_q_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_notcmp95_atax16_q_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_notcmp95_atax16_q_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist1_i_notcmp95_atax16_q_33_fifo(STALLENABLE,218)
    // Valid signal propagation
    assign SE_in_redist1_i_notcmp95_atax16_q_33_fifo_V0 = SE_in_redist1_i_notcmp95_atax16_q_33_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist1_i_notcmp95_atax16_q_33_fifo_backStall = redist1_i_notcmp95_atax16_q_33_fifo_stall_out | ~ (SE_in_redist1_i_notcmp95_atax16_q_33_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist1_i_notcmp95_atax16_q_33_fifo_wireValid = SE_i_notcmp95_atax16_V0;

    // SE_i_notcmp95_atax16(STALLENABLE,195)
    // Valid signal propagation
    assign SE_i_notcmp95_atax16_V0 = SE_i_notcmp95_atax16_R_v_0;
    // Stall signal propagation
    assign SE_i_notcmp95_atax16_s_tv_0 = SE_in_redist1_i_notcmp95_atax16_q_33_fifo_backStall & SE_i_notcmp95_atax16_R_v_0;
    // Backward Enable generation
    assign SE_i_notcmp95_atax16_backEN = ~ (SE_i_notcmp95_atax16_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_notcmp95_atax16_v_s_0 = SE_i_notcmp95_atax16_backEN & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V2;
    // Backward Stall generation
    assign SE_i_notcmp95_atax16_backStall = ~ (SE_i_notcmp95_atax16_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_notcmp95_atax16_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_notcmp95_atax16_backEN == 1'b0)
            begin
                SE_i_notcmp95_atax16_R_v_0 <= SE_i_notcmp95_atax16_R_v_0 & SE_i_notcmp95_atax16_s_tv_0;
            end
            else
            begin
                SE_i_notcmp95_atax16_R_v_0 <= SE_i_notcmp95_atax16_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i32_i_040_push17_atax21(STALLENABLE,192)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_040_push17_atax21_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_040_push17_atax21_wireValid = i_llvm_fpga_push_i32_i_040_push17_atax21_out_valid_out;

    // c_i32_129(CONSTANT,13)
    assign c_i32_129_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc19_atax20(ADD,35)@2
    assign i_inc19_atax20_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_i_040_pop17_atax3_b};
    assign i_inc19_atax20_b = {1'b0, c_i32_129_q};
    assign i_inc19_atax20_o = $unsigned(i_inc19_atax20_a) + $unsigned(i_inc19_atax20_b);
    assign i_inc19_atax20_q = i_inc19_atax20_o[32:0];

    // bgTrunc_i_inc19_atax20_sel_x(BITSELECT,82)@2
    assign bgTrunc_i_inc19_atax20_sel_x_b = i_inc19_atax20_q[31:0];

    // i_llvm_fpga_push_i32_i_040_push17_atax21(BLACKBOX,44)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i32_i_040_push17_0 thei_llvm_fpga_push_i32_i_040_push17_atax21 (
        .in_data_in(bgTrunc_i_inc19_atax20_sel_x_b),
        .in_exitcond29(i_exitcond29_atax14_cmp_nsign_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_feedback_stall_out_17),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_040_push17_atax21_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_i_040_push17_atax21_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_i_040_push17_atax21_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i32_i_040_push17_atax21_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_040_push17_atax21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21(STALLENABLE,191)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_V0 = SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_backStall = i_llvm_fpga_push_i32_i_040_push17_atax21_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_and0 = SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_V0;
    assign SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_wireValid = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V1 & SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_and0;

    // bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg(STALLFIFO,275)
    assign bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V0;
    assign bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13(STALLENABLE,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg0 <= SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg1 <= SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg2 <= SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg3 <= SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg4 <= SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid) | SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_i_040_push17_atax21_backStall) & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid) | SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed2 = (~ (SE_i_notcmp95_atax16_backStall) & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid) | SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed3 = (~ (i_llvm_fpga_push_i1_notexitcond98_atax17_out_stall_out) & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid) | SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed4 = (~ (i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_stall_out) & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid) | SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_StallValid = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_backStall & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg0 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_StallValid & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed0;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg1 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_StallValid & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed1;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg2 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_StallValid & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed2;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg3 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_StallValid & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed3;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_toReg4 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_StallValid & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or0 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed0;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or1 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed1 & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or0;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or2 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed2 & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or1;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or3 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed3 & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or2;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireStall = ~ (SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_consumed4 & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_or3);
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_backStall = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V0 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid & ~ (SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V1 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid & ~ (SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V2 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid & ~ (SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V3 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid & ~ (SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V4 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid & ~ (SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_wireValid = i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_valid_out;

    // SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19(STALLENABLE,194)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_wireValid = i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_valid_out;

    // c_i7_128(CONSTANT,14)
    assign c_i7_128_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next28_atax18(ADD,30)@2
    assign i_fpga_indvars_iv_next28_atax18_a = {1'b0, bubble_select_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_b};
    assign i_fpga_indvars_iv_next28_atax18_b = {1'b0, c_i7_128_q};
    assign i_fpga_indvars_iv_next28_atax18_o = $unsigned(i_fpga_indvars_iv_next28_atax18_a) + $unsigned(i_fpga_indvars_iv_next28_atax18_b);
    assign i_fpga_indvars_iv_next28_atax18_q = i_fpga_indvars_iv_next28_atax18_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next28_atax18_sel_x(BITSELECT,81)@2
    assign bgTrunc_i_fpga_indvars_iv_next28_atax18_sel_x_b = i_fpga_indvars_iv_next28_atax18_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19(BLACKBOX,45)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_0 thei_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next28_atax18_sel_x_b),
        .in_exitcond29(i_exitcond29_atax14_cmp_nsign_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_feedback_stall_out_16),
        .in_stall_in(SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V4),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B3_merge_reg_aunroll_x(BITJOIN,149)
    assign bubble_join_atax_B3_merge_reg_aunroll_x_q = atax_B3_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_atax_B3_merge_reg_aunroll_x(BITSELECT,150)
    assign bubble_select_atax_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B3_merge_reg_aunroll_x_q[0:0]);

    // c_i7_6226(CONSTANT,15)
    assign c_i7_6226_q = $unsigned(7'b0111110);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13(BLACKBOX,42)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13 (
        .in_data_in(c_i7_6226_q),
        .in_dir(bubble_select_atax_B3_merge_reg_aunroll_x_b),
        .in_feedback_in_16(i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i7_fpga_indvars_iv27_push16_atax19_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_backStall),
        .in_valid_in(SE_out_atax_B3_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_040_pop17_atax3(BLACKBOX,41)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i32_i_040_pop17_0 thei_llvm_fpga_pop_i32_i_040_pop17_atax3 (
        .in_data_in(c_i32_023_q),
        .in_dir(bubble_select_atax_B3_merge_reg_aunroll_x_b),
        .in_feedback_in_17(i_llvm_fpga_push_i32_i_040_push17_atax21_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_i_040_push17_atax21_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_040_pop17_atax3_backStall),
        .in_valid_in(SE_out_atax_B3_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x(BLACKBOX,117)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    // out out_dest_data_out_0_0_0_tpl@2
    // out out_dest_data_out_0_0_1_tpl@2
    // out out_dest_data_out_0_0_2_tpl@2
    atax_i_llvm_fpga_ffwd_dest_s_struct_z4pa0000_unnamed_atax4_atax0 thei_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x (
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_backStall),
        .in_valid_in(SE_out_atax_B3_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_out_valid_out),
        .out_dest_data_out_0_0_0_tpl(),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .out_dest_data_out_0_0_2_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,145)
    assign bubble_join_stall_entry_q = in_forked104;

    // bubble_select_stall_entry(BITSELECT,146)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,196)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B3_merge_reg_aunroll_x(BLACKBOX,80)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    atax_B3_merge_reg theatax_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_atax_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(atax_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(atax_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_atax_B3_merge_reg_aunroll_x(STALLENABLE,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_atax_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_atax_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_atax_B3_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_atax_B3_merge_reg_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_atax_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_atax_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_atax_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_atax_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_atax_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_atax_B3_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_atax_B3_merge_reg_aunroll_x_fromReg3 <= SE_out_atax_B3_merge_reg_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_atax_B3_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax4_atax1_aunroll_x_out_stall_out) & SE_out_atax_B3_merge_reg_aunroll_x_wireValid) | SE_out_atax_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_atax_B3_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_backStall) & SE_out_atax_B3_merge_reg_aunroll_x_wireValid) | SE_out_atax_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_atax_B3_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i32_i_040_pop17_atax3_out_stall_out) & SE_out_atax_B3_merge_reg_aunroll_x_wireValid) | SE_out_atax_B3_merge_reg_aunroll_x_fromReg2;
    assign SE_out_atax_B3_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_out_stall_out) & SE_out_atax_B3_merge_reg_aunroll_x_wireValid) | SE_out_atax_B3_merge_reg_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_atax_B3_merge_reg_aunroll_x_StallValid = SE_out_atax_B3_merge_reg_aunroll_x_backStall & SE_out_atax_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_atax_B3_merge_reg_aunroll_x_toReg0 = SE_out_atax_B3_merge_reg_aunroll_x_StallValid & SE_out_atax_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_atax_B3_merge_reg_aunroll_x_toReg1 = SE_out_atax_B3_merge_reg_aunroll_x_StallValid & SE_out_atax_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_atax_B3_merge_reg_aunroll_x_toReg2 = SE_out_atax_B3_merge_reg_aunroll_x_StallValid & SE_out_atax_B3_merge_reg_aunroll_x_consumed2;
    assign SE_out_atax_B3_merge_reg_aunroll_x_toReg3 = SE_out_atax_B3_merge_reg_aunroll_x_StallValid & SE_out_atax_B3_merge_reg_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_atax_B3_merge_reg_aunroll_x_or0 = SE_out_atax_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_atax_B3_merge_reg_aunroll_x_or1 = SE_out_atax_B3_merge_reg_aunroll_x_consumed1 & SE_out_atax_B3_merge_reg_aunroll_x_or0;
    assign SE_out_atax_B3_merge_reg_aunroll_x_or2 = SE_out_atax_B3_merge_reg_aunroll_x_consumed2 & SE_out_atax_B3_merge_reg_aunroll_x_or1;
    assign SE_out_atax_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_atax_B3_merge_reg_aunroll_x_consumed3 & SE_out_atax_B3_merge_reg_aunroll_x_or2);
    assign SE_out_atax_B3_merge_reg_aunroll_x_backStall = SE_out_atax_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_atax_B3_merge_reg_aunroll_x_V0 = SE_out_atax_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_atax_B3_merge_reg_aunroll_x_V1 = SE_out_atax_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_atax_B3_merge_reg_aunroll_x_V2 = SE_out_atax_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B3_merge_reg_aunroll_x_fromReg2);
    assign SE_out_atax_B3_merge_reg_aunroll_x_V3 = SE_out_atax_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B3_merge_reg_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_atax_B3_merge_reg_aunroll_x_wireValid = atax_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_atax_B3_merge_reg_aunroll_x_2_reg(STALLENABLE,276)
    // Valid signal propagation
    assign bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_V0 = bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_s_tv_0 = i_llvm_fpga_pipeline_keep_going97_atax0_out_stall_out & bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_backEN = ~ (bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_v_s_0 = bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_backEN & SE_out_atax_B3_merge_reg_aunroll_x_V1;
    // Backward Stall generation
    assign bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_backStall = ~ (bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_backEN == 1'b0)
            begin
                bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_R_v_0 <= bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_R_v_0 & bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_s_tv_0;
            end
            else
            begin
                bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_R_v_0 <= bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pipeline_keep_going97_atax0(STALLENABLE,184)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going97_atax0_V0 = SE_out_i_llvm_fpga_pipeline_keep_going97_atax0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going97_atax0_backStall = bubble_out_i_llvm_fpga_pipeline_keep_going97_atax0_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_pipeline_keep_going97_atax0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going97_atax0_wireValid = i_llvm_fpga_pipeline_keep_going97_atax0_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond98_atax17(STALLENABLE,190)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond98_atax17_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond98_atax17_wireValid = i_llvm_fpga_push_i1_notexitcond98_atax17_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond98_atax17(BLACKBOX,43)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i1_notexitcond98_0 thei_llvm_fpga_push_i1_notexitcond98_atax17 (
        .in_data_in(i_exitcond29_atax14_cmp_nsign_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pipeline_keep_going97_atax0_out_not_exitcond_stall_out),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond98_atax17_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_V3),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_notexitcond98_atax17_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_notexitcond98_atax17_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond98_atax17_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond98_atax17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going97_atax0(BLACKBOX,40)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_pipeline_keep_going97_0 thei_llvm_fpga_pipeline_keep_going97_atax0 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond98_atax17_out_feedback_out_13),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond98_atax17_out_feedback_valid_out_13),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going97_atax0_backStall),
        .in_valid_in(bubble_out_atax_B3_merge_reg_aunroll_x_2_reg_V0),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going97_atax0_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going97_atax0_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going97_atax0_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going97_atax0_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going97_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going97_atax0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going97_atax0_exiting_valid_out = i_llvm_fpga_pipeline_keep_going97_atax0_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going97_atax0_exiting_stall_out = i_llvm_fpga_pipeline_keep_going97_atax0_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,73)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going97_atax0_out_pipeline_valid_out;

    // sync_out(GPOUT,78)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,85)
    assign out_unnamed_atax5_atax_avm_address = i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_address;
    assign out_unnamed_atax5_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_enable;
    assign out_unnamed_atax5_atax_avm_read = i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_read;
    assign out_unnamed_atax5_atax_avm_write = i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_write;
    assign out_unnamed_atax5_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_writedata;
    assign out_unnamed_atax5_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_byteenable;
    assign out_unnamed_atax5_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax5_atax6_out_unnamed_atax5_atax_avm_burstcount;

    // bubble_join_redist1_i_notcmp95_atax16_q_33_fifo(BITJOIN,160)
    assign bubble_join_redist1_i_notcmp95_atax16_q_33_fifo_q = redist1_i_notcmp95_atax16_q_33_fifo_data_out;

    // bubble_select_redist1_i_notcmp95_atax16_q_33_fifo(BITSELECT,161)
    assign bubble_select_redist1_i_notcmp95_atax16_q_33_fifo_b = $unsigned(bubble_join_redist1_i_notcmp95_atax16_q_33_fifo_q[0:0]);

    // bubble_join_redist2_i_idxprom_atax4_vt_join_q_33_fifo(BITJOIN,163)
    assign bubble_join_redist2_i_idxprom_atax4_vt_join_q_33_fifo_q = redist2_i_idxprom_atax4_vt_join_q_33_fifo_data_out;

    // bubble_select_redist2_i_idxprom_atax4_vt_join_q_33_fifo(BITSELECT,164)
    assign bubble_select_redist2_i_idxprom_atax4_vt_join_q_33_fifo_b = $unsigned(bubble_join_redist2_i_idxprom_atax4_vt_join_q_33_fifo_q[63:0]);

    // dupName_0_sync_out_x(GPOUT,86)@35
    assign out_idxprom = bubble_select_redist2_i_idxprom_atax4_vt_join_q_33_fifo_b;
    assign out_notcmp95 = bubble_select_redist1_i_notcmp95_atax16_q_33_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i7_fpga_indvars_iv27_pop16_atax13_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,88)
    assign out_memdep_atax_avm_address = i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_address;
    assign out_memdep_atax_avm_enable = i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_enable;
    assign out_memdep_atax_avm_read = i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_read;
    assign out_memdep_atax_avm_write = i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_write;
    assign out_memdep_atax_avm_writedata = i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_writedata;
    assign out_memdep_atax_avm_byteenable = i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_byteenable;
    assign out_memdep_atax_avm_burstcount = i_llvm_fpga_mem_memdep_atax8_out_memdep_atax_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,90)
    assign out_memdep_15_atax_avm_address = i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_address;
    assign out_memdep_15_atax_avm_enable = i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_enable;
    assign out_memdep_15_atax_avm_read = i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_read;
    assign out_memdep_15_atax_avm_write = i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_write;
    assign out_memdep_15_atax_avm_writedata = i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_writedata;
    assign out_memdep_15_atax_avm_byteenable = i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_byteenable;
    assign out_memdep_15_atax_avm_burstcount = i_llvm_fpga_mem_memdep_15_atax10_out_memdep_15_atax_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,91)
    assign out_memdep_16_atax_avm_address = i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_address;
    assign out_memdep_16_atax_avm_enable = i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_enable;
    assign out_memdep_16_atax_avm_read = i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_read;
    assign out_memdep_16_atax_avm_write = i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_write;
    assign out_memdep_16_atax_avm_writedata = i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_writedata;
    assign out_memdep_16_atax_avm_byteenable = i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_byteenable;
    assign out_memdep_16_atax_avm_burstcount = i_llvm_fpga_mem_memdep_16_atax12_out_memdep_16_atax_avm_burstcount;

endmodule
