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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body9_s_c0_enter16614_atax0
// SystemVerilog created on Wed Dec 13 00:29:09 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body9_s_c0_enter16614_atax0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going102_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going102_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    output wire [0:0] out_c0_exi13_0_tpl,
    output wire [0:0] out_c0_exi13_1_tpl,
    output wire [0:0] out_c0_exi13_2_tpl,
    output wire [63:0] out_c0_exi13_3_tpl,
    output wire [63:0] out_c0_exi13_4_tpl,
    output wire [63:0] out_c0_exi13_5_tpl,
    output wire [63:0] out_c0_exi13_6_tpl,
    output wire [63:0] out_c0_exi13_7_tpl,
    output wire [63:0] out_c0_exi13_8_tpl,
    output wire [63:0] out_c0_exi13_9_tpl,
    output wire [63:0] out_c0_exi13_10_tpl,
    output wire [63:0] out_c0_exi13_11_tpl,
    output wire [0:0] out_c0_exi13_12_tpl,
    output wire [0:0] out_c0_exi13_13_tpl,
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
    wire [1:0] c_i2_156_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_159_q;
    wire [31:0] c_i32_260_q;
    wire [31:0] c_i32_361_q;
    wire [31:0] c_i32_462_q;
    wire [31:0] c_i32_563_q;
    wire [31:0] c_i32_664_q;
    wire [31:0] c_i32_765_q;
    wire [31:0] c_i32_866_q;
    wire [3:0] c_i4_169_q;
    wire [3:0] c_i4_667_q;
    wire [1:0] i_arrayidx174_atax15_vt_const_1_q;
    wire [63:0] i_arrayidx174_atax15_vt_join_q;
    wire [61:0] i_arrayidx174_atax15_vt_select_63_b;
    wire [1:0] i_cleanups_shl106_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl106_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor108_atax4_q;
    wire [4:0] i_fpga_indvars_iv_next_atax48_a;
    wire [4:0] i_fpga_indvars_iv_next_atax48_b;
    logic [4:0] i_fpga_indvars_iv_next_atax48_o;
    wire [4:0] i_fpga_indvars_iv_next_atax48_q;
    wire [63:0] i_idxprom12_1_atax18_vt_join_q;
    wire [30:0] i_idxprom12_1_atax18_vt_select_31_b;
    wire [63:0] i_idxprom12_2_atax21_vt_join_q;
    wire [1:0] i_idxprom12_3_atax24_vt_const_1_q;
    wire [63:0] i_idxprom12_3_atax24_vt_join_q;
    wire [29:0] i_idxprom12_3_atax24_vt_select_31_b;
    wire [63:0] i_idxprom12_4_atax27_vt_join_q;
    wire [63:0] i_idxprom12_5_atax30_vt_join_q;
    wire [63:0] i_idxprom12_6_atax33_vt_join_q;
    wire [2:0] i_idxprom12_7_atax36_vt_const_2_q;
    wire [63:0] i_idxprom12_7_atax36_vt_join_q;
    wire [28:0] i_idxprom12_7_atax36_vt_select_31_b;
    wire [63:0] i_idxprom12_atax11_vt_join_q;
    wire [31:0] i_idxprom12_atax11_vt_select_31_b;
    wire [31:0] i_inc_1_atax20_q;
    wire [31:0] i_inc_1_atax20_vt_join_q;
    wire [31:0] i_inc_2_atax23_q;
    wire [31:0] i_inc_2_atax23_vt_join_q;
    wire [29:0] i_inc_2_atax23_vt_select_31_b;
    wire [31:0] i_inc_3_atax26_q;
    wire [31:0] i_inc_3_atax26_vt_join_q;
    wire [31:0] i_inc_4_atax29_q;
    wire [31:0] i_inc_4_atax29_vt_join_q;
    wire [31:0] i_inc_5_atax32_q;
    wire [31:0] i_inc_5_atax32_vt_join_q;
    wire [31:0] i_inc_6_atax35_q;
    wire [31:0] i_inc_6_atax35_vt_join_q;
    wire [28:0] i_inc_6_atax35_vt_select_31_b;
    wire [32:0] i_inc_7_atax38_a;
    wire [32:0] i_inc_7_atax38_b;
    logic [32:0] i_inc_7_atax38_o;
    wire [32:0] i_inc_7_atax38_q;
    wire [31:0] i_inc_atax17_q;
    wire [31:0] i_inc_atax17_vt_join_q;
    wire [30:0] i_inc_atax17_vt_select_31_b;
    wire [0:0] i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going102_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going102_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going102_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going102_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going102_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp114126_pop36_atax51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp114126_pop36_atax51_out_feedback_stall_out_36;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_feedback_stall_out_34;
    wire [31:0] i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_feedback_stall_out_33;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop32_atax40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop32_atax40_out_feedback_stall_out_32;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom125_pop35_atax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom125_pop35_atax12_out_feedback_stall_out_35;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration104_atax7_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration104_atax7_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notcmp114126_push36_atax52_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_notcmp114126_push36_atax52_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond112_atax44_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond112_atax44_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i2_cleanups105_push34_atax47_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i2_cleanups105_push34_atax47_out_feedback_valid_out_34;
    wire [31:0] i_llvm_fpga_push_i32_j_039_push33_atax39_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_j_039_push33_atax39_out_feedback_valid_out_33;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push32_atax49_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push32_atax49_out_feedback_valid_out_32;
    wire [63:0] i_llvm_fpga_push_i64_idxprom125_push35_atax13_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i64_idxprom125_push35_atax13_out_feedback_valid_out_35;
    wire [0:0] i_masked111_atax50_q;
    wire [63:0] i_memcoalesce_bitcast_atax_fpgaunique_40_atax16_vt_join_q;
    wire [61:0] i_memcoalesce_bitcast_atax_fpgaunique_40_atax16_vt_select_63_b;
    wire [0:0] i_next_cleanups110_atax46_s;
    reg [1:0] i_next_cleanups110_atax46_q;
    wire [0:0] i_notcmp98_atax43_q;
    wire [0:0] i_or109_atax45_q;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next_atax48_sel_x_b;
    wire [31:0] bgTrunc_i_inc_7_atax38_sel_x_b;
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
    wire [0:0] i_first_cleanup107_atax3_sel_x_b;
    wire [63:0] i_idxprom12_1_atax18_sel_x_b;
    wire [63:0] i_idxprom12_2_atax21_sel_x_b;
    wire [63:0] i_idxprom12_3_atax24_sel_x_b;
    wire [63:0] i_idxprom12_4_atax27_sel_x_b;
    wire [63:0] i_idxprom12_5_atax30_sel_x_b;
    wire [63:0] i_idxprom12_6_atax33_sel_x_b;
    wire [63:0] i_idxprom12_7_atax36_sel_x_b;
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
    wire [0:0] i_exitcond_atax41_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl106_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl106_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid303_i_cleanups_shl106_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid305_i_cleanups_shl106_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid305_i_cleanups_shl106_atax0_shift_x_q;
    wire [0:0] i_inc_1_atax20_vt_select_0_merged_bit_select_b;
    wire [29:0] i_inc_1_atax20_vt_select_0_merged_bit_select_c;
    wire [1:0] i_inc_3_atax26_vt_select_1_merged_bit_select_b;
    wire [28:0] i_inc_3_atax26_vt_select_1_merged_bit_select_c;
    wire [0:0] i_inc_4_atax29_vt_select_1_merged_bit_select_b;
    wire [28:0] i_inc_4_atax29_vt_select_1_merged_bit_select_c;
    wire [0:0] i_inc_5_atax32_vt_select_0_merged_bit_select_b;
    wire [28:0] i_inc_5_atax32_vt_select_0_merged_bit_select_c;
    wire [31:0] i_idxprom12_2_atax21_vt_select_0_merged_bit_select_in;
    wire [0:0] i_idxprom12_2_atax21_vt_select_0_merged_bit_select_b;
    wire [29:0] i_idxprom12_2_atax21_vt_select_0_merged_bit_select_c;
    wire [31:0] i_idxprom12_4_atax27_vt_select_1_merged_bit_select_in;
    wire [1:0] i_idxprom12_4_atax27_vt_select_1_merged_bit_select_b;
    wire [28:0] i_idxprom12_4_atax27_vt_select_1_merged_bit_select_c;
    wire [31:0] i_idxprom12_5_atax30_vt_select_1_merged_bit_select_in;
    wire [0:0] i_idxprom12_5_atax30_vt_select_1_merged_bit_select_b;
    wire [28:0] i_idxprom12_5_atax30_vt_select_1_merged_bit_select_c;
    wire [31:0] i_idxprom12_6_atax33_vt_select_0_merged_bit_select_in;
    wire [0:0] i_idxprom12_6_atax33_vt_select_0_merged_bit_select_b;
    wire [28:0] i_idxprom12_6_atax33_vt_select_0_merged_bit_select_c;
    reg [0:0] redist0_sync_together86_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [63:0] redist1_sync_together86_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist2_sync_together86_aunroll_x_in_c0_eni3_3_tpl_1_q;
    reg [0:0] redist3_sync_together86_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,319)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist3_sync_together86_aunroll_x_in_i_valid_1(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together86_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together86_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1(DELAY,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl106_atax0_shift_x(BITSELECT,301)@2
    assign leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl106_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl106_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl106_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid303_i_cleanups_shl106_atax0_shift_x(BITJOIN,302)@2
    assign leftShiftStage0Idx1_uid303_i_cleanups_shl106_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl106_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid305_i_cleanups_shl106_atax0_shift_x(MUX,304)@2
    assign leftShiftStage0_uid305_i_cleanups_shl106_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid305_i_cleanups_shl106_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_data_out or leftShiftStage0Idx1_uid303_i_cleanups_shl106_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid305_i_cleanups_shl106_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid305_i_cleanups_shl106_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid305_i_cleanups_shl106_atax0_shift_x_q = leftShiftStage0Idx1_uid303_i_cleanups_shl106_atax0_shift_x_q;
            default : leftShiftStage0_uid305_i_cleanups_shl106_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl106_atax5_vt_select_1(BITSELECT,27)@2
    assign i_cleanups_shl106_atax5_vt_select_1_b = leftShiftStage0_uid305_i_cleanups_shl106_atax0_shift_x_q[1:1];

    // i_cleanups_shl106_atax5_vt_join(BITJOIN,26)@2
    assign i_cleanups_shl106_atax5_vt_join_q = {i_cleanups_shl106_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor108_atax4(LOGICAL,30)@2
    assign i_first_cleanup_xor108_atax4_q = i_first_cleanup107_atax3_sel_x_b ^ VCC_q;

    // i_notcmp98_atax43(LOGICAL,128)@2
    assign i_notcmp98_atax43_q = i_exitcond_atax41_cmp_nsign_q ^ VCC_q;

    // i_or109_atax45(LOGICAL,129)@2
    assign i_or109_atax45_q = i_notcmp98_atax43_q | i_first_cleanup_xor108_atax4_q;

    // i_next_cleanups110_atax46(MUX,127)@2
    assign i_next_cleanups110_atax46_s = i_or109_atax45_q;
    always @(i_next_cleanups110_atax46_s or i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_data_out or i_cleanups_shl106_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups110_atax46_s)
            1'b0 : i_next_cleanups110_atax46_q = i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_data_out;
            1'b1 : i_next_cleanups110_atax46_q = i_cleanups_shl106_atax5_vt_join_q;
            default : i_next_cleanups110_atax46_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups105_push34_atax47(BLACKBOX,119)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    atax_i_llvm_fpga_push_i2_cleanups105_push34_0 thei_llvm_fpga_push_i2_cleanups105_push34_atax47 (
        .in_data_in(i_next_cleanups110_atax46_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_feedback_stall_out_34),
        .in_keep_going102(redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together86_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i2_cleanups105_push34_atax47_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i2_cleanups105_push34_atax47_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together86_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together86_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together86_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_156(CONSTANT,7)
    assign c_i2_156_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups105_pop34_atax2(BLACKBOX,112)@2
    // out out_feedback_stall_out_34@20000000
    atax_i_llvm_fpga_pop_i2_cleanups105_pop34_0 thei_llvm_fpga_pop_i2_cleanups105_pop34_atax2 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist0_sync_together86_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i2_cleanups105_push34_atax47_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i2_cleanups105_push34_atax47_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together86_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup107_atax3_sel_x(BITSELECT,262)@2
    assign i_first_cleanup107_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups105_pop34_atax2_out_data_out[0:0];

    // c_i4_169(CONSTANT,17)
    assign c_i4_169_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next_atax48(ADD,31)@2
    assign i_fpga_indvars_iv_next_atax48_a = {1'b0, i_llvm_fpga_pop_i4_fpga_indvars_iv_pop32_atax40_out_data_out};
    assign i_fpga_indvars_iv_next_atax48_b = {1'b0, c_i4_169_q};
    assign i_fpga_indvars_iv_next_atax48_o = $unsigned(i_fpga_indvars_iv_next_atax48_a) + $unsigned(i_fpga_indvars_iv_next_atax48_b);
    assign i_fpga_indvars_iv_next_atax48_q = i_fpga_indvars_iv_next_atax48_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next_atax48_sel_x(BITSELECT,134)@2
    assign bgTrunc_i_fpga_indvars_iv_next_atax48_sel_x_b = i_fpga_indvars_iv_next_atax48_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv_push32_atax49(BLACKBOX,121)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    atax_i_llvm_fpga_push_i4_fpga_indvars_iv_push32_0 thei_llvm_fpga_push_i4_fpga_indvars_iv_push32_atax49 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_atax48_sel_x_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop32_atax40_out_feedback_stall_out_32),
        .in_keep_going102(redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together86_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i4_fpga_indvars_iv_push32_atax49_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i4_fpga_indvars_iv_push32_atax49_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_667(CONSTANT,18)
    assign c_i4_667_q = $unsigned(4'b0110);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv_pop32_atax40(BLACKBOX,114)@2
    // out out_feedback_stall_out_32@20000000
    atax_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop32_0 thei_llvm_fpga_pop_i4_fpga_indvars_iv_pop32_atax40 (
        .in_data_in(c_i4_667_q),
        .in_dir(redist0_sync_together86_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i4_fpga_indvars_iv_push32_atax49_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i4_fpga_indvars_iv_push32_atax49_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together86_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop32_atax40_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop32_atax40_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_atax41_cmp_nsign(LOGICAL,297)@2
    assign i_exitcond_atax41_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv_pop32_atax40_out_data_out[3:3]));

    // i_llvm_fpga_push_i1_notexitcond112_atax44(BLACKBOX,118)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    atax_i_llvm_fpga_push_i1_notexitcond112_0 thei_llvm_fpga_push_i1_notexitcond112_atax44 (
        .in_data_in(i_exitcond_atax41_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going102_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup107(i_first_cleanup107_atax3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together86_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond112_atax44_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond112_atax44_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,276)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration104_atax7(BLACKBOX,116)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration104_0 thei_llvm_fpga_push_i1_lastiniteration104_atax7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going102_atax6_out_initeration_stall_out),
        .in_keep_going102(redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_lastiniteration104_atax7_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_lastiniteration104_atax7_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going102_atax6(BLACKBOX,110)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going102_0 thei_llvm_fpga_pipeline_keep_going102_atax6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration104_atax7_out_feedback_out_10),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration104_atax7_out_feedback_valid_out_10),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond112_atax44_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond112_atax44_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going102_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going102_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going102_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going102_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going102_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,21)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going102_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going102_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going102_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going102_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,132)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going102_atax6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,275)@1 + 1
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

    // valid_fanout_reg7(REG,282)@1 + 1
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

    // valid_fanout_reg8(REG,283)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp114126_push36_atax52(BLACKBOX,117)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    atax_i_llvm_fpga_push_i1_notcmp114126_push36_0 thei_llvm_fpga_push_i1_notcmp114126_push36_atax52 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp114126_pop36_atax51_out_data_out),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_notcmp114126_pop36_atax51_out_feedback_stall_out_36),
        .in_keep_going102(redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_notcmp114126_push36_atax52_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_notcmp114126_push36_atax52_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together86_aunroll_x_in_c0_eni3_3_tpl_1(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together86_aunroll_x_in_c0_eni3_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together86_aunroll_x_in_c0_eni3_3_tpl_1_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp114126_pop36_atax51(BLACKBOX,111)@2
    // out out_feedback_stall_out_36@20000000
    atax_i_llvm_fpga_pop_i1_notcmp114126_pop36_0 thei_llvm_fpga_pop_i1_notcmp114126_pop36_atax51 (
        .in_data_in(redist2_sync_together86_aunroll_x_in_c0_eni3_3_tpl_1_q),
        .in_dir(redist0_sync_together86_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_notcmp114126_push36_atax52_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_notcmp114126_push36_atax52_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp114126_pop36_atax51_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_notcmp114126_pop36_atax51_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked111_atax50(LOGICAL,123)@2
    assign i_masked111_atax50_q = i_notcmp98_atax43_q & i_first_cleanup107_atax3_sel_x_b;

    // c_i32_058(CONSTANT,8)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_765(CONSTANT,15)
    assign c_i32_765_q = $unsigned(32'b00000000000000000000000000000111);

    // valid_fanout_reg3(REG,278)@1 + 1
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

    // valid_fanout_reg6(REG,281)@1 + 1
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

    // c_i32_866(CONSTANT,16)
    assign c_i32_866_q = $unsigned(32'b00000000000000000000000000001000);

    // i_inc_7_atax38(ADD,105)@2
    assign i_inc_7_atax38_a = {1'b0, i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out};
    assign i_inc_7_atax38_b = {1'b0, c_i32_866_q};
    assign i_inc_7_atax38_o = $unsigned(i_inc_7_atax38_a) + $unsigned(i_inc_7_atax38_b);
    assign i_inc_7_atax38_q = i_inc_7_atax38_o[32:0];

    // bgTrunc_i_inc_7_atax38_sel_x(BITSELECT,135)@2
    assign bgTrunc_i_inc_7_atax38_sel_x_b = i_inc_7_atax38_q[31:0];

    // i_llvm_fpga_push_i32_j_039_push33_atax39(BLACKBOX,120)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    atax_i_llvm_fpga_push_i32_j_039_push33_0 thei_llvm_fpga_push_i32_j_039_push33_atax39 (
        .in_data_in(bgTrunc_i_inc_7_atax38_sel_x_b),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_feedback_stall_out_33),
        .in_keep_going102(redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_j_039_push33_atax39_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_j_039_push33_atax39_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_039_pop33_atax10(BLACKBOX,113)@2
    // out out_feedback_stall_out_33@20000000
    atax_i_llvm_fpga_pop_i32_j_039_pop33_0 thei_llvm_fpga_pop_i32_j_039_pop33_atax10 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist0_sync_together86_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_j_039_push33_atax39_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_j_039_push33_atax39_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_inc_6_atax35(LOGICAL,101)@2
    assign i_inc_6_atax35_q = i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out | c_i32_765_q;

    // i_inc_6_atax35_vt_select_31(BITSELECT,104)@2
    assign i_inc_6_atax35_vt_select_31_b = i_inc_6_atax35_q[31:3];

    // i_inc_6_atax35_vt_join(BITJOIN,103)@2
    assign i_inc_6_atax35_vt_join_q = {i_inc_6_atax35_vt_select_31_b, i_idxprom12_7_atax36_vt_const_2_q};

    // i_idxprom12_7_atax36_sel_x(BITSELECT,269)@2
    assign i_idxprom12_7_atax36_sel_x_b = {32'b00000000000000000000000000000000, i_inc_6_atax35_vt_join_q[31:0]};

    // i_idxprom12_7_atax36_vt_select_31(BITSELECT,71)@2
    assign i_idxprom12_7_atax36_vt_select_31_b = i_idxprom12_7_atax36_sel_x_b[31:3];

    // i_idxprom12_7_atax36_vt_const_2(CONSTANT,68)
    assign i_idxprom12_7_atax36_vt_const_2_q = $unsigned(3'b111);

    // i_idxprom12_7_atax36_vt_join(BITJOIN,70)@2
    assign i_idxprom12_7_atax36_vt_join_q = {c_i32_058_q, i_idxprom12_7_atax36_vt_select_31_b, i_idxprom12_7_atax36_vt_const_2_q};

    // i_arrayidx13_7_atax0_dupName_0_narrow_x(BITSELECT,228)@2
    assign i_arrayidx13_7_atax0_dupName_0_narrow_x_b = i_idxprom12_7_atax36_vt_join_q[61:0];

    // i_arrayidx174_atax15_vt_const_1(CONSTANT,22)
    assign i_arrayidx174_atax15_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx13_7_atax0_dupName_0_shift_join_x(BITJOIN,229)@2
    assign i_arrayidx13_7_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_7_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // valid_fanout_reg4(REG,279)@1 + 1
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

    // valid_fanout_reg5(REG,280)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom125_push35_atax13(BLACKBOX,122)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    atax_i_llvm_fpga_push_i64_idxprom125_push35_0 thei_llvm_fpga_push_i64_idxprom125_push35_atax13 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom125_pop35_atax12_out_data_out),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i64_idxprom125_pop35_atax12_out_feedback_stall_out_35),
        .in_keep_going102(redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i64_idxprom125_push35_atax13_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i64_idxprom125_push35_atax13_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together86_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together86_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together86_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom125_pop35_atax12(BLACKBOX,115)@2
    // out out_feedback_stall_out_35@20000000
    atax_i_llvm_fpga_pop_i64_idxprom125_pop35_0 thei_llvm_fpga_pop_i64_idxprom125_pop35_atax12 (
        .in_data_in(redist1_sync_together86_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist0_sync_together86_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i64_idxprom125_push35_atax13_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i64_idxprom125_push35_atax13_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom125_pop35_atax12_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i64_idxprom125_pop35_atax12_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx13_1_atax0_narrow_x(BITSELECT,153)@2
    assign i_arrayidx13_1_atax0_narrow_x_b = i_llvm_fpga_pop_i64_idxprom125_pop35_atax12_out_data_out[55:0];

    // i_arrayidx13_1_atax0_c_i8_01_x(CONSTANT,152)
    assign i_arrayidx13_1_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx13_1_atax0_shift_join_x(BITJOIN,154)@2
    assign i_arrayidx13_1_atax0_shift_join_x_q = {i_arrayidx13_1_atax0_narrow_x_b, i_arrayidx13_1_atax0_c_i8_01_x_q};

    // valid_fanout_reg2(REG,277)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax6_atax8_aunroll_x(BLACKBOX,271)@2
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

    // i_arrayidx13_1_atax0_add_x(ADD,150)@2
    assign i_arrayidx13_1_atax0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax6_atax8_aunroll_x_out_dest_data_out_0_0_0_tpl};
    assign i_arrayidx13_1_atax0_add_x_b = {1'b0, i_arrayidx13_1_atax0_shift_join_x_q};
    assign i_arrayidx13_1_atax0_add_x_o = $unsigned(i_arrayidx13_1_atax0_add_x_a) + $unsigned(i_arrayidx13_1_atax0_add_x_b);
    assign i_arrayidx13_1_atax0_add_x_q = i_arrayidx13_1_atax0_add_x_o[64:0];

    // i_arrayidx13_1_atax0_dupName_0_trunc_sel_x(BITSELECT,160)@2
    assign i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b = i_arrayidx13_1_atax0_add_x_q[63:0];

    // i_arrayidx13_7_atax0_dupName_0_add_x(ADD,227)@2
    assign i_arrayidx13_7_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_7_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_7_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_7_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_7_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_7_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_7_atax0_dupName_0_add_x_q = i_arrayidx13_7_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_7_atax0_dupName_2_trunc_sel_x(BITSELECT,233)@2
    assign i_arrayidx13_7_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_7_atax0_dupName_0_add_x_q[63:0];

    // i_idxprom12_3_atax24_vt_const_1(CONSTANT,44)
    assign i_idxprom12_3_atax24_vt_const_1_q = $unsigned(2'b11);

    // c_i32_664(CONSTANT,14)
    assign c_i32_664_q = $unsigned(32'b00000000000000000000000000000110);

    // i_inc_5_atax32(LOGICAL,96)@2
    assign i_inc_5_atax32_q = i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out | c_i32_664_q;

    // i_inc_5_atax32_vt_select_0_merged_bit_select(BITSELECT,309)@2
    assign i_inc_5_atax32_vt_select_0_merged_bit_select_b = i_inc_5_atax32_q[0:0];
    assign i_inc_5_atax32_vt_select_0_merged_bit_select_c = i_inc_5_atax32_q[31:3];

    // i_inc_5_atax32_vt_join(BITJOIN,98)@2
    assign i_inc_5_atax32_vt_join_q = {i_inc_5_atax32_vt_select_0_merged_bit_select_c, i_idxprom12_3_atax24_vt_const_1_q, i_inc_5_atax32_vt_select_0_merged_bit_select_b};

    // i_idxprom12_6_atax33_sel_x(BITSELECT,268)@2
    assign i_idxprom12_6_atax33_sel_x_b = {32'b00000000000000000000000000000000, i_inc_5_atax32_vt_join_q[31:0]};

    // i_idxprom12_6_atax33_vt_select_0_merged_bit_select(BITSELECT,313)@2
    assign i_idxprom12_6_atax33_vt_select_0_merged_bit_select_in = i_idxprom12_6_atax33_sel_x_b[31:0];
    assign i_idxprom12_6_atax33_vt_select_0_merged_bit_select_b = i_idxprom12_6_atax33_vt_select_0_merged_bit_select_in[0:0];
    assign i_idxprom12_6_atax33_vt_select_0_merged_bit_select_c = i_idxprom12_6_atax33_vt_select_0_merged_bit_select_in[31:3];

    // i_idxprom12_6_atax33_vt_join(BITJOIN,64)@2
    assign i_idxprom12_6_atax33_vt_join_q = {c_i32_058_q, i_idxprom12_6_atax33_vt_select_0_merged_bit_select_c, i_idxprom12_3_atax24_vt_const_1_q, i_idxprom12_6_atax33_vt_select_0_merged_bit_select_b};

    // i_arrayidx13_6_atax0_dupName_0_narrow_x(BITSELECT,216)@2
    assign i_arrayidx13_6_atax0_dupName_0_narrow_x_b = i_idxprom12_6_atax33_vt_join_q[61:0];

    // i_arrayidx13_6_atax0_dupName_0_shift_join_x(BITJOIN,217)@2
    assign i_arrayidx13_6_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_6_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_6_atax0_dupName_0_add_x(ADD,215)@2
    assign i_arrayidx13_6_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_6_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_6_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_6_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_6_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_6_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_6_atax0_dupName_0_add_x_q = i_arrayidx13_6_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_6_atax0_dupName_2_trunc_sel_x(BITSELECT,221)@2
    assign i_arrayidx13_6_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_6_atax0_dupName_0_add_x_q[63:0];

    // c_i32_563(CONSTANT,13)
    assign c_i32_563_q = $unsigned(32'b00000000000000000000000000000101);

    // i_inc_4_atax29(LOGICAL,90)@2
    assign i_inc_4_atax29_q = i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out | c_i32_563_q;

    // i_inc_4_atax29_vt_select_1_merged_bit_select(BITSELECT,308)@2
    assign i_inc_4_atax29_vt_select_1_merged_bit_select_b = i_inc_4_atax29_q[1:1];
    assign i_inc_4_atax29_vt_select_1_merged_bit_select_c = i_inc_4_atax29_q[31:3];

    // i_inc_4_atax29_vt_join(BITJOIN,93)@2
    assign i_inc_4_atax29_vt_join_q = {i_inc_4_atax29_vt_select_1_merged_bit_select_c, VCC_q, i_inc_4_atax29_vt_select_1_merged_bit_select_b, VCC_q};

    // i_idxprom12_5_atax30_sel_x(BITSELECT,267)@2
    assign i_idxprom12_5_atax30_sel_x_b = {32'b00000000000000000000000000000000, i_inc_4_atax29_vt_join_q[31:0]};

    // i_idxprom12_5_atax30_vt_select_1_merged_bit_select(BITSELECT,312)@2
    assign i_idxprom12_5_atax30_vt_select_1_merged_bit_select_in = i_idxprom12_5_atax30_sel_x_b[31:0];
    assign i_idxprom12_5_atax30_vt_select_1_merged_bit_select_b = i_idxprom12_5_atax30_vt_select_1_merged_bit_select_in[1:1];
    assign i_idxprom12_5_atax30_vt_select_1_merged_bit_select_c = i_idxprom12_5_atax30_vt_select_1_merged_bit_select_in[31:3];

    // i_idxprom12_5_atax30_vt_join(BITJOIN,58)@2
    assign i_idxprom12_5_atax30_vt_join_q = {c_i32_058_q, i_idxprom12_5_atax30_vt_select_1_merged_bit_select_c, VCC_q, i_idxprom12_5_atax30_vt_select_1_merged_bit_select_b, VCC_q};

    // i_arrayidx13_5_atax0_dupName_0_narrow_x(BITSELECT,204)@2
    assign i_arrayidx13_5_atax0_dupName_0_narrow_x_b = i_idxprom12_5_atax30_vt_join_q[61:0];

    // i_arrayidx13_5_atax0_dupName_0_shift_join_x(BITJOIN,205)@2
    assign i_arrayidx13_5_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_5_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_5_atax0_dupName_0_add_x(ADD,203)@2
    assign i_arrayidx13_5_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_5_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_5_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_5_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_5_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_5_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_5_atax0_dupName_0_add_x_q = i_arrayidx13_5_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_5_atax0_dupName_2_trunc_sel_x(BITSELECT,209)@2
    assign i_arrayidx13_5_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_5_atax0_dupName_0_add_x_q[63:0];

    // c_i32_462(CONSTANT,12)
    assign c_i32_462_q = $unsigned(32'b00000000000000000000000000000100);

    // i_inc_3_atax26(LOGICAL,85)@2
    assign i_inc_3_atax26_q = i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out | c_i32_462_q;

    // i_inc_3_atax26_vt_select_1_merged_bit_select(BITSELECT,307)@2
    assign i_inc_3_atax26_vt_select_1_merged_bit_select_b = i_inc_3_atax26_q[1:0];
    assign i_inc_3_atax26_vt_select_1_merged_bit_select_c = i_inc_3_atax26_q[31:3];

    // i_inc_3_atax26_vt_join(BITJOIN,87)@2
    assign i_inc_3_atax26_vt_join_q = {i_inc_3_atax26_vt_select_1_merged_bit_select_c, VCC_q, i_inc_3_atax26_vt_select_1_merged_bit_select_b};

    // i_idxprom12_4_atax27_sel_x(BITSELECT,266)@2
    assign i_idxprom12_4_atax27_sel_x_b = {32'b00000000000000000000000000000000, i_inc_3_atax26_vt_join_q[31:0]};

    // i_idxprom12_4_atax27_vt_select_1_merged_bit_select(BITSELECT,311)@2
    assign i_idxprom12_4_atax27_vt_select_1_merged_bit_select_in = i_idxprom12_4_atax27_sel_x_b[31:0];
    assign i_idxprom12_4_atax27_vt_select_1_merged_bit_select_b = i_idxprom12_4_atax27_vt_select_1_merged_bit_select_in[1:0];
    assign i_idxprom12_4_atax27_vt_select_1_merged_bit_select_c = i_idxprom12_4_atax27_vt_select_1_merged_bit_select_in[31:3];

    // i_idxprom12_4_atax27_vt_join(BITJOIN,51)@2
    assign i_idxprom12_4_atax27_vt_join_q = {c_i32_058_q, i_idxprom12_4_atax27_vt_select_1_merged_bit_select_c, VCC_q, i_idxprom12_4_atax27_vt_select_1_merged_bit_select_b};

    // i_arrayidx13_4_atax0_dupName_0_narrow_x(BITSELECT,192)@2
    assign i_arrayidx13_4_atax0_dupName_0_narrow_x_b = i_idxprom12_4_atax27_vt_join_q[61:0];

    // i_arrayidx13_4_atax0_dupName_0_shift_join_x(BITJOIN,193)@2
    assign i_arrayidx13_4_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_4_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_4_atax0_dupName_0_add_x(ADD,191)@2
    assign i_arrayidx13_4_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_4_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_4_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_4_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_4_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_4_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_4_atax0_dupName_0_add_x_q = i_arrayidx13_4_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_4_atax0_dupName_2_trunc_sel_x(BITSELECT,197)@2
    assign i_arrayidx13_4_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_4_atax0_dupName_0_add_x_q[63:0];

    // c_i32_361(CONSTANT,11)
    assign c_i32_361_q = $unsigned(32'b00000000000000000000000000000011);

    // i_inc_2_atax23(LOGICAL,81)@2
    assign i_inc_2_atax23_q = i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out | c_i32_361_q;

    // i_inc_2_atax23_vt_select_31(BITSELECT,84)@2
    assign i_inc_2_atax23_vt_select_31_b = i_inc_2_atax23_q[31:2];

    // i_inc_2_atax23_vt_join(BITJOIN,83)@2
    assign i_inc_2_atax23_vt_join_q = {i_inc_2_atax23_vt_select_31_b, i_idxprom12_3_atax24_vt_const_1_q};

    // i_idxprom12_3_atax24_sel_x(BITSELECT,265)@2
    assign i_idxprom12_3_atax24_sel_x_b = {32'b00000000000000000000000000000000, i_inc_2_atax23_vt_join_q[31:0]};

    // i_idxprom12_3_atax24_vt_select_31(BITSELECT,47)@2
    assign i_idxprom12_3_atax24_vt_select_31_b = i_idxprom12_3_atax24_sel_x_b[31:2];

    // i_idxprom12_3_atax24_vt_join(BITJOIN,46)@2
    assign i_idxprom12_3_atax24_vt_join_q = {c_i32_058_q, i_idxprom12_3_atax24_vt_select_31_b, i_idxprom12_3_atax24_vt_const_1_q};

    // i_arrayidx13_3_atax0_dupName_0_narrow_x(BITSELECT,180)@2
    assign i_arrayidx13_3_atax0_dupName_0_narrow_x_b = i_idxprom12_3_atax24_vt_join_q[61:0];

    // i_arrayidx13_3_atax0_dupName_0_shift_join_x(BITJOIN,181)@2
    assign i_arrayidx13_3_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_3_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_3_atax0_dupName_0_add_x(ADD,179)@2
    assign i_arrayidx13_3_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_3_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_3_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_3_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_3_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_3_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_3_atax0_dupName_0_add_x_q = i_arrayidx13_3_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_3_atax0_dupName_2_trunc_sel_x(BITSELECT,185)@2
    assign i_arrayidx13_3_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_3_atax0_dupName_0_add_x_q[63:0];

    // c_i32_260(CONSTANT,10)
    assign c_i32_260_q = $unsigned(32'b00000000000000000000000000000010);

    // i_inc_1_atax20(LOGICAL,76)@2
    assign i_inc_1_atax20_q = i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out | c_i32_260_q;

    // i_inc_1_atax20_vt_select_0_merged_bit_select(BITSELECT,306)@2
    assign i_inc_1_atax20_vt_select_0_merged_bit_select_b = i_inc_1_atax20_q[0:0];
    assign i_inc_1_atax20_vt_select_0_merged_bit_select_c = i_inc_1_atax20_q[31:2];

    // i_inc_1_atax20_vt_join(BITJOIN,78)@2
    assign i_inc_1_atax20_vt_join_q = {i_inc_1_atax20_vt_select_0_merged_bit_select_c, VCC_q, i_inc_1_atax20_vt_select_0_merged_bit_select_b};

    // i_idxprom12_2_atax21_sel_x(BITSELECT,264)@2
    assign i_idxprom12_2_atax21_sel_x_b = {32'b00000000000000000000000000000000, i_inc_1_atax20_vt_join_q[31:0]};

    // i_idxprom12_2_atax21_vt_select_0_merged_bit_select(BITSELECT,310)@2
    assign i_idxprom12_2_atax21_vt_select_0_merged_bit_select_in = i_idxprom12_2_atax21_sel_x_b[31:0];
    assign i_idxprom12_2_atax21_vt_select_0_merged_bit_select_b = i_idxprom12_2_atax21_vt_select_0_merged_bit_select_in[0:0];
    assign i_idxprom12_2_atax21_vt_select_0_merged_bit_select_c = i_idxprom12_2_atax21_vt_select_0_merged_bit_select_in[31:2];

    // i_idxprom12_2_atax21_vt_join(BITJOIN,40)@2
    assign i_idxprom12_2_atax21_vt_join_q = {c_i32_058_q, i_idxprom12_2_atax21_vt_select_0_merged_bit_select_c, VCC_q, i_idxprom12_2_atax21_vt_select_0_merged_bit_select_b};

    // i_arrayidx13_2_atax0_dupName_0_narrow_x(BITSELECT,168)@2
    assign i_arrayidx13_2_atax0_dupName_0_narrow_x_b = i_idxprom12_2_atax21_vt_join_q[61:0];

    // i_arrayidx13_2_atax0_dupName_0_shift_join_x(BITJOIN,169)@2
    assign i_arrayidx13_2_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_2_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_2_atax0_dupName_0_add_x(ADD,167)@2
    assign i_arrayidx13_2_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_2_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_2_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_2_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_2_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_2_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_2_atax0_dupName_0_add_x_q = i_arrayidx13_2_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_2_atax0_dupName_2_trunc_sel_x(BITSELECT,173)@2
    assign i_arrayidx13_2_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_2_atax0_dupName_0_add_x_q[63:0];

    // c_i32_159(CONSTANT,9)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_atax17(LOGICAL,106)@2
    assign i_inc_atax17_q = i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out | c_i32_159_q;

    // i_inc_atax17_vt_select_31(BITSELECT,109)@2
    assign i_inc_atax17_vt_select_31_b = i_inc_atax17_q[31:1];

    // i_inc_atax17_vt_join(BITJOIN,108)@2
    assign i_inc_atax17_vt_join_q = {i_inc_atax17_vt_select_31_b, VCC_q};

    // i_idxprom12_1_atax18_sel_x(BITSELECT,263)@2
    assign i_idxprom12_1_atax18_sel_x_b = {32'b00000000000000000000000000000000, i_inc_atax17_vt_join_q[31:0]};

    // i_idxprom12_1_atax18_vt_select_31(BITSELECT,36)@2
    assign i_idxprom12_1_atax18_vt_select_31_b = i_idxprom12_1_atax18_sel_x_b[31:1];

    // i_idxprom12_1_atax18_vt_join(BITJOIN,35)@2
    assign i_idxprom12_1_atax18_vt_join_q = {c_i32_058_q, i_idxprom12_1_atax18_vt_select_31_b, VCC_q};

    // i_arrayidx13_1_atax0_dupName_0_narrow_x(BITSELECT,156)@2
    assign i_arrayidx13_1_atax0_dupName_0_narrow_x_b = i_idxprom12_1_atax18_vt_join_q[61:0];

    // i_arrayidx13_1_atax0_dupName_0_shift_join_x(BITJOIN,157)@2
    assign i_arrayidx13_1_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_1_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_1_atax0_dupName_0_add_x(ADD,155)@2
    assign i_arrayidx13_1_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_1_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_1_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_1_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_1_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_1_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_1_atax0_dupName_0_add_x_q = i_arrayidx13_1_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_1_atax0_dupName_2_trunc_sel_x(BITSELECT,161)@2
    assign i_arrayidx13_1_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_1_atax0_dupName_0_add_x_q[63:0];

    // i_idxprom12_atax11_sel_x(BITSELECT,270)@2
    assign i_idxprom12_atax11_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_039_pop33_atax10_out_data_out[31:0]};

    // i_idxprom12_atax11_vt_select_31(BITSELECT,75)@2
    assign i_idxprom12_atax11_vt_select_31_b = i_idxprom12_atax11_sel_x_b[31:0];

    // i_idxprom12_atax11_vt_join(BITJOIN,74)@2
    assign i_idxprom12_atax11_vt_join_q = {c_i32_058_q, i_idxprom12_atax11_vt_select_31_b};

    // i_arrayidx13_atax0_dupName_0_narrow_x(BITSELECT,240)@2
    assign i_arrayidx13_atax0_dupName_0_narrow_x_b = i_idxprom12_atax11_vt_join_q[61:0];

    // i_arrayidx13_atax0_dupName_0_shift_join_x(BITJOIN,241)@2
    assign i_arrayidx13_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx174_atax0_add_x(ADD,246)@2
    assign i_arrayidx174_atax0_add_x_a = {1'b0, c_atax_buff_A_pmem_q};
    assign i_arrayidx174_atax0_add_x_b = {1'b0, i_arrayidx13_1_atax0_shift_join_x_q};
    assign i_arrayidx174_atax0_add_x_o = $unsigned(i_arrayidx174_atax0_add_x_a) + $unsigned(i_arrayidx174_atax0_add_x_b);
    assign i_arrayidx174_atax0_add_x_q = i_arrayidx174_atax0_add_x_o[64:0];

    // i_arrayidx174_atax0_dupName_0_trunc_sel_x(BITSELECT,256)@2
    assign i_arrayidx174_atax0_dupName_0_trunc_sel_x_b = i_arrayidx174_atax0_add_x_q[63:0];

    // i_arrayidx174_atax0_dupName_0_add_x(ADD,251)@2
    assign i_arrayidx174_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx174_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx174_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx174_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx174_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx174_atax0_dupName_0_add_x_b);
    assign i_arrayidx174_atax0_dupName_0_add_x_q = i_arrayidx174_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx174_atax0_dupName_2_trunc_sel_x(BITSELECT,257)@2
    assign i_arrayidx174_atax0_dupName_2_trunc_sel_x_b = i_arrayidx174_atax0_dupName_0_add_x_q[63:0];

    // i_arrayidx174_atax15_vt_select_63(BITSELECT,24)@2
    assign i_arrayidx174_atax15_vt_select_63_b = i_arrayidx174_atax0_dupName_2_trunc_sel_x_b[63:2];

    // i_arrayidx174_atax15_vt_join(BITJOIN,23)@2
    assign i_arrayidx174_atax15_vt_join_q = {i_arrayidx174_atax15_vt_select_63_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_memcoalesce_bitcast_atax_fpgaunique_40_atax16_vt_select_63(BITSELECT,126)@2
    assign i_memcoalesce_bitcast_atax_fpgaunique_40_atax16_vt_select_63_b = i_arrayidx174_atax15_vt_join_q[63:2];

    // i_memcoalesce_bitcast_atax_fpgaunique_40_atax16_vt_join(BITJOIN,125)@2
    assign i_memcoalesce_bitcast_atax_fpgaunique_40_atax16_vt_join_q = {i_memcoalesce_bitcast_atax_fpgaunique_40_atax16_vt_select_63_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_atax0_dupName_0_add_x(ADD,239)@2
    assign i_arrayidx13_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_atax0_dupName_0_add_x_q = i_arrayidx13_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_atax0_dupName_2_trunc_sel_x(BITSELECT,245)@2
    assign i_arrayidx13_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_atax0_dupName_0_add_x_q[63:0];

    // sync_out_aunroll_x(GPOUT,273)@2
    assign out_c0_exi13_0_tpl = GND_q;
    assign out_c0_exi13_1_tpl = i_first_cleanup_xor108_atax4_q;
    assign out_c0_exi13_2_tpl = redist4_i_llvm_fpga_pipeline_keep_going102_atax6_out_data_out_1_q;
    assign out_c0_exi13_3_tpl = i_arrayidx13_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi13_4_tpl = i_memcoalesce_bitcast_atax_fpgaunique_40_atax16_vt_join_q;
    assign out_c0_exi13_5_tpl = i_arrayidx13_1_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi13_6_tpl = i_arrayidx13_2_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi13_7_tpl = i_arrayidx13_3_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi13_8_tpl = i_arrayidx13_4_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi13_9_tpl = i_arrayidx13_5_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi13_10_tpl = i_arrayidx13_6_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi13_11_tpl = i_arrayidx13_7_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi13_12_tpl = i_masked111_atax50_q;
    assign out_c0_exi13_13_tpl = i_llvm_fpga_pop_i1_notcmp114126_pop36_atax51_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
