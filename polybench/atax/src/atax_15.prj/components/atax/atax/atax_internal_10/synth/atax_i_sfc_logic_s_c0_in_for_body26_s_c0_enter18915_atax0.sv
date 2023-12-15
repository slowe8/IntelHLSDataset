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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body26_s_c0_enter18915_atax0
// SystemVerilog created on Wed Dec 13 00:29:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body26_s_c0_enter18915_atax0 (
    input wire [255:0] in_unnamed_atax16_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax16_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax16_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax16_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_atax17_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax17_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax17_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax17_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax16_atax_avm_address,
    output wire [0:0] out_unnamed_atax16_atax_avm_enable,
    output wire [0:0] out_unnamed_atax16_atax_avm_read,
    output wire [0:0] out_unnamed_atax16_atax_avm_write,
    output wire [255:0] out_unnamed_atax16_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax16_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax16_atax_avm_burstcount,
    output wire [31:0] out_unnamed_atax17_atax_avm_address,
    output wire [0:0] out_unnamed_atax17_atax_avm_enable,
    output wire [0:0] out_unnamed_atax17_atax_avm_read,
    output wire [0:0] out_unnamed_atax17_atax_avm_write,
    output wire [31:0] out_unnamed_atax17_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax17_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax17_atax_avm_burstcount,
    output wire [0:0] out_c0_exi8200_0_tpl,
    output wire [0:0] out_c0_exi8200_1_tpl,
    output wire [63:0] out_c0_exi8200_2_tpl,
    output wire [31:0] out_c0_exi8200_3_tpl,
    output wire [0:0] out_c0_exi8200_4_tpl,
    output wire [0:0] out_c0_exi8200_5_tpl,
    output wire [63:0] out_c0_exi8200_6_tpl,
    output wire [0:0] out_c0_exi8200_7_tpl,
    output wire [0:0] out_c0_exi8200_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [63:0] in_c0_eni7_2_tpl,
    input wire [31:0] in_c0_eni7_3_tpl,
    input wire [0:0] in_c0_eni7_4_tpl,
    input wire [63:0] in_c0_eni7_5_tpl,
    input wire [0:0] in_c0_eni7_6_tpl,
    input wire [0:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_A_pmem_q;
    wire [63:0] c_atax_buff_x_pmem_q;
    wire [1:0] c_i2_164_q;
    wire [31:0] c_i32_066_q;
    wire [31:0] c_i32_167_q;
    wire [6:0] c_i7_170_q;
    wire [6:0] c_i7_6268_q;
    wire [1:0] i_arrayidx3213_atax12_vt_const_1_q;
    wire [63:0] i_arrayidx3213_atax12_vt_join_q;
    wire [61:0] i_arrayidx3213_atax12_vt_select_63_b;
    wire [63:0] i_arrayidx3414_atax14_vt_join_q;
    wire [61:0] i_arrayidx3414_atax14_vt_select_63_b;
    wire [1:0] i_cleanups_shl85_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl85_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor87_atax4_q;
    wire [7:0] i_fpga_indvars_iv_next50_atax29_a;
    wire [7:0] i_fpga_indvars_iv_next50_atax29_b;
    logic [7:0] i_fpga_indvars_iv_next50_atax29_o;
    wire [7:0] i_fpga_indvars_iv_next50_atax29_q;
    wire [63:0] i_idxprom31_atax9_vt_join_q;
    wire [31:0] i_idxprom31_atax9_vt_select_31_b;
    wire [32:0] i_inc38_atax19_a;
    wire [32:0] i_inc38_atax19_b;
    logic [32:0] i_inc38_atax19_o;
    wire [32:0] i_inc38_atax19_q;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_atax17_out_primWireOut;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax16_atax13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_burstcount;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_write;
    wire [255:0] i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax17_atax15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_atax6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_add41_pop38_atax16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_add41_pop38_atax16_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_feedback_stall_out_41;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_feedback_stall_out_45;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_i32_j_137_pop39_atax8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_137_pop39_atax8_out_feedback_stall_out_39;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_feedback_stall_out_42;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv49_pop37_atax21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv49_pop37_atax21_out_feedback_stall_out_37;
    wire [63:0] i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_push_f32_add41_push38_atax18_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_f32_add41_push38_atax18_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_exitcond57131_push44_atax37_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_exitcond57131_push44_atax37_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_forked124127_push41_atax33_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i1_forked124127_push41_atax33_out_feedback_valid_out_41;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration83_atax7_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration83_atax7_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notcmp93133_push45_atax39_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp93133_push45_atax39_out_feedback_valid_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond91_atax25_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond91_atax25_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i2_cleanups84_push40_atax28_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i2_cleanups84_push40_atax28_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_i32_j_137_push39_atax20_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_j_137_push39_atax20_out_feedback_valid_out_39;
    wire [63:0] i_llvm_fpga_push_i64_idxprom27128_push42_atax11_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i64_idxprom27128_push42_atax11_out_feedback_valid_out_42;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv49_push37_atax30_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv49_push37_atax30_out_feedback_valid_out_37;
    wire [63:0] i_llvm_fpga_push_p67f32_arrayidx2812130_push43_atax35_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_p67f32_arrayidx2812130_push43_atax35_out_feedback_valid_out_43;
    wire [0:0] i_masked90_atax31_qi;
    reg [0:0] i_masked90_atax31_q;
    wire [0:0] i_next_cleanups89_atax27_s;
    reg [1:0] i_next_cleanups89_atax27_q;
    wire [0:0] i_notcmp77_atax24_q;
    wire [0:0] i_or88_atax26_q;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next50_atax29_sel_x_b;
    wire [31:0] bgTrunc_i_inc38_atax19_sel_x_b;
    wire [64:0] i_arrayidx3213_atax0_add_x_a;
    wire [64:0] i_arrayidx3213_atax0_add_x_b;
    logic [64:0] i_arrayidx3213_atax0_add_x_o;
    wire [64:0] i_arrayidx3213_atax0_add_x_q;
    wire [7:0] i_arrayidx3213_atax0_c_i8_01_x_q;
    wire [55:0] i_arrayidx3213_atax0_narrow_x_b;
    wire [63:0] i_arrayidx3213_atax0_shift_join_x_q;
    wire [64:0] i_arrayidx3213_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx3213_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx3213_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx3213_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx3213_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx3213_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx3213_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx3213_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx3414_atax0_add_x_a;
    wire [64:0] i_arrayidx3414_atax0_add_x_b;
    logic [64:0] i_arrayidx3414_atax0_add_x_o;
    wire [64:0] i_arrayidx3414_atax0_add_x_q;
    wire [63:0] i_arrayidx3414_atax0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup86_atax3_sel_x_b;
    wire [63:0] i_idxprom31_atax9_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    wire [0:0] i_exitcond51_atax22_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl85_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl85_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid150_i_cleanups_shl85_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid152_i_cleanups_shl85_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid152_i_cleanups_shl85_atax0_shift_x_q;
    reg [0:0] redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [0:0] redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q;
    reg [0:0] redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_delay_0;
    reg [0:0] redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_q;
    reg [0:0] redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_0;
    reg [0:0] redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_1;
    reg [63:0] redist3_sync_together97_aunroll_x_in_c0_eni7_2_tpl_1_q;
    reg [0:0] redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_q;
    reg [0:0] redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_delay_0;
    reg [0:0] redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_delay_1;
    reg [63:0] redist6_sync_together97_aunroll_x_in_c0_eni7_5_tpl_1_q;
    reg [0:0] redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_q;
    reg [0:0] redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_delay_0;
    reg [0:0] redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_delay_1;
    reg [0:0] redist8_sync_together97_aunroll_x_in_c0_eni7_7_tpl_6_q;
    reg [0:0] redist9_sync_together97_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist10_sync_together97_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist11_sync_together97_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist12_sync_together97_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist13_sync_together97_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist14_sync_together97_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist14_sync_together97_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist14_sync_together97_aunroll_x_in_i_valid_9_delay_1;
    reg [0:0] redist14_sync_together97_aunroll_x_in_i_valid_9_delay_2;
    reg [0:0] redist15_i_first_cleanup86_atax3_sel_x_b_2_q;
    reg [0:0] redist15_i_first_cleanup86_atax3_sel_x_b_2_delay_0;
    reg [31:0] redist16_bgTrunc_i_inc38_atax19_sel_x_b_2_q;
    reg [31:0] redist16_bgTrunc_i_inc38_atax19_sel_x_b_2_delay_0;
    reg [0:0] redist17_i_masked90_atax31_q_7_q;
    reg [1:0] redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_q;
    reg [1:0] redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_delay_0;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_q;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_0;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_1;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_2;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_data_out_7_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_data_out_7_q;
    reg [0:0] redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2_q;
    reg [0:0] redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2_delay_0;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_0;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_1;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_2;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_3;
    reg [31:0] redist28_i_llvm_fpga_mem_unnamed_atax17_atax15_out_o_readdata_1_q;
    reg [0:0] redist29_i_first_cleanup_xor87_atax4_q_2_q;
    reg [0:0] redist29_i_first_cleanup_xor87_atax4_q_2_delay_0;
    wire redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_reset0;
    wire [31:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ia;
    wire [2:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_aa;
    wire [2:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ab;
    wire [31:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_iq;
    wire [31:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_q;
    wire [2:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i;
    (* preserve *) reg redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_eq;
    reg [2:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_wraddr_q;
    wire [2:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_last_q;
    wire [0:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmpReg_q;
    wire [0:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_notEnable_q;
    wire [0:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena_q;
    wire [0:0] redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_enaAnd_q;
    wire redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_reset0;
    wire [63:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_ia;
    wire [1:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_aa;
    wire [1:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_ab;
    wire [63:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_iq;
    wire [63:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_q;
    wire [1:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_q;
    (* preserve *) reg [1:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_i;
    (* preserve *) reg redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_eq;
    reg [1:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_wraddr_q;
    wire [1:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_last_q;
    wire [0:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_cmp_q;
    (* dont_merge *) reg [0:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_cmpReg_q;
    wire [0:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_notEnable_q;
    wire [0:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_sticky_ena_q;
    wire [0:0] redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_enaAnd_q;
    wire redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_reset0;
    wire [63:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_ia;
    wire [1:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_aa;
    wire [1:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_ab;
    wire [63:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_iq;
    wire [63:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_q;
    wire [1:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt_q;
    (* preserve *) reg [1:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt_i;
    reg [1:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_wraddr_q;
    wire [2:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_last_q;
    wire [2:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmp_b;
    wire [0:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmpReg_q;
    wire [0:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_notEnable_q;
    wire [0:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_sticky_ena_q;
    wire [0:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_enaAnd_q;
    wire redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_reset0;
    wire [63:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_ia;
    wire [1:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_aa;
    wire [1:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_ab;
    wire [63:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_iq;
    wire [63:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_q;
    wire [1:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_q;
    (* preserve *) reg [1:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_i;
    (* preserve *) reg redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_eq;
    reg [1:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_wraddr_q;
    wire [1:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_last_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_cmp_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_cmpReg_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_notEnable_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_sticky_ena_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_enaAnd_q;
    wire redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_reset0;
    wire [63:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_ia;
    wire [1:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_aa;
    wire [1:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_ab;
    wire [63:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_iq;
    wire [63:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_q;
    wire [1:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt_q;
    (* preserve *) reg [1:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt_i;
    reg [1:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_wraddr_q;
    wire [2:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_last_q;
    wire [2:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmp_b;
    wire [0:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmpReg_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_notEnable_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_sticky_ena_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist9_sync_together97_aunroll_x_in_i_valid_1(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together97_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist9_sync_together97_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist10_sync_together97_aunroll_x_in_i_valid_2(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together97_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist10_sync_together97_aunroll_x_in_i_valid_2_q <= $unsigned(redist9_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist11_sync_together97_aunroll_x_in_i_valid_3(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together97_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist11_sync_together97_aunroll_x_in_i_valid_3_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl85_atax0_shift_x(BITSELECT,148)@4
    assign leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl85_atax0_shift_x_in = redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_q[0:0];
    assign leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl85_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl85_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid150_i_cleanups_shl85_atax0_shift_x(BITJOIN,149)@4
    assign leftShiftStage0Idx1_uid150_i_cleanups_shl85_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl85_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid152_i_cleanups_shl85_atax0_shift_x(MUX,151)@4
    assign leftShiftStage0_uid152_i_cleanups_shl85_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid152_i_cleanups_shl85_atax0_shift_x_s or redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_q or leftShiftStage0Idx1_uid150_i_cleanups_shl85_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid152_i_cleanups_shl85_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid152_i_cleanups_shl85_atax0_shift_x_q = redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_q;
            1'b1 : leftShiftStage0_uid152_i_cleanups_shl85_atax0_shift_x_q = leftShiftStage0Idx1_uid150_i_cleanups_shl85_atax0_shift_x_q;
            default : leftShiftStage0_uid152_i_cleanups_shl85_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl85_atax5_vt_select_1(BITSELECT,45)@4
    assign i_cleanups_shl85_atax5_vt_select_1_b = leftShiftStage0_uid152_i_cleanups_shl85_atax0_shift_x_q[1:1];

    // i_cleanups_shl85_atax5_vt_join(BITJOIN,44)@4
    assign i_cleanups_shl85_atax5_vt_join_q = {i_cleanups_shl85_atax5_vt_select_1_b, GND_q};

    // redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2(DELAY,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_delay_0 <= '0;
            redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out);
            redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_q <= redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_delay_0;
        end
    end

    // i_first_cleanup_xor87_atax4(LOGICAL,48)@2
    assign i_first_cleanup_xor87_atax4_q = i_first_cleanup86_atax3_sel_x_b ^ VCC_q;

    // redist29_i_first_cleanup_xor87_atax4_q_2(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_first_cleanup_xor87_atax4_q_2_delay_0 <= '0;
            redist29_i_first_cleanup_xor87_atax4_q_2_q <= '0;
        end
        else
        begin
            redist29_i_first_cleanup_xor87_atax4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor87_atax4_q);
            redist29_i_first_cleanup_xor87_atax4_q_2_q <= redist29_i_first_cleanup_xor87_atax4_q_2_delay_0;
        end
    end

    // i_notcmp77_atax24(LOGICAL,81)@4
    assign i_notcmp77_atax24_q = i_exitcond51_atax22_cmp_nsign_q ^ VCC_q;

    // i_or88_atax26(LOGICAL,82)@4
    assign i_or88_atax26_q = i_notcmp77_atax24_q | redist29_i_first_cleanup_xor87_atax4_q_2_q;

    // i_next_cleanups89_atax27(MUX,80)@4
    assign i_next_cleanups89_atax27_s = i_or88_atax26_q;
    always @(i_next_cleanups89_atax27_s or redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_q or i_cleanups_shl85_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups89_atax27_s)
            1'b0 : i_next_cleanups89_atax27_q = redist22_i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out_2_q;
            1'b1 : i_next_cleanups89_atax27_q = i_cleanups_shl85_atax5_vt_join_q;
            default : i_next_cleanups89_atax27_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups84_push40_atax28(BLACKBOX,74)@4
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    atax_i_llvm_fpga_push_i2_cleanups84_push40_0 thei_llvm_fpga_push_i2_cleanups84_push40_atax28 (
        .in_data_in(i_next_cleanups89_atax27_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_feedback_stall_out_40),
        .in_keep_going81(i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together97_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i2_cleanups84_push40_atax28_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i2_cleanups84_push40_atax28_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q <= $unsigned(in_c0_eni7_1_tpl);
        end
    end

    // c_i2_164(CONSTANT,30)
    assign c_i2_164_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups84_pop40_atax2(BLACKBOX,63)@2
    // out out_feedback_stall_out_40@20000000
    atax_i_llvm_fpga_pop_i2_cleanups84_pop40_0 thei_llvm_fpga_pop_i2_cleanups84_pop40_atax2 (
        .in_data_in(c_i2_164_q),
        .in_dir(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i2_cleanups84_push40_atax28_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i2_cleanups84_push40_atax28_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together97_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup86_atax3_sel_x(BITSELECT,116)@2
    assign i_first_cleanup86_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups84_pop40_atax2_out_data_out[0:0];

    // redist15_i_first_cleanup86_atax3_sel_x_b_2(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_first_cleanup86_atax3_sel_x_b_2_delay_0 <= '0;
            redist15_i_first_cleanup86_atax3_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist15_i_first_cleanup86_atax3_sel_x_b_2_delay_0 <= $unsigned(i_first_cleanup86_atax3_sel_x_b);
            redist15_i_first_cleanup86_atax3_sel_x_b_2_q <= redist15_i_first_cleanup86_atax3_sel_x_b_2_delay_0;
        end
    end

    // c_i7_170(CONSTANT,33)
    assign c_i7_170_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next50_atax29(ADD,49)@4
    assign i_fpga_indvars_iv_next50_atax29_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv49_pop37_atax21_out_data_out};
    assign i_fpga_indvars_iv_next50_atax29_b = {1'b0, c_i7_170_q};
    assign i_fpga_indvars_iv_next50_atax29_o = $unsigned(i_fpga_indvars_iv_next50_atax29_a) + $unsigned(i_fpga_indvars_iv_next50_atax29_b);
    assign i_fpga_indvars_iv_next50_atax29_q = i_fpga_indvars_iv_next50_atax29_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next50_atax29_sel_x(BITSELECT,88)@4
    assign bgTrunc_i_fpga_indvars_iv_next50_atax29_sel_x_b = i_fpga_indvars_iv_next50_atax29_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv49_push37_atax30(BLACKBOX,77)@4
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    atax_i_llvm_fpga_push_i7_fpga_indvars_iv49_push37_0 thei_llvm_fpga_push_i7_fpga_indvars_iv49_push37_atax30 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next50_atax29_sel_x_b),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i7_fpga_indvars_iv49_pop37_atax21_out_feedback_stall_out_37),
        .in_keep_going81(i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together97_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i7_fpga_indvars_iv49_push37_atax30_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i7_fpga_indvars_iv49_push37_atax30_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i7_6268(CONSTANT,34)
    assign c_i7_6268_q = $unsigned(7'b0111110);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv49_pop37_atax21(BLACKBOX,66)@4
    // out out_feedback_stall_out_37@20000000
    atax_i_llvm_fpga_pop_i7_fpga_indvars_iv49_pop37_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv49_pop37_atax21 (
        .in_data_in(c_i7_6268_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q),
        .in_feedback_in_37(i_llvm_fpga_push_i7_fpga_indvars_iv49_push37_atax30_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i7_fpga_indvars_iv49_push37_atax30_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together97_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv49_pop37_atax21_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i7_fpga_indvars_iv49_pop37_atax21_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond51_atax22_cmp_nsign(LOGICAL,144)@4
    assign i_exitcond51_atax22_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv49_pop37_atax21_out_data_out[6:6]));

    // i_llvm_fpga_push_i1_notexitcond91_atax25(BLACKBOX,73)@4
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    atax_i_llvm_fpga_push_i1_notexitcond91_0 thei_llvm_fpga_push_i1_notexitcond91_atax25 (
        .in_data_in(i_exitcond51_atax22_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going81_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup86(redist15_i_first_cleanup86_atax3_sel_x_b_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together97_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond91_atax25_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond91_atax25_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,121)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_lastiniteration83_atax7(BLACKBOX,71)@4
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration83_0 thei_llvm_fpga_push_i1_lastiniteration83_atax7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going81_atax6_out_initeration_stall_out),
        .in_keep_going81(i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration83_atax7_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration83_atax7_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_delay_0 <= '0;
            redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q);
            redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q <= redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pipeline_keep_going81_atax6(BLACKBOX,58)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going81_0 thei_llvm_fpga_pipeline_keep_going81_atax6 (
        .in_data_in(redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration83_atax7_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration83_atax7_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond91_atax25_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond91_atax25_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together97_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going81_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going81_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going81_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going81_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going81_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,36)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going81_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going81_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,85)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going81_atax6_out_pipeline_valid_out;

    // valid_fanout_reg5(REG,125)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_066(CONSTANT,31)
    assign c_i32_066_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,122)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,129)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_i32_167(CONSTANT,32)
    assign c_i32_167_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc38_atax19(ADD,54)@2
    assign i_inc38_atax19_a = {1'b0, i_llvm_fpga_pop_i32_j_137_pop39_atax8_out_data_out};
    assign i_inc38_atax19_b = {1'b0, c_i32_167_q};
    assign i_inc38_atax19_o = $unsigned(i_inc38_atax19_a) + $unsigned(i_inc38_atax19_b);
    assign i_inc38_atax19_q = i_inc38_atax19_o[32:0];

    // bgTrunc_i_inc38_atax19_sel_x(BITSELECT,89)@2
    assign bgTrunc_i_inc38_atax19_sel_x_b = i_inc38_atax19_q[31:0];

    // redist16_bgTrunc_i_inc38_atax19_sel_x_b_2(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_inc38_atax19_sel_x_b_2_delay_0 <= '0;
            redist16_bgTrunc_i_inc38_atax19_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist16_bgTrunc_i_inc38_atax19_sel_x_b_2_delay_0 <= $unsigned(bgTrunc_i_inc38_atax19_sel_x_b);
            redist16_bgTrunc_i_inc38_atax19_sel_x_b_2_q <= redist16_bgTrunc_i_inc38_atax19_sel_x_b_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i32_j_137_push39_atax20(BLACKBOX,75)@4
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    atax_i_llvm_fpga_push_i32_j_137_push39_0 thei_llvm_fpga_push_i32_j_137_push39_atax20 (
        .in_data_in(redist16_bgTrunc_i_inc38_atax19_sel_x_b_2_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_j_137_pop39_atax8_out_feedback_stall_out_39),
        .in_keep_going81(i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_j_137_push39_atax20_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_j_137_push39_atax20_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_137_pop39_atax8(BLACKBOX,64)@2
    // out out_feedback_stall_out_39@20000000
    atax_i_llvm_fpga_pop_i32_j_137_pop39_0 thei_llvm_fpga_pop_i32_j_137_pop39_atax8 (
        .in_data_in(c_i32_066_q),
        .in_dir(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_j_137_push39_atax20_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_j_137_push39_atax20_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_137_pop39_atax8_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_j_137_pop39_atax8_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom31_atax9_sel_x(BITSELECT,117)@2
    assign i_idxprom31_atax9_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_137_pop39_atax8_out_data_out[31:0]};

    // i_idxprom31_atax9_vt_select_31(BITSELECT,53)@2
    assign i_idxprom31_atax9_vt_select_31_b = i_idxprom31_atax9_sel_x_b[31:0];

    // i_idxprom31_atax9_vt_join(BITJOIN,52)@2
    assign i_idxprom31_atax9_vt_join_q = {c_i32_066_q, i_idxprom31_atax9_vt_select_31_b};

    // i_arrayidx3213_atax0_dupName_0_narrow_x(BITSELECT,100)@2
    assign i_arrayidx3213_atax0_dupName_0_narrow_x_b = i_idxprom31_atax9_vt_join_q[61:0];

    // i_arrayidx3213_atax0_dupName_0_shift_join_x(BITJOIN,101)@2
    assign i_arrayidx3213_atax0_dupName_0_shift_join_x_q = {i_arrayidx3213_atax0_dupName_0_narrow_x_b, i_arrayidx3213_atax12_vt_const_1_q};

    // valid_fanout_reg3(REG,123)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // redist12_sync_together97_aunroll_x_in_i_valid_4(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together97_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist12_sync_together97_aunroll_x_in_i_valid_4_q <= $unsigned(redist11_sync_together97_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg4(REG,124)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist12_sync_together97_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2_delay_0 <= '0;
            redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out);
            redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2_q <= redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2_delay_0;
        end
    end

    // redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_notEnable(LOGICAL,219)
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_nor(LOGICAL,220)
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_nor_q = ~ (redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_notEnable_q | redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_sticky_ena_q);

    // redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_last(CONSTANT,216)
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_last_q = $unsigned(2'b01);

    // redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_cmp(LOGICAL,217)
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_cmp_q = $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_last_q == redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_cmpReg(REG,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_cmpReg_q <= $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_cmp_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_sticky_ena(REG,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_nor_q == 1'b1)
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_sticky_ena_q <= $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_cmpReg_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_enaAnd(LOGICAL,222)
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_enaAnd_q = redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_sticky_ena_q & VCC_q;

    // redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt(COUNTER,214)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_i <= 2'd0;
            redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_i == 2'd1)
            begin
                redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_eq <= 1'b0;
            end
            if (redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_eq == 1'b1)
            begin
                redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_q = redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_i[1:0];

    // redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_wraddr(REG,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_wraddr_q <= $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem(DUALMEM,213)
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_ia = $unsigned(i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out);
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_aa = redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_wraddr_q;
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_ab = redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_rdcnt_q;
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone 10 GX")
    ) redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_dmem (
        .clocken1(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_aa),
        .data_a(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_ab),
        .q_b(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_q = redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_iq[63:0];

    // i_llvm_fpga_push_i64_idxprom27128_push42_atax11(BLACKBOX,76)@6
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    atax_i_llvm_fpga_push_i64_idxprom27128_push42_0 thei_llvm_fpga_push_i64_idxprom27128_push42_atax11 (
        .in_data_in(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_feedback_stall_out_42),
        .in_keep_going81(redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i64_idxprom27128_push42_atax11_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i64_idxprom27128_push42_atax11_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together97_aunroll_x_in_c0_eni7_2_tpl_1(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together97_aunroll_x_in_c0_eni7_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together97_aunroll_x_in_c0_eni7_2_tpl_1_q <= $unsigned(in_c0_eni7_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10(BLACKBOX,65)@2
    // out out_feedback_stall_out_42@20000000
    atax_i_llvm_fpga_pop_i64_idxprom27128_pop42_0 thei_llvm_fpga_pop_i64_idxprom27128_pop42_atax10 (
        .in_data_in(redist3_sync_together97_aunroll_x_in_c0_eni7_2_tpl_1_q),
        .in_dir(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i64_idxprom27128_push42_atax11_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i64_idxprom27128_push42_atax11_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx3213_atax0_narrow_x(BITSELECT,97)@2
    assign i_arrayidx3213_atax0_narrow_x_b = i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out[55:0];

    // i_arrayidx3213_atax0_c_i8_01_x(CONSTANT,96)
    assign i_arrayidx3213_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx3213_atax0_shift_join_x(BITJOIN,98)@2
    assign i_arrayidx3213_atax0_shift_join_x_q = {i_arrayidx3213_atax0_narrow_x_b, i_arrayidx3213_atax0_c_i8_01_x_q};

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx3213_atax0_add_x(ADD,94)@2
    assign i_arrayidx3213_atax0_add_x_a = {1'b0, c_atax_buff_A_pmem_q};
    assign i_arrayidx3213_atax0_add_x_b = {1'b0, i_arrayidx3213_atax0_shift_join_x_q};
    assign i_arrayidx3213_atax0_add_x_o = $unsigned(i_arrayidx3213_atax0_add_x_a) + $unsigned(i_arrayidx3213_atax0_add_x_b);
    assign i_arrayidx3213_atax0_add_x_q = i_arrayidx3213_atax0_add_x_o[64:0];

    // i_arrayidx3213_atax0_dupName_0_trunc_sel_x(BITSELECT,104)@2
    assign i_arrayidx3213_atax0_dupName_0_trunc_sel_x_b = i_arrayidx3213_atax0_add_x_q[63:0];

    // i_arrayidx3213_atax0_dupName_0_add_x(ADD,99)@2
    assign i_arrayidx3213_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx3213_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx3213_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx3213_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx3213_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx3213_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx3213_atax0_dupName_0_add_x_b);
    assign i_arrayidx3213_atax0_dupName_0_add_x_q = i_arrayidx3213_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx3213_atax0_dupName_2_trunc_sel_x(BITSELECT,105)@2
    assign i_arrayidx3213_atax0_dupName_2_trunc_sel_x_b = i_arrayidx3213_atax0_dupName_0_add_x_q[63:0];

    // i_arrayidx3213_atax12_vt_select_63(BITSELECT,39)@2
    assign i_arrayidx3213_atax12_vt_select_63_b = i_arrayidx3213_atax0_dupName_2_trunc_sel_x_b[63:2];

    // i_arrayidx3213_atax12_vt_const_1(CONSTANT,37)
    assign i_arrayidx3213_atax12_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx3213_atax12_vt_join(BITJOIN,38)@2
    assign i_arrayidx3213_atax12_vt_join_q = {i_arrayidx3213_atax12_vt_select_63_b, i_arrayidx3213_atax12_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax16_atax13(BLACKBOX,56)@2
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_atax16_atax_avm_address@20000000
    // out out_unnamed_atax16_atax_avm_burstcount@20000000
    // out out_unnamed_atax16_atax_avm_byteenable@20000000
    // out out_unnamed_atax16_atax_avm_enable@20000000
    // out out_unnamed_atax16_atax_avm_read@20000000
    // out out_unnamed_atax16_atax_avm_write@20000000
    // out out_unnamed_atax16_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_16_atax0 thei_llvm_fpga_mem_unnamed_atax16_atax13 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx3213_atax12_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor87_atax4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_atax16_atax_avm_readdata(in_unnamed_atax16_atax_avm_readdata),
        .in_unnamed_atax16_atax_avm_readdatavalid(in_unnamed_atax16_atax_avm_readdatavalid),
        .in_unnamed_atax16_atax_avm_waitrequest(in_unnamed_atax16_atax_avm_waitrequest),
        .in_unnamed_atax16_atax_avm_writeack(in_unnamed_atax16_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax16_atax13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax16_atax_avm_address(i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_address),
        .out_unnamed_atax16_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_burstcount),
        .out_unnamed_atax16_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_byteenable),
        .out_unnamed_atax16_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_enable),
        .out_unnamed_atax16_atax_avm_read(i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_read),
        .out_unnamed_atax16_atax_avm_write(i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_write),
        .out_unnamed_atax16_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,92)
    assign out_unnamed_atax16_atax_avm_address = i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_address;
    assign out_unnamed_atax16_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_enable;
    assign out_unnamed_atax16_atax_avm_read = i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_read;
    assign out_unnamed_atax16_atax_avm_write = i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_write;
    assign out_unnamed_atax16_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_writedata;
    assign out_unnamed_atax16_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_byteenable;
    assign out_unnamed_atax16_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax16_atax13_out_unnamed_atax16_atax_avm_burstcount;

    // valid_fanout_reg6(REG,126)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // c_atax_buff_x_pmem(CONSTANT,5)
    assign c_atax_buff_x_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx3414_atax0_add_x(ADD,106)@2
    assign i_arrayidx3414_atax0_add_x_a = {1'b0, c_atax_buff_x_pmem_q};
    assign i_arrayidx3414_atax0_add_x_b = {1'b0, i_arrayidx3213_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx3414_atax0_add_x_o = $unsigned(i_arrayidx3414_atax0_add_x_a) + $unsigned(i_arrayidx3414_atax0_add_x_b);
    assign i_arrayidx3414_atax0_add_x_q = i_arrayidx3414_atax0_add_x_o[64:0];

    // i_arrayidx3414_atax0_dupName_0_trunc_sel_x(BITSELECT,111)@2
    assign i_arrayidx3414_atax0_dupName_0_trunc_sel_x_b = i_arrayidx3414_atax0_add_x_q[63:0];

    // i_arrayidx3414_atax14_vt_select_63(BITSELECT,42)@2
    assign i_arrayidx3414_atax14_vt_select_63_b = i_arrayidx3414_atax0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx3414_atax14_vt_join(BITJOIN,41)@2
    assign i_arrayidx3414_atax14_vt_join_q = {i_arrayidx3414_atax14_vt_select_63_b, i_arrayidx3213_atax12_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax17_atax15(BLACKBOX,57)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_atax17_atax_avm_address@20000000
    // out out_unnamed_atax17_atax_avm_burstcount@20000000
    // out out_unnamed_atax17_atax_avm_byteenable@20000000
    // out out_unnamed_atax17_atax_avm_enable@20000000
    // out out_unnamed_atax17_atax_avm_read@20000000
    // out out_unnamed_atax17_atax_avm_write@20000000
    // out out_unnamed_atax17_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_17_atax0 thei_llvm_fpga_mem_unnamed_atax17_atax15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx3414_atax14_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor87_atax4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_atax17_atax_avm_readdata(in_unnamed_atax17_atax_avm_readdata),
        .in_unnamed_atax17_atax_avm_readdatavalid(in_unnamed_atax17_atax_avm_readdatavalid),
        .in_unnamed_atax17_atax_avm_waitrequest(in_unnamed_atax17_atax_avm_waitrequest),
        .in_unnamed_atax17_atax_avm_writeack(in_unnamed_atax17_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax17_atax15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax17_atax_avm_address(i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_address),
        .out_unnamed_atax17_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_burstcount),
        .out_unnamed_atax17_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_byteenable),
        .out_unnamed_atax17_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_enable),
        .out_unnamed_atax17_atax_avm_read(i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_read),
        .out_unnamed_atax17_atax_avm_write(i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_write),
        .out_unnamed_atax17_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,93)
    assign out_unnamed_atax17_atax_avm_address = i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_address;
    assign out_unnamed_atax17_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_enable;
    assign out_unnamed_atax17_atax_avm_read = i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_read;
    assign out_unnamed_atax17_atax_avm_write = i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_write;
    assign out_unnamed_atax17_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_writedata;
    assign out_unnamed_atax17_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_byteenable;
    assign out_unnamed_atax17_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax17_atax15_out_unnamed_atax17_atax_avm_burstcount;

    // redist13_sync_together97_aunroll_x_in_i_valid_5(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together97_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist13_sync_together97_aunroll_x_in_i_valid_5_q <= $unsigned(redist12_sync_together97_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist14_sync_together97_aunroll_x_in_i_valid_9(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together97_aunroll_x_in_i_valid_9_delay_0 <= '0;
            redist14_sync_together97_aunroll_x_in_i_valid_9_delay_1 <= '0;
            redist14_sync_together97_aunroll_x_in_i_valid_9_delay_2 <= '0;
            redist14_sync_together97_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist14_sync_together97_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist13_sync_together97_aunroll_x_in_i_valid_5_q);
            redist14_sync_together97_aunroll_x_in_i_valid_9_delay_1 <= redist14_sync_together97_aunroll_x_in_i_valid_9_delay_0;
            redist14_sync_together97_aunroll_x_in_i_valid_9_delay_2 <= redist14_sync_together97_aunroll_x_in_i_valid_9_delay_1;
            redist14_sync_together97_aunroll_x_in_i_valid_9_q <= redist14_sync_together97_aunroll_x_in_i_valid_9_delay_2;
        end
    end

    // valid_fanout_reg0(REG,120)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg16(REG,136)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist13_sync_together97_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg17(REG,137)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp93133_push45_atax39(BLACKBOX,72)@11
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    atax_i_llvm_fpga_push_i1_notcmp93133_push45_0 thei_llvm_fpga_push_i1_notcmp93133_push45_atax39 (
        .in_data_in(redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_feedback_stall_out_45),
        .in_keep_going81(redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i1_notcmp93133_push45_atax39_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i1_notcmp93133_push45_atax39_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_0 <= '0;
            redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_1 <= '0;
            redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_q <= '0;
        end
        else
        begin
            redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_0 <= $unsigned(redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q);
            redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_1 <= redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_0;
            redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_q <= redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_1;
        end
    end

    // redist8_sync_together97_aunroll_x_in_c0_eni7_7_tpl_6(DELAY,161)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together97_aunroll_x_in_c0_eni7_7_tpl_6 ( .xin(in_c0_eni7_7_tpl), .xout(redist8_sync_together97_aunroll_x_in_c0_eni7_7_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38(BLACKBOX,62)@7
    // out out_feedback_stall_out_45@20000000
    atax_i_llvm_fpga_pop_i1_notcmp93133_pop45_0 thei_llvm_fpga_pop_i1_notcmp93133_pop45_atax38 (
        .in_data_in(redist8_sync_together97_aunroll_x_in_c0_eni7_7_tpl_6_q),
        .in_dir(redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_q),
        .in_feedback_in_45(i_llvm_fpga_push_i1_notcmp93133_push45_atax39_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i1_notcmp93133_push45_atax39_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_0 <= '0;
            redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_1 <= '0;
            redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_2 <= '0;
            redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out);
            redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_1 <= redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_0;
            redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_2 <= redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_1;
            redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_q <= redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg14(REG,134)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg15(REG,135)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond57131_push44_atax37(BLACKBOX,69)@4
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    atax_i_llvm_fpga_push_i1_exitcond57131_push44_0 thei_llvm_fpga_push_i1_exitcond57131_push44_atax37 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_feedback_stall_out_44),
        .in_keep_going81(i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_exitcond57131_push44_atax37_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_exitcond57131_push44_atax37_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_delay_0 <= '0;
            redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_delay_1 <= '0;
            redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_q <= '0;
        end
        else
        begin
            redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_delay_0 <= $unsigned(in_c0_eni7_6_tpl);
            redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_delay_1 <= redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_delay_0;
            redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_q <= redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36(BLACKBOX,60)@4
    // out out_feedback_stall_out_44@20000000
    atax_i_llvm_fpga_pop_i1_exitcond57131_pop44_0 thei_llvm_fpga_pop_i1_exitcond57131_pop44_atax36 (
        .in_data_in(redist7_sync_together97_aunroll_x_in_c0_eni7_6_tpl_3_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_exitcond57131_push44_atax37_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_exitcond57131_push44_atax37_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_data_out_7(DELAY,178)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist25_i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_data_out_7 ( .xin(i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_data_out), .xout(redist25_i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_notEnable(LOGICAL,209)
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_nor(LOGICAL,210)
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_nor_q = ~ (redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_notEnable_q | redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_sticky_ena_q);

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_last(CONSTANT,206)
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_last_q = $unsigned(3'b010);

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmp(LOGICAL,207)
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmp_b = {1'b0, redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt_q};
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmp_q = $unsigned(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_last_q == redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmpReg(REG,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmpReg_q <= $unsigned(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmp_q);
        end
    end

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_sticky_ena(REG,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_nor_q == 1'b1)
        begin
            redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_sticky_ena_q <= $unsigned(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_cmpReg_q);
        end
    end

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_enaAnd(LOGICAL,212)
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_enaAnd_q = redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_sticky_ena_q & VCC_q;

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt(COUNTER,204)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt_i <= $unsigned(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt_q = redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt_i[1:0];

    // redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_notEnable(LOGICAL,199)
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_nor(LOGICAL,200)
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_nor_q = ~ (redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_notEnable_q | redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_sticky_ena_q);

    // redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_last(CONSTANT,196)
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_last_q = $unsigned(2'b01);

    // redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_cmp(LOGICAL,197)
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_cmp_q = $unsigned(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_last_q == redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_cmpReg(REG,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_cmpReg_q <= $unsigned(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_cmp_q);
        end
    end

    // redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_sticky_ena(REG,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_nor_q == 1'b1)
        begin
            redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_sticky_ena_q <= $unsigned(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_cmpReg_q);
        end
    end

    // redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_enaAnd(LOGICAL,202)
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_enaAnd_q = redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_sticky_ena_q & VCC_q;

    // redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt(COUNTER,194)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_i <= 2'd0;
            redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_i == 2'd1)
            begin
                redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_eq <= 1'b0;
            end
            if (redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_eq == 1'b1)
            begin
                redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_i <= $unsigned(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_i <= $unsigned(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_q = redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_i[1:0];

    // valid_fanout_reg12(REG,132)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,133)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist12_sync_together97_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_p67f32_arrayidx2812130_push43_atax35(BLACKBOX,78)@6
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    atax_i_llvm_fpga_push_p67f32_arrayidx2812130_push43_0 thei_llvm_fpga_push_p67f32_arrayidx2812130_push43_atax35 (
        .in_data_in(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_feedback_stall_out_43),
        .in_keep_going81(redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_p67f32_arrayidx2812130_push43_atax35_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_p67f32_arrayidx2812130_push43_atax35_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together97_aunroll_x_in_c0_eni7_5_tpl_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together97_aunroll_x_in_c0_eni7_5_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together97_aunroll_x_in_c0_eni7_5_tpl_1_q <= $unsigned(in_c0_eni7_5_tpl);
        end
    end

    // i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34(BLACKBOX,67)@2
    // out out_feedback_stall_out_43@20000000
    atax_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_0 thei_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34 (
        .in_data_in(redist6_sync_together97_aunroll_x_in_c0_eni7_5_tpl_1_q),
        .in_dir(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_p67f32_arrayidx2812130_push43_atax35_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_p67f32_arrayidx2812130_push43_atax35_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_wraddr(REG,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_wraddr_q <= $unsigned(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_q);
        end
    end

    // redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem(DUALMEM,193)
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_ia = $unsigned(i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out);
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_aa = redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_wraddr_q;
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_ab = redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_rdcnt_q;
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone 10 GX")
    ) redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_dmem (
        .clocken1(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_aa),
        .data_a(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_ab),
        .q_b(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_q = redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_iq[63:0];

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_wraddr(REG,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_wraddr_q <= $unsigned(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt_q);
        end
    end

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem(DUALMEM,203)
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_ia = $unsigned(redist18_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_4_mem_q);
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_aa = redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_wraddr_q;
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_ab = redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_rdcnt_q;
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone 10 GX")
    ) redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_dmem (
        .clocken1(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_aa),
        .data_a(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_ab),
        .q_b(redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_q = redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_iq[63:0];

    // valid_fanout_reg10(REG,130)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg11(REG,131)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_forked124127_push41_atax33(BLACKBOX,70)@4
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    atax_i_llvm_fpga_push_i1_forked124127_push41_0 thei_llvm_fpga_push_i1_forked124127_push41_atax33 (
        .in_data_in(i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_data_out),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_feedback_stall_out_41),
        .in_keep_going81(i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i1_forked124127_push41_atax33_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i1_forked124127_push41_atax33_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_delay_0 <= '0;
            redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_delay_1 <= '0;
            redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_q <= '0;
        end
        else
        begin
            redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_delay_0 <= $unsigned(in_c0_eni7_4_tpl);
            redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_delay_1 <= redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_delay_0;
            redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_q <= redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_forked124127_pop41_atax32(BLACKBOX,61)@4
    // out out_feedback_stall_out_41@20000000
    atax_i_llvm_fpga_pop_i1_forked124127_pop41_0 thei_llvm_fpga_pop_i1_forked124127_pop41_atax32 (
        .in_data_in(redist5_sync_together97_aunroll_x_in_c0_eni7_4_tpl_3_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q),
        .in_feedback_in_41(i_llvm_fpga_push_i1_forked124127_push41_atax33_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i1_forked124127_push41_atax33_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_data_out_7(DELAY,177)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_data_out_7 ( .xin(i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_data_out), .xout(redist24_i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked90_atax31(LOGICAL,79)@4 + 1
    assign i_masked90_atax31_qi = i_notcmp77_atax24_q & redist15_i_first_cleanup86_atax3_sel_x_b_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked90_atax31_delay ( .xin(i_masked90_atax31_qi), .xout(i_masked90_atax31_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_masked90_atax31_q_7(DELAY,170)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_i_masked90_atax31_q_7 ( .xin(i_masked90_atax31_q), .xout(redist17_i_masked90_atax31_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg7(REG,127)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist13_sync_together97_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg8(REG,128)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_f32_add41_push38_atax18(BLACKBOX,68)@11
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    atax_i_llvm_fpga_push_f32_add41_push38_0 thei_llvm_fpga_push_f32_add41_push38_atax18 (
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add_atax17_out_primWireOut),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_f32_add41_pop38_atax16_out_feedback_stall_out_38),
        .in_keep_going81(redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_f32_add41_push38_atax18_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_f32_add41_push38_atax18_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_notEnable(LOGICAL,189)
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_nor(LOGICAL,190)
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_nor_q = ~ (redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_notEnable_q | redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena_q);

    // redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_last(CONSTANT,186)
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmp(LOGICAL,187)
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmp_q = $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_last_q == redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmpReg(REG,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmpReg_q <= $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmp_q);
        end
    end

    // redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena(REG,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_nor_q == 1'b1)
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena_q <= $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmpReg_q);
        end
    end

    // redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_enaAnd(LOGICAL,192)
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_enaAnd_q = redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena_q & VCC_q;

    // redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt(COUNTER,184)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i <= 3'd0;
            redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i == 3'd3)
            begin
                redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i <= $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i <= $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_q = redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i[2:0];

    // redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_wraddr(REG,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_wraddr_q <= $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_q);
        end
    end

    // redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem(DUALMEM,183)
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ia = $unsigned(in_c0_eni7_3_tpl);
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_aa = redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_wraddr_q;
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ab = redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_q;
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(5),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone 10 GX")
    ) redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_dmem (
        .clocken1(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_aa),
        .data_a(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ab),
        .q_b(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_q = redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_add41_pop38_atax16(BLACKBOX,59)@7
    // out out_feedback_stall_out_38@20000000
    atax_i_llvm_fpga_pop_f32_add41_pop38_0 thei_llvm_fpga_pop_f32_add41_pop38_atax16 (
        .in_data_in(redist4_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_q),
        .in_dir(redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_q),
        .in_feedback_in_38(i_llvm_fpga_push_f32_add41_push38_atax18_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_f32_add41_push38_atax18_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_f32_add41_pop38_atax16_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_f32_add41_pop38_atax16_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_mem_unnamed_atax17_atax15_out_o_readdata_1(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_mem_unnamed_atax17_atax15_out_o_readdata_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_mem_unnamed_atax17_atax15_out_o_readdata_1_q <= $unsigned(i_llvm_fpga_mem_unnamed_atax17_atax15_out_o_readdata);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add_atax17(BLACKBOX,55)@7
    // out out_primWireOut@11
    atax_flt_i_sfc_logic_s_c0_in_for_body26_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_atax17 (
        .in_0(i_llvm_fpga_mem_unnamed_atax16_atax13_out_o_readdata),
        .in_1(redist28_i_llvm_fpga_mem_unnamed_atax17_atax15_out_o_readdata_1_q),
        .in_2(i_llvm_fpga_pop_f32_add41_pop38_atax16_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_atax17_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_notEnable(LOGICAL,229)
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_nor(LOGICAL,230)
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_nor_q = ~ (redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_notEnable_q | redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_sticky_ena_q);

    // redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_last(CONSTANT,226)
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_last_q = $unsigned(3'b010);

    // redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmp(LOGICAL,227)
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmp_b = {1'b0, redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt_q};
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmp_q = $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_last_q == redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmpReg(REG,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmpReg_q <= $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmp_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_sticky_ena(REG,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_nor_q == 1'b1)
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_sticky_ena_q <= $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_cmpReg_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_enaAnd(LOGICAL,232)
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_enaAnd_q = redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_sticky_ena_q & VCC_q;

    // redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt(COUNTER,224)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt_i <= $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt_q = redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt_i[1:0];

    // redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_wraddr(REG,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_wraddr_q <= $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem(DUALMEM,223)
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_ia = $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_4_mem_q);
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_aa = redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_wraddr_q;
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_ab = redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_rdcnt_q;
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone 10 GX")
    ) redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_dmem (
        .clocken1(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_aa),
        .data_a(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_ab),
        .q_b(redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_q = redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_iq[63:0];

    // redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_0 <= '0;
            redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_1 <= '0;
            redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_2 <= '0;
            redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_3 <= '0;
            redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_0 <= $unsigned(redist26_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_2_q);
            redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_1 <= redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_0;
            redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_2 <= redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_1;
            redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_3 <= redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_2;
            redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_q <= redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_delay_3;
        end
    end

    // sync_out_aunroll_x(GPOUT,118)@11
    assign out_c0_exi8200_0_tpl = GND_q;
    assign out_c0_exi8200_1_tpl = redist27_i_llvm_fpga_pipeline_keep_going81_atax6_out_data_out_7_q;
    assign out_c0_exi8200_2_tpl = redist21_i_llvm_fpga_pop_i64_idxprom27128_pop42_atax10_out_data_out_9_mem_q;
    assign out_c0_exi8200_3_tpl = i_llvm_fpga_fp_multadd_mult_add_atax17_out_primWireOut;
    assign out_c0_exi8200_4_tpl = redist17_i_masked90_atax31_q_7_q;
    assign out_c0_exi8200_5_tpl = redist24_i_llvm_fpga_pop_i1_forked124127_pop41_atax32_out_data_out_7_q;
    assign out_c0_exi8200_6_tpl = redist19_i_llvm_fpga_pop_p67f32_arrayidx2812130_pop43_atax34_out_data_out_9_mem_q;
    assign out_c0_exi8200_7_tpl = redist25_i_llvm_fpga_pop_i1_exitcond57131_pop44_atax36_out_data_out_7_q;
    assign out_c0_exi8200_8_tpl = redist23_i_llvm_fpga_pop_i1_notcmp93133_pop45_atax38_out_data_out_4_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
