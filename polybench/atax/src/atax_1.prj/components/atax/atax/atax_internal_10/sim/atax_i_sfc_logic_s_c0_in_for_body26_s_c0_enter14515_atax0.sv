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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body26_s_c0_enter14515_atax0
// SystemVerilog created on Tue Jan  2 20:41:09 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body26_s_c0_enter14515_atax0 (
    input wire [127:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_atax13_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax13_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax13_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax13_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [127:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [15:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    output wire [31:0] out_unnamed_atax13_atax_avm_address,
    output wire [0:0] out_unnamed_atax13_atax_avm_enable,
    output wire [0:0] out_unnamed_atax13_atax_avm_read,
    output wire [0:0] out_unnamed_atax13_atax_avm_write,
    output wire [31:0] out_unnamed_atax13_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax13_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax13_atax_avm_burstcount,
    output wire [0:0] out_c0_exi8156_0_tpl,
    output wire [0:0] out_c0_exi8156_1_tpl,
    output wire [63:0] out_c0_exi8156_2_tpl,
    output wire [31:0] out_c0_exi8156_3_tpl,
    output wire [0:0] out_c0_exi8156_4_tpl,
    output wire [0:0] out_c0_exi8156_5_tpl,
    output wire [63:0] out_c0_exi8156_6_tpl,
    output wire [0:0] out_c0_exi8156_7_tpl,
    output wire [0:0] out_c0_exi8156_8_tpl,
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
    wire [1:0] i_arrayidx329_atax12_vt_const_1_q;
    wire [63:0] i_arrayidx329_atax12_vt_join_q;
    wire [61:0] i_arrayidx329_atax12_vt_select_63_b;
    wire [63:0] i_arrayidx3410_atax14_vt_join_q;
    wire [61:0] i_arrayidx3410_atax14_vt_select_63_b;
    wire [1:0] i_cleanups_shl48_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl48_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor50_atax4_q;
    wire [7:0] i_fpga_indvars_iv_next12_atax29_a;
    wire [7:0] i_fpga_indvars_iv_next12_atax29_b;
    logic [7:0] i_fpga_indvars_iv_next12_atax29_o;
    wire [7:0] i_fpga_indvars_iv_next12_atax29_q;
    wire [63:0] i_idxprom31_atax9_vt_join_q;
    wire [31:0] i_idxprom31_atax9_vt_select_31_b;
    wire [32:0] i_inc38_atax19_a;
    wire [32:0] i_inc38_atax19_b;
    logic [32:0] i_inc38_atax19_o;
    wire [32:0] i_inc38_atax19_q;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_atax17_out_primWireOut;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax12_atax13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_burstcount;
    wire [15:0] i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_write;
    wire [127:0] i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax13_atax15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_atax6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_add41_pop31_atax16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_add41_pop31_atax16_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_feedback_stall_out_37;
    wire [0:0] i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_feedback_stall_out_38;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_feedback_stall_out_32;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_feedback_stall_out_35;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop30_atax21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop30_atax21_out_feedback_stall_out_30;
    wire [63:0] i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_push_f32_add41_push31_atax18_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_f32_add41_push31_atax18_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1994_push37_atax37_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1994_push37_atax37_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i1_forked8790_push34_atax33_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_forked8790_push34_atax33_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration46_atax7_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration46_atax7_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5696_push38_atax39_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5696_push38_atax39_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond54_atax25_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond54_atax25_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i2_cleanups47_push33_atax28_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i2_cleanups47_push33_atax28_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_i32_j_137_push32_atax20_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i32_j_137_push32_atax20_out_feedback_valid_out_32;
    wire [63:0] i_llvm_fpga_push_i64_idxprom2791_push35_atax11_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i64_idxprom2791_push35_atax11_out_feedback_valid_out_35;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv11_push30_atax30_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv11_push30_atax30_out_feedback_valid_out_30;
    wire [63:0] i_llvm_fpga_push_p67f32_arrayidx28893_push36_atax35_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_p67f32_arrayidx28893_push36_atax35_out_feedback_valid_out_36;
    wire [0:0] i_masked53_atax31_qi;
    reg [0:0] i_masked53_atax31_q;
    wire [0:0] i_next_cleanups52_atax27_s;
    reg [1:0] i_next_cleanups52_atax27_q;
    wire [0:0] i_notcmp40_atax24_q;
    wire [0:0] i_or51_atax26_q;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next12_atax29_sel_x_b;
    wire [31:0] bgTrunc_i_inc38_atax19_sel_x_b;
    wire [64:0] i_arrayidx329_atax0_add_x_a;
    wire [64:0] i_arrayidx329_atax0_add_x_b;
    logic [64:0] i_arrayidx329_atax0_add_x_o;
    wire [64:0] i_arrayidx329_atax0_add_x_q;
    wire [7:0] i_arrayidx329_atax0_c_i8_01_x_q;
    wire [55:0] i_arrayidx329_atax0_narrow_x_b;
    wire [63:0] i_arrayidx329_atax0_shift_join_x_q;
    wire [64:0] i_arrayidx329_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx329_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx329_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx329_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx329_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx329_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx329_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx329_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx3410_atax0_add_x_a;
    wire [64:0] i_arrayidx3410_atax0_add_x_b;
    logic [64:0] i_arrayidx3410_atax0_add_x_o;
    wire [64:0] i_arrayidx3410_atax0_add_x_q;
    wire [63:0] i_arrayidx3410_atax0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup49_atax3_sel_x_b;
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
    wire [0:0] i_exitcond13_atax22_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl48_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl48_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid150_i_cleanups_shl48_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid152_i_cleanups_shl48_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid152_i_cleanups_shl48_atax0_shift_x_q;
    reg [0:0] redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [0:0] redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_2_q;
    reg [0:0] redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q;
    reg [0:0] redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_q;
    reg [0:0] redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_0;
    reg [0:0] redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_1;
    reg [63:0] redist4_sync_together97_aunroll_x_in_c0_eni7_2_tpl_1_q;
    reg [0:0] redist6_sync_together97_aunroll_x_in_c0_eni7_4_tpl_1_q;
    reg [63:0] redist7_sync_together97_aunroll_x_in_c0_eni7_5_tpl_1_q;
    reg [0:0] redist8_sync_together97_aunroll_x_in_c0_eni7_6_tpl_1_q;
    reg [0:0] redist9_sync_together97_aunroll_x_in_c0_eni7_7_tpl_1_q;
    reg [0:0] redist10_sync_together97_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist11_sync_together97_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist12_sync_together97_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist13_sync_together97_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist14_sync_together97_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist15_sync_together97_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist15_sync_together97_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist15_sync_together97_aunroll_x_in_i_valid_9_delay_1;
    reg [0:0] redist15_sync_together97_aunroll_x_in_i_valid_9_delay_2;
    reg [0:0] redist16_i_first_cleanup49_atax3_sel_x_b_1_q;
    reg [63:0] redist17_i_arrayidx329_atax0_dupName_0_trunc_sel_x_b_1_q;
    reg [0:0] redist18_i_masked53_atax31_q_7_q;
    reg [63:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_2_q;
    reg [63:0] redist19_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_2_delay_0;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_data_out_1_q;
    reg [1:0] redist24_i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out_1_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_2_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_2_delay_0;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_9_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_2_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_2_delay_0;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_9_q;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_2_q;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_2_delay_0;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_9_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_2_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_2_delay_0;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_q;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_0;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_1;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_2;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_3;
    reg [0:0] redist33_i_first_cleanup_xor50_atax4_q_1_q;
    wire redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_reset0;
    wire [31:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ia;
    wire [2:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_aa;
    wire [2:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ab;
    wire [31:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_iq;
    wire [31:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_q;
    wire [2:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i;
    (* preserve *) reg redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_eq;
    reg [2:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_wraddr_q;
    wire [2:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_last_q;
    wire [0:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmpReg_q;
    wire [0:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_notEnable_q;
    wire [0:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena_q;
    wire [0:0] redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_enaAnd_q;
    wire redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_reset0;
    wire [63:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_ia;
    wire [2:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_aa;
    wire [2:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_ab;
    wire [63:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_iq;
    wire [63:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_q;
    wire [2:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_i;
    (* preserve *) reg redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_eq;
    reg [2:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_wraddr_q;
    wire [3:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_last_q;
    wire [3:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmp_b;
    wire [0:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmpReg_q;
    wire [0:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_notEnable_q;
    wire [0:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_sticky_ena_q;
    wire [0:0] redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_enaAnd_q;
    wire redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_reset0;
    wire [63:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_ia;
    wire [1:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_aa;
    wire [1:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_ab;
    wire [63:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_iq;
    wire [63:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_q;
    wire [1:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_q;
    (* preserve *) reg [1:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_i;
    (* preserve *) reg redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_eq;
    reg [1:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_wraddr_q;
    wire [1:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_last_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_cmp_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_cmpReg_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_notEnable_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_sticky_ena_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_enaAnd_q;
    wire redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_reset0;
    wire [63:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_ia;
    wire [1:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_aa;
    wire [1:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_ab;
    wire [63:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_iq;
    wire [63:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_q;
    wire [1:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt_q;
    (* preserve *) reg [1:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt_i;
    reg [1:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_wraddr_q;
    wire [2:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_last_q;
    wire [2:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmp_b;
    wire [0:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmpReg_q;
    wire [0:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_notEnable_q;
    wire [0:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_sticky_ena_q;
    wire [0:0] redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist10_sync_together97_aunroll_x_in_i_valid_1(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together97_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist10_sync_together97_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist11_sync_together97_aunroll_x_in_i_valid_2(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together97_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist11_sync_together97_aunroll_x_in_i_valid_2_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist12_sync_together97_aunroll_x_in_i_valid_3(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together97_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist12_sync_together97_aunroll_x_in_i_valid_3_q <= $unsigned(redist11_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl48_atax0_shift_x(BITSELECT,148)@4
    assign leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl48_atax0_shift_x_in = redist24_i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out_1_q[0:0];
    assign leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl48_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl48_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid150_i_cleanups_shl48_atax0_shift_x(BITJOIN,149)@4
    assign leftShiftStage0Idx1_uid150_i_cleanups_shl48_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl48_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid152_i_cleanups_shl48_atax0_shift_x(MUX,151)@4
    assign leftShiftStage0_uid152_i_cleanups_shl48_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid152_i_cleanups_shl48_atax0_shift_x_s or redist24_i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out_1_q or leftShiftStage0Idx1_uid150_i_cleanups_shl48_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid152_i_cleanups_shl48_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid152_i_cleanups_shl48_atax0_shift_x_q = redist24_i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid152_i_cleanups_shl48_atax0_shift_x_q = leftShiftStage0Idx1_uid150_i_cleanups_shl48_atax0_shift_x_q;
            default : leftShiftStage0_uid152_i_cleanups_shl48_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl48_atax5_vt_select_1(BITSELECT,45)@4
    assign i_cleanups_shl48_atax5_vt_select_1_b = leftShiftStage0_uid152_i_cleanups_shl48_atax0_shift_x_q[1:1];

    // i_cleanups_shl48_atax5_vt_join(BITJOIN,44)@4
    assign i_cleanups_shl48_atax5_vt_join_q = {i_cleanups_shl48_atax5_vt_select_1_b, GND_q};

    // redist24_i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out_1(DELAY,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out);
        end
    end

    // i_first_cleanup_xor50_atax4(LOGICAL,48)@3
    assign i_first_cleanup_xor50_atax4_q = i_first_cleanup49_atax3_sel_x_b ^ VCC_q;

    // redist33_i_first_cleanup_xor50_atax4_q_1(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_first_cleanup_xor50_atax4_q_1_q <= '0;
        end
        else
        begin
            redist33_i_first_cleanup_xor50_atax4_q_1_q <= $unsigned(i_first_cleanup_xor50_atax4_q);
        end
    end

    // i_notcmp40_atax24(LOGICAL,81)@4
    assign i_notcmp40_atax24_q = i_exitcond13_atax22_cmp_nsign_q ^ VCC_q;

    // i_or51_atax26(LOGICAL,82)@4
    assign i_or51_atax26_q = i_notcmp40_atax24_q | redist33_i_first_cleanup_xor50_atax4_q_1_q;

    // i_next_cleanups52_atax27(MUX,80)@4
    assign i_next_cleanups52_atax27_s = i_or51_atax26_q;
    always @(i_next_cleanups52_atax27_s or redist24_i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out_1_q or i_cleanups_shl48_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups52_atax27_s)
            1'b0 : i_next_cleanups52_atax27_q = redist24_i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out_1_q;
            1'b1 : i_next_cleanups52_atax27_q = i_cleanups_shl48_atax5_vt_join_q;
            default : i_next_cleanups52_atax27_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups47_push33_atax28(BLACKBOX,74)@4
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    atax_i_llvm_fpga_push_i2_cleanups47_push33_0 thei_llvm_fpga_push_i2_cleanups47_push33_atax28 (
        .in_data_in(i_next_cleanups52_atax27_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_feedback_stall_out_33),
        .in_keep_going44(i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together97_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i2_cleanups47_push33_atax28_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i2_cleanups47_push33_atax28_out_feedback_valid_out_33),
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

    // redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_2(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_2_q <= $unsigned(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q);
        end
    end

    // c_i2_164(CONSTANT,30)
    assign c_i2_164_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups47_pop33_atax2(BLACKBOX,63)@3
    // out out_feedback_stall_out_33@20000000
    atax_i_llvm_fpga_pop_i2_cleanups47_pop33_0 thei_llvm_fpga_pop_i2_cleanups47_pop33_atax2 (
        .in_data_in(c_i2_164_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_2_q),
        .in_feedback_in_33(i_llvm_fpga_push_i2_cleanups47_push33_atax28_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i2_cleanups47_push33_atax28_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together97_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup49_atax3_sel_x(BITSELECT,116)@3
    assign i_first_cleanup49_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups47_pop33_atax2_out_data_out[0:0];

    // redist16_i_first_cleanup49_atax3_sel_x_b_1(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_first_cleanup49_atax3_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist16_i_first_cleanup49_atax3_sel_x_b_1_q <= $unsigned(i_first_cleanup49_atax3_sel_x_b);
        end
    end

    // c_i7_170(CONSTANT,33)
    assign c_i7_170_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next12_atax29(ADD,49)@4
    assign i_fpga_indvars_iv_next12_atax29_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop30_atax21_out_data_out};
    assign i_fpga_indvars_iv_next12_atax29_b = {1'b0, c_i7_170_q};
    assign i_fpga_indvars_iv_next12_atax29_o = $unsigned(i_fpga_indvars_iv_next12_atax29_a) + $unsigned(i_fpga_indvars_iv_next12_atax29_b);
    assign i_fpga_indvars_iv_next12_atax29_q = i_fpga_indvars_iv_next12_atax29_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next12_atax29_sel_x(BITSELECT,88)@4
    assign bgTrunc_i_fpga_indvars_iv_next12_atax29_sel_x_b = i_fpga_indvars_iv_next12_atax29_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv11_push30_atax30(BLACKBOX,77)@4
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    atax_i_llvm_fpga_push_i7_fpga_indvars_iv11_push30_0 thei_llvm_fpga_push_i7_fpga_indvars_iv11_push30_atax30 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_atax29_sel_x_b),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop30_atax21_out_feedback_stall_out_30),
        .in_keep_going44(i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together97_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i7_fpga_indvars_iv11_push30_atax30_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i7_fpga_indvars_iv11_push30_atax30_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i7_6268(CONSTANT,34)
    assign c_i7_6268_q = $unsigned(7'b0111110);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop30_atax21(BLACKBOX,66)@4
    // out out_feedback_stall_out_30@20000000
    atax_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop30_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv11_pop30_atax21 (
        .in_data_in(c_i7_6268_q),
        .in_dir(redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q),
        .in_feedback_in_30(i_llvm_fpga_push_i7_fpga_indvars_iv11_push30_atax30_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i7_fpga_indvars_iv11_push30_atax30_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together97_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop30_atax21_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop30_atax21_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond13_atax22_cmp_nsign(LOGICAL,144)@4
    assign i_exitcond13_atax22_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop30_atax21_out_data_out[6:6]));

    // i_llvm_fpga_push_i1_notexitcond54_atax25(BLACKBOX,73)@4
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    atax_i_llvm_fpga_push_i1_notexitcond54_0 thei_llvm_fpga_push_i1_notexitcond54_atax25 (
        .in_data_in(i_exitcond13_atax22_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going44_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup49(redist16_i_first_cleanup49_atax3_sel_x_b_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together97_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond54_atax25_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond54_atax25_out_feedback_valid_out_7),
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
            valid_fanout_reg1_q <= $unsigned(redist11_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_lastiniteration46_atax7(BLACKBOX,71)@4
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration46_0 thei_llvm_fpga_push_i1_lastiniteration46_atax7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going44_atax6_out_initeration_stall_out),
        .in_keep_going44(i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration46_atax7_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration46_atax7_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q <= '0;
        end
        else
        begin
            redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q <= $unsigned(redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_2_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going44_atax6(BLACKBOX,58)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going44_0 thei_llvm_fpga_pipeline_keep_going44_atax6 (
        .in_data_in(redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration46_atax7_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration46_atax7_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond54_atax25_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond54_atax25_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together97_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going44_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going44_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going44_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going44_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going44_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,36)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going44_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going44_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,85)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going44_atax6_out_pipeline_valid_out;

    // valid_fanout_reg5(REG,125)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_066(CONSTANT,31)
    assign c_i32_066_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,122)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_1_q);
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
            valid_fanout_reg9_q <= $unsigned(redist11_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_i32_167(CONSTANT,32)
    assign c_i32_167_q = $unsigned(32'b00000000000000000000000000000001);

    // redist23_i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_data_out_1(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_data_out_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_data_out);
        end
    end

    // i_inc38_atax19(ADD,54)@4
    assign i_inc38_atax19_a = {1'b0, redist23_i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_data_out_1_q};
    assign i_inc38_atax19_b = {1'b0, c_i32_167_q};
    assign i_inc38_atax19_o = $unsigned(i_inc38_atax19_a) + $unsigned(i_inc38_atax19_b);
    assign i_inc38_atax19_q = i_inc38_atax19_o[32:0];

    // bgTrunc_i_inc38_atax19_sel_x(BITSELECT,89)@4
    assign bgTrunc_i_inc38_atax19_sel_x_b = i_inc38_atax19_q[31:0];

    // i_llvm_fpga_push_i32_j_137_push32_atax20(BLACKBOX,75)@4
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    atax_i_llvm_fpga_push_i32_j_137_push32_0 thei_llvm_fpga_push_i32_j_137_push32_atax20 (
        .in_data_in(bgTrunc_i_inc38_atax19_sel_x_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_feedback_stall_out_32),
        .in_keep_going44(i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i32_j_137_push32_atax20_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i32_j_137_push32_atax20_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_137_pop32_atax8(BLACKBOX,64)@3
    // out out_feedback_stall_out_32@20000000
    atax_i_llvm_fpga_pop_i32_j_137_pop32_0 thei_llvm_fpga_pop_i32_j_137_pop32_atax8 (
        .in_data_in(c_i32_066_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni7_1_tpl_2_q),
        .in_feedback_in_32(i_llvm_fpga_push_i32_j_137_push32_atax20_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i32_j_137_push32_atax20_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom31_atax9_sel_x(BITSELECT,117)@3
    assign i_idxprom31_atax9_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_137_pop32_atax8_out_data_out[31:0]};

    // i_idxprom31_atax9_vt_select_31(BITSELECT,53)@3
    assign i_idxprom31_atax9_vt_select_31_b = i_idxprom31_atax9_sel_x_b[31:0];

    // i_idxprom31_atax9_vt_join(BITJOIN,52)@3
    assign i_idxprom31_atax9_vt_join_q = {c_i32_066_q, i_idxprom31_atax9_vt_select_31_b};

    // i_arrayidx329_atax0_dupName_0_narrow_x(BITSELECT,100)@3
    assign i_arrayidx329_atax0_dupName_0_narrow_x_b = i_idxprom31_atax9_vt_join_q[61:0];

    // i_arrayidx329_atax0_dupName_0_shift_join_x(BITJOIN,101)@3
    assign i_arrayidx329_atax0_dupName_0_shift_join_x_q = {i_arrayidx329_atax0_dupName_0_narrow_x_b, i_arrayidx329_atax12_vt_const_1_q};

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

    // redist13_sync_together97_aunroll_x_in_i_valid_4(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together97_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist13_sync_together97_aunroll_x_in_i_valid_4_q <= $unsigned(redist12_sync_together97_aunroll_x_in_i_valid_3_q);
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
            valid_fanout_reg4_q <= $unsigned(redist13_sync_together97_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist31_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_2(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_2_delay_0 <= '0;
            redist31_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out);
            redist31_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_2_q <= redist31_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_2_delay_0;
        end
    end

    // redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_notEnable(LOGICAL,213)
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_nor(LOGICAL,214)
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_nor_q = ~ (redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_notEnable_q | redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_sticky_ena_q);

    // redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_last(CONSTANT,210)
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_last_q = $unsigned(2'b01);

    // redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_cmp(LOGICAL,211)
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_cmp_q = $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_last_q == redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_cmpReg(REG,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_cmpReg_q <= $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_cmp_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_sticky_ena(REG,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_nor_q == 1'b1)
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_sticky_ena_q <= $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_cmpReg_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_enaAnd(LOGICAL,216)
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_enaAnd_q = redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_sticky_ena_q & VCC_q;

    // redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt(COUNTER,208)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_i <= 2'd0;
            redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_i == 2'd1)
            begin
                redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_eq <= 1'b0;
            end
            if (redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_eq == 1'b1)
            begin
                redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_i <= $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_i <= $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_q = redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_i[1:0];

    // redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_wraddr(REG,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_wraddr_q <= $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem(DUALMEM,207)
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_ia = $unsigned(i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out);
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_aa = redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_wraddr_q;
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_ab = redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_rdcnt_q;
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_dmem (
        .clocken1(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_aa),
        .data_a(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_ab),
        .q_b(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_iq),
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
    assign redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_q = redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_iq[63:0];

    // i_llvm_fpga_push_i64_idxprom2791_push35_atax11(BLACKBOX,76)@6
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    atax_i_llvm_fpga_push_i64_idxprom2791_push35_0 thei_llvm_fpga_push_i64_idxprom2791_push35_atax11 (
        .in_data_in(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_feedback_stall_out_35),
        .in_keep_going44(redist31_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i64_idxprom2791_push35_atax11_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i64_idxprom2791_push35_atax11_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together97_aunroll_x_in_c0_eni7_2_tpl_1(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni7_2_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni7_2_tpl_1_q <= $unsigned(in_c0_eni7_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10(BLACKBOX,65)@2
    // out out_feedback_stall_out_35@20000000
    atax_i_llvm_fpga_pop_i64_idxprom2791_pop35_0 thei_llvm_fpga_pop_i64_idxprom2791_pop35_atax10 (
        .in_data_in(redist4_sync_together97_aunroll_x_in_c0_eni7_2_tpl_1_q),
        .in_dir(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i64_idxprom2791_push35_atax11_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i64_idxprom2791_push35_atax11_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx329_atax0_narrow_x(BITSELECT,97)@2
    assign i_arrayidx329_atax0_narrow_x_b = i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out[55:0];

    // i_arrayidx329_atax0_c_i8_01_x(CONSTANT,96)
    assign i_arrayidx329_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx329_atax0_shift_join_x(BITJOIN,98)@2
    assign i_arrayidx329_atax0_shift_join_x_q = {i_arrayidx329_atax0_narrow_x_b, i_arrayidx329_atax0_c_i8_01_x_q};

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx329_atax0_add_x(ADD,94)@2
    assign i_arrayidx329_atax0_add_x_a = {1'b0, c_atax_buff_A_pmem_q};
    assign i_arrayidx329_atax0_add_x_b = {1'b0, i_arrayidx329_atax0_shift_join_x_q};
    assign i_arrayidx329_atax0_add_x_o = $unsigned(i_arrayidx329_atax0_add_x_a) + $unsigned(i_arrayidx329_atax0_add_x_b);
    assign i_arrayidx329_atax0_add_x_q = i_arrayidx329_atax0_add_x_o[64:0];

    // i_arrayidx329_atax0_dupName_0_trunc_sel_x(BITSELECT,104)@2
    assign i_arrayidx329_atax0_dupName_0_trunc_sel_x_b = i_arrayidx329_atax0_add_x_q[63:0];

    // redist17_i_arrayidx329_atax0_dupName_0_trunc_sel_x_b_1(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx329_atax0_dupName_0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_i_arrayidx329_atax0_dupName_0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx329_atax0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx329_atax0_dupName_0_add_x(ADD,99)@3
    assign i_arrayidx329_atax0_dupName_0_add_x_a = {1'b0, redist17_i_arrayidx329_atax0_dupName_0_trunc_sel_x_b_1_q};
    assign i_arrayidx329_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx329_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx329_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx329_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx329_atax0_dupName_0_add_x_b);
    assign i_arrayidx329_atax0_dupName_0_add_x_q = i_arrayidx329_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx329_atax0_dupName_2_trunc_sel_x(BITSELECT,105)@3
    assign i_arrayidx329_atax0_dupName_2_trunc_sel_x_b = i_arrayidx329_atax0_dupName_0_add_x_q[63:0];

    // i_arrayidx329_atax12_vt_select_63(BITSELECT,39)@3
    assign i_arrayidx329_atax12_vt_select_63_b = i_arrayidx329_atax0_dupName_2_trunc_sel_x_b[63:2];

    // i_arrayidx329_atax12_vt_const_1(CONSTANT,37)
    assign i_arrayidx329_atax12_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx329_atax12_vt_join(BITJOIN,38)@3
    assign i_arrayidx329_atax12_vt_join_q = {i_arrayidx329_atax12_vt_select_63_b, i_arrayidx329_atax12_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax12_atax13(BLACKBOX,56)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_atax12_atax_avm_address@20000000
    // out out_unnamed_atax12_atax_avm_burstcount@20000000
    // out out_unnamed_atax12_atax_avm_byteenable@20000000
    // out out_unnamed_atax12_atax_avm_enable@20000000
    // out out_unnamed_atax12_atax_avm_read@20000000
    // out out_unnamed_atax12_atax_avm_write@20000000
    // out out_unnamed_atax12_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_12_atax0 thei_llvm_fpga_mem_unnamed_atax12_atax13 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx329_atax12_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor50_atax4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax12_atax13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax12_atax_avm_address(i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,92)
    assign out_unnamed_atax12_atax_avm_address = i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_address;
    assign out_unnamed_atax12_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_enable;
    assign out_unnamed_atax12_atax_avm_read = i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_read;
    assign out_unnamed_atax12_atax_avm_write = i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_write;
    assign out_unnamed_atax12_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_writedata;
    assign out_unnamed_atax12_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_byteenable;
    assign out_unnamed_atax12_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax12_atax13_out_unnamed_atax12_atax_avm_burstcount;

    // valid_fanout_reg6(REG,126)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist10_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_atax_buff_x_pmem(CONSTANT,5)
    assign c_atax_buff_x_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx3410_atax0_add_x(ADD,106)@3
    assign i_arrayidx3410_atax0_add_x_a = {1'b0, c_atax_buff_x_pmem_q};
    assign i_arrayidx3410_atax0_add_x_b = {1'b0, i_arrayidx329_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx3410_atax0_add_x_o = $unsigned(i_arrayidx3410_atax0_add_x_a) + $unsigned(i_arrayidx3410_atax0_add_x_b);
    assign i_arrayidx3410_atax0_add_x_q = i_arrayidx3410_atax0_add_x_o[64:0];

    // i_arrayidx3410_atax0_dupName_0_trunc_sel_x(BITSELECT,111)@3
    assign i_arrayidx3410_atax0_dupName_0_trunc_sel_x_b = i_arrayidx3410_atax0_add_x_q[63:0];

    // i_arrayidx3410_atax14_vt_select_63(BITSELECT,42)@3
    assign i_arrayidx3410_atax14_vt_select_63_b = i_arrayidx3410_atax0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx3410_atax14_vt_join(BITJOIN,41)@3
    assign i_arrayidx3410_atax14_vt_join_q = {i_arrayidx3410_atax14_vt_select_63_b, i_arrayidx329_atax12_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax13_atax15(BLACKBOX,57)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_atax13_atax_avm_address@20000000
    // out out_unnamed_atax13_atax_avm_burstcount@20000000
    // out out_unnamed_atax13_atax_avm_byteenable@20000000
    // out out_unnamed_atax13_atax_avm_enable@20000000
    // out out_unnamed_atax13_atax_avm_read@20000000
    // out out_unnamed_atax13_atax_avm_write@20000000
    // out out_unnamed_atax13_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_13_atax0 thei_llvm_fpga_mem_unnamed_atax13_atax15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx3410_atax14_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor50_atax4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_atax13_atax_avm_readdata(in_unnamed_atax13_atax_avm_readdata),
        .in_unnamed_atax13_atax_avm_readdatavalid(in_unnamed_atax13_atax_avm_readdatavalid),
        .in_unnamed_atax13_atax_avm_waitrequest(in_unnamed_atax13_atax_avm_waitrequest),
        .in_unnamed_atax13_atax_avm_writeack(in_unnamed_atax13_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax13_atax15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax13_atax_avm_address(i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_address),
        .out_unnamed_atax13_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_burstcount),
        .out_unnamed_atax13_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_byteenable),
        .out_unnamed_atax13_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_enable),
        .out_unnamed_atax13_atax_avm_read(i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_read),
        .out_unnamed_atax13_atax_avm_write(i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_write),
        .out_unnamed_atax13_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,93)
    assign out_unnamed_atax13_atax_avm_address = i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_address;
    assign out_unnamed_atax13_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_enable;
    assign out_unnamed_atax13_atax_avm_read = i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_read;
    assign out_unnamed_atax13_atax_avm_write = i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_write;
    assign out_unnamed_atax13_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_writedata;
    assign out_unnamed_atax13_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_byteenable;
    assign out_unnamed_atax13_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax13_atax15_out_unnamed_atax13_atax_avm_burstcount;

    // redist14_sync_together97_aunroll_x_in_i_valid_5(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together97_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist14_sync_together97_aunroll_x_in_i_valid_5_q <= $unsigned(redist13_sync_together97_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist15_sync_together97_aunroll_x_in_i_valid_9(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together97_aunroll_x_in_i_valid_9_delay_0 <= '0;
            redist15_sync_together97_aunroll_x_in_i_valid_9_delay_1 <= '0;
            redist15_sync_together97_aunroll_x_in_i_valid_9_delay_2 <= '0;
            redist15_sync_together97_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist15_sync_together97_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_5_q);
            redist15_sync_together97_aunroll_x_in_i_valid_9_delay_1 <= redist15_sync_together97_aunroll_x_in_i_valid_9_delay_0;
            redist15_sync_together97_aunroll_x_in_i_valid_9_delay_2 <= redist15_sync_together97_aunroll_x_in_i_valid_9_delay_1;
            redist15_sync_together97_aunroll_x_in_i_valid_9_q <= redist15_sync_together97_aunroll_x_in_i_valid_9_delay_2;
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
            valid_fanout_reg0_q <= $unsigned(redist15_sync_together97_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg16(REG,136)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,137)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist11_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5696_push38_atax39(BLACKBOX,72)@4
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    atax_i_llvm_fpga_push_i1_notcmp5696_push38_0 thei_llvm_fpga_push_i1_notcmp5696_push38_atax39 (
        .in_data_in(redist25_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_2_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_feedback_stall_out_38),
        .in_keep_going44(i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_notcmp5696_push38_atax39_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_notcmp5696_push38_atax39_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together97_aunroll_x_in_c0_eni7_7_tpl_1(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together97_aunroll_x_in_c0_eni7_7_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together97_aunroll_x_in_c0_eni7_7_tpl_1_q <= $unsigned(in_c0_eni7_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38(BLACKBOX,62)@2
    // out out_feedback_stall_out_38@20000000
    atax_i_llvm_fpga_pop_i1_notcmp5696_pop38_0 thei_llvm_fpga_pop_i1_notcmp5696_pop38_atax38 (
        .in_data_in(redist9_sync_together97_aunroll_x_in_c0_eni7_7_tpl_1_q),
        .in_dir(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_notcmp5696_push38_atax39_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_notcmp5696_push38_atax39_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_2(DELAY,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_2_delay_0 <= '0;
            redist25_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_2_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out);
            redist25_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_2_q <= redist25_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_2_delay_0;
        end
    end

    // redist26_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_9(DELAY,179)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_9 ( .xin(redist25_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_2_q), .xout(redist26_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg14(REG,134)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
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
            valid_fanout_reg15_q <= $unsigned(redist11_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1994_push37_atax37(BLACKBOX,69)@4
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    atax_i_llvm_fpga_push_i1_exitcond1994_push37_0 thei_llvm_fpga_push_i1_exitcond1994_push37_atax37 (
        .in_data_in(redist29_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_2_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_feedback_stall_out_37),
        .in_keep_going44(i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i1_exitcond1994_push37_atax37_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i1_exitcond1994_push37_atax37_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together97_aunroll_x_in_c0_eni7_6_tpl_1(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together97_aunroll_x_in_c0_eni7_6_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together97_aunroll_x_in_c0_eni7_6_tpl_1_q <= $unsigned(in_c0_eni7_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36(BLACKBOX,60)@2
    // out out_feedback_stall_out_37@20000000
    atax_i_llvm_fpga_pop_i1_exitcond1994_pop37_0 thei_llvm_fpga_pop_i1_exitcond1994_pop37_atax36 (
        .in_data_in(redist8_sync_together97_aunroll_x_in_c0_eni7_6_tpl_1_q),
        .in_dir(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i1_exitcond1994_push37_atax37_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i1_exitcond1994_push37_atax37_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_2(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_2_delay_0 <= '0;
            redist29_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_2_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out);
            redist29_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_2_q <= redist29_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_2_delay_0;
        end
    end

    // redist30_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_9(DELAY,183)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist30_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_9 ( .xin(redist29_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_2_q), .xout(redist30_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_notEnable(LOGICAL,203)
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_nor(LOGICAL,204)
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_nor_q = ~ (redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_notEnable_q | redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_sticky_ena_q);

    // redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_last(CONSTANT,200)
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_last_q = $unsigned(4'b0100);

    // redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmp(LOGICAL,201)
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmp_b = {1'b0, redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_q};
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmp_q = $unsigned(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_last_q == redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmpReg(REG,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmpReg_q <= $unsigned(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmp_q);
        end
    end

    // redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_sticky_ena(REG,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_nor_q == 1'b1)
        begin
            redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_sticky_ena_q <= $unsigned(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_cmpReg_q);
        end
    end

    // redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_enaAnd(LOGICAL,206)
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_enaAnd_q = redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_sticky_ena_q & VCC_q;

    // redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt(COUNTER,198)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_i <= 3'd0;
            redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_i == 3'd4)
            begin
                redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_eq <= 1'b0;
            end
            if (redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_eq == 1'b1)
            begin
                redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_q = redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_i[2:0];

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

    // valid_fanout_reg13(REG,133)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist11_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_p67f32_arrayidx28893_push36_atax35(BLACKBOX,78)@4
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    atax_i_llvm_fpga_push_p67f32_arrayidx28893_push36_0 thei_llvm_fpga_push_p67f32_arrayidx28893_push36_atax35 (
        .in_data_in(redist19_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_2_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_feedback_stall_out_36),
        .in_keep_going44(i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_p67f32_arrayidx28893_push36_atax35_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_p67f32_arrayidx28893_push36_atax35_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together97_aunroll_x_in_c0_eni7_5_tpl_1(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together97_aunroll_x_in_c0_eni7_5_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together97_aunroll_x_in_c0_eni7_5_tpl_1_q <= $unsigned(in_c0_eni7_5_tpl);
        end
    end

    // i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34(BLACKBOX,67)@2
    // out out_feedback_stall_out_36@20000000
    atax_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_0 thei_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34 (
        .in_data_in(redist7_sync_together97_aunroll_x_in_c0_eni7_5_tpl_1_q),
        .in_dir(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_p67f32_arrayidx28893_push36_atax35_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_p67f32_arrayidx28893_push36_atax35_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_2(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_2_delay_0 <= '0;
            redist19_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_2_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out);
            redist19_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_2_q <= redist19_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_2_delay_0;
        end
    end

    // redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_wraddr(REG,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_wraddr_q <= $unsigned(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_q);
        end
    end

    // redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem(DUALMEM,197)
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_ia = $unsigned(redist19_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_2_q);
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_aa = redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_wraddr_q;
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_ab = redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_rdcnt_q;
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_dmem (
        .clocken1(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_aa),
        .data_a(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_ab),
        .q_b(redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_iq),
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
    assign redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_q = redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_iq[63:0];

    // valid_fanout_reg10(REG,130)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
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
            valid_fanout_reg11_q <= $unsigned(redist11_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_forked8790_push34_atax33(BLACKBOX,70)@4
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    atax_i_llvm_fpga_push_i1_forked8790_push34_0 thei_llvm_fpga_push_i1_forked8790_push34_atax33 (
        .in_data_in(redist27_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_2_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_feedback_stall_out_34),
        .in_keep_going44(i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_forked8790_push34_atax33_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_forked8790_push34_atax33_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together97_aunroll_x_in_c0_eni7_4_tpl_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together97_aunroll_x_in_c0_eni7_4_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together97_aunroll_x_in_c0_eni7_4_tpl_1_q <= $unsigned(in_c0_eni7_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked8790_pop34_atax32(BLACKBOX,61)@2
    // out out_feedback_stall_out_34@20000000
    atax_i_llvm_fpga_pop_i1_forked8790_pop34_0 thei_llvm_fpga_pop_i1_forked8790_pop34_atax32 (
        .in_data_in(redist6_sync_together97_aunroll_x_in_c0_eni7_4_tpl_1_q),
        .in_dir(redist0_sync_together97_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_forked8790_push34_atax33_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_forked8790_push34_atax33_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_2(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_2_delay_0 <= '0;
            redist27_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_2_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out);
            redist27_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_2_q <= redist27_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_2_delay_0;
        end
    end

    // redist28_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_9(DELAY,181)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_9 ( .xin(redist27_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_2_q), .xout(redist28_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked53_atax31(LOGICAL,79)@4 + 1
    assign i_masked53_atax31_qi = i_notcmp40_atax24_q & redist16_i_first_cleanup49_atax3_sel_x_b_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked53_atax31_delay ( .xin(i_masked53_atax31_qi), .xout(i_masked53_atax31_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_i_masked53_atax31_q_7(DELAY,171)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_i_masked53_atax31_q_7 ( .xin(i_masked53_atax31_q), .xout(redist18_i_masked53_atax31_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg7(REG,127)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_5_q);
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
            valid_fanout_reg8_q <= $unsigned(redist15_sync_together97_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_f32_add41_push31_atax18(BLACKBOX,68)@11
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    atax_i_llvm_fpga_push_f32_add41_push31_0 thei_llvm_fpga_push_f32_add41_push31_atax18 (
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add_atax17_out_primWireOut),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_f32_add41_pop31_atax16_out_feedback_stall_out_31),
        .in_keep_going44(redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_f32_add41_push31_atax18_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_f32_add41_push31_atax18_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_0 <= '0;
            redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_1 <= '0;
            redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_q <= '0;
        end
        else
        begin
            redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_0 <= $unsigned(redist2_sync_together97_aunroll_x_in_c0_eni7_1_tpl_3_q);
            redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_1 <= redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_0;
            redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_q <= redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_delay_1;
        end
    end

    // redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_notEnable(LOGICAL,193)
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_nor(LOGICAL,194)
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_nor_q = ~ (redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_notEnable_q | redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena_q);

    // redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_last(CONSTANT,190)
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmp(LOGICAL,191)
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmp_q = $unsigned(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_last_q == redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmpReg(REG,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmpReg_q <= $unsigned(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmp_q);
        end
    end

    // redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena(REG,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_nor_q == 1'b1)
        begin
            redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena_q <= $unsigned(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_cmpReg_q);
        end
    end

    // redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_enaAnd(LOGICAL,196)
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_enaAnd_q = redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_sticky_ena_q & VCC_q;

    // redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt(COUNTER,188)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i <= 3'd0;
            redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i == 3'd3)
            begin
                redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i <= $unsigned(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i <= $unsigned(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_q = redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_i[2:0];

    // redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_wraddr(REG,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_wraddr_q <= $unsigned(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_q);
        end
    end

    // redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem(DUALMEM,187)
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ia = $unsigned(in_c0_eni7_3_tpl);
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_aa = redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_wraddr_q;
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ab = redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_rdcnt_q;
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_reset0 = ~ (resetn);
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
    ) redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_dmem (
        .clocken1(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_aa),
        .data_a(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_ab),
        .q_b(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_iq),
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
    assign redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_q = redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_add41_pop31_atax16(BLACKBOX,59)@7
    // out out_feedback_stall_out_31@20000000
    atax_i_llvm_fpga_pop_f32_add41_pop31_0 thei_llvm_fpga_pop_f32_add41_pop31_atax16 (
        .in_data_in(redist5_sync_together97_aunroll_x_in_c0_eni7_3_tpl_6_mem_q),
        .in_dir(redist3_sync_together97_aunroll_x_in_c0_eni7_1_tpl_6_q),
        .in_feedback_in_31(i_llvm_fpga_push_f32_add41_push31_atax18_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_f32_add41_push31_atax18_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_f32_add41_pop31_atax16_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_f32_add41_pop31_atax16_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add_atax17(BLACKBOX,55)@7
    // out out_primWireOut@11
    atax_flt_i_sfc_logic_s_c0_in_for_body26_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_atax17 (
        .in_0(i_llvm_fpga_mem_unnamed_atax12_atax13_out_o_readdata),
        .in_1(i_llvm_fpga_mem_unnamed_atax13_atax15_out_o_readdata),
        .in_2(i_llvm_fpga_pop_f32_add41_pop31_atax16_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_atax17_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_notEnable(LOGICAL,223)
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_nor(LOGICAL,224)
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_nor_q = ~ (redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_notEnable_q | redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_sticky_ena_q);

    // redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_last(CONSTANT,220)
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_last_q = $unsigned(3'b010);

    // redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmp(LOGICAL,221)
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmp_b = {1'b0, redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt_q};
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmp_q = $unsigned(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_last_q == redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmpReg(REG,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmpReg_q <= $unsigned(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmp_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_sticky_ena(REG,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_nor_q == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_sticky_ena_q <= $unsigned(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_cmpReg_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_enaAnd(LOGICAL,226)
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_enaAnd_q = redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_sticky_ena_q & VCC_q;

    // redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt(COUNTER,218)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt_i <= $unsigned(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt_q = redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt_i[1:0];

    // redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_wraddr(REG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_wraddr_q <= $unsigned(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem(DUALMEM,217)
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_ia = $unsigned(redist21_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_4_mem_q);
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_aa = redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_wraddr_q;
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_ab = redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_rdcnt_q;
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_reset0 = ~ (resetn);
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
    ) redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_dmem (
        .clocken1(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_aa),
        .data_a(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_ab),
        .q_b(redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_iq),
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
    assign redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_q = redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_iq[63:0];

    // redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_0 <= '0;
            redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_1 <= '0;
            redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_2 <= '0;
            redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_3 <= '0;
            redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_0 <= $unsigned(redist31_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_2_q);
            redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_1 <= redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_0;
            redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_2 <= redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_1;
            redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_3 <= redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_2;
            redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_q <= redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_delay_3;
        end
    end

    // sync_out_aunroll_x(GPOUT,118)@11
    assign out_c0_exi8156_0_tpl = GND_q;
    assign out_c0_exi8156_1_tpl = redist32_i_llvm_fpga_pipeline_keep_going44_atax6_out_data_out_7_q;
    assign out_c0_exi8156_2_tpl = redist22_i_llvm_fpga_pop_i64_idxprom2791_pop35_atax10_out_data_out_9_mem_q;
    assign out_c0_exi8156_3_tpl = i_llvm_fpga_fp_multadd_mult_add_atax17_out_primWireOut;
    assign out_c0_exi8156_4_tpl = redist18_i_masked53_atax31_q_7_q;
    assign out_c0_exi8156_5_tpl = redist28_i_llvm_fpga_pop_i1_forked8790_pop34_atax32_out_data_out_9_q;
    assign out_c0_exi8156_6_tpl = redist20_i_llvm_fpga_pop_p67f32_arrayidx28893_pop36_atax34_out_data_out_9_mem_q;
    assign out_c0_exi8156_7_tpl = redist30_i_llvm_fpga_pop_i1_exitcond1994_pop37_atax36_out_data_out_9_q;
    assign out_c0_exi8156_8_tpl = redist26_i_llvm_fpga_pop_i1_notcmp5696_pop38_atax38_out_data_out_9_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
