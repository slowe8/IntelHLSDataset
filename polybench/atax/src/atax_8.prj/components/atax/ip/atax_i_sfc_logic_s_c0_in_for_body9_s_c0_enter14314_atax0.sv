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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body9_s_c0_enter14314_atax0
// SystemVerilog created on Wed Dec 13 00:56:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body9_s_c0_enter14314_atax0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    output wire [0:0] out_c0_exi14_0_tpl,
    output wire [0:0] out_c0_exi14_1_tpl,
    output wire [0:0] out_c0_exi14_2_tpl,
    output wire [63:0] out_c0_exi14_3_tpl,
    output wire [63:0] out_c0_exi14_4_tpl,
    output wire [63:0] out_c0_exi14_5_tpl,
    output wire [63:0] out_c0_exi14_6_tpl,
    output wire [63:0] out_c0_exi14_7_tpl,
    output wire [63:0] out_c0_exi14_8_tpl,
    output wire [63:0] out_c0_exi14_9_tpl,
    output wire [63:0] out_c0_exi14_10_tpl,
    output wire [63:0] out_c0_exi14_11_tpl,
    output wire [63:0] out_c0_exi14_12_tpl,
    output wire [0:0] out_c0_exi14_13_tpl,
    output wire [0:0] out_c0_exi14_14_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [63:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_A_pmem_q;
    wire [1:0] c_i2_157_q;
    wire [31:0] c_i32_059_q;
    wire [31:0] c_i32_160_q;
    wire [31:0] c_i32_261_q;
    wire [31:0] c_i32_362_q;
    wire [31:0] c_i32_463_q;
    wire [31:0] c_i32_564_q;
    wire [31:0] c_i32_665_q;
    wire [31:0] c_i32_766_q;
    wire [31:0] c_i32_867_q;
    wire [3:0] c_i4_170_q;
    wire [3:0] c_i4_668_q;
    wire [1:0] i_arrayidx174_atax15_vt_const_1_q;
    wire [63:0] i_arrayidx174_atax15_vt_join_q;
    wire [61:0] i_arrayidx174_atax15_vt_select_63_b;
    wire [63:0] i_arrayidx17_48_atax29_vt_join_q;
    wire [1:0] i_cleanups_shl87_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl87_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor89_atax4_q;
    wire [4:0] i_fpga_indvars_iv_next_atax49_a;
    wire [4:0] i_fpga_indvars_iv_next_atax49_b;
    logic [4:0] i_fpga_indvars_iv_next_atax49_o;
    wire [4:0] i_fpga_indvars_iv_next_atax49_q;
    wire [63:0] i_idxprom12_1_atax18_vt_join_q;
    wire [30:0] i_idxprom12_1_atax18_vt_select_31_b;
    wire [63:0] i_idxprom12_2_atax21_vt_join_q;
    wire [1:0] i_idxprom12_3_atax24_vt_const_1_q;
    wire [63:0] i_idxprom12_3_atax24_vt_join_q;
    wire [29:0] i_idxprom12_3_atax24_vt_select_31_b;
    wire [63:0] i_idxprom12_4_atax27_vt_join_q;
    wire [63:0] i_idxprom12_5_atax31_vt_join_q;
    wire [63:0] i_idxprom12_6_atax34_vt_join_q;
    wire [2:0] i_idxprom12_7_atax37_vt_const_2_q;
    wire [63:0] i_idxprom12_7_atax37_vt_join_q;
    wire [28:0] i_idxprom12_7_atax37_vt_select_31_b;
    wire [63:0] i_idxprom12_atax11_vt_join_q;
    wire [31:0] i_idxprom12_atax11_vt_select_31_b;
    wire [31:0] i_inc_1_atax20_q;
    wire [31:0] i_inc_1_atax20_vt_join_q;
    wire [31:0] i_inc_2_atax23_q;
    wire [31:0] i_inc_2_atax23_vt_join_q;
    wire [29:0] i_inc_2_atax23_vt_select_31_b;
    wire [31:0] i_inc_3_atax26_q;
    wire [31:0] i_inc_3_atax26_vt_join_q;
    wire [31:0] i_inc_4_atax30_q;
    wire [31:0] i_inc_4_atax30_vt_join_q;
    wire [31:0] i_inc_5_atax33_q;
    wire [31:0] i_inc_5_atax33_vt_join_q;
    wire [31:0] i_inc_6_atax36_q;
    wire [31:0] i_inc_6_atax36_vt_join_q;
    wire [28:0] i_inc_6_atax36_vt_select_31_b;
    wire [32:0] i_inc_7_atax39_a;
    wire [32:0] i_inc_7_atax39_b;
    logic [32:0] i_inc_7_atax39_o;
    wire [32:0] i_inc_7_atax39_q;
    wire [31:0] i_inc_atax17_q;
    wire [31:0] i_inc_atax17_vt_join_q;
    wire [30:0] i_inc_atax17_vt_select_31_b;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp95107_pop32_atax52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp95107_pop32_atax52_out_feedback_stall_out_32;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_feedback_stall_out_29;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop28_atax41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop28_atax41_out_feedback_stall_out_28;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom106_pop31_atax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom106_pop31_atax12_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration85_atax7_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration85_atax7_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notcmp95107_push32_atax53_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notcmp95107_push32_atax53_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond93_atax45_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond93_atax45_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i2_cleanups86_push30_atax48_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i2_cleanups86_push30_atax48_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_j_039_push29_atax40_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i32_j_039_push29_atax40_out_feedback_valid_out_29;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push28_atax50_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push28_atax50_out_feedback_valid_out_28;
    wire [63:0] i_llvm_fpga_push_i64_idxprom106_push31_atax13_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i64_idxprom106_push31_atax13_out_feedback_valid_out_31;
    wire [0:0] i_masked92_atax51_q;
    wire [63:0] i_memcoalesce_bitcast_atax_fpgaunique_28_atax16_vt_join_q;
    wire [61:0] i_memcoalesce_bitcast_atax_fpgaunique_28_atax16_vt_select_63_b;
    wire [0:0] i_next_cleanups91_atax47_s;
    reg [1:0] i_next_cleanups91_atax47_q;
    wire [0:0] i_notcmp79_atax44_q;
    wire [0:0] i_or90_atax46_q;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next_atax49_sel_x_b;
    wire [31:0] bgTrunc_i_inc_7_atax39_sel_x_b;
    wire [64:0] i_arrayidx13_1_atax0_add_x_a;
    wire [64:0] i_arrayidx13_1_atax0_add_x_b;
    logic [64:0] i_arrayidx13_1_atax0_add_x_o;
    wire [64:0] i_arrayidx13_1_atax0_add_x_q;
    wire [7:0] i_arrayidx13_1_atax0_c_i8_01_x_q;
    wire [55:0] i_arrayidx13_1_atax0_narrow_x_b;
    wire [63:0] i_arrayidx13_1_atax0_shift_join_x_q;
    wire [64:0] i_arrayidx13_1_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx13_1_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx13_1_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx13_1_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx13_1_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx13_1_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx13_1_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx13_2_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx13_2_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx13_2_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx13_2_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx13_2_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx13_2_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx13_2_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx13_3_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx13_3_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx13_3_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx13_3_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx13_3_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx13_3_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx13_3_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx13_4_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx13_4_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx13_4_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx13_4_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx13_4_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx13_4_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx13_4_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx13_5_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx13_5_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx13_5_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx13_5_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx13_5_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx13_5_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx13_5_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx13_6_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx13_6_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx13_6_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx13_6_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx13_6_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx13_6_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx13_6_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx13_7_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx13_7_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx13_7_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx13_7_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx13_7_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx13_7_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx13_7_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx13_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx13_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx13_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx13_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx13_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx13_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx13_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx174_atax0_add_x_a;
    wire [64:0] i_arrayidx174_atax0_add_x_b;
    logic [64:0] i_arrayidx174_atax0_add_x_o;
    wire [64:0] i_arrayidx174_atax0_add_x_q;
    wire [64:0] i_arrayidx174_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx174_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx174_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx174_atax0_dupName_0_add_x_q;
    wire [63:0] i_arrayidx174_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx174_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx17_48_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx17_48_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx17_48_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx17_48_atax0_dupName_0_add_x_q;
    wire [63:0] i_arrayidx17_48_atax0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup88_atax3_sel_x_b;
    wire [63:0] i_idxprom12_1_atax18_sel_x_b;
    wire [63:0] i_idxprom12_2_atax21_sel_x_b;
    wire [63:0] i_idxprom12_3_atax24_sel_x_b;
    wire [63:0] i_idxprom12_4_atax27_sel_x_b;
    wire [63:0] i_idxprom12_5_atax31_sel_x_b;
    wire [63:0] i_idxprom12_6_atax34_sel_x_b;
    wire [63:0] i_idxprom12_7_atax37_sel_x_b;
    wire [63:0] i_idxprom12_atax11_sel_x_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax6_atax8_aunroll_x_out_dest_data_out_0_0_0_tpl;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond_atax42_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl87_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl87_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid320_i_cleanups_shl87_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid322_i_cleanups_shl87_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid322_i_cleanups_shl87_atax0_shift_x_q;
    wire [0:0] i_inc_1_atax20_vt_select_0_merged_bit_select_b;
    wire [29:0] i_inc_1_atax20_vt_select_0_merged_bit_select_c;
    wire [1:0] i_inc_3_atax26_vt_select_1_merged_bit_select_b;
    wire [28:0] i_inc_3_atax26_vt_select_1_merged_bit_select_c;
    wire [0:0] i_inc_4_atax30_vt_select_1_merged_bit_select_b;
    wire [28:0] i_inc_4_atax30_vt_select_1_merged_bit_select_c;
    wire [0:0] i_inc_5_atax33_vt_select_0_merged_bit_select_b;
    wire [28:0] i_inc_5_atax33_vt_select_0_merged_bit_select_c;
    wire [1:0] i_arrayidx17_48_atax29_vt_select_3_merged_bit_select_b;
    wire [58:0] i_arrayidx17_48_atax29_vt_select_3_merged_bit_select_c;
    wire [31:0] i_idxprom12_2_atax21_vt_select_0_merged_bit_select_in;
    wire [0:0] i_idxprom12_2_atax21_vt_select_0_merged_bit_select_b;
    wire [29:0] i_idxprom12_2_atax21_vt_select_0_merged_bit_select_c;
    wire [31:0] i_idxprom12_4_atax27_vt_select_1_merged_bit_select_in;
    wire [1:0] i_idxprom12_4_atax27_vt_select_1_merged_bit_select_b;
    wire [28:0] i_idxprom12_4_atax27_vt_select_1_merged_bit_select_c;
    wire [31:0] i_idxprom12_5_atax31_vt_select_1_merged_bit_select_in;
    wire [0:0] i_idxprom12_5_atax31_vt_select_1_merged_bit_select_b;
    wire [28:0] i_idxprom12_5_atax31_vt_select_1_merged_bit_select_c;
    wire [31:0] i_idxprom12_6_atax34_vt_select_0_merged_bit_select_in;
    wire [0:0] i_idxprom12_6_atax34_vt_select_0_merged_bit_select_b;
    wire [28:0] i_idxprom12_6_atax34_vt_select_0_merged_bit_select_c;
    reg [0:0] redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [63:0] redist1_sync_together87_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist2_sync_together87_aunroll_x_in_c0_eni3_3_tpl_1_q;
    reg [0:0] redist3_sync_together87_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,337)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist3_sync_together87_aunroll_x_in_i_valid_1(DELAY,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together87_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together87_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1(DELAY,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl87_atax0_shift_x(BITSELECT,318)@2
    assign leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl87_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl87_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl87_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid320_i_cleanups_shl87_atax0_shift_x(BITJOIN,319)@2
    assign leftShiftStage0Idx1_uid320_i_cleanups_shl87_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl87_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid322_i_cleanups_shl87_atax0_shift_x(MUX,321)@2
    assign leftShiftStage0_uid322_i_cleanups_shl87_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid322_i_cleanups_shl87_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_data_out or leftShiftStage0Idx1_uid320_i_cleanups_shl87_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid322_i_cleanups_shl87_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid322_i_cleanups_shl87_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid322_i_cleanups_shl87_atax0_shift_x_q = leftShiftStage0Idx1_uid320_i_cleanups_shl87_atax0_shift_x_q;
            default : leftShiftStage0_uid322_i_cleanups_shl87_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl87_atax5_vt_select_1(BITSELECT,32)@2
    assign i_cleanups_shl87_atax5_vt_select_1_b = leftShiftStage0_uid322_i_cleanups_shl87_atax0_shift_x_q[1:1];

    // i_cleanups_shl87_atax5_vt_join(BITJOIN,31)@2
    assign i_cleanups_shl87_atax5_vt_join_q = {i_cleanups_shl87_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor89_atax4(LOGICAL,35)@2
    assign i_first_cleanup_xor89_atax4_q = i_first_cleanup88_atax3_sel_x_b ^ VCC_q;

    // i_notcmp79_atax44(LOGICAL,133)@2
    assign i_notcmp79_atax44_q = i_exitcond_atax42_cmp_nsign_q ^ VCC_q;

    // i_or90_atax46(LOGICAL,134)@2
    assign i_or90_atax46_q = i_notcmp79_atax44_q | i_first_cleanup_xor89_atax4_q;

    // i_next_cleanups91_atax47(MUX,132)@2
    assign i_next_cleanups91_atax47_s = i_or90_atax46_q;
    always @(i_next_cleanups91_atax47_s or i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_data_out or i_cleanups_shl87_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups91_atax47_s)
            1'b0 : i_next_cleanups91_atax47_q = i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_data_out;
            1'b1 : i_next_cleanups91_atax47_q = i_cleanups_shl87_atax5_vt_join_q;
            default : i_next_cleanups91_atax47_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups86_push30_atax48(BLACKBOX,124)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    atax_i_llvm_fpga_push_i2_cleanups86_push30_0 thei_llvm_fpga_push_i2_cleanups86_push30_atax48 (
        .in_data_in(i_next_cleanups91_atax47_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_feedback_stall_out_30),
        .in_keep_going83(redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i2_cleanups86_push30_atax48_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i2_cleanups86_push30_atax48_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_157(CONSTANT,7)
    assign c_i2_157_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups86_pop30_atax2(BLACKBOX,117)@2
    // out out_feedback_stall_out_30@20000000
    atax_i_llvm_fpga_pop_i2_cleanups86_pop30_0 thei_llvm_fpga_pop_i2_cleanups86_pop30_atax2 (
        .in_data_in(c_i2_157_q),
        .in_dir(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i2_cleanups86_push30_atax48_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i2_cleanups86_push30_atax48_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup88_atax3_sel_x(BITSELECT,279)@2
    assign i_first_cleanup88_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups86_pop30_atax2_out_data_out[0:0];

    // c_i4_170(CONSTANT,17)
    assign c_i4_170_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next_atax49(ADD,36)@2
    assign i_fpga_indvars_iv_next_atax49_a = {1'b0, i_llvm_fpga_pop_i4_fpga_indvars_iv_pop28_atax41_out_data_out};
    assign i_fpga_indvars_iv_next_atax49_b = {1'b0, c_i4_170_q};
    assign i_fpga_indvars_iv_next_atax49_o = $unsigned(i_fpga_indvars_iv_next_atax49_a) + $unsigned(i_fpga_indvars_iv_next_atax49_b);
    assign i_fpga_indvars_iv_next_atax49_q = i_fpga_indvars_iv_next_atax49_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next_atax49_sel_x(BITSELECT,139)@2
    assign bgTrunc_i_fpga_indvars_iv_next_atax49_sel_x_b = i_fpga_indvars_iv_next_atax49_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv_push28_atax50(BLACKBOX,126)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    atax_i_llvm_fpga_push_i4_fpga_indvars_iv_push28_0 thei_llvm_fpga_push_i4_fpga_indvars_iv_push28_atax50 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_atax49_sel_x_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop28_atax41_out_feedback_stall_out_28),
        .in_keep_going83(redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i4_fpga_indvars_iv_push28_atax50_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i4_fpga_indvars_iv_push28_atax50_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_668(CONSTANT,18)
    assign c_i4_668_q = $unsigned(4'b0110);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv_pop28_atax41(BLACKBOX,119)@2
    // out out_feedback_stall_out_28@20000000
    atax_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop28_0 thei_llvm_fpga_pop_i4_fpga_indvars_iv_pop28_atax41 (
        .in_data_in(c_i4_668_q),
        .in_dir(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i4_fpga_indvars_iv_push28_atax50_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i4_fpga_indvars_iv_push28_atax50_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop28_atax41_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop28_atax41_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_atax42_cmp_nsign(LOGICAL,314)@2
    assign i_exitcond_atax42_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv_pop28_atax41_out_data_out[3:3]));

    // i_llvm_fpga_push_i1_notexitcond93_atax45(BLACKBOX,123)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    atax_i_llvm_fpga_push_i1_notexitcond93_0 thei_llvm_fpga_push_i1_notexitcond93_atax45 (
        .in_data_in(i_exitcond_atax42_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going83_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup88(i_first_cleanup88_atax3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond93_atax45_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond93_atax45_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,293)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_lastiniteration85_atax7(BLACKBOX,121)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration85_0 thei_llvm_fpga_push_i1_lastiniteration85_atax7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going83_atax6_out_initeration_stall_out),
        .in_keep_going83(redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_lastiniteration85_atax7_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_lastiniteration85_atax7_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going83_atax6(BLACKBOX,115)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going83_0 thei_llvm_fpga_pipeline_keep_going83_atax6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration85_atax7_out_feedback_out_10),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration85_atax7_out_feedback_valid_out_10),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond93_atax45_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond93_atax45_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going83_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going83_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going83_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going83_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going83_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,21)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going83_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going83_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,137)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going83_atax6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,292)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,299)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,300)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp95107_push32_atax53(BLACKBOX,122)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    atax_i_llvm_fpga_push_i1_notcmp95107_push32_0 thei_llvm_fpga_push_i1_notcmp95107_push32_atax53 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp95107_pop32_atax52_out_data_out),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_notcmp95107_pop32_atax52_out_feedback_stall_out_32),
        .in_keep_going83(redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_notcmp95107_push32_atax53_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_notcmp95107_push32_atax53_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together87_aunroll_x_in_c0_eni3_3_tpl_1(DELAY,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together87_aunroll_x_in_c0_eni3_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together87_aunroll_x_in_c0_eni3_3_tpl_1_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp95107_pop32_atax52(BLACKBOX,116)@2
    // out out_feedback_stall_out_32@20000000
    atax_i_llvm_fpga_pop_i1_notcmp95107_pop32_0 thei_llvm_fpga_pop_i1_notcmp95107_pop32_atax52 (
        .in_data_in(redist2_sync_together87_aunroll_x_in_c0_eni3_3_tpl_1_q),
        .in_dir(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i1_notcmp95107_push32_atax53_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_notcmp95107_push32_atax53_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp95107_pop32_atax52_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_notcmp95107_pop32_atax52_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked92_atax51(LOGICAL,128)@2
    assign i_masked92_atax51_q = i_notcmp79_atax44_q & i_first_cleanup88_atax3_sel_x_b;

    // c_i32_059(CONSTANT,8)
    assign c_i32_059_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_766(CONSTANT,15)
    assign c_i32_766_q = $unsigned(32'b00000000000000000000000000000111);

    // valid_fanout_reg3(REG,295)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,298)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_867(CONSTANT,16)
    assign c_i32_867_q = $unsigned(32'b00000000000000000000000000001000);

    // i_inc_7_atax39(ADD,110)@2
    assign i_inc_7_atax39_a = {1'b0, i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out};
    assign i_inc_7_atax39_b = {1'b0, c_i32_867_q};
    assign i_inc_7_atax39_o = $unsigned(i_inc_7_atax39_a) + $unsigned(i_inc_7_atax39_b);
    assign i_inc_7_atax39_q = i_inc_7_atax39_o[32:0];

    // bgTrunc_i_inc_7_atax39_sel_x(BITSELECT,140)@2
    assign bgTrunc_i_inc_7_atax39_sel_x_b = i_inc_7_atax39_q[31:0];

    // i_llvm_fpga_push_i32_j_039_push29_atax40(BLACKBOX,125)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    atax_i_llvm_fpga_push_i32_j_039_push29_0 thei_llvm_fpga_push_i32_j_039_push29_atax40 (
        .in_data_in(bgTrunc_i_inc_7_atax39_sel_x_b),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_feedback_stall_out_29),
        .in_keep_going83(redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i32_j_039_push29_atax40_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i32_j_039_push29_atax40_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_039_pop29_atax10(BLACKBOX,118)@2
    // out out_feedback_stall_out_29@20000000
    atax_i_llvm_fpga_pop_i32_j_039_pop29_0 thei_llvm_fpga_pop_i32_j_039_pop29_atax10 (
        .in_data_in(c_i32_059_q),
        .in_dir(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i32_j_039_push29_atax40_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i32_j_039_push29_atax40_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_inc_6_atax36(LOGICAL,106)@2
    assign i_inc_6_atax36_q = i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out | c_i32_766_q;

    // i_inc_6_atax36_vt_select_31(BITSELECT,109)@2
    assign i_inc_6_atax36_vt_select_31_b = i_inc_6_atax36_q[31:3];

    // i_inc_6_atax36_vt_join(BITJOIN,108)@2
    assign i_inc_6_atax36_vt_join_q = {i_inc_6_atax36_vt_select_31_b, i_idxprom12_7_atax37_vt_const_2_q};

    // i_idxprom12_7_atax37_sel_x(BITSELECT,286)@2
    assign i_idxprom12_7_atax37_sel_x_b = {32'b00000000000000000000000000000000, i_inc_6_atax36_vt_join_q[31:0]};

    // i_idxprom12_7_atax37_vt_select_31(BITSELECT,76)@2
    assign i_idxprom12_7_atax37_vt_select_31_b = i_idxprom12_7_atax37_sel_x_b[31:3];

    // i_idxprom12_7_atax37_vt_const_2(CONSTANT,73)
    assign i_idxprom12_7_atax37_vt_const_2_q = $unsigned(3'b111);

    // i_idxprom12_7_atax37_vt_join(BITJOIN,75)@2
    assign i_idxprom12_7_atax37_vt_join_q = {c_i32_059_q, i_idxprom12_7_atax37_vt_select_31_b, i_idxprom12_7_atax37_vt_const_2_q};

    // i_arrayidx13_7_atax0_dupName_0_narrow_x(BITSELECT,233)@2
    assign i_arrayidx13_7_atax0_dupName_0_narrow_x_b = i_idxprom12_7_atax37_vt_join_q[61:0];

    // i_arrayidx174_atax15_vt_const_1(CONSTANT,22)
    assign i_arrayidx174_atax15_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx13_7_atax0_dupName_0_shift_join_x(BITJOIN,234)@2
    assign i_arrayidx13_7_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_7_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // valid_fanout_reg4(REG,296)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,297)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i64_idxprom106_push31_atax13(BLACKBOX,127)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    atax_i_llvm_fpga_push_i64_idxprom106_push31_0 thei_llvm_fpga_push_i64_idxprom106_push31_atax13 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom106_pop31_atax12_out_data_out),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i64_idxprom106_pop31_atax12_out_feedback_stall_out_31),
        .in_keep_going83(redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i64_idxprom106_push31_atax13_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i64_idxprom106_push31_atax13_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together87_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together87_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together87_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom106_pop31_atax12(BLACKBOX,120)@2
    // out out_feedback_stall_out_31@20000000
    atax_i_llvm_fpga_pop_i64_idxprom106_pop31_0 thei_llvm_fpga_pop_i64_idxprom106_pop31_atax12 (
        .in_data_in(redist1_sync_together87_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i64_idxprom106_push31_atax13_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i64_idxprom106_push31_atax13_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom106_pop31_atax12_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i64_idxprom106_pop31_atax12_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx13_1_atax0_narrow_x(BITSELECT,158)@2
    assign i_arrayidx13_1_atax0_narrow_x_b = i_llvm_fpga_pop_i64_idxprom106_pop31_atax12_out_data_out[55:0];

    // i_arrayidx13_1_atax0_c_i8_01_x(CONSTANT,157)
    assign i_arrayidx13_1_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx13_1_atax0_shift_join_x(BITJOIN,159)@2
    assign i_arrayidx13_1_atax0_shift_join_x_q = {i_arrayidx13_1_atax0_narrow_x_b, i_arrayidx13_1_atax0_c_i8_01_x_q};

    // valid_fanout_reg2(REG,294)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax6_atax8_aunroll_x(BLACKBOX,288)@2
    atax_i_llvm_fpga_ffwd_dest_s_struct_z4pa0000_unnamed_atax6_atax0 thei_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax6_atax8_aunroll_x (
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_0_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax6_atax8_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .out_dest_data_out_0_0_1_tpl(),
        .out_dest_data_out_0_0_2_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx13_1_atax0_add_x(ADD,155)@2
    assign i_arrayidx13_1_atax0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax6_atax8_aunroll_x_out_dest_data_out_0_0_0_tpl};
    assign i_arrayidx13_1_atax0_add_x_b = {1'b0, i_arrayidx13_1_atax0_shift_join_x_q};
    assign i_arrayidx13_1_atax0_add_x_o = $unsigned(i_arrayidx13_1_atax0_add_x_a) + $unsigned(i_arrayidx13_1_atax0_add_x_b);
    assign i_arrayidx13_1_atax0_add_x_q = i_arrayidx13_1_atax0_add_x_o[64:0];

    // i_arrayidx13_1_atax0_dupName_0_trunc_sel_x(BITSELECT,165)@2
    assign i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b = i_arrayidx13_1_atax0_add_x_q[63:0];

    // i_arrayidx13_7_atax0_dupName_0_add_x(ADD,232)@2
    assign i_arrayidx13_7_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_7_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_7_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_7_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_7_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_7_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_7_atax0_dupName_0_add_x_q = i_arrayidx13_7_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_7_atax0_dupName_2_trunc_sel_x(BITSELECT,238)@2
    assign i_arrayidx13_7_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_7_atax0_dupName_0_add_x_q[63:0];

    // i_idxprom12_3_atax24_vt_const_1(CONSTANT,49)
    assign i_idxprom12_3_atax24_vt_const_1_q = $unsigned(2'b11);

    // c_i32_665(CONSTANT,14)
    assign c_i32_665_q = $unsigned(32'b00000000000000000000000000000110);

    // i_inc_5_atax33(LOGICAL,101)@2
    assign i_inc_5_atax33_q = i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out | c_i32_665_q;

    // i_inc_5_atax33_vt_select_0_merged_bit_select(BITSELECT,326)@2
    assign i_inc_5_atax33_vt_select_0_merged_bit_select_b = i_inc_5_atax33_q[0:0];
    assign i_inc_5_atax33_vt_select_0_merged_bit_select_c = i_inc_5_atax33_q[31:3];

    // i_inc_5_atax33_vt_join(BITJOIN,103)@2
    assign i_inc_5_atax33_vt_join_q = {i_inc_5_atax33_vt_select_0_merged_bit_select_c, i_idxprom12_3_atax24_vt_const_1_q, i_inc_5_atax33_vt_select_0_merged_bit_select_b};

    // i_idxprom12_6_atax34_sel_x(BITSELECT,285)@2
    assign i_idxprom12_6_atax34_sel_x_b = {32'b00000000000000000000000000000000, i_inc_5_atax33_vt_join_q[31:0]};

    // i_idxprom12_6_atax34_vt_select_0_merged_bit_select(BITSELECT,331)@2
    assign i_idxprom12_6_atax34_vt_select_0_merged_bit_select_in = i_idxprom12_6_atax34_sel_x_b[31:0];
    assign i_idxprom12_6_atax34_vt_select_0_merged_bit_select_b = i_idxprom12_6_atax34_vt_select_0_merged_bit_select_in[0:0];
    assign i_idxprom12_6_atax34_vt_select_0_merged_bit_select_c = i_idxprom12_6_atax34_vt_select_0_merged_bit_select_in[31:3];

    // i_idxprom12_6_atax34_vt_join(BITJOIN,69)@2
    assign i_idxprom12_6_atax34_vt_join_q = {c_i32_059_q, i_idxprom12_6_atax34_vt_select_0_merged_bit_select_c, i_idxprom12_3_atax24_vt_const_1_q, i_idxprom12_6_atax34_vt_select_0_merged_bit_select_b};

    // i_arrayidx13_6_atax0_dupName_0_narrow_x(BITSELECT,221)@2
    assign i_arrayidx13_6_atax0_dupName_0_narrow_x_b = i_idxprom12_6_atax34_vt_join_q[61:0];

    // i_arrayidx13_6_atax0_dupName_0_shift_join_x(BITJOIN,222)@2
    assign i_arrayidx13_6_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_6_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_6_atax0_dupName_0_add_x(ADD,220)@2
    assign i_arrayidx13_6_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_6_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_6_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_6_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_6_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_6_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_6_atax0_dupName_0_add_x_q = i_arrayidx13_6_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_6_atax0_dupName_2_trunc_sel_x(BITSELECT,226)@2
    assign i_arrayidx13_6_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_6_atax0_dupName_0_add_x_q[63:0];

    // c_i32_564(CONSTANT,13)
    assign c_i32_564_q = $unsigned(32'b00000000000000000000000000000101);

    // i_inc_4_atax30(LOGICAL,95)@2
    assign i_inc_4_atax30_q = i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out | c_i32_564_q;

    // i_inc_4_atax30_vt_select_1_merged_bit_select(BITSELECT,325)@2
    assign i_inc_4_atax30_vt_select_1_merged_bit_select_b = i_inc_4_atax30_q[1:1];
    assign i_inc_4_atax30_vt_select_1_merged_bit_select_c = i_inc_4_atax30_q[31:3];

    // i_inc_4_atax30_vt_join(BITJOIN,98)@2
    assign i_inc_4_atax30_vt_join_q = {i_inc_4_atax30_vt_select_1_merged_bit_select_c, VCC_q, i_inc_4_atax30_vt_select_1_merged_bit_select_b, VCC_q};

    // i_idxprom12_5_atax31_sel_x(BITSELECT,284)@2
    assign i_idxprom12_5_atax31_sel_x_b = {32'b00000000000000000000000000000000, i_inc_4_atax30_vt_join_q[31:0]};

    // i_idxprom12_5_atax31_vt_select_1_merged_bit_select(BITSELECT,330)@2
    assign i_idxprom12_5_atax31_vt_select_1_merged_bit_select_in = i_idxprom12_5_atax31_sel_x_b[31:0];
    assign i_idxprom12_5_atax31_vt_select_1_merged_bit_select_b = i_idxprom12_5_atax31_vt_select_1_merged_bit_select_in[1:1];
    assign i_idxprom12_5_atax31_vt_select_1_merged_bit_select_c = i_idxprom12_5_atax31_vt_select_1_merged_bit_select_in[31:3];

    // i_idxprom12_5_atax31_vt_join(BITJOIN,63)@2
    assign i_idxprom12_5_atax31_vt_join_q = {c_i32_059_q, i_idxprom12_5_atax31_vt_select_1_merged_bit_select_c, VCC_q, i_idxprom12_5_atax31_vt_select_1_merged_bit_select_b, VCC_q};

    // i_arrayidx13_5_atax0_dupName_0_narrow_x(BITSELECT,209)@2
    assign i_arrayidx13_5_atax0_dupName_0_narrow_x_b = i_idxprom12_5_atax31_vt_join_q[61:0];

    // i_arrayidx13_5_atax0_dupName_0_shift_join_x(BITJOIN,210)@2
    assign i_arrayidx13_5_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_5_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_5_atax0_dupName_0_add_x(ADD,208)@2
    assign i_arrayidx13_5_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_5_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_5_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_5_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_5_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_5_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_5_atax0_dupName_0_add_x_q = i_arrayidx13_5_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_5_atax0_dupName_2_trunc_sel_x(BITSELECT,214)@2
    assign i_arrayidx13_5_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_5_atax0_dupName_0_add_x_q[63:0];

    // c_i32_463(CONSTANT,12)
    assign c_i32_463_q = $unsigned(32'b00000000000000000000000000000100);

    // i_inc_3_atax26(LOGICAL,90)@2
    assign i_inc_3_atax26_q = i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out | c_i32_463_q;

    // i_inc_3_atax26_vt_select_1_merged_bit_select(BITSELECT,324)@2
    assign i_inc_3_atax26_vt_select_1_merged_bit_select_b = i_inc_3_atax26_q[1:0];
    assign i_inc_3_atax26_vt_select_1_merged_bit_select_c = i_inc_3_atax26_q[31:3];

    // i_inc_3_atax26_vt_join(BITJOIN,92)@2
    assign i_inc_3_atax26_vt_join_q = {i_inc_3_atax26_vt_select_1_merged_bit_select_c, VCC_q, i_inc_3_atax26_vt_select_1_merged_bit_select_b};

    // i_idxprom12_4_atax27_sel_x(BITSELECT,283)@2
    assign i_idxprom12_4_atax27_sel_x_b = {32'b00000000000000000000000000000000, i_inc_3_atax26_vt_join_q[31:0]};

    // i_idxprom12_4_atax27_vt_select_1_merged_bit_select(BITSELECT,329)@2
    assign i_idxprom12_4_atax27_vt_select_1_merged_bit_select_in = i_idxprom12_4_atax27_sel_x_b[31:0];
    assign i_idxprom12_4_atax27_vt_select_1_merged_bit_select_b = i_idxprom12_4_atax27_vt_select_1_merged_bit_select_in[1:0];
    assign i_idxprom12_4_atax27_vt_select_1_merged_bit_select_c = i_idxprom12_4_atax27_vt_select_1_merged_bit_select_in[31:3];

    // i_idxprom12_4_atax27_vt_join(BITJOIN,56)@2
    assign i_idxprom12_4_atax27_vt_join_q = {c_i32_059_q, i_idxprom12_4_atax27_vt_select_1_merged_bit_select_c, VCC_q, i_idxprom12_4_atax27_vt_select_1_merged_bit_select_b};

    // i_arrayidx13_4_atax0_dupName_0_narrow_x(BITSELECT,197)@2
    assign i_arrayidx13_4_atax0_dupName_0_narrow_x_b = i_idxprom12_4_atax27_vt_join_q[61:0];

    // i_arrayidx13_4_atax0_dupName_0_shift_join_x(BITJOIN,198)@2
    assign i_arrayidx13_4_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_4_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx174_atax0_add_x(ADD,251)@2
    assign i_arrayidx174_atax0_add_x_a = {1'b0, c_atax_buff_A_pmem_q};
    assign i_arrayidx174_atax0_add_x_b = {1'b0, i_arrayidx13_1_atax0_shift_join_x_q};
    assign i_arrayidx174_atax0_add_x_o = $unsigned(i_arrayidx174_atax0_add_x_a) + $unsigned(i_arrayidx174_atax0_add_x_b);
    assign i_arrayidx174_atax0_add_x_q = i_arrayidx174_atax0_add_x_o[64:0];

    // i_arrayidx174_atax0_dupName_0_trunc_sel_x(BITSELECT,261)@2
    assign i_arrayidx174_atax0_dupName_0_trunc_sel_x_b = i_arrayidx174_atax0_add_x_q[63:0];

    // i_arrayidx17_48_atax0_dupName_0_add_x(ADD,268)@2
    assign i_arrayidx17_48_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx174_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx17_48_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_4_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx17_48_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx17_48_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx17_48_atax0_dupName_0_add_x_b);
    assign i_arrayidx17_48_atax0_dupName_0_add_x_q = i_arrayidx17_48_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx17_48_atax0_dupName_2_trunc_sel_x(BITSELECT,274)@2
    assign i_arrayidx17_48_atax0_dupName_2_trunc_sel_x_b = i_arrayidx17_48_atax0_dupName_0_add_x_q[63:0];

    // i_arrayidx17_48_atax29_vt_select_3_merged_bit_select(BITSELECT,327)@2
    assign i_arrayidx17_48_atax29_vt_select_3_merged_bit_select_b = i_arrayidx17_48_atax0_dupName_2_trunc_sel_x_b[3:2];
    assign i_arrayidx17_48_atax29_vt_select_3_merged_bit_select_c = i_arrayidx17_48_atax0_dupName_2_trunc_sel_x_b[63:5];

    // i_arrayidx17_48_atax29_vt_join(BITJOIN,27)@2
    assign i_arrayidx17_48_atax29_vt_join_q = {i_arrayidx17_48_atax29_vt_select_3_merged_bit_select_c, VCC_q, i_arrayidx17_48_atax29_vt_select_3_merged_bit_select_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_4_atax0_dupName_0_add_x(ADD,196)@2
    assign i_arrayidx13_4_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_4_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_4_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_4_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_4_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_4_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_4_atax0_dupName_0_add_x_q = i_arrayidx13_4_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_4_atax0_dupName_2_trunc_sel_x(BITSELECT,202)@2
    assign i_arrayidx13_4_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_4_atax0_dupName_0_add_x_q[63:0];

    // c_i32_362(CONSTANT,11)
    assign c_i32_362_q = $unsigned(32'b00000000000000000000000000000011);

    // i_inc_2_atax23(LOGICAL,86)@2
    assign i_inc_2_atax23_q = i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out | c_i32_362_q;

    // i_inc_2_atax23_vt_select_31(BITSELECT,89)@2
    assign i_inc_2_atax23_vt_select_31_b = i_inc_2_atax23_q[31:2];

    // i_inc_2_atax23_vt_join(BITJOIN,88)@2
    assign i_inc_2_atax23_vt_join_q = {i_inc_2_atax23_vt_select_31_b, i_idxprom12_3_atax24_vt_const_1_q};

    // i_idxprom12_3_atax24_sel_x(BITSELECT,282)@2
    assign i_idxprom12_3_atax24_sel_x_b = {32'b00000000000000000000000000000000, i_inc_2_atax23_vt_join_q[31:0]};

    // i_idxprom12_3_atax24_vt_select_31(BITSELECT,52)@2
    assign i_idxprom12_3_atax24_vt_select_31_b = i_idxprom12_3_atax24_sel_x_b[31:2];

    // i_idxprom12_3_atax24_vt_join(BITJOIN,51)@2
    assign i_idxprom12_3_atax24_vt_join_q = {c_i32_059_q, i_idxprom12_3_atax24_vt_select_31_b, i_idxprom12_3_atax24_vt_const_1_q};

    // i_arrayidx13_3_atax0_dupName_0_narrow_x(BITSELECT,185)@2
    assign i_arrayidx13_3_atax0_dupName_0_narrow_x_b = i_idxprom12_3_atax24_vt_join_q[61:0];

    // i_arrayidx13_3_atax0_dupName_0_shift_join_x(BITJOIN,186)@2
    assign i_arrayidx13_3_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_3_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_3_atax0_dupName_0_add_x(ADD,184)@2
    assign i_arrayidx13_3_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_3_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_3_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_3_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_3_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_3_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_3_atax0_dupName_0_add_x_q = i_arrayidx13_3_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_3_atax0_dupName_2_trunc_sel_x(BITSELECT,190)@2
    assign i_arrayidx13_3_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_3_atax0_dupName_0_add_x_q[63:0];

    // c_i32_261(CONSTANT,10)
    assign c_i32_261_q = $unsigned(32'b00000000000000000000000000000010);

    // i_inc_1_atax20(LOGICAL,81)@2
    assign i_inc_1_atax20_q = i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out | c_i32_261_q;

    // i_inc_1_atax20_vt_select_0_merged_bit_select(BITSELECT,323)@2
    assign i_inc_1_atax20_vt_select_0_merged_bit_select_b = i_inc_1_atax20_q[0:0];
    assign i_inc_1_atax20_vt_select_0_merged_bit_select_c = i_inc_1_atax20_q[31:2];

    // i_inc_1_atax20_vt_join(BITJOIN,83)@2
    assign i_inc_1_atax20_vt_join_q = {i_inc_1_atax20_vt_select_0_merged_bit_select_c, VCC_q, i_inc_1_atax20_vt_select_0_merged_bit_select_b};

    // i_idxprom12_2_atax21_sel_x(BITSELECT,281)@2
    assign i_idxprom12_2_atax21_sel_x_b = {32'b00000000000000000000000000000000, i_inc_1_atax20_vt_join_q[31:0]};

    // i_idxprom12_2_atax21_vt_select_0_merged_bit_select(BITSELECT,328)@2
    assign i_idxprom12_2_atax21_vt_select_0_merged_bit_select_in = i_idxprom12_2_atax21_sel_x_b[31:0];
    assign i_idxprom12_2_atax21_vt_select_0_merged_bit_select_b = i_idxprom12_2_atax21_vt_select_0_merged_bit_select_in[0:0];
    assign i_idxprom12_2_atax21_vt_select_0_merged_bit_select_c = i_idxprom12_2_atax21_vt_select_0_merged_bit_select_in[31:2];

    // i_idxprom12_2_atax21_vt_join(BITJOIN,45)@2
    assign i_idxprom12_2_atax21_vt_join_q = {c_i32_059_q, i_idxprom12_2_atax21_vt_select_0_merged_bit_select_c, VCC_q, i_idxprom12_2_atax21_vt_select_0_merged_bit_select_b};

    // i_arrayidx13_2_atax0_dupName_0_narrow_x(BITSELECT,173)@2
    assign i_arrayidx13_2_atax0_dupName_0_narrow_x_b = i_idxprom12_2_atax21_vt_join_q[61:0];

    // i_arrayidx13_2_atax0_dupName_0_shift_join_x(BITJOIN,174)@2
    assign i_arrayidx13_2_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_2_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_2_atax0_dupName_0_add_x(ADD,172)@2
    assign i_arrayidx13_2_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_2_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_2_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_2_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_2_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_2_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_2_atax0_dupName_0_add_x_q = i_arrayidx13_2_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_2_atax0_dupName_2_trunc_sel_x(BITSELECT,178)@2
    assign i_arrayidx13_2_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_2_atax0_dupName_0_add_x_q[63:0];

    // c_i32_160(CONSTANT,9)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_atax17(LOGICAL,111)@2
    assign i_inc_atax17_q = i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out | c_i32_160_q;

    // i_inc_atax17_vt_select_31(BITSELECT,114)@2
    assign i_inc_atax17_vt_select_31_b = i_inc_atax17_q[31:1];

    // i_inc_atax17_vt_join(BITJOIN,113)@2
    assign i_inc_atax17_vt_join_q = {i_inc_atax17_vt_select_31_b, VCC_q};

    // i_idxprom12_1_atax18_sel_x(BITSELECT,280)@2
    assign i_idxprom12_1_atax18_sel_x_b = {32'b00000000000000000000000000000000, i_inc_atax17_vt_join_q[31:0]};

    // i_idxprom12_1_atax18_vt_select_31(BITSELECT,41)@2
    assign i_idxprom12_1_atax18_vt_select_31_b = i_idxprom12_1_atax18_sel_x_b[31:1];

    // i_idxprom12_1_atax18_vt_join(BITJOIN,40)@2
    assign i_idxprom12_1_atax18_vt_join_q = {c_i32_059_q, i_idxprom12_1_atax18_vt_select_31_b, VCC_q};

    // i_arrayidx13_1_atax0_dupName_0_narrow_x(BITSELECT,161)@2
    assign i_arrayidx13_1_atax0_dupName_0_narrow_x_b = i_idxprom12_1_atax18_vt_join_q[61:0];

    // i_arrayidx13_1_atax0_dupName_0_shift_join_x(BITJOIN,162)@2
    assign i_arrayidx13_1_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_1_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_1_atax0_dupName_0_add_x(ADD,160)@2
    assign i_arrayidx13_1_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_1_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_1_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_1_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_1_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_1_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_1_atax0_dupName_0_add_x_q = i_arrayidx13_1_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_1_atax0_dupName_2_trunc_sel_x(BITSELECT,166)@2
    assign i_arrayidx13_1_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_1_atax0_dupName_0_add_x_q[63:0];

    // i_idxprom12_atax11_sel_x(BITSELECT,287)@2
    assign i_idxprom12_atax11_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_039_pop29_atax10_out_data_out[31:0]};

    // i_idxprom12_atax11_vt_select_31(BITSELECT,80)@2
    assign i_idxprom12_atax11_vt_select_31_b = i_idxprom12_atax11_sel_x_b[31:0];

    // i_idxprom12_atax11_vt_join(BITJOIN,79)@2
    assign i_idxprom12_atax11_vt_join_q = {c_i32_059_q, i_idxprom12_atax11_vt_select_31_b};

    // i_arrayidx13_atax0_dupName_0_narrow_x(BITSELECT,245)@2
    assign i_arrayidx13_atax0_dupName_0_narrow_x_b = i_idxprom12_atax11_vt_join_q[61:0];

    // i_arrayidx13_atax0_dupName_0_shift_join_x(BITJOIN,246)@2
    assign i_arrayidx13_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx174_atax0_dupName_0_add_x(ADD,256)@2
    assign i_arrayidx174_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx174_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx174_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx174_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx174_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx174_atax0_dupName_0_add_x_b);
    assign i_arrayidx174_atax0_dupName_0_add_x_q = i_arrayidx174_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx174_atax0_dupName_2_trunc_sel_x(BITSELECT,262)@2
    assign i_arrayidx174_atax0_dupName_2_trunc_sel_x_b = i_arrayidx174_atax0_dupName_0_add_x_q[63:0];

    // i_arrayidx174_atax15_vt_select_63(BITSELECT,24)@2
    assign i_arrayidx174_atax15_vt_select_63_b = i_arrayidx174_atax0_dupName_2_trunc_sel_x_b[63:2];

    // i_arrayidx174_atax15_vt_join(BITJOIN,23)@2
    assign i_arrayidx174_atax15_vt_join_q = {i_arrayidx174_atax15_vt_select_63_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_memcoalesce_bitcast_atax_fpgaunique_28_atax16_vt_select_63(BITSELECT,131)@2
    assign i_memcoalesce_bitcast_atax_fpgaunique_28_atax16_vt_select_63_b = i_arrayidx174_atax15_vt_join_q[63:2];

    // i_memcoalesce_bitcast_atax_fpgaunique_28_atax16_vt_join(BITJOIN,130)@2
    assign i_memcoalesce_bitcast_atax_fpgaunique_28_atax16_vt_join_q = {i_memcoalesce_bitcast_atax_fpgaunique_28_atax16_vt_select_63_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_atax0_dupName_0_add_x(ADD,244)@2
    assign i_arrayidx13_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_atax0_dupName_0_add_x_q = i_arrayidx13_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_atax0_dupName_2_trunc_sel_x(BITSELECT,250)@2
    assign i_arrayidx13_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_atax0_dupName_0_add_x_q[63:0];

    // sync_out_aunroll_x(GPOUT,290)@2
    assign out_c0_exi14_0_tpl = GND_q;
    assign out_c0_exi14_1_tpl = i_first_cleanup_xor89_atax4_q;
    assign out_c0_exi14_2_tpl = redist4_i_llvm_fpga_pipeline_keep_going83_atax6_out_data_out_1_q;
    assign out_c0_exi14_3_tpl = i_arrayidx13_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi14_4_tpl = i_memcoalesce_bitcast_atax_fpgaunique_28_atax16_vt_join_q;
    assign out_c0_exi14_5_tpl = i_arrayidx13_1_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi14_6_tpl = i_arrayidx13_2_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi14_7_tpl = i_arrayidx13_3_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi14_8_tpl = i_arrayidx13_4_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi14_9_tpl = i_arrayidx17_48_atax29_vt_join_q;
    assign out_c0_exi14_10_tpl = i_arrayidx13_5_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi14_11_tpl = i_arrayidx13_6_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi14_12_tpl = i_arrayidx13_7_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi14_13_tpl = i_masked92_atax51_q;
    assign out_c0_exi14_14_tpl = i_llvm_fpga_pop_i1_notcmp95107_pop32_atax52_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
