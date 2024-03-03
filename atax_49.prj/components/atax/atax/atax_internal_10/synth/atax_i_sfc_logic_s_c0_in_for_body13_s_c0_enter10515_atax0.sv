// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.1 (Release Build #173.3)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body13_s_c0_enter10515_atax0
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body13_s_c0_enter10515_atax0 (
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_atax_B4_current_iter_isspec,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [63:0] out_c0_exi5_1_tpl,
    output wire [63:0] out_c0_exi5_2_tpl,
    output wire [0:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [63:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_A_pmem_q;
    wire [31:0] c_i32_055_q;
    wire [31:0] c_i32_156_q;
    wire [6:0] c_i7_159_q;
    wire [6:0] c_i7_6257_q;
    wire [1:0] i_arrayidx214_atax14_vt_const_1_q;
    wire [63:0] i_arrayidx214_atax14_vt_join_q;
    wire [61:0] i_arrayidx214_atax14_vt_select_63_b;
    wire [0:0] i_atax_b4_current_iter_isspec_atax5_q;
    wire [0:0] i_atax_b4_next_iter_isreal_atax7_q;
    wire [7:0] i_fpga_indvars_iv_next_atax23_a;
    wire [7:0] i_fpga_indvars_iv_next_atax23_b;
    logic [7:0] i_fpga_indvars_iv_next_atax23_o;
    wire [7:0] i_fpga_indvars_iv_next_atax23_q;
    wire [63:0] i_idxprom16_atax10_vt_join_q;
    wire [31:0] i_idxprom16_atax10_vt_select_31_b;
    wire [32:0] i_inc_atax15_a;
    wire [32:0] i_inc_atax15_b;
    logic [32:0] i_inc_atax15_o;
    wire [32:0] i_inc_atax15_q;
    wire [0:0] i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a64f32_a4223_atax11_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_atax6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_atax6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_atax22_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_atax22_out_feedback_valid_out_11;
    wire [0:0] i_notcmp41_atax21_q;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next_atax23_sel_x_b;
    wire [31:0] bgTrunc_i_inc_atax15_sel_x_b;
    wire [64:0] i_arrayidx17_atax0_add_x_a;
    wire [64:0] i_arrayidx17_atax0_add_x_b;
    logic [64:0] i_arrayidx17_atax0_add_x_o;
    wire [64:0] i_arrayidx17_atax0_add_x_q;
    wire [7:0] i_arrayidx17_atax0_c_i8_01_x_q;
    wire [55:0] i_arrayidx17_atax0_narrow_x_b;
    wire [63:0] i_arrayidx17_atax0_shift_join_x_q;
    wire [64:0] i_arrayidx17_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx17_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx17_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx17_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx17_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx17_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx17_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx17_atax0_dupName_2_trunc_sel_x_b;
    wire [14:0] i_arrayidx214_atax0_add_x_a;
    wire [14:0] i_arrayidx214_atax0_add_x_b;
    logic [14:0] i_arrayidx214_atax0_add_x_o;
    wire [14:0] i_arrayidx214_atax0_add_x_q;
    wire [63:0] i_arrayidx214_atax0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx214_atax0_narrow_x_b;
    wire [13:0] i_arrayidx214_atax0_shift_join_x_q;
    wire [14:0] i_arrayidx214_atax0_dupName_0_add_x_a;
    wire [14:0] i_arrayidx214_atax0_dupName_0_add_x_b;
    logic [14:0] i_arrayidx214_atax0_dupName_0_add_x_o;
    wire [14:0] i_arrayidx214_atax0_dupName_0_add_x_q;
    wire [11:0] i_arrayidx214_atax0_dupName_0_narrow_x_b;
    wire [13:0] i_arrayidx214_atax0_dupName_0_shift_join_x_q;
    wire [13:0] i_arrayidx214_atax0_dupName_0_trunc_sel_x_b;
    wire [13:0] i_arrayidx214_atax0_dupName_2_trunc_sel_x_b;
    wire [13:0] i_arrayidx214_atax0_dupName_3_trunc_sel_x_b;
    wire [13:0] i_arrayidx214_atax0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom16_atax10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x_s;
    reg [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4659_push26_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4659_push26_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_valid;
    wire i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_stall;
    wire i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_o_data;
    wire [6:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    wire [0:0] i_exitcond_atax17_cmp_nsign_q;
    wire [49:0] i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b;
    wire [13:0] i_arrayidx214_atax0_upper_bits_x_merged_bit_select_c;
    reg [49:0] redist0_i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b_1_q;
    reg [0:0] redist1_i_exitcond_atax17_cmp_nsign_q_2_q;
    reg [0:0] redist1_i_exitcond_atax17_cmp_nsign_q_2_delay_0;
    reg [0:0] redist2_valid_fanout_reg0_q_1_q;
    reg [63:0] redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_q;
    reg [63:0] redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_delay_0;
    reg [63:0] redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_delay_1;
    reg [0:0] redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_q;
    reg [0:0] redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_0;
    reg [0:0] redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_1;
    reg [0:0] redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_2;
    reg [0:0] redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_3;
    reg [0:0] redist5_sync_together65_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist6_sync_together65_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist7_sync_together65_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist8_sync_together65_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist9_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_1_q;
    reg [0:0] redist10_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    reg [0:0] redist11_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_q_1_q;
    reg [0:0] redist13_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q_2_q;
    reg [0:0] redist13_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q_2_delay_0;
    reg [13:0] redist14_i_arrayidx214_atax0_dupName_2_trunc_sel_x_b_1_q;
    reg [5:0] redist15_i_arrayidx214_atax0_narrow_x_b_1_q;
    reg [63:0] redist16_i_arrayidx17_atax0_dupName_0_trunc_sel_x_b_1_q;
    reg [55:0] redist17_i_arrayidx17_atax0_narrow_x_b_1_q;
    reg [0:0] redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_q;
    reg [0:0] redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_delay_0;
    reg [0:0] redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_delay_1;
    reg [0:0] redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_delay_2;
    reg [0:0] redist19_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_5_q;
    reg [0:0] redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_q;
    reg [0:0] redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_delay_0;
    reg [0:0] redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_delay_1;
    reg [0:0] redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_delay_2;
    reg [31:0] redist21_i_idxprom16_atax10_vt_select_31_b_1_q;
    reg [63:0] redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist5_sync_together65_aunroll_x_in_i_valid_1(DELAY,162)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_together65_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist5_sync_together65_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist6_sync_together65_aunroll_x_in_i_valid_2(DELAY,163)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together65_aunroll_x_in_i_valid_2_q <= $unsigned(redist5_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist7_sync_together65_aunroll_x_in_i_valid_3(DELAY,164)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist7_sync_together65_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist7_sync_together65_aunroll_x_in_i_valid_3_q <= $unsigned(redist6_sync_together65_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,131)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist7_sync_together65_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg13(REG,142)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist7_sync_together65_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i7_6257(CONSTANT,36)
    assign c_i7_6257_q = $unsigned(7'b0111110);

    // c_i7_159(CONSTANT,35)
    assign c_i7_159_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next_atax23(ADD,43)@4
    assign i_fpga_indvars_iv_next_atax23_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x_q};
    assign i_fpga_indvars_iv_next_atax23_b = {1'b0, c_i7_159_q};
    assign i_fpga_indvars_iv_next_atax23_o = $unsigned(i_fpga_indvars_iv_next_atax23_a) + $unsigned(i_fpga_indvars_iv_next_atax23_b);
    assign i_fpga_indvars_iv_next_atax23_q = i_fpga_indvars_iv_next_atax23_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next_atax23_sel_x(BITSELECT,59)@4
    assign bgTrunc_i_fpga_indvars_iv_next_atax23_sel_x_b = i_fpga_indvars_iv_next_atax23_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_element_extension2_x(BITJOIN,123)@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_element_extension2_x_q = {GND_q, bgTrunc_i_fpga_indvars_iv_next_atax23_sel_x_b};

    // i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x(LOGICAL,107)@1
    assign i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg15(REG,144)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // redist9_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_1(DELAY,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_1_q <= $unsigned(i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q);
        end
    end

    // redist10_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_2(DELAY,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_2_q <= $unsigned(redist9_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_1_q);
        end
    end

    // valid_fanout_reg14(REG,143)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist6_sync_together65_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x(FIFODELAY,124)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_valid = valid_fanout_reg14_q & redist10_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_data = i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x (
        .i_valid(i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,126)@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax1_x_o_data[6:0];

    // i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x(MUX,102)@4
    assign i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x_s = redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x_s or i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_adapt_scalar_trunc4_sel_x_b or c_i7_6257_q)
    begin
        unique case (i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x_q = i_llvm_fpga_push_i7_fpga_indvars_iv_push23_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x_q = c_i7_6257_q;
            default : i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x_q = 7'b0;
        endcase
    end

    // i_exitcond_atax17_cmp_nsign(LOGICAL,155)@4
    assign i_exitcond_atax17_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop23_atax16_mux_x_q[6:6]));

    // i_llvm_fpga_push_i1_notexitcond44_atax22(BLACKBOX,53)@4
    // in in_empty_in@20000000
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    atax_i_llvm_fpga_push_i1_notexitcond44_0 thei_llvm_fpga_push_i1_notexitcond44_atax22 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_atax17_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going43_atax6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond44_atax22_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond44_atax22_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2(BLACKBOX,49)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_dummy_thread_b4_dummy_atax0 thei_llvm_fpga_dummy_thread_atax_b4_dummy_atax2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4(DELAY,177)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out);
            redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_delay_1 <= redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_delay_0;
            redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_delay_2 <= redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_delay_1;
            redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_q <= redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_atax_b4_forked_atax3(BLACKBOX,51)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_forked_b4_forked_atax0 thei_llvm_fpga_forked_atax_b4_forked_atax3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4(DELAY,175)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out);
            redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_delay_1 <= redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_delay_0;
            redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_delay_2 <= redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_delay_1;
            redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_q <= redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going43_atax6(BLACKBOX,52)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going43_0 thei_llvm_fpga_pipeline_keep_going43_atax6 (
        .in_data_in(redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_q),
        .in_dummy_in(redist20_i_llvm_fpga_dummy_thread_atax_b4_dummy_atax2_out_dummy_out_4_q),
        .in_forked_in(redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond44_atax22_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond44_atax22_out_feedback_valid_out_11),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going43_atax6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going43_atax6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going43_atax6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going43_atax6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going43_atax6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going43_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,57)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going43_atax6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,62)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going43_atax6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,63)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going43_atax6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,64)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going43_atax6_out_pipeline_valid_out;

    // redist8_sync_together65_aunroll_x_in_i_valid_4(DELAY,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together65_aunroll_x_in_i_valid_4_q <= $unsigned(redist7_sync_together65_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,129)@4 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together65_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist2_valid_fanout_reg0_q_1(DELAY,159)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5(DELAY,161)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_0 <= $unsigned(in_c0_eni3_3_tpl);
            redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_1 <= redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_0;
            redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_2 <= redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_1;
            redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_3 <= redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_2;
            redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_q <= redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_c_i7_03_x(CONSTANT,104)
    assign i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_llvm_fpga_push_i1_notcmp4659_push26_atax0_element_extension2_x(BITJOIN,111)@5
    assign i_llvm_fpga_push_i1_notcmp4659_push26_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_q};

    // valid_fanout_reg18(REG,147)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist5_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist11_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_3(DELAY,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_3_q <= $unsigned(redist10_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg17(REG,146)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist7_sync_together65_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x(FIFODELAY,112)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_stall = ~ (valid_fanout_reg18_q & redist9_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_valid = valid_fanout_reg17_q & redist11_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_data = i_llvm_fpga_push_i1_notcmp4659_push26_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp4659_push26_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp4659_push26_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,114)@5
    assign i_llvm_fpga_push_i1_notcmp4659_push26_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp4659_push26_atax0_i_llvm_fpga_push_i1_notcmp4659_push26_atax1_x_o_data[0:0];

    // redist19_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_5(DELAY,176)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_5_q <= $unsigned(redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_q);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x(MUX,99)@5
    assign i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_s = redist19_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_s or i_llvm_fpga_push_i1_notcmp4659_push26_atax0_adapt_scalar_trunc4_sel_x_b or redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_q = i_llvm_fpga_push_i1_notcmp4659_push26_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_q = redist4_sync_together65_aunroll_x_in_c0_eni3_3_tpl_5_q;
            default : i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_q = 1'b0;
        endcase
    end

    // redist12_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_q_1(DELAY,169)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_q);
        end
    end

    // i_notcmp41_atax21(LOGICAL,54)@6
    assign i_notcmp41_atax21_q = redist1_i_exitcond_atax17_cmp_nsign_q_2_q ^ VCC_q;

    // redist1_i_exitcond_atax17_cmp_nsign_q_2(DELAY,158)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_exitcond_atax17_cmp_nsign_q_2_delay_0 <= $unsigned(i_exitcond_atax17_cmp_nsign_q);
            redist1_i_exitcond_atax17_cmp_nsign_q_2_q <= redist1_i_exitcond_atax17_cmp_nsign_q_2_delay_0;
        end
    end

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx214_atax0_upper_bits_x_merged_bit_select(BITSELECT,156)@5
    assign i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_A_pmem_q[63:14];
    assign i_arrayidx214_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_A_pmem_q[13:0];

    // redist0_i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b_1(DELAY,157)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_055(CONSTANT,33)
    assign c_i32_055_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_156(CONSTANT,34)
    assign c_i32_156_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_atax15(ADD,48)@5
    assign i_inc_atax15_a = {1'b0, i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x_q};
    assign i_inc_atax15_b = {1'b0, c_i32_156_q};
    assign i_inc_atax15_o = $unsigned(i_inc_atax15_a) + $unsigned(i_inc_atax15_b);
    assign i_inc_atax15_q = i_inc_atax15_o[32:0];

    // bgTrunc_i_inc_atax15_sel_x(BITSELECT,60)@5
    assign bgTrunc_i_inc_atax15_sel_x_b = i_inc_atax15_q[31:0];

    // valid_fanout_reg12(REG,141)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist5_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg11(REG,140)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist7_sync_together65_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x(FIFODELAY,115)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_stall = ~ (valid_fanout_reg12_q & redist9_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_valid = valid_fanout_reg11_q & redist11_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_data = bgTrunc_i_inc_atax15_sel_x_b;
    assign i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x (
        .i_valid(i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_atax15_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x(MUX,100)@5
    assign i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x_s = redist19_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x_s or i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_o_data or c_i32_055_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x_q = i_llvm_fpga_push_i32_j_039_push24_atax0_i_llvm_fpga_push_i32_j_039_push24_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x_q = c_i32_055_q;
            default : i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom16_atax10_sel_x(BITSELECT,97)@5
    assign i_idxprom16_atax10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_039_pop24_atax0_i_llvm_fpga_pop_i32_j_039_pop24_atax9_mux_x_q[31:0]};

    // i_idxprom16_atax10_vt_select_31(BITSELECT,47)@5
    assign i_idxprom16_atax10_vt_select_31_b = i_idxprom16_atax10_sel_x_b[31:0];

    // redist21_i_idxprom16_atax10_vt_select_31_b_1(DELAY,178)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_idxprom16_atax10_vt_select_31_b_1_q <= $unsigned(i_idxprom16_atax10_vt_select_31_b);
        end
    end

    // i_idxprom16_atax10_vt_join(BITJOIN,46)@6
    assign i_idxprom16_atax10_vt_join_q = {c_i32_055_q, redist21_i_idxprom16_atax10_vt_select_31_b_1_q};

    // i_arrayidx214_atax0_dupName_3_trunc_sel_x(BITSELECT,95)@6
    assign i_arrayidx214_atax0_dupName_3_trunc_sel_x_b = i_idxprom16_atax10_vt_join_q[13:0];

    // i_arrayidx214_atax0_dupName_0_narrow_x(BITSELECT,86)@6
    assign i_arrayidx214_atax0_dupName_0_narrow_x_b = i_arrayidx214_atax0_dupName_3_trunc_sel_x_b[11:0];

    // i_arrayidx214_atax0_dupName_0_shift_join_x(BITJOIN,87)@6
    assign i_arrayidx214_atax0_dupName_0_shift_join_x_q = {i_arrayidx214_atax0_dupName_0_narrow_x_b, i_arrayidx214_atax14_vt_const_1_q};

    // redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_inputreg0(DELAY,179)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4(DELAY,160)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_delay_0 <= $unsigned(redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_inputreg0_q);
            redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_delay_1 <= redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_delay_0;
            redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_q <= redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg10(REG,139)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,138)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist6_sync_together65_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x(FIFODELAY,118)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_stall = ~ (valid_fanout_reg10_q & i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_valid = valid_fanout_reg9_q & redist10_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_data = i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x(MUX,101)@4
    assign i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_s = redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_s or i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_o_data or redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_q = i_llvm_fpga_push_i64_idxprom58_push25_atax0_i_llvm_fpga_push_i64_idxprom58_push25_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_q = redist3_sync_together65_aunroll_x_in_c0_eni3_2_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx214_atax0_dupName_0_trunc_sel_x(BITSELECT,93)@4
    assign i_arrayidx214_atax0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_q[13:0];

    // i_arrayidx214_atax0_narrow_x(BITSELECT,81)@4
    assign i_arrayidx214_atax0_narrow_x_b = i_arrayidx214_atax0_dupName_0_trunc_sel_x_b[5:0];

    // redist15_i_arrayidx214_atax0_narrow_x_b_1(DELAY,172)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_arrayidx214_atax0_narrow_x_b_1_q <= $unsigned(i_arrayidx214_atax0_narrow_x_b);
        end
    end

    // i_arrayidx17_atax0_c_i8_01_x(CONSTANT,67)
    assign i_arrayidx17_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx214_atax0_shift_join_x(BITJOIN,82)@5
    assign i_arrayidx214_atax0_shift_join_x_q = {redist15_i_arrayidx214_atax0_narrow_x_b_1_q, i_arrayidx17_atax0_c_i8_01_x_q};

    // i_arrayidx214_atax0_add_x(ADD,77)@5
    assign i_arrayidx214_atax0_add_x_a = {1'b0, i_arrayidx214_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx214_atax0_add_x_b = {1'b0, i_arrayidx214_atax0_shift_join_x_q};
    assign i_arrayidx214_atax0_add_x_o = $unsigned(i_arrayidx214_atax0_add_x_a) + $unsigned(i_arrayidx214_atax0_add_x_b);
    assign i_arrayidx214_atax0_add_x_q = i_arrayidx214_atax0_add_x_o[14:0];

    // i_arrayidx214_atax0_dupName_2_trunc_sel_x(BITSELECT,94)@5
    assign i_arrayidx214_atax0_dupName_2_trunc_sel_x_b = i_arrayidx214_atax0_add_x_q[13:0];

    // redist14_i_arrayidx214_atax0_dupName_2_trunc_sel_x_b_1(DELAY,171)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_arrayidx214_atax0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx214_atax0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx214_atax0_dupName_0_add_x(ADD,85)@6
    assign i_arrayidx214_atax0_dupName_0_add_x_a = {1'b0, redist14_i_arrayidx214_atax0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx214_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx214_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx214_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx214_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx214_atax0_dupName_0_add_x_b);
    assign i_arrayidx214_atax0_dupName_0_add_x_q = i_arrayidx214_atax0_dupName_0_add_x_o[14:0];

    // i_arrayidx214_atax0_dupName_5_trunc_sel_x(BITSELECT,96)@6
    assign i_arrayidx214_atax0_dupName_5_trunc_sel_x_b = i_arrayidx214_atax0_dupName_0_add_x_q[13:0];

    // i_arrayidx214_atax0_append_upper_bits_x(BITJOIN,78)@6
    assign i_arrayidx214_atax0_append_upper_bits_x_q = {redist0_i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx214_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx214_atax14_vt_select_63(BITSELECT,39)@6
    assign i_arrayidx214_atax14_vt_select_63_b = i_arrayidx214_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx214_atax14_vt_const_1(CONSTANT,37)
    assign i_arrayidx214_atax14_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx214_atax14_vt_join(BITJOIN,38)@6
    assign i_arrayidx214_atax14_vt_join_q = {i_arrayidx214_atax14_vt_select_63_b, i_arrayidx214_atax14_vt_const_1_q};

    // i_arrayidx17_atax0_dupName_0_narrow_x(BITSELECT,71)@6
    assign i_arrayidx17_atax0_dupName_0_narrow_x_b = i_idxprom16_atax10_vt_join_q[61:0];

    // i_arrayidx17_atax0_dupName_0_shift_join_x(BITJOIN,72)@6
    assign i_arrayidx17_atax0_dupName_0_shift_join_x_q = {i_arrayidx17_atax0_dupName_0_narrow_x_b, i_arrayidx214_atax14_vt_const_1_q};

    // i_arrayidx17_atax0_narrow_x(BITSELECT,68)@4
    assign i_arrayidx17_atax0_narrow_x_b = i_llvm_fpga_pop_i64_idxprom58_pop25_atax0_i_llvm_fpga_pop_i64_idxprom58_pop25_atax12_mux_x_q[55:0];

    // redist17_i_arrayidx17_atax0_narrow_x_b_1(DELAY,174)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_arrayidx17_atax0_narrow_x_b_1_q <= $unsigned(i_arrayidx17_atax0_narrow_x_b);
        end
    end

    // i_arrayidx17_atax0_shift_join_x(BITJOIN,69)@5
    assign i_arrayidx17_atax0_shift_join_x_q = {redist17_i_arrayidx17_atax0_narrow_x_b_1_q, i_arrayidx17_atax0_c_i8_01_x_q};

    // valid_fanout_reg6(REG,135)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist8_sync_together65_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a64f32_a4223_atax11(BLACKBOX,50)@5
    atax_i_llvm_fpga_ffwd_dest_p1024a64f32_a4223_0 thei_llvm_fpga_ffwd_dest_p1024a64f32_a4223_atax11 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a64f32_a4223_atax11_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx17_atax0_add_x(ADD,65)@5
    assign i_arrayidx17_atax0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a64f32_a4223_atax11_out_dest_data_out_0_0};
    assign i_arrayidx17_atax0_add_x_b = {1'b0, i_arrayidx17_atax0_shift_join_x_q};
    assign i_arrayidx17_atax0_add_x_o = $unsigned(i_arrayidx17_atax0_add_x_a) + $unsigned(i_arrayidx17_atax0_add_x_b);
    assign i_arrayidx17_atax0_add_x_q = i_arrayidx17_atax0_add_x_o[64:0];

    // i_arrayidx17_atax0_dupName_0_trunc_sel_x(BITSELECT,75)@5
    assign i_arrayidx17_atax0_dupName_0_trunc_sel_x_b = i_arrayidx17_atax0_add_x_q[63:0];

    // redist16_i_arrayidx17_atax0_dupName_0_trunc_sel_x_b_1(DELAY,173)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_arrayidx17_atax0_dupName_0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx17_atax0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx17_atax0_dupName_0_add_x(ADD,70)@6
    assign i_arrayidx17_atax0_dupName_0_add_x_a = {1'b0, redist16_i_arrayidx17_atax0_dupName_0_trunc_sel_x_b_1_q};
    assign i_arrayidx17_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx17_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx17_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx17_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx17_atax0_dupName_0_add_x_b);
    assign i_arrayidx17_atax0_dupName_0_add_x_q = i_arrayidx17_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx17_atax0_dupName_2_trunc_sel_x(BITSELECT,76)@6
    assign i_arrayidx17_atax0_dupName_2_trunc_sel_x_b = i_arrayidx17_atax0_dupName_0_add_x_q[63:0];

    // i_atax_b4_next_iter_isreal_atax7(LOGICAL,41)@4
    assign i_atax_b4_next_iter_isreal_atax7_q = i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q & i_llvm_fpga_pipeline_keep_going43_atax6_out_data_out;

    // i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_element_extension2_x(BITJOIN,105)@4
    assign i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_c_i7_03_x_q, i_atax_b4_next_iter_isreal_atax7_q};

    // valid_fanout_reg4(REG,133)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,132)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist6_sync_together65_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x(FIFODELAY,106)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_valid = valid_fanout_reg3_q & redist10_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_data = i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,108)@4
    assign i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x(MUX,98)@4
    assign i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_s = redist18_i_llvm_fpga_forked_atax_b4_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_s or i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q = i_llvm_fpga_push_i1_atax_b4_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q = 1'b0;
        endcase
    end

    // redist13_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q_2(DELAY,170)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q);
            redist13_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q_2_q <= redist13_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q_2_delay_0;
        end
    end

    // i_atax_b4_current_iter_isspec_atax5(LOGICAL,40)@6
    assign i_atax_b4_current_iter_isspec_atax5_q = redist13_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b4_current_iter_isreal_atax4_mux_x_q_2_q ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,127)@6
    assign out_atax_B4_current_iter_isspec = i_atax_b4_current_iter_isspec_atax5_q;
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = i_arrayidx17_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi5_2_tpl = i_arrayidx214_atax14_vt_join_q;
    assign out_c0_exi5_3_tpl = redist1_i_exitcond_atax17_cmp_nsign_q_2_q;
    assign out_c0_exi5_4_tpl = i_notcmp41_atax21_q;
    assign out_c0_exi5_5_tpl = redist12_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax0_i_llvm_fpga_pop_i1_notcmp4659_pop26_atax25_mux_x_q_1_q;
    assign out_o_valid = redist2_valid_fanout_reg0_q_1_q;

endmodule
