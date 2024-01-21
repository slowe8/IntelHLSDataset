// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 23.4 (Release Build #31.1)
// 
// Legal Notice: Copyright 2022 Intel Corporation.  All rights reserved.
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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body9_ataxs_c0_enter745_atax0
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body9_s_c0_enter745_atax0 (
    input wire [63:0] in_unnamed_atax10_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax10_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax10_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax10_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_memdep_4_atax_avm_readdata,
    input wire [0:0] in_memdep_4_atax_avm_writeack,
    input wire [0:0] in_memdep_4_atax_avm_waitrequest,
    input wire [0:0] in_memdep_4_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax10_atax_avm_address,
    output wire [0:0] out_unnamed_atax10_atax_avm_enable,
    output wire [0:0] out_unnamed_atax10_atax_avm_read,
    output wire [0:0] out_unnamed_atax10_atax_avm_write,
    output wire [63:0] out_unnamed_atax10_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax10_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax10_atax_avm_burstcount,
    output wire [31:0] out_memdep_4_atax_avm_address,
    output wire [0:0] out_memdep_4_atax_avm_enable,
    output wire [0:0] out_memdep_4_atax_avm_read,
    output wire [0:0] out_memdep_4_atax_avm_write,
    output wire [31:0] out_memdep_4_atax_avm_writedata,
    output wire [3:0] out_memdep_4_atax_avm_byteenable,
    output wire [0:0] out_memdep_4_atax_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c0_eni173_0_tpl,
    input wire [0:0] in_c0_eni173_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_A_pmem_q;
    wire [1:0] c_i2_151_q;
    wire [31:0] c_i32_053_q;
    wire [31:0] c_i32_154_q;
    wire [6:0] c_i7_157_q;
    wire [6:0] c_i7_6255_q;
    wire [1:0] i_arrayidx174_atax19_vt_const_1_q;
    wire [63:0] i_arrayidx174_atax19_vt_join_q;
    wire [61:0] i_arrayidx174_atax19_vt_select_63_b;
    wire [1:0] i_cleanups_shl58_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl58_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor60_atax4_q;
    wire [7:0] i_fpga_indvars_iv_next_atax31_a;
    wire [7:0] i_fpga_indvars_iv_next_atax31_b;
    logic [7:0] i_fpga_indvars_iv_next_atax31_o;
    wire [7:0] i_fpga_indvars_iv_next_atax31_q;
    wire [63:0] i_idxprom12_atax13_vt_join_q;
    wire [31:0] i_idxprom12_atax13_vt_select_31_b;
    wire [32:0] i_inc_atax21_a;
    wire [32:0] i_inc_atax21_b;
    logic [32:0] i_inc_atax21_o;
    wire [32:0] i_inc_atax21_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_idxprom18_atax18_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_idxprom19_atax15_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a64f32_a4214_atax14_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax10_atax17_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_atax6_out_pipeline_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_feedback_stall_out_17;
    wire [1:0] i_llvm_fpga_pop_i2_initerations52_pop16_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations52_pop16_atax7_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_i32_j_039_pop15_atax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_039_pop15_atax12_out_feedback_stall_out_15;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_atax23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_atax23_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration56_atax11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration56_atax11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond64_atax27_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond64_atax27_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i2_cleanups57_push17_atax30_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_cleanups57_push17_atax30_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i2_initerations52_push16_atax9_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i2_initerations52_push16_atax9_out_feedback_valid_out_16;
    wire [31:0] i_llvm_fpga_push_i32_j_039_push15_atax22_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_j_039_push15_atax22_out_feedback_valid_out_15;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push14_atax32_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push14_atax32_out_feedback_valid_out_14;
    wire [0:0] i_masked63_atax33_qi;
    reg [0:0] i_masked63_atax33_q;
    wire [0:0] i_next_cleanups62_atax29_s;
    reg [1:0] i_next_cleanups62_atax29_q;
    wire [1:0] i_next_initerations53_atax8_vt_join_q;
    wire [0:0] i_next_initerations53_atax8_vt_select_0_b;
    wire [0:0] i_notcmp50_atax26_q;
    wire [0:0] i_or61_atax28_q;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next_atax31_sel_x_b;
    wire [31:0] bgTrunc_i_inc_atax21_sel_x_b;
    wire [64:0] i_arrayidx13_atax0_add_x_a;
    wire [64:0] i_arrayidx13_atax0_add_x_b;
    logic [64:0] i_arrayidx13_atax0_add_x_o;
    wire [64:0] i_arrayidx13_atax0_add_x_q;
    wire [7:0] i_arrayidx13_atax0_c_i8_01_x_q;
    wire [55:0] i_arrayidx13_atax0_narrow_x_b;
    wire [63:0] i_arrayidx13_atax0_shift_join_x_q;
    wire [64:0] i_arrayidx13_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx13_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx13_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx13_atax0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx13_atax0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx13_atax0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx13_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx13_atax0_dupName_2_trunc_sel_x_b;
    wire [14:0] i_arrayidx174_atax0_add_x_a;
    wire [14:0] i_arrayidx174_atax0_add_x_b;
    logic [14:0] i_arrayidx174_atax0_add_x_o;
    wire [14:0] i_arrayidx174_atax0_add_x_q;
    wire [63:0] i_arrayidx174_atax0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx174_atax0_narrow_x_b;
    wire [13:0] i_arrayidx174_atax0_shift_join_x_q;
    wire [14:0] i_arrayidx174_atax0_dupName_0_add_x_a;
    wire [14:0] i_arrayidx174_atax0_dupName_0_add_x_b;
    logic [14:0] i_arrayidx174_atax0_dupName_0_add_x_o;
    wire [14:0] i_arrayidx174_atax0_dupName_0_add_x_q;
    wire [11:0] i_arrayidx174_atax0_dupName_0_narrow_x_b;
    wire [13:0] i_arrayidx174_atax0_dupName_0_shift_join_x_q;
    wire [13:0] i_arrayidx174_atax0_dupName_0_trunc_sel_x_b;
    wire [13:0] i_arrayidx174_atax0_dupName_2_trunc_sel_x_b;
    wire [13:0] i_arrayidx174_atax0_dupName_3_trunc_sel_x_b;
    wire [13:0] i_arrayidx174_atax0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup59_atax3_sel_x_b;
    wire [63:0] i_idxprom12_atax13_sel_x_b;
    wire [0:0] i_last_initeration55_atax10_sel_x_b;
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
    wire [0:0] i_exitcond_atax24_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid150_i_cleanups_shl58_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid150_i_cleanups_shl58_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid151_i_cleanups_shl58_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid153_i_cleanups_shl58_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid153_i_cleanups_shl58_atax0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid157_i_next_initerations53_atax0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid159_i_next_initerations53_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid161_i_next_initerations53_atax0_shift_x_s;
    reg [1:0] rightShiftStage0_uid161_i_next_initerations53_atax0_shift_x_q;
    wire [49:0] i_arrayidx174_atax0_upper_bits_x_merged_bit_select_b;
    wire [13:0] i_arrayidx174_atax0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together74_aunroll_x_in_c0_eni173_1_tpl_1_q;
    reg [0:0] redist2_sync_together74_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together74_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist3_sync_together74_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist3_sync_together74_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist3_sync_together74_aunroll_x_in_i_valid_5_delay_2;
    reg [11:0] redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_q;
    reg [11:0] redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_delay_0;
    reg [11:0] redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_delay_1;
    reg [0:0] redist5_i_masked63_atax33_q_6_q;
    reg [0:0] redist5_i_masked63_atax33_q_6_delay_0;
    reg [0:0] redist5_i_masked63_atax33_q_6_delay_1;
    reg [0:0] redist5_i_masked63_atax33_q_6_delay_2;
    reg [0:0] redist5_i_masked63_atax33_q_6_delay_3;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_1_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_7_q;
    reg [0:0] redist8_i_first_cleanup_xor60_atax4_q_5_q;
    reg [0:0] redist8_i_first_cleanup_xor60_atax4_q_5_delay_0;
    reg [0:0] redist8_i_first_cleanup_xor60_atax4_q_5_delay_1;
    reg [0:0] redist8_i_first_cleanup_xor60_atax4_q_5_delay_2;
    reg [0:0] redist8_i_first_cleanup_xor60_atax4_q_5_delay_3;
    reg [11:0] redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_inputreg0_q;
    reg [11:0] redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_outputreg0_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together74_aunroll_x_in_i_valid_1(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together74_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together74_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_1(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid150_i_cleanups_shl58_atax0_shift_x(BITSELECT,149)@2
    assign leftShiftStage0Idx1Rng1_uid150_i_cleanups_shl58_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid150_i_cleanups_shl58_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid150_i_cleanups_shl58_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid151_i_cleanups_shl58_atax0_shift_x(BITJOIN,150)@2
    assign leftShiftStage0Idx1_uid151_i_cleanups_shl58_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid150_i_cleanups_shl58_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid153_i_cleanups_shl58_atax0_shift_x(MUX,152)@2
    assign leftShiftStage0_uid153_i_cleanups_shl58_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid153_i_cleanups_shl58_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_data_out or leftShiftStage0Idx1_uid151_i_cleanups_shl58_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid153_i_cleanups_shl58_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid153_i_cleanups_shl58_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid153_i_cleanups_shl58_atax0_shift_x_q = leftShiftStage0Idx1_uid151_i_cleanups_shl58_atax0_shift_x_q;
            default : leftShiftStage0_uid153_i_cleanups_shl58_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl58_atax5_vt_select_1(BITSELECT,34)@2
    assign i_cleanups_shl58_atax5_vt_select_1_b = leftShiftStage0_uid153_i_cleanups_shl58_atax0_shift_x_q[1:1];

    // i_cleanups_shl58_atax5_vt_join(BITJOIN,33)@2
    assign i_cleanups_shl58_atax5_vt_join_q = {i_cleanups_shl58_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor60_atax4(LOGICAL,37)@2
    assign i_first_cleanup_xor60_atax4_q = i_first_cleanup59_atax3_sel_x_b ^ VCC_q;

    // i_notcmp50_atax26(LOGICAL,66)@2
    assign i_notcmp50_atax26_q = i_exitcond_atax24_cmp_nsign_q ^ VCC_q;

    // i_or61_atax28(LOGICAL,67)@2
    assign i_or61_atax28_q = i_notcmp50_atax26_q | i_first_cleanup_xor60_atax4_q;

    // i_next_cleanups62_atax29(MUX,62)@2
    assign i_next_cleanups62_atax29_s = i_or61_atax28_q;
    always @(i_next_cleanups62_atax29_s or i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_data_out or i_cleanups_shl58_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups62_atax29_s)
            1'b0 : i_next_cleanups62_atax29_q = i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_data_out;
            1'b1 : i_next_cleanups62_atax29_q = i_cleanups_shl58_atax5_vt_join_q;
            default : i_next_cleanups62_atax29_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups57_push17_atax30(BLACKBOX,57)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    atax_i_llvm_fpga_push_i2_cleanups57_push17_0 thei_llvm_fpga_push_i2_cleanups57_push17_atax30 (
        .in_data_in(i_next_cleanups62_atax29_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_feedback_stall_out_17),
        .in_keep_going54(redist6_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_cleanups57_push17_atax30_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_cleanups57_push17_atax30_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together74_aunroll_x_in_c0_eni173_1_tpl_1(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together74_aunroll_x_in_c0_eni173_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together74_aunroll_x_in_c0_eni173_1_tpl_1_q <= $unsigned(in_c0_eni173_1_tpl);
        end
    end

    // c_i2_151(CONSTANT,22)
    assign c_i2_151_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups57_pop17_atax2(BLACKBOX,51)@2
    // out out_feedback_stall_out_17@20000000
    atax_i_llvm_fpga_pop_i2_cleanups57_pop17_0 thei_llvm_fpga_pop_i2_cleanups57_pop17_atax2 (
        .in_data_in(c_i2_151_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni173_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_cleanups57_push17_atax30_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_cleanups57_push17_atax30_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup59_atax3_sel_x(BITSELECT,117)@2
    assign i_first_cleanup59_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups57_pop17_atax2_out_data_out[0:0];

    // c_i7_157(CONSTANT,25)
    assign c_i7_157_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next_atax31(ADD,38)@2
    assign i_fpga_indvars_iv_next_atax31_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_atax23_out_data_out};
    assign i_fpga_indvars_iv_next_atax31_b = {1'b0, c_i7_157_q};
    assign i_fpga_indvars_iv_next_atax31_o = $unsigned(i_fpga_indvars_iv_next_atax31_a) + $unsigned(i_fpga_indvars_iv_next_atax31_b);
    assign i_fpga_indvars_iv_next_atax31_q = i_fpga_indvars_iv_next_atax31_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next_atax31_sel_x(BITSELECT,75)@2
    assign bgTrunc_i_fpga_indvars_iv_next_atax31_sel_x_b = i_fpga_indvars_iv_next_atax31_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv_push14_atax32(BLACKBOX,60)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    atax_i_llvm_fpga_push_i7_fpga_indvars_iv_push14_0 thei_llvm_fpga_push_i7_fpga_indvars_iv_push14_atax32 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_atax31_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_atax23_out_feedback_stall_out_14),
        .in_keep_going54(redist6_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i7_fpga_indvars_iv_push14_atax32_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i7_fpga_indvars_iv_push14_atax32_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i7_6255(CONSTANT,26)
    assign c_i7_6255_q = $unsigned(7'b0111110);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_atax23(BLACKBOX,54)@2
    // out out_feedback_stall_out_14@20000000
    atax_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_atax23 (
        .in_data_in(c_i7_6255_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni173_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i7_fpga_indvars_iv_push14_atax32_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i7_fpga_indvars_iv_push14_atax32_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_atax23_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_atax23_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_atax24_cmp_nsign(LOGICAL,145)@2
    assign i_exitcond_atax24_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_atax23_out_data_out[6:6]));

    // i_llvm_fpga_push_i1_notexitcond64_atax27(BLACKBOX,56)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    atax_i_llvm_fpga_push_i1_notexitcond64_0 thei_llvm_fpga_push_i1_notexitcond64_atax27 (
        .in_data_in(i_exitcond_atax24_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going54_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup59(i_first_cleanup59_atax3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond64_atax27_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond64_atax27_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,129)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid157_i_next_initerations53_atax0_shift_x(BITSELECT,156)@2
    assign rightShiftStage0Idx1Rng1_uid157_i_next_initerations53_atax0_shift_x_b = i_llvm_fpga_pop_i2_initerations52_pop16_atax7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid159_i_next_initerations53_atax0_shift_x(BITJOIN,158)@2
    assign rightShiftStage0Idx1_uid159_i_next_initerations53_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid157_i_next_initerations53_atax0_shift_x_b};

    // valid_fanout_reg1(REG,127)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,128)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations52_push16_atax9(BLACKBOX,58)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    atax_i_llvm_fpga_push_i2_initerations52_push16_0 thei_llvm_fpga_push_i2_initerations52_push16_atax9 (
        .in_data_in(i_next_initerations53_atax8_vt_join_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i2_initerations52_pop16_atax7_out_feedback_stall_out_16),
        .in_keep_going54(redist6_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i2_initerations52_push16_atax9_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i2_initerations52_push16_atax9_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations52_pop16_atax7(BLACKBOX,52)@2
    // out out_feedback_stall_out_16@20000000
    atax_i_llvm_fpga_pop_i2_initerations52_pop16_0 thei_llvm_fpga_pop_i2_initerations52_pop16_atax7 (
        .in_data_in(c_i2_151_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni173_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i2_initerations52_push16_atax9_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i2_initerations52_push16_atax9_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations52_pop16_atax7_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i2_initerations52_pop16_atax7_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid161_i_next_initerations53_atax0_shift_x(MUX,160)@2
    assign rightShiftStage0_uid161_i_next_initerations53_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid161_i_next_initerations53_atax0_shift_x_s or i_llvm_fpga_pop_i2_initerations52_pop16_atax7_out_data_out or rightShiftStage0Idx1_uid159_i_next_initerations53_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid161_i_next_initerations53_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid161_i_next_initerations53_atax0_shift_x_q = i_llvm_fpga_pop_i2_initerations52_pop16_atax7_out_data_out;
            1'b1 : rightShiftStage0_uid161_i_next_initerations53_atax0_shift_x_q = rightShiftStage0Idx1_uid159_i_next_initerations53_atax0_shift_x_q;
            default : rightShiftStage0_uid161_i_next_initerations53_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations53_atax8_vt_select_0(BITSELECT,65)@2
    assign i_next_initerations53_atax8_vt_select_0_b = rightShiftStage0_uid161_i_next_initerations53_atax0_shift_x_q[0:0];

    // i_next_initerations53_atax8_vt_join(BITJOIN,64)@2
    assign i_next_initerations53_atax8_vt_join_q = {GND_q, i_next_initerations53_atax8_vt_select_0_b};

    // i_last_initeration55_atax10_sel_x(BITSELECT,119)@2
    assign i_last_initeration55_atax10_sel_x_b = i_next_initerations53_atax8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration56_atax11(BLACKBOX,55)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration56_0 thei_llvm_fpga_push_i1_lastiniteration56_atax11 (
        .in_data_in(i_last_initeration55_atax10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going54_atax6_out_initeration_stall_out),
        .in_keep_going54(redist6_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration56_atax11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration56_atax11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going54_atax6(BLACKBOX,50)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going54_0 thei_llvm_fpga_pipeline_keep_going54_atax6 (
        .in_data_in(in_c0_eni173_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration56_atax11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration56_atax11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond64_atax27_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond64_atax27_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going54_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going54_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going54_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going54_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going54_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,28)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going54_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going54_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,70)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going54_atax6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,133)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_053(CONSTANT,23)
    assign c_i32_053_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,130)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,136)@1 + 1
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

    // c_i32_154(CONSTANT,24)
    assign c_i32_154_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_atax21(ADD,43)@2
    assign i_inc_atax21_a = {1'b0, i_llvm_fpga_pop_i32_j_039_pop15_atax12_out_data_out};
    assign i_inc_atax21_b = {1'b0, c_i32_154_q};
    assign i_inc_atax21_o = $unsigned(i_inc_atax21_a) + $unsigned(i_inc_atax21_b);
    assign i_inc_atax21_q = i_inc_atax21_o[32:0];

    // bgTrunc_i_inc_atax21_sel_x(BITSELECT,76)@2
    assign bgTrunc_i_inc_atax21_sel_x_b = i_inc_atax21_q[31:0];

    // i_llvm_fpga_push_i32_j_039_push15_atax22(BLACKBOX,59)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    atax_i_llvm_fpga_push_i32_j_039_push15_0 thei_llvm_fpga_push_i32_j_039_push15_atax22 (
        .in_data_in(bgTrunc_i_inc_atax21_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_j_039_pop15_atax12_out_feedback_stall_out_15),
        .in_keep_going54(redist6_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_j_039_push15_atax22_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_j_039_push15_atax22_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_039_pop15_atax12(BLACKBOX,53)@2
    // out out_feedback_stall_out_15@20000000
    atax_i_llvm_fpga_pop_i32_j_039_pop15_0 thei_llvm_fpga_pop_i32_j_039_pop15_atax12 (
        .in_data_in(c_i32_053_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni173_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_j_039_push15_atax22_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_j_039_push15_atax22_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_039_pop15_atax12_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_j_039_pop15_atax12_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom12_atax13_sel_x(BITSELECT,118)@2
    assign i_idxprom12_atax13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_039_pop15_atax12_out_data_out[31:0]};

    // i_idxprom12_atax13_vt_select_31(BITSELECT,42)@2
    assign i_idxprom12_atax13_vt_select_31_b = i_idxprom12_atax13_sel_x_b[31:0];

    // i_idxprom12_atax13_vt_join(BITJOIN,41)@2
    assign i_idxprom12_atax13_vt_join_q = {c_i32_053_q, i_idxprom12_atax13_vt_select_31_b};

    // i_arrayidx13_atax0_dupName_0_narrow_x(BITSELECT,87)@2
    assign i_arrayidx13_atax0_dupName_0_narrow_x_b = i_idxprom12_atax13_vt_join_q[61:0];

    // i_arrayidx174_atax19_vt_const_1(CONSTANT,29)
    assign i_arrayidx174_atax19_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx13_atax0_dupName_0_shift_join_x(BITJOIN,88)@2
    assign i_arrayidx13_atax0_dupName_0_shift_join_x_q = {i_arrayidx13_atax0_dupName_0_narrow_x_b, i_arrayidx174_atax19_vt_const_1_q};

    // valid_fanout_reg6(REG,132)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_idxprom19_atax15(BLACKBOX,46)@2
    atax_i_llvm_fpga_ffwd_dest_i64_idxprom19_0 thei_llvm_fpga_ffwd_dest_i64_idxprom19_atax15 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i64_idxprom19_atax15_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx13_atax0_narrow_x(BITSELECT,84)@2
    assign i_arrayidx13_atax0_narrow_x_b = i_llvm_fpga_ffwd_dest_i64_idxprom19_atax15_out_dest_data_out_4_0[55:0];

    // i_arrayidx13_atax0_c_i8_01_x(CONSTANT,83)
    assign i_arrayidx13_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx13_atax0_shift_join_x(BITJOIN,85)@2
    assign i_arrayidx13_atax0_shift_join_x_q = {i_arrayidx13_atax0_narrow_x_b, i_arrayidx13_atax0_c_i8_01_x_q};

    // valid_fanout_reg5(REG,131)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_p1024a64f32_a4214_atax14(BLACKBOX,47)@2
    atax_i_llvm_fpga_ffwd_dest_p1024a64f32_a4214_0 thei_llvm_fpga_ffwd_dest_p1024a64f32_a4214_atax14 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a64f32_a4214_atax14_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx13_atax0_add_x(ADD,81)@2
    assign i_arrayidx13_atax0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a64f32_a4214_atax14_out_dest_data_out_0_0};
    assign i_arrayidx13_atax0_add_x_b = {1'b0, i_arrayidx13_atax0_shift_join_x_q};
    assign i_arrayidx13_atax0_add_x_o = $unsigned(i_arrayidx13_atax0_add_x_a) + $unsigned(i_arrayidx13_atax0_add_x_b);
    assign i_arrayidx13_atax0_add_x_q = i_arrayidx13_atax0_add_x_o[64:0];

    // i_arrayidx13_atax0_dupName_0_trunc_sel_x(BITSELECT,91)@2
    assign i_arrayidx13_atax0_dupName_0_trunc_sel_x_b = i_arrayidx13_atax0_add_x_q[63:0];

    // i_arrayidx13_atax0_dupName_0_add_x(ADD,86)@2
    assign i_arrayidx13_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx13_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx13_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx13_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx13_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx13_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx13_atax0_dupName_0_add_x_b);
    assign i_arrayidx13_atax0_dupName_0_add_x_q = i_arrayidx13_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx13_atax0_dupName_2_trunc_sel_x(BITSELECT,92)@2
    assign i_arrayidx13_atax0_dupName_2_trunc_sel_x_b = i_arrayidx13_atax0_dupName_0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_atax10_atax17(BLACKBOX,49)@2
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_atax10_atax_avm_address@20000000
    // out out_unnamed_atax10_atax_avm_burstcount@20000000
    // out out_unnamed_atax10_atax_avm_byteenable@20000000
    // out out_unnamed_atax10_atax_avm_enable@20000000
    // out out_unnamed_atax10_atax_avm_read@20000000
    // out out_unnamed_atax10_atax_avm_write@20000000
    // out out_unnamed_atax10_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_10_atax0 thei_llvm_fpga_mem_unnamed_atax10_atax17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx13_atax0_dupName_2_trunc_sel_x_b),
        .in_i_predicate(i_first_cleanup_xor60_atax4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_atax10_atax_avm_readdata(in_unnamed_atax10_atax_avm_readdata),
        .in_unnamed_atax10_atax_avm_readdatavalid(in_unnamed_atax10_atax_avm_readdatavalid),
        .in_unnamed_atax10_atax_avm_waitrequest(in_unnamed_atax10_atax_avm_waitrequest),
        .in_unnamed_atax10_atax_avm_writeack(in_unnamed_atax10_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax10_atax17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax10_atax_avm_address(i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_address),
        .out_unnamed_atax10_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_burstcount),
        .out_unnamed_atax10_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_byteenable),
        .out_unnamed_atax10_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_enable),
        .out_unnamed_atax10_atax_avm_read(i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_read),
        .out_unnamed_atax10_atax_avm_write(i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_write),
        .out_unnamed_atax10_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,79)
    assign out_unnamed_atax10_atax_avm_address = i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_address;
    assign out_unnamed_atax10_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_enable;
    assign out_unnamed_atax10_atax_avm_read = i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_read;
    assign out_unnamed_atax10_atax_avm_write = i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_write;
    assign out_unnamed_atax10_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_writedata;
    assign out_unnamed_atax10_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_byteenable;
    assign out_unnamed_atax10_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax10_atax17_out_unnamed_atax10_atax_avm_burstcount;

    // redist3_sync_together74_aunroll_x_in_i_valid_5(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together74_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist3_sync_together74_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist3_sync_together74_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist3_sync_together74_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist3_sync_together74_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_1_q);
            redist3_sync_together74_aunroll_x_in_i_valid_5_delay_1 <= redist3_sync_together74_aunroll_x_in_i_valid_5_delay_0;
            redist3_sync_together74_aunroll_x_in_i_valid_5_delay_2 <= redist3_sync_together74_aunroll_x_in_i_valid_5_delay_1;
            redist3_sync_together74_aunroll_x_in_i_valid_5_q <= redist3_sync_together74_aunroll_x_in_i_valid_5_delay_2;
        end
    end

    // valid_fanout_reg9(REG,135)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together74_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist8_i_first_cleanup_xor60_atax4_q_5(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_first_cleanup_xor60_atax4_q_5_delay_0 <= '0;
            redist8_i_first_cleanup_xor60_atax4_q_5_delay_1 <= '0;
            redist8_i_first_cleanup_xor60_atax4_q_5_delay_2 <= '0;
            redist8_i_first_cleanup_xor60_atax4_q_5_delay_3 <= '0;
            redist8_i_first_cleanup_xor60_atax4_q_5_q <= '0;
        end
        else
        begin
            redist8_i_first_cleanup_xor60_atax4_q_5_delay_0 <= $unsigned(i_first_cleanup_xor60_atax4_q);
            redist8_i_first_cleanup_xor60_atax4_q_5_delay_1 <= redist8_i_first_cleanup_xor60_atax4_q_5_delay_0;
            redist8_i_first_cleanup_xor60_atax4_q_5_delay_2 <= redist8_i_first_cleanup_xor60_atax4_q_5_delay_1;
            redist8_i_first_cleanup_xor60_atax4_q_5_delay_3 <= redist8_i_first_cleanup_xor60_atax4_q_5_delay_2;
            redist8_i_first_cleanup_xor60_atax4_q_5_q <= redist8_i_first_cleanup_xor60_atax4_q_5_delay_3;
        end
    end

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx174_atax0_upper_bits_x_merged_bit_select(BITSELECT,162)@7
    assign i_arrayidx174_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_A_pmem_q[63:14];
    assign i_arrayidx174_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_A_pmem_q[13:0];

    // i_arrayidx174_atax0_dupName_3_trunc_sel_x(BITSELECT,111)@2
    assign i_arrayidx174_atax0_dupName_3_trunc_sel_x_b = i_idxprom12_atax13_vt_join_q[13:0];

    // i_arrayidx174_atax0_dupName_0_narrow_x(BITSELECT,102)@2
    assign i_arrayidx174_atax0_dupName_0_narrow_x_b = i_arrayidx174_atax0_dupName_3_trunc_sel_x_b[11:0];

    // redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_inputreg0(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_inputreg0_q <= '0;
        end
        else
        begin
            redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_inputreg0_q <= $unsigned(i_arrayidx174_atax0_dupName_0_narrow_x_b);
        end
    end

    // redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_delay_0 <= '0;
            redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_delay_1 <= '0;
            redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_q <= '0;
        end
        else
        begin
            redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_delay_0 <= $unsigned(redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_inputreg0_q);
            redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_delay_1 <= redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_delay_0;
            redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_q <= redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_delay_1;
        end
    end

    // redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_outputreg0(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_outputreg0_q <= '0;
        end
        else
        begin
            redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_outputreg0_q <= $unsigned(redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_q);
        end
    end

    // i_arrayidx174_atax0_dupName_0_shift_join_x(BITJOIN,103)@7
    assign i_arrayidx174_atax0_dupName_0_shift_join_x_q = {redist4_i_arrayidx174_atax0_dupName_0_narrow_x_b_5_outputreg0_q, i_arrayidx174_atax19_vt_const_1_q};

    // valid_fanout_reg8(REG,134)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist3_sync_together74_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_idxprom18_atax18(BLACKBOX,45)@7
    atax_i_llvm_fpga_ffwd_dest_i64_idxprom18_0 thei_llvm_fpga_ffwd_dest_i64_idxprom18_atax18 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i64_idxprom18_atax18_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx174_atax0_dupName_0_trunc_sel_x(BITSELECT,109)@7
    assign i_arrayidx174_atax0_dupName_0_trunc_sel_x_b = i_llvm_fpga_ffwd_dest_i64_idxprom18_atax18_out_dest_data_out_4_0[13:0];

    // i_arrayidx174_atax0_narrow_x(BITSELECT,97)@7
    assign i_arrayidx174_atax0_narrow_x_b = i_arrayidx174_atax0_dupName_0_trunc_sel_x_b[5:0];

    // i_arrayidx174_atax0_shift_join_x(BITJOIN,98)@7
    assign i_arrayidx174_atax0_shift_join_x_q = {i_arrayidx174_atax0_narrow_x_b, i_arrayidx13_atax0_c_i8_01_x_q};

    // i_arrayidx174_atax0_add_x(ADD,93)@7
    assign i_arrayidx174_atax0_add_x_a = {1'b0, i_arrayidx174_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx174_atax0_add_x_b = {1'b0, i_arrayidx174_atax0_shift_join_x_q};
    assign i_arrayidx174_atax0_add_x_o = $unsigned(i_arrayidx174_atax0_add_x_a) + $unsigned(i_arrayidx174_atax0_add_x_b);
    assign i_arrayidx174_atax0_add_x_q = i_arrayidx174_atax0_add_x_o[14:0];

    // i_arrayidx174_atax0_dupName_2_trunc_sel_x(BITSELECT,110)@7
    assign i_arrayidx174_atax0_dupName_2_trunc_sel_x_b = i_arrayidx174_atax0_add_x_q[13:0];

    // i_arrayidx174_atax0_dupName_0_add_x(ADD,101)@7
    assign i_arrayidx174_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx174_atax0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx174_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx174_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx174_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx174_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx174_atax0_dupName_0_add_x_b);
    assign i_arrayidx174_atax0_dupName_0_add_x_q = i_arrayidx174_atax0_dupName_0_add_x_o[14:0];

    // i_arrayidx174_atax0_dupName_5_trunc_sel_x(BITSELECT,112)@7
    assign i_arrayidx174_atax0_dupName_5_trunc_sel_x_b = i_arrayidx174_atax0_dupName_0_add_x_q[13:0];

    // i_arrayidx174_atax0_append_upper_bits_x(BITJOIN,94)@7
    assign i_arrayidx174_atax0_append_upper_bits_x_q = {i_arrayidx174_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx174_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx174_atax19_vt_select_63(BITSELECT,31)@7
    assign i_arrayidx174_atax19_vt_select_63_b = i_arrayidx174_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx174_atax19_vt_join(BITJOIN,30)@7
    assign i_arrayidx174_atax19_vt_join_q = {i_arrayidx174_atax19_vt_select_63_b, i_arrayidx174_atax19_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_4_atax20(BLACKBOX,48)@7
    // out out_memdep_4_atax_avm_address@20000000
    // out out_memdep_4_atax_avm_burstcount@20000000
    // out out_memdep_4_atax_avm_byteenable@20000000
    // out out_memdep_4_atax_avm_enable@20000000
    // out out_memdep_4_atax_avm_read@20000000
    // out out_memdep_4_atax_avm_write@20000000
    // out out_memdep_4_atax_avm_writedata@20000000
    // out out_o_stall@8
    // out out_o_valid@8
    // out out_o_writeack@8
    atax_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_atax20 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx174_atax19_vt_join_q),
        .in_i_predicate(redist8_i_first_cleanup_xor60_atax4_q_5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_i_writedata(i_llvm_fpga_mem_unnamed_atax10_atax17_out_o_readdata),
        .in_memdep_4_atax_avm_readdata(in_memdep_4_atax_avm_readdata),
        .in_memdep_4_atax_avm_readdatavalid(in_memdep_4_atax_avm_readdatavalid),
        .in_memdep_4_atax_avm_waitrequest(in_memdep_4_atax_avm_waitrequest),
        .in_memdep_4_atax_avm_writeack(in_memdep_4_atax_avm_writeack),
        .out_memdep_4_atax_avm_address(i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_address),
        .out_memdep_4_atax_avm_burstcount(i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_burstcount),
        .out_memdep_4_atax_avm_byteenable(i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_byteenable),
        .out_memdep_4_atax_avm_enable(i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_enable),
        .out_memdep_4_atax_avm_read(i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_read),
        .out_memdep_4_atax_avm_write(i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_write),
        .out_memdep_4_atax_avm_writedata(i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,80)
    assign out_memdep_4_atax_avm_address = i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_address;
    assign out_memdep_4_atax_avm_enable = i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_enable;
    assign out_memdep_4_atax_avm_read = i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_read;
    assign out_memdep_4_atax_avm_write = i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_write;
    assign out_memdep_4_atax_avm_writedata = i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_writedata;
    assign out_memdep_4_atax_avm_byteenable = i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_byteenable;
    assign out_memdep_4_atax_avm_burstcount = i_llvm_fpga_mem_memdep_4_atax20_out_memdep_4_atax_avm_burstcount;

    // valid_fanout_reg0(REG,126)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together74_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // i_masked63_atax33(LOGICAL,61)@2 + 1
    assign i_masked63_atax33_qi = i_notcmp50_atax26_q & i_first_cleanup59_atax3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked63_atax33_delay ( .xin(i_masked63_atax33_qi), .xout(i_masked63_atax33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_i_masked63_atax33_q_6(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_masked63_atax33_q_6_delay_0 <= '0;
            redist5_i_masked63_atax33_q_6_delay_1 <= '0;
            redist5_i_masked63_atax33_q_6_delay_2 <= '0;
            redist5_i_masked63_atax33_q_6_delay_3 <= '0;
            redist5_i_masked63_atax33_q_6_q <= '0;
        end
        else
        begin
            redist5_i_masked63_atax33_q_6_delay_0 <= $unsigned(i_masked63_atax33_q);
            redist5_i_masked63_atax33_q_6_delay_1 <= redist5_i_masked63_atax33_q_6_delay_0;
            redist5_i_masked63_atax33_q_6_delay_2 <= redist5_i_masked63_atax33_q_6_delay_1;
            redist5_i_masked63_atax33_q_6_delay_3 <= redist5_i_masked63_atax33_q_6_delay_2;
            redist5_i_masked63_atax33_q_6_q <= redist5_i_masked63_atax33_q_6_delay_3;
        end
    end

    // redist7_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_7(DELAY,170)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_7 ( .xin(redist6_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_1_q), .xout(redist7_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,124)@8
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going54_atax6_out_data_out_7_q;
    assign out_c0_exi2_2_tpl = redist5_i_masked63_atax33_q_6_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
