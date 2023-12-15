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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body9_s_c0_enter12214_atax0
// SystemVerilog created on Wed Dec 13 00:02:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body9_s_c0_enter12214_atax0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    output wire [0:0] out_c0_exi9_0_tpl,
    output wire [0:0] out_c0_exi9_1_tpl,
    output wire [0:0] out_c0_exi9_2_tpl,
    output wire [63:0] out_c0_exi9_3_tpl,
    output wire [63:0] out_c0_exi9_4_tpl,
    output wire [63:0] out_c0_exi9_5_tpl,
    output wire [63:0] out_c0_exi9_6_tpl,
    output wire [63:0] out_c0_exi9_7_tpl,
    output wire [0:0] out_c0_exi9_8_tpl,
    output wire [0:0] out_c0_exi9_9_tpl,
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
    wire [1:0] c_i2_143_q;
    wire [31:0] c_i32_045_q;
    wire [31:0] c_i32_146_q;
    wire [31:0] c_i32_247_q;
    wire [31:0] c_i32_348_q;
    wire [31:0] c_i32_449_q;
    wire [4:0] c_i5_1450_q;
    wire [4:0] c_i5_152_q;
    wire [1:0] i_arrayidx174_atax15_vt_const_1_q;
    wire [63:0] i_arrayidx174_atax15_vt_join_q;
    wire [61:0] i_arrayidx174_atax15_vt_select_63_b;
    wire [1:0] i_cleanups_shl69_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl69_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor71_atax4_q;
    wire [5:0] i_fpga_indvars_iv_next_atax35_a;
    wire [5:0] i_fpga_indvars_iv_next_atax35_b;
    logic [5:0] i_fpga_indvars_iv_next_atax35_o;
    wire [5:0] i_fpga_indvars_iv_next_atax35_q;
    wire [63:0] i_idxprom12_1_atax17_vt_join_q;
    wire [30:0] i_idxprom12_1_atax17_vt_select_31_b;
    wire [63:0] i_idxprom12_2_atax20_vt_join_q;
    wire [1:0] i_idxprom12_3_atax23_vt_const_1_q;
    wire [63:0] i_idxprom12_3_atax23_vt_join_q;
    wire [29:0] i_idxprom12_3_atax23_vt_select_31_b;
    wire [63:0] i_idxprom12_atax11_vt_join_q;
    wire [31:0] i_idxprom12_atax11_vt_select_31_b;
    wire [31:0] i_inc_1_atax19_q;
    wire [31:0] i_inc_1_atax19_vt_join_q;
    wire [31:0] i_inc_2_atax22_q;
    wire [31:0] i_inc_2_atax22_vt_join_q;
    wire [29:0] i_inc_2_atax22_vt_select_31_b;
    wire [32:0] i_inc_3_atax25_a;
    wire [32:0] i_inc_3_atax25_b;
    logic [32:0] i_inc_3_atax25_o;
    wire [32:0] i_inc_3_atax25_q;
    wire [31:0] i_inc_atax16_q;
    wire [31:0] i_inc_atax16_vt_join_q;
    wire [30:0] i_inc_atax16_vt_select_31_b;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp7789_pop29_atax38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp7789_pop29_atax38_out_feedback_stall_out_29;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_feedback_stall_out_27;
    wire [31:0] i_llvm_fpga_pop_i32_j_039_pop26_atax10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_039_pop26_atax10_out_feedback_stall_out_26;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop25_atax27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop25_atax27_out_feedback_stall_out_25;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom88_pop28_atax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom88_pop28_atax12_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notcmp7789_push29_atax39_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notcmp7789_push29_atax39_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond75_atax31_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond75_atax31_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i2_cleanups68_push27_atax34_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i2_cleanups68_push27_atax34_out_feedback_valid_out_27;
    wire [31:0] i_llvm_fpga_push_i32_j_039_push26_atax26_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_j_039_push26_atax26_out_feedback_valid_out_26;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push25_atax36_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push25_atax36_out_feedback_valid_out_25;
    wire [63:0] i_llvm_fpga_push_i64_idxprom88_push28_atax13_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i64_idxprom88_push28_atax13_out_feedback_valid_out_28;
    wire [0:0] i_masked74_atax37_q;
    wire [0:0] i_next_cleanups73_atax33_s;
    reg [1:0] i_next_cleanups73_atax33_q;
    wire [0:0] i_notcmp61_atax30_q;
    wire [0:0] i_or72_atax32_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_atax35_sel_x_b;
    wire [31:0] bgTrunc_i_inc_3_atax25_sel_x_b;
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
    wire [0:0] i_first_cleanup70_atax3_sel_x_b;
    wire [63:0] i_idxprom12_1_atax17_sel_x_b;
    wire [63:0] i_idxprom12_2_atax20_sel_x_b;
    wire [63:0] i_idxprom12_3_atax23_sel_x_b;
    wire [63:0] i_idxprom12_atax11_sel_x_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax7_atax8_aunroll_x_out_dest_data_out_0_0_0_tpl;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond_atax28_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid195_i_cleanups_shl69_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid195_i_cleanups_shl69_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid196_i_cleanups_shl69_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid198_i_cleanups_shl69_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid198_i_cleanups_shl69_atax0_shift_x_q;
    wire [0:0] i_inc_1_atax19_vt_select_0_merged_bit_select_b;
    wire [29:0] i_inc_1_atax19_vt_select_0_merged_bit_select_c;
    wire [31:0] i_idxprom12_2_atax20_vt_select_0_merged_bit_select_in;
    wire [0:0] i_idxprom12_2_atax20_vt_select_0_merged_bit_select_b;
    wire [29:0] i_idxprom12_2_atax20_vt_select_0_merged_bit_select_c;
    reg [0:0] redist0_sync_together69_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [63:0] redist1_sync_together69_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist2_sync_together69_aunroll_x_in_c0_eni3_3_tpl_1_q;
    reg [0:0] redist3_sync_together69_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,206)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist3_sync_together69_aunroll_x_in_i_valid_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together69_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together69_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid195_i_cleanups_shl69_atax0_shift_x(BITSELECT,194)@2
    assign leftShiftStage0Idx1Rng1_uid195_i_cleanups_shl69_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid195_i_cleanups_shl69_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid195_i_cleanups_shl69_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid196_i_cleanups_shl69_atax0_shift_x(BITJOIN,195)@2
    assign leftShiftStage0Idx1_uid196_i_cleanups_shl69_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid195_i_cleanups_shl69_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid198_i_cleanups_shl69_atax0_shift_x(MUX,197)@2
    assign leftShiftStage0_uid198_i_cleanups_shl69_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid198_i_cleanups_shl69_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_data_out or leftShiftStage0Idx1_uid196_i_cleanups_shl69_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid198_i_cleanups_shl69_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid198_i_cleanups_shl69_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid198_i_cleanups_shl69_atax0_shift_x_q = leftShiftStage0Idx1_uid196_i_cleanups_shl69_atax0_shift_x_q;
            default : leftShiftStage0_uid198_i_cleanups_shl69_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl69_atax5_vt_select_1(BITSELECT,23)@2
    assign i_cleanups_shl69_atax5_vt_select_1_b = leftShiftStage0_uid198_i_cleanups_shl69_atax0_shift_x_q[1:1];

    // i_cleanups_shl69_atax5_vt_join(BITJOIN,22)@2
    assign i_cleanups_shl69_atax5_vt_join_q = {i_cleanups_shl69_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor71_atax4(LOGICAL,26)@2
    assign i_first_cleanup_xor71_atax4_q = i_first_cleanup70_atax3_sel_x_b ^ VCC_q;

    // i_notcmp61_atax30(LOGICAL,77)@2
    assign i_notcmp61_atax30_q = i_exitcond_atax28_cmp_nsign_q ^ VCC_q;

    // i_or72_atax32(LOGICAL,78)@2
    assign i_or72_atax32_q = i_notcmp61_atax30_q | i_first_cleanup_xor71_atax4_q;

    // i_next_cleanups73_atax33(MUX,76)@2
    assign i_next_cleanups73_atax33_s = i_or72_atax32_q;
    always @(i_next_cleanups73_atax33_s or i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_data_out or i_cleanups_shl69_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups73_atax33_s)
            1'b0 : i_next_cleanups73_atax33_q = i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_data_out;
            1'b1 : i_next_cleanups73_atax33_q = i_cleanups_shl69_atax5_vt_join_q;
            default : i_next_cleanups73_atax33_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups68_push27_atax34(BLACKBOX,71)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    atax_i_llvm_fpga_push_i2_cleanups68_push27_0 thei_llvm_fpga_push_i2_cleanups68_push27_atax34 (
        .in_data_in(i_next_cleanups73_atax33_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_feedback_stall_out_27),
        .in_keep_going65(redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together69_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i2_cleanups68_push27_atax34_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i2_cleanups68_push27_atax34_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together69_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together69_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together69_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_143(CONSTANT,7)
    assign c_i2_143_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups68_pop27_atax2(BLACKBOX,64)@2
    // out out_feedback_stall_out_27@20000000
    atax_i_llvm_fpga_pop_i2_cleanups68_pop27_0 thei_llvm_fpga_pop_i2_cleanups68_pop27_atax2 (
        .in_data_in(c_i2_143_q),
        .in_dir(redist0_sync_together69_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i2_cleanups68_push27_atax34_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i2_cleanups68_push27_atax34_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together69_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup70_atax3_sel_x(BITSELECT,163)@2
    assign i_first_cleanup70_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups68_pop27_atax2_out_data_out[0:0];

    // c_i5_152(CONSTANT,14)
    assign c_i5_152_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_atax35(ADD,27)@2
    assign i_fpga_indvars_iv_next_atax35_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop25_atax27_out_data_out};
    assign i_fpga_indvars_iv_next_atax35_b = {1'b0, c_i5_152_q};
    assign i_fpga_indvars_iv_next_atax35_o = $unsigned(i_fpga_indvars_iv_next_atax35_a) + $unsigned(i_fpga_indvars_iv_next_atax35_b);
    assign i_fpga_indvars_iv_next_atax35_q = i_fpga_indvars_iv_next_atax35_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_atax35_sel_x(BITSELECT,83)@2
    assign bgTrunc_i_fpga_indvars_iv_next_atax35_sel_x_b = i_fpga_indvars_iv_next_atax35_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push25_atax36(BLACKBOX,73)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    atax_i_llvm_fpga_push_i5_fpga_indvars_iv_push25_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push25_atax36 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_atax35_sel_x_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop25_atax27_out_feedback_stall_out_25),
        .in_keep_going65(redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together69_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i5_fpga_indvars_iv_push25_atax36_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i5_fpga_indvars_iv_push25_atax36_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_1450(CONSTANT,13)
    assign c_i5_1450_q = $unsigned(5'b01110);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop25_atax27(BLACKBOX,66)@2
    // out out_feedback_stall_out_25@20000000
    atax_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop25_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop25_atax27 (
        .in_data_in(c_i5_1450_q),
        .in_dir(redist0_sync_together69_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i5_fpga_indvars_iv_push25_atax36_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i5_fpga_indvars_iv_push25_atax36_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together69_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop25_atax27_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop25_atax27_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_atax28_cmp_nsign(LOGICAL,190)@2
    assign i_exitcond_atax28_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop25_atax27_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond75_atax31(BLACKBOX,70)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    atax_i_llvm_fpga_push_i1_notexitcond75_0 thei_llvm_fpga_push_i1_notexitcond75_atax31 (
        .in_data_in(i_exitcond_atax28_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going65_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup70(i_first_cleanup70_atax3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist3_sync_together69_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond75_atax31_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond75_atax31_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,173)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration67_atax7(BLACKBOX,68)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration67_0 thei_llvm_fpga_push_i1_lastiniteration67_atax7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going65_atax6_out_initeration_stall_out),
        .in_keep_going65(redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going65_atax6(BLACKBOX,62)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going65_0 thei_llvm_fpga_pipeline_keep_going65_atax6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_out_10),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_valid_out_10),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond75_atax31_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond75_atax31_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,17)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,81)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going65_atax6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,172)@1 + 1
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

    // valid_fanout_reg7(REG,179)@1 + 1
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

    // valid_fanout_reg8(REG,180)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp7789_push29_atax39(BLACKBOX,69)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    atax_i_llvm_fpga_push_i1_notcmp7789_push29_0 thei_llvm_fpga_push_i1_notcmp7789_push29_atax39 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp7789_pop29_atax38_out_data_out),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_notcmp7789_pop29_atax38_out_feedback_stall_out_29),
        .in_keep_going65(redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_notcmp7789_push29_atax39_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_notcmp7789_push29_atax39_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together69_aunroll_x_in_c0_eni3_3_tpl_1(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together69_aunroll_x_in_c0_eni3_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together69_aunroll_x_in_c0_eni3_3_tpl_1_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp7789_pop29_atax38(BLACKBOX,63)@2
    // out out_feedback_stall_out_29@20000000
    atax_i_llvm_fpga_pop_i1_notcmp7789_pop29_0 thei_llvm_fpga_pop_i1_notcmp7789_pop29_atax38 (
        .in_data_in(redist2_sync_together69_aunroll_x_in_c0_eni3_3_tpl_1_q),
        .in_dir(redist0_sync_together69_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_notcmp7789_push29_atax39_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_notcmp7789_push29_atax39_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp7789_pop29_atax38_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_notcmp7789_pop29_atax38_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked74_atax37(LOGICAL,75)@2
    assign i_masked74_atax37_q = i_notcmp61_atax30_q & i_first_cleanup70_atax3_sel_x_b;

    // c_i32_045(CONSTANT,8)
    assign c_i32_045_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_348(CONSTANT,11)
    assign c_i32_348_q = $unsigned(32'b00000000000000000000000000000011);

    // valid_fanout_reg3(REG,175)@1 + 1
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

    // valid_fanout_reg6(REG,178)@1 + 1
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

    // c_i32_449(CONSTANT,12)
    assign c_i32_449_q = $unsigned(32'b00000000000000000000000000000100);

    // i_inc_3_atax25(ADD,57)@2
    assign i_inc_3_atax25_a = {1'b0, i_llvm_fpga_pop_i32_j_039_pop26_atax10_out_data_out};
    assign i_inc_3_atax25_b = {1'b0, c_i32_449_q};
    assign i_inc_3_atax25_o = $unsigned(i_inc_3_atax25_a) + $unsigned(i_inc_3_atax25_b);
    assign i_inc_3_atax25_q = i_inc_3_atax25_o[32:0];

    // bgTrunc_i_inc_3_atax25_sel_x(BITSELECT,84)@2
    assign bgTrunc_i_inc_3_atax25_sel_x_b = i_inc_3_atax25_q[31:0];

    // i_llvm_fpga_push_i32_j_039_push26_atax26(BLACKBOX,72)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    atax_i_llvm_fpga_push_i32_j_039_push26_0 thei_llvm_fpga_push_i32_j_039_push26_atax26 (
        .in_data_in(bgTrunc_i_inc_3_atax25_sel_x_b),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i32_j_039_pop26_atax10_out_feedback_stall_out_26),
        .in_keep_going65(redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i32_j_039_push26_atax26_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_j_039_push26_atax26_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_039_pop26_atax10(BLACKBOX,65)@2
    // out out_feedback_stall_out_26@20000000
    atax_i_llvm_fpga_pop_i32_j_039_pop26_0 thei_llvm_fpga_pop_i32_j_039_pop26_atax10 (
        .in_data_in(c_i32_045_q),
        .in_dir(redist0_sync_together69_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i32_j_039_push26_atax26_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_j_039_push26_atax26_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_039_pop26_atax10_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i32_j_039_pop26_atax10_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_inc_2_atax22(LOGICAL,53)@2
    assign i_inc_2_atax22_q = i_llvm_fpga_pop_i32_j_039_pop26_atax10_out_data_out | c_i32_348_q;

    // i_inc_2_atax22_vt_select_31(BITSELECT,56)@2
    assign i_inc_2_atax22_vt_select_31_b = i_inc_2_atax22_q[31:2];

    // i_inc_2_atax22_vt_join(BITJOIN,55)@2
    assign i_inc_2_atax22_vt_join_q = {i_inc_2_atax22_vt_select_31_b, i_idxprom12_3_atax23_vt_const_1_q};

    // i_idxprom12_3_atax23_sel_x(BITSELECT,166)@2
    assign i_idxprom12_3_atax23_sel_x_b = {32'b00000000000000000000000000000000, i_inc_2_atax22_vt_join_q[31:0]};

    // i_idxprom12_3_atax23_vt_select_31(BITSELECT,43)@2
    assign i_idxprom12_3_atax23_vt_select_31_b = i_idxprom12_3_atax23_sel_x_b[31:2];

    // i_idxprom12_3_atax23_vt_const_1(CONSTANT,40)
    assign i_idxprom12_3_atax23_vt_const_1_q = $unsigned(2'b11);

    // i_idxprom12_3_atax23_vt_join(BITJOIN,42)@2
    assign i_idxprom12_3_atax23_vt_join_q = {c_i32_045_q, i_idxprom12_3_atax23_vt_select_31_b, i_idxprom12_3_atax23_vt_const_1_q};

    // i_arrayidx13_3_atax0_dupName_0_narrow_x(BITSELECT,129)@2
    assign i_arrayidx13_3_atax0_dupName_0_narrow_x_b = i_idxprom12_3_atax23_vt_join_q[61:0];

    // i_arrayidx174_atax15_vt_const_1(CONSTANT,18)
    assign i_arrayidx174_atax15_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx13_3_atax0_dupName_0_shift_join_x(BITJOIN,130)@2
    assign i_arrayidx13_3_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_3_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // valid_fanout_reg4(REG,176)@1 + 1
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

    // valid_fanout_reg5(REG,177)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom88_push28_atax13(BLACKBOX,74)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    atax_i_llvm_fpga_push_i64_idxprom88_push28_0 thei_llvm_fpga_push_i64_idxprom88_push28_atax13 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom88_pop28_atax12_out_data_out),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i64_idxprom88_pop28_atax12_out_feedback_stall_out_28),
        .in_keep_going65(redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i64_idxprom88_push28_atax13_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i64_idxprom88_push28_atax13_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together69_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together69_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together69_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom88_pop28_atax12(BLACKBOX,67)@2
    // out out_feedback_stall_out_28@20000000
    atax_i_llvm_fpga_pop_i64_idxprom88_pop28_0 thei_llvm_fpga_pop_i64_idxprom88_pop28_atax12 (
        .in_data_in(redist1_sync_together69_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist0_sync_together69_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i64_idxprom88_push28_atax13_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i64_idxprom88_push28_atax13_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom88_pop28_atax12_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i64_idxprom88_pop28_atax12_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx13_1_atax0_narrow_x(BITSELECT,102)@2
    assign i_arrayidx13_1_atax0_narrow_x_b = i_llvm_fpga_pop_i64_idxprom88_pop28_atax12_out_data_out[55:0];

    // i_arrayidx13_1_atax0_c_i8_01_x(CONSTANT,101)
    assign i_arrayidx13_1_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx13_1_atax0_shift_join_x(BITJOIN,103)@2
    assign i_arrayidx13_1_atax0_shift_join_x_q = {i_arrayidx13_1_atax0_narrow_x_b, i_arrayidx13_1_atax0_c_i8_01_x_q};

    // valid_fanout_reg2(REG,174)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax7_atax8_aunroll_x(BLACKBOX,168)@2
    atax_i_llvm_fpga_ffwd_dest_s_struct_z4pa0000_unnamed_atax7_atax0 thei_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax7_atax8_aunroll_x (
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_0_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax7_atax8_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .out_dest_data_out_0_0_1_tpl(),
        .out_dest_data_out_0_0_2_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx13_1_atax0_add_x(ADD,99)@2
    assign i_arrayidx13_1_atax0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax7_atax8_aunroll_x_out_dest_data_out_0_0_0_tpl};
    assign i_arrayidx13_1_atax0_add_x_b = {1'b0, i_arrayidx13_1_atax0_shift_join_x_q};
    assign i_arrayidx13_1_atax0_add_x_o = $unsigned(i_arrayidx13_1_atax0_add_x_a) + $unsigned(i_arrayidx13_1_atax0_add_x_b);
    assign i_arrayidx13_1_atax0_add_x_q = i_arrayidx13_1_atax0_add_x_o[64:0];

    // i_arrayidx13_1_atax0_dupName_0_trunc_sel_x(BITSELECT,109)@2
    assign i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b = i_arrayidx13_1_atax0_add_x_q[63:0];

    // i_arrayidx13_3_atax0_dupName_0_add_x(ADD,128)@2
    assign i_arrayidx13_3_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_3_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_3_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_3_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_3_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_3_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_3_atax0_dupName_0_add_x_q = i_arrayidx13_3_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_3_atax0_dupName_2_trunc_sel_x(BITSELECT,134)@2
    assign i_arrayidx13_3_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_3_atax0_dupName_0_add_x_q[63:0];

    // c_i32_247(CONSTANT,10)
    assign c_i32_247_q = $unsigned(32'b00000000000000000000000000000010);

    // i_inc_1_atax19(LOGICAL,48)@2
    assign i_inc_1_atax19_q = i_llvm_fpga_pop_i32_j_039_pop26_atax10_out_data_out | c_i32_247_q;

    // i_inc_1_atax19_vt_select_0_merged_bit_select(BITSELECT,199)@2
    assign i_inc_1_atax19_vt_select_0_merged_bit_select_b = i_inc_1_atax19_q[0:0];
    assign i_inc_1_atax19_vt_select_0_merged_bit_select_c = i_inc_1_atax19_q[31:2];

    // i_inc_1_atax19_vt_join(BITJOIN,50)@2
    assign i_inc_1_atax19_vt_join_q = {i_inc_1_atax19_vt_select_0_merged_bit_select_c, VCC_q, i_inc_1_atax19_vt_select_0_merged_bit_select_b};

    // i_idxprom12_2_atax20_sel_x(BITSELECT,165)@2
    assign i_idxprom12_2_atax20_sel_x_b = {32'b00000000000000000000000000000000, i_inc_1_atax19_vt_join_q[31:0]};

    // i_idxprom12_2_atax20_vt_select_0_merged_bit_select(BITSELECT,200)@2
    assign i_idxprom12_2_atax20_vt_select_0_merged_bit_select_in = i_idxprom12_2_atax20_sel_x_b[31:0];
    assign i_idxprom12_2_atax20_vt_select_0_merged_bit_select_b = i_idxprom12_2_atax20_vt_select_0_merged_bit_select_in[0:0];
    assign i_idxprom12_2_atax20_vt_select_0_merged_bit_select_c = i_idxprom12_2_atax20_vt_select_0_merged_bit_select_in[31:2];

    // i_idxprom12_2_atax20_vt_join(BITJOIN,36)@2
    assign i_idxprom12_2_atax20_vt_join_q = {c_i32_045_q, i_idxprom12_2_atax20_vt_select_0_merged_bit_select_c, VCC_q, i_idxprom12_2_atax20_vt_select_0_merged_bit_select_b};

    // i_arrayidx13_2_atax0_dupName_0_narrow_x(BITSELECT,117)@2
    assign i_arrayidx13_2_atax0_dupName_0_narrow_x_b = i_idxprom12_2_atax20_vt_join_q[61:0];

    // i_arrayidx13_2_atax0_dupName_0_shift_join_x(BITJOIN,118)@2
    assign i_arrayidx13_2_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_2_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_2_atax0_dupName_0_add_x(ADD,116)@2
    assign i_arrayidx13_2_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_2_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_2_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_2_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_2_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_2_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_2_atax0_dupName_0_add_x_q = i_arrayidx13_2_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_2_atax0_dupName_2_trunc_sel_x(BITSELECT,122)@2
    assign i_arrayidx13_2_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_2_atax0_dupName_0_add_x_q[63:0];

    // c_i32_146(CONSTANT,9)
    assign c_i32_146_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_atax16(LOGICAL,58)@2
    assign i_inc_atax16_q = i_llvm_fpga_pop_i32_j_039_pop26_atax10_out_data_out | c_i32_146_q;

    // i_inc_atax16_vt_select_31(BITSELECT,61)@2
    assign i_inc_atax16_vt_select_31_b = i_inc_atax16_q[31:1];

    // i_inc_atax16_vt_join(BITJOIN,60)@2
    assign i_inc_atax16_vt_join_q = {i_inc_atax16_vt_select_31_b, VCC_q};

    // i_idxprom12_1_atax17_sel_x(BITSELECT,164)@2
    assign i_idxprom12_1_atax17_sel_x_b = {32'b00000000000000000000000000000000, i_inc_atax16_vt_join_q[31:0]};

    // i_idxprom12_1_atax17_vt_select_31(BITSELECT,32)@2
    assign i_idxprom12_1_atax17_vt_select_31_b = i_idxprom12_1_atax17_sel_x_b[31:1];

    // i_idxprom12_1_atax17_vt_join(BITJOIN,31)@2
    assign i_idxprom12_1_atax17_vt_join_q = {c_i32_045_q, i_idxprom12_1_atax17_vt_select_31_b, VCC_q};

    // i_arrayidx13_1_atax0_dupName_0_narrow_x(BITSELECT,105)@2
    assign i_arrayidx13_1_atax0_dupName_0_narrow_x_b = i_idxprom12_1_atax17_vt_join_q[61:0];

    // i_arrayidx13_1_atax0_dupName_0_shift_join_x(BITJOIN,106)@2
    assign i_arrayidx13_1_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_1_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_1_atax0_dupName_0_add_x(ADD,104)@2
    assign i_arrayidx13_1_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_1_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_1_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_1_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_1_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_1_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_1_atax0_dupName_0_add_x_q = i_arrayidx13_1_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_1_atax0_dupName_2_trunc_sel_x(BITSELECT,110)@2
    assign i_arrayidx13_1_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_1_atax0_dupName_0_add_x_q[63:0];

    // i_idxprom12_atax11_sel_x(BITSELECT,167)@2
    assign i_idxprom12_atax11_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_039_pop26_atax10_out_data_out[31:0]};

    // i_idxprom12_atax11_vt_select_31(BITSELECT,47)@2
    assign i_idxprom12_atax11_vt_select_31_b = i_idxprom12_atax11_sel_x_b[31:0];

    // i_idxprom12_atax11_vt_join(BITJOIN,46)@2
    assign i_idxprom12_atax11_vt_join_q = {c_i32_045_q, i_idxprom12_atax11_vt_select_31_b};

    // i_arrayidx13_atax0_dupName_0_narrow_x(BITSELECT,141)@2
    assign i_arrayidx13_atax0_dupName_0_narrow_x_b = i_idxprom12_atax11_vt_join_q[61:0];

    // i_arrayidx13_atax0_dupName_0_shift_join_x(BITJOIN,142)@2
    assign i_arrayidx13_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax15_vt_const_1_q};

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx174_atax0_add_x(ADD,147)@2
    assign i_arrayidx174_atax0_add_x_a = {1'b0, c_atax_buff_A_pmem_q};
    assign i_arrayidx174_atax0_add_x_b = {1'b0, i_arrayidx13_1_atax0_shift_join_x_q};
    assign i_arrayidx174_atax0_add_x_o = $unsigned(i_arrayidx174_atax0_add_x_a) + $unsigned(i_arrayidx174_atax0_add_x_b);
    assign i_arrayidx174_atax0_add_x_q = i_arrayidx174_atax0_add_x_o[64:0];

    // i_arrayidx174_atax0_dupName_0_trunc_sel_x(BITSELECT,157)@2
    assign i_arrayidx174_atax0_dupName_0_trunc_sel_x_b = i_arrayidx174_atax0_add_x_q[63:0];

    // i_arrayidx174_atax0_dupName_0_add_x(ADD,152)@2
    assign i_arrayidx174_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx174_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx174_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx174_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx174_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx174_atax0_dupName_0_add_x_b);
    assign i_arrayidx174_atax0_dupName_0_add_x_q = i_arrayidx174_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx174_atax0_dupName_2_trunc_sel_x(BITSELECT,158)@2
    assign i_arrayidx174_atax0_dupName_2_trunc_sel_x_b = i_arrayidx174_atax0_dupName_0_add_x_q[63:0];

    // i_arrayidx174_atax15_vt_select_63(BITSELECT,20)@2
    assign i_arrayidx174_atax15_vt_select_63_b = i_arrayidx174_atax0_dupName_2_trunc_sel_x_b[63:2];

    // i_arrayidx174_atax15_vt_join(BITJOIN,19)@2
    assign i_arrayidx174_atax15_vt_join_q = {i_arrayidx174_atax15_vt_select_63_b, i_arrayidx174_atax15_vt_const_1_q};

    // i_arrayidx13_atax0_dupName_0_add_x(ADD,140)@2
    assign i_arrayidx13_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_1_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_atax0_dupName_0_add_x_q = i_arrayidx13_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_atax0_dupName_2_trunc_sel_x(BITSELECT,146)@2
    assign i_arrayidx13_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_atax0_dupName_0_add_x_q[63:0];

    // sync_out_aunroll_x(GPOUT,170)@2
    assign out_c0_exi9_0_tpl = GND_q;
    assign out_c0_exi9_1_tpl = i_first_cleanup_xor71_atax4_q;
    assign out_c0_exi9_2_tpl = redist4_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q;
    assign out_c0_exi9_3_tpl = i_arrayidx13_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi9_4_tpl = i_arrayidx174_atax15_vt_join_q;
    assign out_c0_exi9_5_tpl = i_arrayidx13_1_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi9_6_tpl = i_arrayidx13_2_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi9_7_tpl = i_arrayidx13_3_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi9_8_tpl = i_masked74_atax37_q;
    assign out_c0_exi9_9_tpl = i_llvm_fpga_pop_i1_notcmp7789_pop29_atax38_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
