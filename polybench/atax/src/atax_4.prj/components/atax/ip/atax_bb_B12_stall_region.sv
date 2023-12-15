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

// SystemVerilog created from atax_bb_B12_stall_region
// SystemVerilog created on Wed Dec 13 00:43:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B12_stall_region (
    input wire [63:0] in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writeack,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax3_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax3_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_memdep_15_atax_avm_readdata,
    input wire [0:0] in_memdep_15_atax_avm_writeack,
    input wire [0:0] in_memdep_15_atax_avm_waitrequest,
    input wire [0:0] in_memdep_15_atax_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write,
    output wire [63:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata,
    output wire [7:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_16_atax_avm_readdata,
    input wire [0:0] in_memdep_16_atax_avm_writeack,
    input wire [0:0] in_memdep_16_atax_avm_waitrequest,
    input wire [0:0] in_memdep_16_atax_avm_readdatavalid,
    output wire [63:0] out_memdep_15_atax_avm_address,
    output wire [0:0] out_memdep_15_atax_avm_enable,
    output wire [0:0] out_memdep_15_atax_avm_read,
    output wire [0:0] out_memdep_15_atax_avm_write,
    output wire [63:0] out_memdep_15_atax_avm_writedata,
    output wire [7:0] out_memdep_15_atax_avm_byteenable,
    output wire [0:0] out_memdep_15_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_15_o_active,
    output wire [63:0] out_memdep_16_atax_avm_address,
    output wire [0:0] out_memdep_16_atax_avm_enable,
    output wire [0:0] out_memdep_16_atax_avm_read,
    output wire [0:0] out_memdep_16_atax_avm_write,
    output wire [63:0] out_memdep_16_atax_avm_writedata,
    output wire [7:0] out_memdep_16_atax_avm_byteenable,
    output wire [0:0] out_memdep_16_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_16_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_040_q;
    wire [31:0] c_i32_143_q;
    wire [31:0] c_i32_244_q;
    wire [3:0] c_i4_738_q;
    wire [5:0] c_i6_146_q;
    wire [5:0] c_i6_3041_q;
    wire [3:0] i_cleanups_shl_atax9_vt_join_q;
    wire [2:0] i_cleanups_shl_atax9_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_atax17_q;
    wire [6:0] i_fpga_indvars_iv_next31_atax16_a;
    wire [6:0] i_fpga_indvars_iv_next31_atax16_b;
    logic [6:0] i_fpga_indvars_iv_next31_atax16_o;
    wire [6:0] i_fpga_indvars_iv_next31_atax16_q;
    wire [63:0] i_idxprom70_1_atax21_vt_join_q;
    wire [30:0] i_idxprom70_1_atax21_vt_select_31_b;
    wire [63:0] i_idxprom70_atax11_vt_join_q;
    wire [31:0] i_idxprom70_atax11_vt_select_31_b;
    wire [32:0] i_inc75_1_atax13_a;
    wire [32:0] i_inc75_1_atax13_b;
    logic [32:0] i_inc75_1_atax13_o;
    wire [32:0] i_inc75_1_atax13_q;
    wire [31:0] i_inc75_atax12_q;
    wire [31:0] i_inc75_atax12_vt_join_q;
    wire [30:0] i_inc75_atax12_vt_select_31_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax33_out_lsu_memdep_15_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax33_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax33_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax34_out_lsu_memdep_16_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax34_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax34_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax34_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax3_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax3_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax3_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax3_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax3_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax3_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax3_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax3_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_valid_out;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax29_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax29_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax29_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax29_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax24_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax24_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax24_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax24_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_334_push22_atax22_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_i_334_push22_atax22_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i32_i_334_push22_atax22_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_334_push22_atax22_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push25_atax37_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push25_atax37_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push25_atax37_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push25_atax37_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push24_atax18_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push24_atax18_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push24_atax18_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push24_atax18_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_valid_out;
    wire [0:0] i_masked_atax32_qi;
    reg [0:0] i_masked_atax32_q;
    wire [0:0] i_next_cleanups_atax35_s;
    reg [3:0] i_next_cleanups_atax35_q;
    wire [3:0] i_next_initerations_atax10_vt_join_q;
    wire [2:0] i_next_initerations_atax10_vt_select_2_b;
    wire [0:0] i_notcmp_atax23_q;
    wire [0:0] i_or_atax31_q;
    wire [0:0] atax_B12_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B12_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next31_atax16_sel_x_b;
    wire [31:0] bgTrunc_i_inc75_1_atax13_sel_x_b;
    wire [64:0] i_arrayidx73_1_atax0_add_x_a;
    wire [64:0] i_arrayidx73_1_atax0_add_x_b;
    logic [64:0] i_arrayidx73_1_atax0_add_x_o;
    wire [64:0] i_arrayidx73_1_atax0_add_x_q;
    wire [1:0] i_arrayidx73_1_atax0_c_i2_01_x_q;
    wire [61:0] i_arrayidx73_1_atax0_narrow_x_b;
    wire [63:0] i_arrayidx73_1_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx73_atax0_add_x_a;
    wire [64:0] i_arrayidx73_atax0_add_x_b;
    logic [64:0] i_arrayidx73_atax0_add_x_o;
    wire [64:0] i_arrayidx73_atax0_add_x_q;
    wire [61:0] i_arrayidx73_atax0_narrow_x_b;
    wire [63:0] i_arrayidx73_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx73_atax0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_atax8_sel_x_b;
    wire [63:0] i_idxprom70_1_atax21_sel_x_b;
    wire [63:0] i_idxprom70_atax11_sel_x_b;
    wire [0:0] i_last_initeration_atax19_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write;
    wire [63:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_c0_exit217_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_c0_exit217_2_tpl;
    wire [0:0] i_exitcond32_atax14_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_atax0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_atax0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid163_i_cleanups_shl_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_s;
    reg [3:0] leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid169_i_next_initerations_atax0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid171_i_next_initerations_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid173_i_next_initerations_atax0_shift_x_s;
    reg [3:0] rightShiftStage0_uid173_i_next_initerations_atax0_shift_x_q;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_in;
    wire redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_in;
    wire redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_in_bitsignaltemp;
    wire [61:0] redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_data_in;
    wire [0:0] redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_out;
    wire redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_out;
    wire redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_out_bitsignaltemp;
    wire [61:0] redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_data_out;
    wire [0:0] redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in;
    wire redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in;
    wire redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_in;
    wire [0:0] redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out;
    wire redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out;
    wire redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_out;
    wire [0:0] redist3_i_masked_atax32_q_70_fifo_valid_in;
    wire redist3_i_masked_atax32_q_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_masked_atax32_q_70_fifo_stall_in;
    wire redist3_i_masked_atax32_q_70_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_i_masked_atax32_q_70_fifo_data_in;
    wire [0:0] redist3_i_masked_atax32_q_70_fifo_valid_out;
    wire redist3_i_masked_atax32_q_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_masked_atax32_q_70_fifo_stall_out;
    wire redist3_i_masked_atax32_q_70_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_i_masked_atax32_q_70_fifo_data_out;
    wire [0:0] redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_in;
    wire redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_in;
    wire redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_data_in;
    wire [0:0] redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_out;
    wire redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_out;
    wire redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_data_out;
    wire [0:0] redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_in;
    wire redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_in;
    wire redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_in_bitsignaltemp;
    wire [30:0] redist5_i_inc75_atax12_vt_select_31_b_8_fifo_data_in;
    wire [0:0] redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_out;
    wire redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_out;
    wire redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_out_bitsignaltemp;
    wire [30:0] redist5_i_inc75_atax12_vt_select_31_b_8_fifo_data_out;
    wire [0:0] redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_in;
    wire redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_in;
    wire redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist6_i_first_cleanup_xor_atax17_q_8_fifo_data_in;
    wire [0:0] redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_out;
    wire redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_out;
    wire redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist6_i_first_cleanup_xor_atax17_q_8_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_16_atax34_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_16_atax34_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_atax3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_atax3_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax5_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax5_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop24_atax4_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax4_b;
    wire [5:0] bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_q;
    wire [5:0] bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_atax_B12_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B12_merge_reg_aunroll_x_b;
    wire [63:0] bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_c;
    wire [61:0] bubble_join_redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_q;
    wire [61:0] bubble_select_redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_b;
    wire [0:0] bubble_join_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_q;
    wire [0:0] bubble_select_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b;
    wire [0:0] bubble_join_redist3_i_masked_atax32_q_70_fifo_q;
    wire [0:0] bubble_select_redist3_i_masked_atax32_q_70_fifo_b;
    wire [0:0] bubble_join_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_q;
    wire [0:0] bubble_select_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_b;
    wire [30:0] bubble_join_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_q;
    wire [30:0] bubble_select_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_b;
    wire [0:0] bubble_join_redist6_i_first_cleanup_xor_atax17_q_8_fifo_q;
    wire [0:0] bubble_select_redist6_i_first_cleanup_xor_atax17_q_8_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax34_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V3;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_atax29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_atax29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_atax24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_atax24_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_334_push22_atax22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_334_push22_atax22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push25_atax37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push25_atax37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push24_atax18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push24_atax18_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_backStall;
    reg [0:0] SE_i_masked_atax32_R_v_0;
    wire [0:0] SE_i_masked_atax32_v_s_0;
    wire [0:0] SE_i_masked_atax32_s_tv_0;
    wire [0:0] SE_i_masked_atax32_backEN;
    wire [0:0] SE_i_masked_atax32_and0;
    wire [0:0] SE_i_masked_atax32_backStall;
    wire [0:0] SE_i_masked_atax32_V0;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations_atax10_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations_atax10_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_and0;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_or0;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_backStall;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_V0;
    wire [0:0] SE_i_next_initerations_atax10_vt_join_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V7;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_V1;
    wire [0:0] SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_and0;
    wire [0:0] SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_and1;
    wire [0:0] SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_V0;
    wire [0:0] SE_join_for_coalesced_delay_0_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_0_and0;
    wire [0:0] SE_join_for_coalesced_delay_0_backStall;
    wire [0:0] SE_join_for_coalesced_delay_0_V0;
    wire [0:0] SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid;
    wire [0:0] SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall;
    wire [0:0] SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V0;
    wire [0:0] SE_in_redist3_i_masked_atax32_q_70_fifo_wireValid;
    wire [0:0] SE_in_redist3_i_masked_atax32_q_70_fifo_backStall;
    wire [0:0] SE_in_redist3_i_masked_atax32_q_70_fifo_V0;
    wire [0:0] SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_wireValid;
    wire [0:0] SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_and0;
    wire [0:0] SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_backStall;
    wire [0:0] SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_V0;
    wire [0:0] SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_and0;
    wire [0:0] SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_and1;
    wire [0:0] SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_and2;
    wire [0:0] SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_backStall;
    wire [0:0] SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_V0;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_wireValid;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_wireStall;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_StallValid;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_toReg0;
    reg [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_fromReg0;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_consumed0;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_toReg1;
    reg [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_fromReg1;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_consumed1;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_or0;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_backStall;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_V0;
    wire [0:0] SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_V0;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;


    // bubble_join_i_llvm_fpga_pipeline_keep_going_atax3(BITJOIN,204)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_atax3_q = i_llvm_fpga_pipeline_keep_going_atax3_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_atax3(BITSELECT,205)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_atax3_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_atax3_q[0:0]);

    // redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo(STALLFIFO,188)
    assign redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V5;
    assign redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_in = SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_backStall;
    assign redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_atax3_b;
    assign redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_in_bitsignaltemp = redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_in[0];
    assign redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_in_bitsignaltemp = redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_in[0];
    assign redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_out[0] = redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_out_bitsignaltemp;
    assign redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_out[0] = redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo (
        .valid_in(redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_atax3_b),
        .valid_out(redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo(STALLENABLE,345)
    // Valid signal propagation
    assign SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_V0 = SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_stall_out | ~ (SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_and0 = redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_valid_out;
    assign SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_16_atax34_V1 & SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_and0;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop25_atax2(BITJOIN,214)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_q = i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop25_atax2(BITSELECT,215)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_q[3:0]);

    // i_first_cleanup_atax8_sel_x(BITSELECT,139)@2
    assign i_first_cleanup_atax8_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_b[0:0];

    // i_first_cleanup_xor_atax17(LOGICAL,22)@2
    assign i_first_cleanup_xor_atax17_q = i_first_cleanup_atax8_sel_x_b ^ VCC_q;

    // c_i32_040(CONSTANT,6)
    assign c_i32_040_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax5(BITJOIN,211)
    assign bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax5_q = i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax5(BITSELECT,212)
    assign bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax5_q[31:0]);

    // i_idxprom70_atax11_sel_x(BITSELECT,141)@2
    assign i_idxprom70_atax11_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax5_b[31:0]};

    // i_idxprom70_atax11_vt_select_31(BITSELECT,32)@2
    assign i_idxprom70_atax11_vt_select_31_b = i_idxprom70_atax11_sel_x_b[31:0];

    // i_idxprom70_atax11_vt_join(BITJOIN,31)@2
    assign i_idxprom70_atax11_vt_join_q = {c_i32_040_q, i_idxprom70_atax11_vt_select_31_b};

    // c_i32_143(CONSTANT,7)
    assign c_i32_143_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc75_atax12(LOGICAL,34)@2
    assign i_inc75_atax12_q = bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax5_b | c_i32_143_q;

    // i_inc75_atax12_vt_select_31(BITSELECT,37)@2
    assign i_inc75_atax12_vt_select_31_b = i_inc75_atax12_q[31:1];

    // redist5_i_inc75_atax12_vt_select_31_b_8_fifo(STALLFIFO,189)
    assign redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V2;
    assign redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_in = SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_backStall;
    assign redist5_i_inc75_atax12_vt_select_31_b_8_fifo_data_in = i_inc75_atax12_vt_select_31_b;
    assign redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_in_bitsignaltemp = redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_in[0];
    assign redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_in_bitsignaltemp = redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_in[0];
    assign redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_out[0] = redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_out_bitsignaltemp;
    assign redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_out[0] = redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(31),
        .IMPL("ram")
    ) theredist5_i_inc75_atax12_vt_select_31_b_8_fifo (
        .valid_in(redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_in_bitsignaltemp),
        .data_in(i_inc75_atax12_vt_select_31_b),
        .valid_out(redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_inc75_atax12_vt_select_31_b_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i32_i_334_push22_atax22(STALLENABLE,296)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_334_push22_atax22_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_334_push22_atax22_wireValid = i_llvm_fpga_push_i32_i_334_push22_atax22_out_valid_out;

    // c_i32_244(CONSTANT,8)
    assign c_i32_244_q = $unsigned(32'b00000000000000000000000000000010);

    // i_inc75_1_atax13(ADD,33)@2
    assign i_inc75_1_atax13_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax5_b};
    assign i_inc75_1_atax13_b = {1'b0, c_i32_244_q};
    assign i_inc75_1_atax13_o = $unsigned(i_inc75_1_atax13_a) + $unsigned(i_inc75_1_atax13_b);
    assign i_inc75_1_atax13_q = i_inc75_1_atax13_o[32:0];

    // bgTrunc_i_inc75_1_atax13_sel_x(BITSELECT,113)@2
    assign bgTrunc_i_inc75_1_atax13_sel_x_b = i_inc75_1_atax13_q[31:0];

    // i_llvm_fpga_push_i32_i_334_push22_atax22(BLACKBOX,52)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i32_i_334_push22_0 thei_llvm_fpga_push_i32_i_334_push22_atax22 (
        .in_data_in(bgTrunc_i_inc75_1_atax13_sel_x_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_feedback_stall_out_22),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_334_push22_atax22_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_i_334_push22_atax22_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_i_334_push22_atax22_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i32_i_334_push22_atax22_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_334_push22_atax22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22(STALLENABLE,295)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_V0 = SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_backStall = i_llvm_fpga_push_i32_i_334_push22_atax22_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_and0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V0;
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V2 & SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_and0;

    // SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5(STALLENABLE,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg3 <= SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_backStall) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed1 = (~ (SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed2 = (~ (redist5_i_inc75_atax12_vt_select_31_b_8_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed3 = (~ (redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_StallValid = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_backStall & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_StallValid & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_StallValid & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg2 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_StallValid & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed2;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_toReg3 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_StallValid & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_or0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_or1 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_or0;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_or2 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed2 & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_or1;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_consumed3 & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_or2);
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_backStall = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V1 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V2 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V3 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_wireValid = i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_valid_out;

    // SE_join_for_coalesced_delay_0(STALLENABLE,336)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_0_V0 = SE_join_for_coalesced_delay_0_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_0_backStall = coalesced_delay_0_fifo_stall_out | ~ (SE_join_for_coalesced_delay_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_0_and0 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_V1;
    assign SE_join_for_coalesced_delay_0_wireValid = SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_V1 & SE_join_for_coalesced_delay_0_and0;

    // SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo(STALLENABLE,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_fromReg0 <= '0;
            SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_fromReg0 <= SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_toReg0;
            // Successor 1
            SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_fromReg1 <= SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_consumed0 = (~ (SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_backStall) & SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_wireValid) | SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_fromReg0;
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_consumed1 = (~ (SE_join_for_coalesced_delay_0_backStall) & SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_wireValid) | SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_fromReg1;
    // Consuming
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_StallValid = SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_backStall & SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_wireValid;
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_toReg0 = SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_StallValid & SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_consumed0;
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_toReg1 = SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_StallValid & SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_or0 = SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_consumed0;
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_wireStall = ~ (SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_consumed1 & SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_or0);
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_backStall = SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_V0 = SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_wireValid & ~ (SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_fromReg0);
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_V1 = SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_wireValid & ~ (SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_wireValid = redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_out;

    // redist6_i_first_cleanup_xor_atax17_q_8_fifo(STALLFIFO,190)
    assign redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V4;
    assign redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_in = SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_backStall;
    assign redist6_i_first_cleanup_xor_atax17_q_8_fifo_data_in = i_first_cleanup_xor_atax17_q;
    assign redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_in_bitsignaltemp = redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_in[0];
    assign redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_in_bitsignaltemp = redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_in[0];
    assign redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_out[0] = redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_out_bitsignaltemp;
    assign redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_out[0] = redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist6_i_first_cleanup_xor_atax17_q_8_fifo (
        .valid_in(redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_atax17_q),
        .valid_out(redist6_i_first_cleanup_xor_atax17_q_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_i_first_cleanup_xor_atax17_q_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist3_i_masked_atax32_q_70_fifo(STALLENABLE,342)
    // Valid signal propagation
    assign SE_in_redist3_i_masked_atax32_q_70_fifo_V0 = SE_in_redist3_i_masked_atax32_q_70_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist3_i_masked_atax32_q_70_fifo_backStall = redist3_i_masked_atax32_q_70_fifo_stall_out | ~ (SE_in_redist3_i_masked_atax32_q_70_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist3_i_masked_atax32_q_70_fifo_wireValid = SE_i_masked_atax32_V0;

    // SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25(STALLENABLE,302)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_wireValid = i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_valid_out;

    // c_i6_146(CONSTANT,11)
    assign c_i6_146_q = $unsigned(6'b111111);

    // bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7(BITJOIN,221)
    assign bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_q = i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7(BITSELECT,222)
    assign bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_q[5:0]);

    // i_fpga_indvars_iv_next31_atax16(ADD,23)@2
    assign i_fpga_indvars_iv_next31_atax16_a = {1'b0, bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_b};
    assign i_fpga_indvars_iv_next31_atax16_b = {1'b0, c_i6_146_q};
    assign i_fpga_indvars_iv_next31_atax16_o = $unsigned(i_fpga_indvars_iv_next31_atax16_a) + $unsigned(i_fpga_indvars_iv_next31_atax16_b);
    assign i_fpga_indvars_iv_next31_atax16_q = i_fpga_indvars_iv_next31_atax16_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next31_atax16_sel_x(BITSELECT,112)@2
    assign bgTrunc_i_fpga_indvars_iv_next31_atax16_sel_x_b = i_fpga_indvars_iv_next31_atax16_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25(BLACKBOX,55)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_0 thei_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next31_atax16_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25(STALLENABLE,301)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_V0 = SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_backStall = i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V3;
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V4 & SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_and0;

    // SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7(STALLENABLE,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg0 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg1 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg2 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg3 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed2 = (~ (SE_i_masked_atax32_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed3 = (~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_StallValid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_backStall & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_toReg3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_or0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_or1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed1 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_or0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_or2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed2 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_or1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireStall = ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_consumed3 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_or2);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_backStall = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_wireValid = i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_valid_out;

    // SE_i_masked_atax32(STALLENABLE,303)
    // Valid signal propagation
    assign SE_i_masked_atax32_V0 = SE_i_masked_atax32_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_atax32_s_tv_0 = SE_in_redist3_i_masked_atax32_q_70_fifo_backStall & SE_i_masked_atax32_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_atax32_backEN = ~ (SE_i_masked_atax32_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_atax32_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V2 & SE_i_masked_atax32_backEN;
    assign SE_i_masked_atax32_v_s_0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V2 & SE_i_masked_atax32_and0;
    // Backward Stall generation
    assign SE_i_masked_atax32_backStall = ~ (SE_i_masked_atax32_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_atax32_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_atax32_backEN == 1'b0)
            begin
                SE_i_masked_atax32_R_v_0 <= SE_i_masked_atax32_R_v_0 & SE_i_masked_atax32_s_tv_0;
            end
            else
            begin
                SE_i_masked_atax32_R_v_0 <= SE_i_masked_atax32_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_notexitcond_atax24(STALLENABLE,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_atax24_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_consumed1 = (~ (SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_wireValid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_and0;

    // SE_out_i_llvm_fpga_push_i4_cleanups_push25_atax37(STALLENABLE,298)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push25_atax37_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push25_atax37_wireValid = i_llvm_fpga_push_i4_cleanups_push25_atax37_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_atax0_shift_x(BITSELECT,161)@2
    assign leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_atax0_shift_x_in = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_atax0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid163_i_cleanups_shl_atax0_shift_x(BITJOIN,162)@2
    assign leftShiftStage0Idx1_uid163_i_cleanups_shl_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x(MUX,164)@2
    assign leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_b or leftShiftStage0Idx1_uid163_i_cleanups_shl_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_b;
            1'b1 : leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_q = leftShiftStage0Idx1_uid163_i_cleanups_shl_atax0_shift_x_q;
            default : leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_atax9_vt_select_3(BITSELECT,19)@2
    assign i_cleanups_shl_atax9_vt_select_3_b = leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_q[3:1];

    // i_cleanups_shl_atax9_vt_join(BITJOIN,18)@2
    assign i_cleanups_shl_atax9_vt_join_q = {i_cleanups_shl_atax9_vt_select_3_b, GND_q};

    // i_exitcond32_atax14_cmp_nsign(LOGICAL,157)@2
    assign i_exitcond32_atax14_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_b[5:5]));

    // i_notcmp_atax23(LOGICAL,61)@2
    assign i_notcmp_atax23_q = i_exitcond32_atax14_cmp_nsign_q ^ VCC_q;

    // i_or_atax31(LOGICAL,62)@2
    assign i_or_atax31_q = i_notcmp_atax23_q | i_first_cleanup_xor_atax17_q;

    // i_next_cleanups_atax35(MUX,57)@2
    assign i_next_cleanups_atax35_s = i_or_atax31_q;
    always @(i_next_cleanups_atax35_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_b or i_cleanups_shl_atax9_vt_join_q)
    begin
        unique case (i_next_cleanups_atax35_s)
            1'b0 : i_next_cleanups_atax35_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_b;
            1'b1 : i_next_cleanups_atax35_q = i_cleanups_shl_atax9_vt_join_q;
            default : i_next_cleanups_atax35_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push25_atax37(BLACKBOX,53)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i4_cleanups_push25_0 thei_llvm_fpga_push_i4_cleanups_push25_atax37 (
        .in_data_in(i_next_cleanups_atax35_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_feedback_stall_out_25),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push25_atax37_backStall),
        .in_valid_in(SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i4_cleanups_push25_atax37_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i4_cleanups_push25_atax37_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push25_atax37_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push25_atax37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x(STALLENABLE,332)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_V0 = SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_backStall = i_llvm_fpga_push_i4_cleanups_push25_atax37_out_stall_out | ~ (SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_V1;
    assign SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_and1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V0 & SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_and0;
    assign SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V3 & SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_and1;

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2(STALLENABLE,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg4 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed0 = (~ (SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed2 = (~ (SE_i_masked_atax32_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed3 = (~ (SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed4 = (~ (redist6_i_first_cleanup_xor_atax17_q_8_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_toReg4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_consumed4 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_or3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_wireValid = i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_valid_out;

    // SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x(STALLENABLE,327)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_V0 = SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_backStall = i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_V3;
    assign SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V1 & SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_and0;

    // SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x(STALLENABLE,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_consumed0 = (~ (SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_backStall) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_consumed1 = (~ (SE_join_for_coalesced_delay_0_backStall) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_wireValid = i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x(BLACKBOX,147)@2
    // in in_i_stall@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_c0_exit217_0_tpl@10
    // out out_c0_exit217_1_tpl@10
    // out out_c0_exit217_2_tpl@10
    atax_i_sfc_s_c0_in_for_body69_s_c0_enter21213_atax27 thei_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_backStall),
        .in_i_valid(SE_in_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_V0),
        .in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writeack),
        .in_c0_eni2211_0_tpl(GND_q),
        .in_c0_eni2211_1_tpl(i_idxprom70_atax11_vt_join_q),
        .in_c0_eni2211_2_tpl(i_first_cleanup_xor_atax17_q),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_o_valid),
        .out_c0_exit217_0_tpl(),
        .out_c0_exit217_1_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_c0_exit217_1_tpl),
        .out_c0_exit217_2_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_c0_exit217_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x(BITJOIN,234)
    assign bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_q = {i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_c0_exit217_2_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_c0_exit217_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x(BITSELECT,235)
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_q[63:32]);

    // SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2(STALLENABLE,411)
    // Valid signal propagation
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_out_stall_out | ~ (SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2_wireValid = bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1(BLACKBOX,39)@9
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@10
    // out out_stall_out@20000000
    // out out_valid_out@10
    atax_i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_0 thei_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo(STALLENABLE,347)
    // Valid signal propagation
    assign SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_V0 = SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_backStall = i_llvm_fpga_mem_memdep_16_atax34_out_o_stall | ~ (SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_and0 = redist5_i_inc75_atax12_vt_select_31_b_8_fifo_valid_out;
    assign SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_and1 = i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_out_valid_out & SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_and0;
    assign SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_and2 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_V0 & SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_and1;
    assign SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_wireValid = SE_out_redist6_i_first_cleanup_xor_atax17_q_8_fifo_V0 & SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_and2;

    // bubble_join_redist6_i_first_cleanup_xor_atax17_q_8_fifo(BITJOIN,252)
    assign bubble_join_redist6_i_first_cleanup_xor_atax17_q_8_fifo_q = redist6_i_first_cleanup_xor_atax17_q_8_fifo_data_out;

    // bubble_select_redist6_i_first_cleanup_xor_atax17_q_8_fifo(BITSELECT,253)
    assign bubble_select_redist6_i_first_cleanup_xor_atax17_q_8_fifo_b = $unsigned(bubble_join_redist6_i_first_cleanup_xor_atax17_q_8_fifo_q[0:0]);

    // bubble_join_redist5_i_inc75_atax12_vt_select_31_b_8_fifo(BITJOIN,249)
    assign bubble_join_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_q = redist5_i_inc75_atax12_vt_select_31_b_8_fifo_data_out;

    // bubble_select_redist5_i_inc75_atax12_vt_select_31_b_8_fifo(BITSELECT,250)
    assign bubble_select_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_b = $unsigned(bubble_join_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_q[30:0]);

    // i_inc75_atax12_vt_join(BITJOIN,36)@10
    assign i_inc75_atax12_vt_join_q = {bubble_select_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_b, VCC_q};

    // i_idxprom70_1_atax21_sel_x(BITSELECT,140)@10
    assign i_idxprom70_1_atax21_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_atax12_vt_join_q[31:0]};

    // i_idxprom70_1_atax21_vt_select_31(BITSELECT,28)@10
    assign i_idxprom70_1_atax21_vt_select_31_b = i_idxprom70_1_atax21_sel_x_b[31:1];

    // i_idxprom70_1_atax21_vt_join(BITJOIN,27)@10
    assign i_idxprom70_1_atax21_vt_join_q = {c_i32_040_q, i_idxprom70_1_atax21_vt_select_31_b, VCC_q};

    // i_arrayidx73_1_atax0_narrow_x(BITSELECT,125)@10
    assign i_arrayidx73_1_atax0_narrow_x_b = i_idxprom70_1_atax21_vt_join_q[61:0];

    // i_arrayidx73_1_atax0_c_i2_01_x(CONSTANT,124)
    assign i_arrayidx73_1_atax0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx73_1_atax0_shift_join_x(BITJOIN,126)@10
    assign i_arrayidx73_1_atax0_shift_join_x_q = {i_arrayidx73_1_atax0_narrow_x_b, i_arrayidx73_1_atax0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1(BITJOIN,193)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_q = i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1(BITSELECT,194)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_q[63:0]);

    // i_arrayidx73_1_atax0_add_x(ADD,123)@10
    assign i_arrayidx73_1_atax0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_y_out4433_atax1_b};
    assign i_arrayidx73_1_atax0_add_x_b = {1'b0, i_arrayidx73_1_atax0_shift_join_x_q};
    assign i_arrayidx73_1_atax0_add_x_o = $unsigned(i_arrayidx73_1_atax0_add_x_a) + $unsigned(i_arrayidx73_1_atax0_add_x_b);
    assign i_arrayidx73_1_atax0_add_x_q = i_arrayidx73_1_atax0_add_x_o[64:0];

    // i_arrayidx73_1_atax0_dupName_0_trunc_sel_x(BITSELECT,128)@10
    assign i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_1_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_16_atax34(BLACKBOX,42)@10
    // in in_i_stall@20000000
    // out out_lsu_memdep_16_o_active@20000000
    // out out_memdep_16_atax_avm_address@20000000
    // out out_memdep_16_atax_avm_burstcount@20000000
    // out out_memdep_16_atax_avm_byteenable@20000000
    // out out_memdep_16_atax_avm_enable@20000000
    // out out_memdep_16_atax_avm_read@20000000
    // out out_memdep_16_atax_avm_write@20000000
    // out out_memdep_16_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_o_writeack@41
    atax_i_llvm_fpga_mem_memdep_16_0 thei_llvm_fpga_mem_memdep_16_atax34 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(bubble_select_redist6_i_first_cleanup_xor_atax17_q_8_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_16_atax34_backStall),
        .in_i_valid(SE_out_redist5_i_inc75_atax12_vt_select_31_b_8_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_c),
        .in_memdep_16_atax_avm_readdata(in_memdep_16_atax_avm_readdata),
        .in_memdep_16_atax_avm_readdatavalid(in_memdep_16_atax_avm_readdatavalid),
        .in_memdep_16_atax_avm_waitrequest(in_memdep_16_atax_avm_waitrequest),
        .in_memdep_16_atax_avm_writeack(in_memdep_16_atax_avm_writeack),
        .out_lsu_memdep_16_o_active(i_llvm_fpga_mem_memdep_16_atax34_out_lsu_memdep_16_o_active),
        .out_memdep_16_atax_avm_address(i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_address),
        .out_memdep_16_atax_avm_burstcount(i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_burstcount),
        .out_memdep_16_atax_avm_byteenable(i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_byteenable),
        .out_memdep_16_atax_avm_enable(i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_enable),
        .out_memdep_16_atax_avm_read(i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_read),
        .out_memdep_16_atax_avm_write(i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_write),
        .out_memdep_16_atax_avm_writedata(i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_16_atax34_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_16_atax34_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_16_atax34_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_16_atax34(STALLENABLE,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_16_atax34_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_16_atax34_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_16_atax34_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_16_atax34_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_16_atax34_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_16_atax34_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_16_atax34_wireValid) | SE_out_i_llvm_fpga_mem_memdep_16_atax34_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_consumed1 = (~ (SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_16_atax34_wireValid) | SE_out_i_llvm_fpga_mem_memdep_16_atax34_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_StallValid = SE_out_i_llvm_fpga_mem_memdep_16_atax34_backStall & SE_out_i_llvm_fpga_mem_memdep_16_atax34_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_toReg0 = SE_out_i_llvm_fpga_mem_memdep_16_atax34_StallValid & SE_out_i_llvm_fpga_mem_memdep_16_atax34_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_toReg1 = SE_out_i_llvm_fpga_mem_memdep_16_atax34_StallValid & SE_out_i_llvm_fpga_mem_memdep_16_atax34_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_or0 = SE_out_i_llvm_fpga_mem_memdep_16_atax34_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_16_atax34_consumed1 & SE_out_i_llvm_fpga_mem_memdep_16_atax34_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_backStall = SE_out_i_llvm_fpga_mem_memdep_16_atax34_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_V0 = SE_out_i_llvm_fpga_mem_memdep_16_atax34_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_16_atax34_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_V1 = SE_out_i_llvm_fpga_mem_memdep_16_atax34_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_16_atax34_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax34_wireValid = i_llvm_fpga_mem_memdep_16_atax34_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg(STALLFIFO,444)
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_16_atax34_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_atax32(LOGICAL,56)@2 + 1
    assign i_masked_atax32_qi = i_notcmp_atax23_q & i_first_cleanup_atax8_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_atax32_delay ( .xin(i_masked_atax32_qi), .xout(i_masked_atax32_q), .ena(SE_i_masked_atax32_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist3_i_masked_atax32_q_70_fifo(STALLFIFO,187)
    assign redist3_i_masked_atax32_q_70_fifo_valid_in = SE_in_redist3_i_masked_atax32_q_70_fifo_V0;
    assign redist3_i_masked_atax32_q_70_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_backStall;
    assign redist3_i_masked_atax32_q_70_fifo_data_in = i_masked_atax32_q;
    assign redist3_i_masked_atax32_q_70_fifo_valid_in_bitsignaltemp = redist3_i_masked_atax32_q_70_fifo_valid_in[0];
    assign redist3_i_masked_atax32_q_70_fifo_stall_in_bitsignaltemp = redist3_i_masked_atax32_q_70_fifo_stall_in[0];
    assign redist3_i_masked_atax32_q_70_fifo_valid_out[0] = redist3_i_masked_atax32_q_70_fifo_valid_out_bitsignaltemp;
    assign redist3_i_masked_atax32_q_70_fifo_stall_out[0] = redist3_i_masked_atax32_q_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_i_masked_atax32_q_70_fifo (
        .valid_in(redist3_i_masked_atax32_q_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_masked_atax32_q_70_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_atax32_q),
        .valid_out(redist3_i_masked_atax32_q_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_masked_atax32_q_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_masked_atax32_q_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg(STALLFIFO,445)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(71),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i4_initerations_push24_atax18(STALLENABLE,300)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push24_atax18_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push24_atax18_wireValid = i_llvm_fpga_push_i4_initerations_push24_atax18_out_valid_out;

    // rightShiftStage0Idx1Rng1_uid169_i_next_initerations_atax0_shift_x(BITSELECT,168)@2
    assign rightShiftStage0Idx1Rng1_uid169_i_next_initerations_atax0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax4_b[3:1];

    // rightShiftStage0Idx1_uid171_i_next_initerations_atax0_shift_x(BITJOIN,170)@2
    assign rightShiftStage0Idx1_uid171_i_next_initerations_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid169_i_next_initerations_atax0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop24_atax4(BITJOIN,217)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop24_atax4_q = i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax4(BITSELECT,218)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop24_atax4_q[3:0]);

    // rightShiftStage0_uid173_i_next_initerations_atax0_shift_x(MUX,172)@2
    assign rightShiftStage0_uid173_i_next_initerations_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid173_i_next_initerations_atax0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax4_b or rightShiftStage0Idx1_uid171_i_next_initerations_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid173_i_next_initerations_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid173_i_next_initerations_atax0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax4_b;
            1'b1 : rightShiftStage0_uid173_i_next_initerations_atax0_shift_x_q = rightShiftStage0Idx1_uid171_i_next_initerations_atax0_shift_x_q;
            default : rightShiftStage0_uid173_i_next_initerations_atax0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_atax10_vt_select_2(BITSELECT,60)@2
    assign i_next_initerations_atax10_vt_select_2_b = rightShiftStage0_uid173_i_next_initerations_atax0_shift_x_q[2:0];

    // i_next_initerations_atax10_vt_join(BITJOIN,59)@2
    assign i_next_initerations_atax10_vt_join_q = {GND_q, i_next_initerations_atax10_vt_select_2_b};

    // i_llvm_fpga_push_i4_initerations_push24_atax18(BLACKBOX,54)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i4_initerations_push24_0 thei_llvm_fpga_push_i4_initerations_push24_atax18 (
        .in_data_in(i_next_initerations_atax10_vt_join_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_feedback_stall_out_24),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push24_atax18_backStall),
        .in_valid_in(SE_i_next_initerations_atax10_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i4_initerations_push24_atax18_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i4_initerations_push24_atax18_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push24_atax18_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push24_atax18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_next_initerations_atax10_vt_join(STALLENABLE,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_atax10_vt_join_fromReg0 <= '0;
            SE_i_next_initerations_atax10_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_atax10_vt_join_fromReg0 <= SE_i_next_initerations_atax10_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations_atax10_vt_join_fromReg1 <= SE_i_next_initerations_atax10_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_atax10_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_atax29_out_stall_out) & SE_i_next_initerations_atax10_vt_join_wireValid) | SE_i_next_initerations_atax10_vt_join_fromReg0;
    assign SE_i_next_initerations_atax10_vt_join_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push24_atax18_out_stall_out) & SE_i_next_initerations_atax10_vt_join_wireValid) | SE_i_next_initerations_atax10_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations_atax10_vt_join_StallValid = SE_i_next_initerations_atax10_vt_join_backStall & SE_i_next_initerations_atax10_vt_join_wireValid;
    assign SE_i_next_initerations_atax10_vt_join_toReg0 = SE_i_next_initerations_atax10_vt_join_StallValid & SE_i_next_initerations_atax10_vt_join_consumed0;
    assign SE_i_next_initerations_atax10_vt_join_toReg1 = SE_i_next_initerations_atax10_vt_join_StallValid & SE_i_next_initerations_atax10_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_atax10_vt_join_or0 = SE_i_next_initerations_atax10_vt_join_consumed0;
    assign SE_i_next_initerations_atax10_vt_join_wireStall = ~ (SE_i_next_initerations_atax10_vt_join_consumed1 & SE_i_next_initerations_atax10_vt_join_or0);
    assign SE_i_next_initerations_atax10_vt_join_backStall = SE_i_next_initerations_atax10_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_atax10_vt_join_V0 = SE_i_next_initerations_atax10_vt_join_wireValid & ~ (SE_i_next_initerations_atax10_vt_join_fromReg0);
    assign SE_i_next_initerations_atax10_vt_join_V1 = SE_i_next_initerations_atax10_vt_join_wireValid & ~ (SE_i_next_initerations_atax10_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_atax10_vt_join_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_V1;
    assign SE_i_next_initerations_atax10_vt_join_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V1 & SE_i_next_initerations_atax10_vt_join_and0;

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4(STALLENABLE,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_consumed1 = (~ (SE_i_next_initerations_atax10_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_wireValid = i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_valid_out;

    // bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg(STALLFIFO,446)
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(71),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg(STALLFIFO,447)
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_V0;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(71),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1(STALLENABLE,397)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and0 = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and1 = bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and2 = bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and3 = redist3_i_masked_atax32_q_70_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and4 = bubble_out_i_llvm_fpga_mem_memdep_16_atax34_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_wireValid = i_llvm_fpga_mem_memdep_15_atax33_out_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_and4;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,255)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,256)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[32:0]);

    // sel_for_coalesced_delay_0(BITSELECT,184)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6(BITJOIN,208)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_q = i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6(BITSELECT,209)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_q[0:0]);

    // bubble_join_redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo(BITJOIN,237)
    assign bubble_join_redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_q = redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_data_out;

    // bubble_select_redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo(BITSELECT,238)
    assign bubble_select_redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_b = $unsigned(bubble_join_redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_q[61:0]);

    // i_arrayidx73_atax0_shift_join_x(BITJOIN,132)@41
    assign i_arrayidx73_atax0_shift_join_x_q = {bubble_select_redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_b, i_arrayidx73_1_atax0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0(BITJOIN,196)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_q = i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0(BITSELECT,197)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_q[63:0]);

    // i_arrayidx73_atax0_add_x(ADD,129)@41
    assign i_arrayidx73_atax0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_b};
    assign i_arrayidx73_atax0_add_x_b = {1'b0, i_arrayidx73_atax0_shift_join_x_q};
    assign i_arrayidx73_atax0_add_x_o = $unsigned(i_arrayidx73_atax0_add_x_a) + $unsigned(i_arrayidx73_atax0_add_x_b);
    assign i_arrayidx73_atax0_add_x_q = i_arrayidx73_atax0_add_x_o[64:0];

    // i_arrayidx73_atax0_dupName_0_trunc_sel_x(BITSELECT,134)@41
    assign i_arrayidx73_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_15_atax33(BLACKBOX,41)@41
    // in in_i_stall@20000000
    // out out_lsu_memdep_15_o_active@20000000
    // out out_memdep_15_atax_avm_address@20000000
    // out out_memdep_15_atax_avm_burstcount@20000000
    // out out_memdep_15_atax_avm_byteenable@20000000
    // out out_memdep_15_atax_avm_enable@20000000
    // out out_memdep_15_atax_avm_read@20000000
    // out out_memdep_15_atax_avm_write@20000000
    // out out_memdep_15_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@72
    // out out_o_writeack@72
    atax_i_llvm_fpga_mem_memdep_15_0 thei_llvm_fpga_mem_memdep_15_atax33 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_atax0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_b),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_i_writedata(sel_for_coalesced_delay_0_b),
        .in_memdep_15_atax_avm_readdata(in_memdep_15_atax_avm_readdata),
        .in_memdep_15_atax_avm_readdatavalid(in_memdep_15_atax_avm_readdatavalid),
        .in_memdep_15_atax_avm_waitrequest(in_memdep_15_atax_avm_waitrequest),
        .in_memdep_15_atax_avm_writeack(in_memdep_15_atax_avm_writeack),
        .out_lsu_memdep_15_o_active(i_llvm_fpga_mem_memdep_15_atax33_out_lsu_memdep_15_o_active),
        .out_memdep_15_atax_avm_address(i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_address),
        .out_memdep_15_atax_avm_burstcount(i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_burstcount),
        .out_memdep_15_atax_avm_byteenable(i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_byteenable),
        .out_memdep_15_atax_avm_enable(i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_enable),
        .out_memdep_15_atax_avm_read(i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_read),
        .out_memdep_15_atax_avm_write(i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_write),
        .out_memdep_15_atax_avm_writedata(i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_15_atax33_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_15_atax33_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1(STALLENABLE,409)
    // Valid signal propagation
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_out_stall_out | ~ (SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0(BLACKBOX,40)@40
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@41
    // out out_stall_out@20000000
    // out out_valid_out@41
    atax_i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_0 thei_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_coalesced_delay_0_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx73_atax0_narrow_x(BITSELECT,131)@2
    assign i_arrayidx73_atax0_narrow_x_b = i_idxprom70_atax11_vt_join_q[61:0];

    // redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo(STALLFIFO,185)
    assign redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_V3;
    assign redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_data_in = i_arrayidx73_atax0_narrow_x_b;
    assign redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_in_bitsignaltemp = redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_in[0];
    assign redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_in_bitsignaltemp = redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_in[0];
    assign redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_out[0] = redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_out_bitsignaltemp;
    assign redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_out[0] = redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(62),
        .IMPL("ram")
    ) theredist1_i_arrayidx73_atax0_narrow_x_b_39_fifo (
        .valid_in(redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx73_atax0_narrow_x_b),
        .valid_out(redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,183)
    assign join_for_coalesced_delay_0_q = {bubble_select_redist6_i_first_cleanup_xor_atax17_q_8_fifo_b, bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,191)
    assign coalesced_delay_0_fifo_valid_in = SE_join_for_coalesced_delay_0_V0;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,351)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_memdep_15_atax33_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = redist1_i_arrayidx73_atax0_narrow_x_b_39_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_and2 = i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_valid_out & SE_out_coalesced_delay_0_fifo_and1;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_y_out4434_atax0_out_valid_out & SE_out_coalesced_delay_0_fifo_and2;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax36(STALLENABLE,292)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_wireValid = i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_valid_out;

    // bubble_join_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo(BITJOIN,246)
    assign bubble_join_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_q = redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_data_out;

    // bubble_select_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo(BITSELECT,247)
    assign bubble_select_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_b = $unsigned(bubble_join_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_16_atax34(BITJOIN,200)
    assign bubble_join_i_llvm_fpga_mem_memdep_16_atax34_q = i_llvm_fpga_mem_memdep_16_atax34_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_16_atax34(BITSELECT,201)
    assign bubble_select_i_llvm_fpga_mem_memdep_16_atax34_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_16_atax34_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi17_push23_atax36(BLACKBOX,50)@41
    // in in_stall_in@20000000
    // out out_data_out@42
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@42
    atax_i_llvm_fpga_push_i1_memdep_phi17_push23_0 thei_llvm_fpga_push_i1_memdep_phi17_push23_atax36 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_16_atax34_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_feedback_stall_out_23),
        .in_keep_going(bubble_select_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_backStall),
        .in_valid_in(SE_out_redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(BITJOIN,240)
    assign bubble_join_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_q = redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_out;

    // bubble_select_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(BITSELECT,241)
    assign bubble_select_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b = $unsigned(bubble_join_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6(BLACKBOX,44)@40
    // in in_stall_in@20000000
    // out out_data_out@41
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@41
    atax_i_llvm_fpga_pop_i1_memdep_phi17_pop23_0 thei_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b),
        .in_feedback_in_23(i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_memdep_phi17_push23_atax36_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_coalesced_delay_0_fifo_backStall),
        .in_valid_in(SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(STALLENABLE,341)
    // Valid signal propagation
    assign SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V0 = SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall = i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax6_out_stall_out | ~ (SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid = redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out;

    // redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(STALLFIFO,186)
    assign redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in = SE_out_atax_B12_merge_reg_aunroll_x_V7;
    assign redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in = SE_out_redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall;
    assign redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_in = bubble_select_atax_B12_merge_reg_aunroll_x_b;
    assign redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in_bitsignaltemp = redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in[0];
    assign redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in_bitsignaltemp = redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in[0];
    assign redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out[0] = redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out_bitsignaltemp;
    assign redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out[0] = redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo (
        .valid_in(redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .valid_out(redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3041(CONSTANT,12)
    assign c_i6_3041_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7(BLACKBOX,48)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7 (
        .in_data_in(c_i6_3041_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_21(i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V6),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_738(CONSTANT,10)
    assign c_i4_738_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_initerations_pop24_atax4(BLACKBOX,47)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i4_initerations_pop24_0 thei_llvm_fpga_pop_i4_initerations_pop24_atax4 (
        .in_data_in(c_i4_738_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_24(i_llvm_fpga_push_i4_initerations_push24_atax18_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i4_initerations_push24_atax18_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax4_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_cleanups_pop25_atax2(BLACKBOX,46)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i4_cleanups_pop25_0 thei_llvm_fpga_pop_i4_cleanups_pop25_atax2 (
        .in_data_in(c_i4_738_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_25(i_llvm_fpga_push_i4_cleanups_push25_atax37_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i4_cleanups_push25_atax37_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop25_atax2_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_334_pop22_atax5(BLACKBOX,45)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i32_i_334_pop22_0 thei_llvm_fpga_pop_i32_i_334_pop22_atax5 (
        .in_data_in(c_i32_040_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_22(i_llvm_fpga_push_i32_i_334_push22_atax22_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_i_334_push22_atax22_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax5_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_atax_B12_merge_reg_aunroll_x_2_reg(STALLFIFO,449)
    assign bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_in = SE_out_atax_B12_merge_reg_aunroll_x_V1;
    assign bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_atax_B12_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_atax_B12_merge_reg_aunroll_x_1_reg(STALLFIFO,448)
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in = SE_out_atax_B12_merge_reg_aunroll_x_V0;
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_atax_B12_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,225)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,226)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,309)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B12_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B12_merge_reg_aunroll_x(BLACKBOX,111)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    atax_B12_merge_reg theatax_B12_merge_reg_aunroll_x (
        .in_stall_in(SE_out_atax_B12_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(atax_B12_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B12_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_atax_B12_merge_reg_aunroll_x(STALLENABLE,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg0 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg1 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg2 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg3 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg4 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg5 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg6 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg7 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg7;
        end
    end
    // Input Stall processing
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg0;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_atax_B12_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg1;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pipeline_keep_going_atax3_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg2;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i32_i_334_pop22_atax5_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg3;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i4_cleanups_pop25_atax2_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg4;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_i4_initerations_pop24_atax4_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg5;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg6;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed7 = (~ (redist2_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg7;
    // Consuming
    assign SE_out_atax_B12_merge_reg_aunroll_x_StallValid = SE_out_atax_B12_merge_reg_aunroll_x_backStall & SE_out_atax_B12_merge_reg_aunroll_x_wireValid;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg0 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed0;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg1 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed1;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg2 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed2;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg3 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed3;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg4 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed4;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg5 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed5;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg6 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed6;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg7 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed7;
    // Backward Stall generation
    assign SE_out_atax_B12_merge_reg_aunroll_x_or0 = SE_out_atax_B12_merge_reg_aunroll_x_consumed0;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or1 = SE_out_atax_B12_merge_reg_aunroll_x_consumed1 & SE_out_atax_B12_merge_reg_aunroll_x_or0;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or2 = SE_out_atax_B12_merge_reg_aunroll_x_consumed2 & SE_out_atax_B12_merge_reg_aunroll_x_or1;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or3 = SE_out_atax_B12_merge_reg_aunroll_x_consumed3 & SE_out_atax_B12_merge_reg_aunroll_x_or2;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or4 = SE_out_atax_B12_merge_reg_aunroll_x_consumed4 & SE_out_atax_B12_merge_reg_aunroll_x_or3;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or5 = SE_out_atax_B12_merge_reg_aunroll_x_consumed5 & SE_out_atax_B12_merge_reg_aunroll_x_or4;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or6 = SE_out_atax_B12_merge_reg_aunroll_x_consumed6 & SE_out_atax_B12_merge_reg_aunroll_x_or5;
    assign SE_out_atax_B12_merge_reg_aunroll_x_wireStall = ~ (SE_out_atax_B12_merge_reg_aunroll_x_consumed7 & SE_out_atax_B12_merge_reg_aunroll_x_or6);
    assign SE_out_atax_B12_merge_reg_aunroll_x_backStall = SE_out_atax_B12_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_atax_B12_merge_reg_aunroll_x_V0 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg0);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V1 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg1);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V2 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg2);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V3 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg3);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V4 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg4);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V5 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg5);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V6 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg6);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V7 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg7);
    // Computing multiple Valid(s)
    assign SE_out_atax_B12_merge_reg_aunroll_x_wireValid = atax_B12_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going_atax3(STALLENABLE,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_atax3_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed1 = (~ (SE_i_next_initerations_atax10_vt_join_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed2 = (~ (SE_in_i_llvm_fpga_push_i32_i_334_push22_atax22_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed3 = (~ (SE_leftShiftStage0_uid165_i_cleanups_shl_atax0_shift_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed4 = (~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv30_push21_atax25_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed5 = (~ (redist4_i_llvm_fpga_pipeline_keep_going_atax3_out_data_out_39_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg5;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed5;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax3_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_atax3_or4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax3_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax3_wireValid = i_llvm_fpga_pipeline_keep_going_atax3_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_atax24(STALLENABLE,294)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_atax24_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_atax24_wireValid = i_llvm_fpga_push_i1_notexitcond_atax24_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_atax24(BLACKBOX,51)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_atax24 (
        .in_data_in(i_exitcond32_atax14_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_atax3_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_atax8_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_atax24_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_atax24_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_atax24_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_atax24_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_atax24_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_atax24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_atax29(STALLENABLE,290)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_atax29_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_atax29_wireValid = i_llvm_fpga_push_i1_lastiniteration_atax29_out_valid_out;

    // i_last_initeration_atax19_sel_x(BITSELECT,142)@2
    assign i_last_initeration_atax19_sel_x_b = i_next_initerations_atax10_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_atax29(BLACKBOX,49)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_atax29 (
        .in_data_in(i_last_initeration_atax19_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_atax3_out_initeration_stall_out),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_atax29_backStall),
        .in_valid_in(SE_i_next_initerations_atax10_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_atax29_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_atax29_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_atax29_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_atax29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B12_merge_reg_aunroll_x(BITJOIN,229)
    assign bubble_join_atax_B12_merge_reg_aunroll_x_q = atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_atax_B12_merge_reg_aunroll_x(BITSELECT,230)
    assign bubble_select_atax_B12_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B12_merge_reg_aunroll_x_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_atax3(BLACKBOX,43)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_atax3 (
        .in_data_in(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_atax29_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_atax29_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_atax24_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_atax24_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_atax3_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_atax3_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_atax3_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_atax3_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_atax3_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_atax3_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_atax3_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_atax3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_atax3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,16)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax3_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_atax3_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax3_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_atax3_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,103)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_atax3_out_pipeline_valid_out;

    // sync_out(GPOUT,109)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,116)
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address = i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_address;
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable = i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_enable;
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read = i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_read;
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write = i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_write;
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata = i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_writedata;
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable = i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_byteenable;
    assign out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount = i_sfc_s_c0_in_for_body69_ataxs_c0_enter21213_atax27_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1110_atax_avm_burstcount;

    // bubble_join_redist3_i_masked_atax32_q_70_fifo(BITJOIN,243)
    assign bubble_join_redist3_i_masked_atax32_q_70_fifo_q = redist3_i_masked_atax32_q_70_fifo_data_out;

    // bubble_select_redist3_i_masked_atax32_q_70_fifo(BITSELECT,244)
    assign bubble_select_redist3_i_masked_atax32_q_70_fifo_b = $unsigned(bubble_join_redist3_i_masked_atax32_q_70_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,117)@72
    assign out_masked = bubble_select_redist3_i_masked_atax32_q_70_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv30_pop21_atax7_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,119)
    assign out_memdep_15_atax_avm_address = i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_address;
    assign out_memdep_15_atax_avm_enable = i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_enable;
    assign out_memdep_15_atax_avm_read = i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_read;
    assign out_memdep_15_atax_avm_write = i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_write;
    assign out_memdep_15_atax_avm_writedata = i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_writedata;
    assign out_memdep_15_atax_avm_byteenable = i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_byteenable;
    assign out_memdep_15_atax_avm_burstcount = i_llvm_fpga_mem_memdep_15_atax33_out_memdep_15_atax_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,120)
    assign out_lsu_memdep_15_o_active = i_llvm_fpga_mem_memdep_15_atax33_out_lsu_memdep_15_o_active;

    // dupName_3_ext_sig_sync_out_x(GPOUT,121)
    assign out_memdep_16_atax_avm_address = i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_address;
    assign out_memdep_16_atax_avm_enable = i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_enable;
    assign out_memdep_16_atax_avm_read = i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_read;
    assign out_memdep_16_atax_avm_write = i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_write;
    assign out_memdep_16_atax_avm_writedata = i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_writedata;
    assign out_memdep_16_atax_avm_byteenable = i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_byteenable;
    assign out_memdep_16_atax_avm_burstcount = i_llvm_fpga_mem_memdep_16_atax34_out_memdep_16_atax_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,122)
    assign out_lsu_memdep_16_o_active = i_llvm_fpga_mem_memdep_16_atax34_out_lsu_memdep_16_o_active;

endmodule
