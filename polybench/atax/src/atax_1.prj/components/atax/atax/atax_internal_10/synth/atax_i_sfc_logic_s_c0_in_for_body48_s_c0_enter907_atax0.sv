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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body48_ataxs_c0_enter907_atax0
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body48_s_c0_enter907_atax0 (
    input wire [31:0] in_unnamed_atax22_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax22_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax22_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax22_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_unnamed_atax23_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax23_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax23_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax23_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax22_atax_avm_address,
    output wire [0:0] out_unnamed_atax22_atax_avm_enable,
    output wire [0:0] out_unnamed_atax22_atax_avm_read,
    output wire [0:0] out_unnamed_atax22_atax_avm_write,
    output wire [31:0] out_unnamed_atax22_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax22_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax22_atax_avm_burstcount,
    input wire [31:0] in_memdep_6_atax_avm_readdata,
    input wire [0:0] in_memdep_6_atax_avm_writeack,
    input wire [0:0] in_memdep_6_atax_avm_waitrequest,
    input wire [0:0] in_memdep_6_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax23_atax_avm_address,
    output wire [0:0] out_unnamed_atax23_atax_avm_enable,
    output wire [0:0] out_unnamed_atax23_atax_avm_read,
    output wire [0:0] out_unnamed_atax23_atax_avm_write,
    output wire [31:0] out_unnamed_atax23_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax23_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax23_atax_avm_burstcount,
    output wire [31:0] out_memdep_6_atax_avm_address,
    output wire [0:0] out_memdep_6_atax_avm_enable,
    output wire [0:0] out_memdep_6_atax_avm_read,
    output wire [0:0] out_memdep_6_atax_avm_write,
    output wire [31:0] out_memdep_6_atax_avm_writedata,
    output wire [3:0] out_memdep_6_atax_avm_byteenable,
    output wire [0:0] out_memdep_6_atax_avm_burstcount,
    output wire [0:0] out_c0_exi293_0_tpl,
    output wire [0:0] out_c0_exi293_1_tpl,
    output wire [0:0] out_c0_exi293_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c0_eni189_0_tpl,
    input wire [0:0] in_c0_eni189_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_A_pmem_q;
    wire [63:0] c_atax_buff_y_out_pmem_q;
    wire [1:0] c_i2_153_q;
    wire [31:0] c_i32_055_q;
    wire [31:0] c_i32_156_q;
    wire [6:0] c_i7_159_q;
    wire [6:0] c_i7_6257_q;
    wire [1:0] i_arrayidx509_atax16_vt_const_1_q;
    wire [63:0] i_arrayidx509_atax16_vt_join_q;
    wire [61:0] i_arrayidx509_atax16_vt_select_63_b;
    wire [63:0] i_arrayidx5410_atax18_vt_join_q;
    wire [61:0] i_arrayidx5410_atax18_vt_select_63_b;
    wire [1:0] i_cleanups_shl42_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl42_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor44_atax4_q;
    wire [7:0] i_fpga_indvars_iv_next9_atax33_a;
    wire [7:0] i_fpga_indvars_iv_next9_atax33_b;
    logic [7:0] i_fpga_indvars_iv_next9_atax33_o;
    wire [7:0] i_fpga_indvars_iv_next9_atax33_q;
    wire [63:0] i_idxprom49_atax15_vt_join_q;
    wire [31:0] i_idxprom49_atax15_vt_select_31_b;
    wire [63:0] i_idxprom51_atax13_vt_join_q;
    wire [31:0] i_idxprom51_atax13_vt_select_31_b;
    wire [32:0] i_inc62_atax23_a;
    wire [32:0] i_inc62_atax23_b;
    logic [32:0] i_inc62_atax23_o;
    wire [32:0] i_inc62_atax23_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_add29_atax20_out_dest_data_out_11_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_i_23623_atax12_out_dest_data_out_7_0;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add70_atax21_out_primWireOut;
    wire [31:0] i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax22_atax17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax23_atax19_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_feedback_stall_out_21;
    wire [1:0] i_llvm_fpga_pop_i2_initerations36_pop20_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations36_pop20_atax7_out_feedback_stall_out_20;
    wire [31:0] i_llvm_fpga_pop_i32_j_235_pop19_atax14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_235_pop19_atax14_out_feedback_stall_out_19;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop18_atax25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop18_atax25_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration40_atax11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration40_atax11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond48_atax29_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond48_atax29_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i2_cleanups41_push21_atax32_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i2_cleanups41_push21_atax32_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i2_initerations36_push20_atax9_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i2_initerations36_push20_atax9_out_feedback_valid_out_20;
    wire [31:0] i_llvm_fpga_push_i32_j_235_push19_atax24_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_j_235_push19_atax24_out_feedback_valid_out_19;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv8_push18_atax34_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv8_push18_atax34_out_feedback_valid_out_18;
    wire [0:0] i_masked47_atax35_qi;
    reg [0:0] i_masked47_atax35_q;
    wire [0:0] i_next_cleanups46_atax31_s;
    reg [1:0] i_next_cleanups46_atax31_q;
    wire [1:0] i_next_initerations37_atax8_vt_join_q;
    wire [0:0] i_next_initerations37_atax8_vt_select_0_b;
    wire [0:0] i_notcmp34_atax28_q;
    wire [0:0] i_or45_atax30_q;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next9_atax33_sel_x_b;
    wire [31:0] bgTrunc_i_inc62_atax23_sel_x_b;
    wire [8:0] i_arrayidx509_atax0_add_x_a;
    wire [8:0] i_arrayidx509_atax0_add_x_b;
    logic [8:0] i_arrayidx509_atax0_add_x_o;
    wire [8:0] i_arrayidx509_atax0_add_x_q;
    wire [63:0] i_arrayidx509_atax0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx509_atax0_narrow_x_b;
    wire [7:0] i_arrayidx509_atax0_shift_join_x_q;
    wire [7:0] i_arrayidx509_atax0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx509_atax0_dupName_2_trunc_sel_x_b;
    wire [14:0] i_arrayidx5410_atax0_add_x_a;
    wire [14:0] i_arrayidx5410_atax0_add_x_b;
    logic [14:0] i_arrayidx5410_atax0_add_x_o;
    wire [14:0] i_arrayidx5410_atax0_add_x_q;
    wire [63:0] i_arrayidx5410_atax0_append_upper_bits_x_q;
    wire [7:0] i_arrayidx5410_atax0_c_i8_01_x_q;
    wire [5:0] i_arrayidx5410_atax0_narrow_x_b;
    wire [13:0] i_arrayidx5410_atax0_shift_join_x_q;
    wire [14:0] i_arrayidx5410_atax0_dupName_0_add_x_a;
    wire [14:0] i_arrayidx5410_atax0_dupName_0_add_x_b;
    logic [14:0] i_arrayidx5410_atax0_dupName_0_add_x_o;
    wire [14:0] i_arrayidx5410_atax0_dupName_0_add_x_q;
    wire [11:0] i_arrayidx5410_atax0_dupName_0_narrow_x_b;
    wire [13:0] i_arrayidx5410_atax0_dupName_0_shift_join_x_q;
    wire [13:0] i_arrayidx5410_atax0_dupName_0_trunc_sel_x_b;
    wire [13:0] i_arrayidx5410_atax0_dupName_2_trunc_sel_x_b;
    wire [13:0] i_arrayidx5410_atax0_dupName_3_trunc_sel_x_b;
    wire [13:0] i_arrayidx5410_atax0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup43_atax3_sel_x_b;
    wire [63:0] i_idxprom49_atax15_sel_x_b;
    wire [63:0] i_idxprom51_atax13_sel_x_b;
    wire [0:0] i_last_initeration39_atax10_sel_x_b;
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
    wire [0:0] i_exitcond10_atax26_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid163_i_cleanups_shl42_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid163_i_cleanups_shl42_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid164_i_cleanups_shl42_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid166_i_cleanups_shl42_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid166_i_cleanups_shl42_atax0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid170_i_next_initerations37_atax0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid172_i_next_initerations37_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid174_i_next_initerations37_atax0_shift_x_s;
    reg [1:0] rightShiftStage0_uid174_i_next_initerations37_atax0_shift_x_q;
    wire [49:0] i_arrayidx5410_atax0_upper_bits_x_merged_bit_select_b;
    wire [13:0] i_arrayidx5410_atax0_upper_bits_x_merged_bit_select_c;
    wire [55:0] i_arrayidx509_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx509_atax0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together76_aunroll_x_in_c0_eni189_1_tpl_1_q;
    reg [0:0] redist2_sync_together76_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together76_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist3_sync_together76_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist3_sync_together76_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist4_sync_together76_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist4_sync_together76_aunroll_x_in_i_valid_8_delay_0;
    reg [0:0] redist4_sync_together76_aunroll_x_in_i_valid_8_delay_1;
    reg [0:0] redist4_sync_together76_aunroll_x_in_i_valid_8_delay_2;
    reg [0:0] redist5_i_masked47_atax35_q_9_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_1_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_10_q;
    reg [0:0] redist8_i_first_cleanup_xor44_atax4_q_8_q;
    reg [63:0] redist9_i_arrayidx509_atax16_vt_join_q_8_inputreg0_q;
    wire redist9_i_arrayidx509_atax16_vt_join_q_8_mem_reset0;
    wire [63:0] redist9_i_arrayidx509_atax16_vt_join_q_8_mem_ia;
    wire [2:0] redist9_i_arrayidx509_atax16_vt_join_q_8_mem_aa;
    wire [2:0] redist9_i_arrayidx509_atax16_vt_join_q_8_mem_ab;
    wire [63:0] redist9_i_arrayidx509_atax16_vt_join_q_8_mem_iq;
    wire [63:0] redist9_i_arrayidx509_atax16_vt_join_q_8_mem_q;
    wire [2:0] redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_q;
    (* preserve *) reg [2:0] redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_i;
    (* preserve *) reg redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_eq;
    reg [2:0] redist9_i_arrayidx509_atax16_vt_join_q_8_wraddr_q;
    wire [3:0] redist9_i_arrayidx509_atax16_vt_join_q_8_mem_last_q;
    wire [3:0] redist9_i_arrayidx509_atax16_vt_join_q_8_cmp_b;
    wire [0:0] redist9_i_arrayidx509_atax16_vt_join_q_8_cmp_q;
    (* dont_merge *) reg [0:0] redist9_i_arrayidx509_atax16_vt_join_q_8_cmpReg_q;
    wire [0:0] redist9_i_arrayidx509_atax16_vt_join_q_8_notEnable_q;
    wire [0:0] redist9_i_arrayidx509_atax16_vt_join_q_8_nor_q;
    (* dont_merge *) reg [0:0] redist9_i_arrayidx509_atax16_vt_join_q_8_sticky_ena_q;
    wire [0:0] redist9_i_arrayidx509_atax16_vt_join_q_8_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together76_aunroll_x_in_i_valid_1(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together76_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together76_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_1(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid163_i_cleanups_shl42_atax0_shift_x(BITSELECT,162)@2
    assign leftShiftStage0Idx1Rng1_uid163_i_cleanups_shl42_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid163_i_cleanups_shl42_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid163_i_cleanups_shl42_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid164_i_cleanups_shl42_atax0_shift_x(BITJOIN,163)@2
    assign leftShiftStage0Idx1_uid164_i_cleanups_shl42_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid163_i_cleanups_shl42_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid166_i_cleanups_shl42_atax0_shift_x(MUX,165)@2
    assign leftShiftStage0_uid166_i_cleanups_shl42_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid166_i_cleanups_shl42_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_data_out or leftShiftStage0Idx1_uid164_i_cleanups_shl42_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid166_i_cleanups_shl42_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid166_i_cleanups_shl42_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid166_i_cleanups_shl42_atax0_shift_x_q = leftShiftStage0Idx1_uid164_i_cleanups_shl42_atax0_shift_x_q;
            default : leftShiftStage0_uid166_i_cleanups_shl42_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl42_atax5_vt_select_1(BITSELECT,38)@2
    assign i_cleanups_shl42_atax5_vt_select_1_b = leftShiftStage0_uid166_i_cleanups_shl42_atax0_shift_x_q[1:1];

    // i_cleanups_shl42_atax5_vt_join(BITJOIN,37)@2
    assign i_cleanups_shl42_atax5_vt_join_q = {i_cleanups_shl42_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor44_atax4(LOGICAL,41)@2
    assign i_first_cleanup_xor44_atax4_q = i_first_cleanup43_atax3_sel_x_b ^ VCC_q;

    // i_notcmp34_atax28(LOGICAL,75)@2
    assign i_notcmp34_atax28_q = i_exitcond10_atax26_cmp_nsign_q ^ VCC_q;

    // i_or45_atax30(LOGICAL,76)@2
    assign i_or45_atax30_q = i_notcmp34_atax28_q | i_first_cleanup_xor44_atax4_q;

    // i_next_cleanups46_atax31(MUX,71)@2
    assign i_next_cleanups46_atax31_s = i_or45_atax30_q;
    always @(i_next_cleanups46_atax31_s or i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_data_out or i_cleanups_shl42_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups46_atax31_s)
            1'b0 : i_next_cleanups46_atax31_q = i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_data_out;
            1'b1 : i_next_cleanups46_atax31_q = i_cleanups_shl42_atax5_vt_join_q;
            default : i_next_cleanups46_atax31_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups41_push21_atax32(BLACKBOX,66)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    atax_i_llvm_fpga_push_i2_cleanups41_push21_0 thei_llvm_fpga_push_i2_cleanups41_push21_atax32 (
        .in_data_in(i_next_cleanups46_atax31_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_feedback_stall_out_21),
        .in_keep_going38(redist6_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i2_cleanups41_push21_atax32_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i2_cleanups41_push21_atax32_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together76_aunroll_x_in_c0_eni189_1_tpl_1(DELAY,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together76_aunroll_x_in_c0_eni189_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together76_aunroll_x_in_c0_eni189_1_tpl_1_q <= $unsigned(in_c0_eni189_1_tpl);
        end
    end

    // c_i2_153(CONSTANT,23)
    assign c_i2_153_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups41_pop21_atax2(BLACKBOX,60)@2
    // out out_feedback_stall_out_21@20000000
    atax_i_llvm_fpga_pop_i2_cleanups41_pop21_0 thei_llvm_fpga_pop_i2_cleanups41_pop21_atax2 (
        .in_data_in(c_i2_153_q),
        .in_dir(redist1_sync_together76_aunroll_x_in_c0_eni189_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i2_cleanups41_push21_atax32_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i2_cleanups41_push21_atax32_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup43_atax3_sel_x(BITSELECT,128)@2
    assign i_first_cleanup43_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups41_pop21_atax2_out_data_out[0:0];

    // c_i7_159(CONSTANT,26)
    assign c_i7_159_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next9_atax33(ADD,42)@2
    assign i_fpga_indvars_iv_next9_atax33_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop18_atax25_out_data_out};
    assign i_fpga_indvars_iv_next9_atax33_b = {1'b0, c_i7_159_q};
    assign i_fpga_indvars_iv_next9_atax33_o = $unsigned(i_fpga_indvars_iv_next9_atax33_a) + $unsigned(i_fpga_indvars_iv_next9_atax33_b);
    assign i_fpga_indvars_iv_next9_atax33_q = i_fpga_indvars_iv_next9_atax33_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next9_atax33_sel_x(BITSELECT,84)@2
    assign bgTrunc_i_fpga_indvars_iv_next9_atax33_sel_x_b = i_fpga_indvars_iv_next9_atax33_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv8_push18_atax34(BLACKBOX,69)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    atax_i_llvm_fpga_push_i7_fpga_indvars_iv8_push18_0 thei_llvm_fpga_push_i7_fpga_indvars_iv8_push18_atax34 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next9_atax33_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop18_atax25_out_feedback_stall_out_18),
        .in_keep_going38(redist6_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i7_fpga_indvars_iv8_push18_atax34_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i7_fpga_indvars_iv8_push18_atax34_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i7_6257(CONSTANT,27)
    assign c_i7_6257_q = $unsigned(7'b0111110);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop18_atax25(BLACKBOX,63)@2
    // out out_feedback_stall_out_18@20000000
    atax_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop18_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv8_pop18_atax25 (
        .in_data_in(c_i7_6257_q),
        .in_dir(redist1_sync_together76_aunroll_x_in_c0_eni189_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i7_fpga_indvars_iv8_push18_atax34_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i7_fpga_indvars_iv8_push18_atax34_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop18_atax25_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop18_atax25_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond10_atax26_cmp_nsign(LOGICAL,158)@2
    assign i_exitcond10_atax26_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop18_atax25_out_data_out[6:6]));

    // i_llvm_fpga_push_i1_notexitcond48_atax29(BLACKBOX,65)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    atax_i_llvm_fpga_push_i1_notexitcond48_0 thei_llvm_fpga_push_i1_notexitcond48_atax29 (
        .in_data_in(i_exitcond10_atax26_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going38_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup43(i_first_cleanup43_atax3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond48_atax29_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond48_atax29_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,141)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid170_i_next_initerations37_atax0_shift_x(BITSELECT,169)@2
    assign rightShiftStage0Idx1Rng1_uid170_i_next_initerations37_atax0_shift_x_b = i_llvm_fpga_pop_i2_initerations36_pop20_atax7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid172_i_next_initerations37_atax0_shift_x(BITJOIN,171)@2
    assign rightShiftStage0Idx1_uid172_i_next_initerations37_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid170_i_next_initerations37_atax0_shift_x_b};

    // valid_fanout_reg1(REG,139)@1 + 1
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

    // valid_fanout_reg2(REG,140)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations36_push20_atax9(BLACKBOX,67)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    atax_i_llvm_fpga_push_i2_initerations36_push20_0 thei_llvm_fpga_push_i2_initerations36_push20_atax9 (
        .in_data_in(i_next_initerations37_atax8_vt_join_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i2_initerations36_pop20_atax7_out_feedback_stall_out_20),
        .in_keep_going38(redist6_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i2_initerations36_push20_atax9_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i2_initerations36_push20_atax9_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations36_pop20_atax7(BLACKBOX,61)@2
    // out out_feedback_stall_out_20@20000000
    atax_i_llvm_fpga_pop_i2_initerations36_pop20_0 thei_llvm_fpga_pop_i2_initerations36_pop20_atax7 (
        .in_data_in(c_i2_153_q),
        .in_dir(redist1_sync_together76_aunroll_x_in_c0_eni189_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i2_initerations36_push20_atax9_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i2_initerations36_push20_atax9_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations36_pop20_atax7_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i2_initerations36_pop20_atax7_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid174_i_next_initerations37_atax0_shift_x(MUX,173)@2
    assign rightShiftStage0_uid174_i_next_initerations37_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid174_i_next_initerations37_atax0_shift_x_s or i_llvm_fpga_pop_i2_initerations36_pop20_atax7_out_data_out or rightShiftStage0Idx1_uid172_i_next_initerations37_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid174_i_next_initerations37_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid174_i_next_initerations37_atax0_shift_x_q = i_llvm_fpga_pop_i2_initerations36_pop20_atax7_out_data_out;
            1'b1 : rightShiftStage0_uid174_i_next_initerations37_atax0_shift_x_q = rightShiftStage0Idx1_uid172_i_next_initerations37_atax0_shift_x_q;
            default : rightShiftStage0_uid174_i_next_initerations37_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations37_atax8_vt_select_0(BITSELECT,74)@2
    assign i_next_initerations37_atax8_vt_select_0_b = rightShiftStage0_uid174_i_next_initerations37_atax0_shift_x_q[0:0];

    // i_next_initerations37_atax8_vt_join(BITJOIN,73)@2
    assign i_next_initerations37_atax8_vt_join_q = {GND_q, i_next_initerations37_atax8_vt_select_0_b};

    // i_last_initeration39_atax10_sel_x(BITSELECT,131)@2
    assign i_last_initeration39_atax10_sel_x_b = i_next_initerations37_atax8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration40_atax11(BLACKBOX,64)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration40_0 thei_llvm_fpga_push_i1_lastiniteration40_atax11 (
        .in_data_in(i_last_initeration39_atax10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going38_atax6_out_initeration_stall_out),
        .in_keep_going38(redist6_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration40_atax11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration40_atax11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going38_atax6(BLACKBOX,59)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going38_0 thei_llvm_fpga_pipeline_keep_going38_atax6 (
        .in_data_in(in_c0_eni189_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration40_atax11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration40_atax11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond48_atax29_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond48_atax29_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,29)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going38_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going38_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,79)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_valid_out;

    // valid_fanout_reg6(REG,144)@1 + 1
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

    // c_atax_buff_y_out_pmem(CONSTANT,5)
    assign c_atax_buff_y_out_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx509_atax0_upper_bits_x_merged_bit_select(BITSELECT,176)@2
    assign i_arrayidx509_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_y_out_pmem_q[63:8];
    assign i_arrayidx509_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_y_out_pmem_q[7:0];

    // c_i32_055(CONSTANT,24)
    assign c_i32_055_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg5(REG,143)@1 + 1
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

    // valid_fanout_reg10(REG,148)@1 + 1
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

    // c_i32_156(CONSTANT,25)
    assign c_i32_156_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc62_atax23(ADD,51)@2
    assign i_inc62_atax23_a = {1'b0, i_llvm_fpga_pop_i32_j_235_pop19_atax14_out_data_out};
    assign i_inc62_atax23_b = {1'b0, c_i32_156_q};
    assign i_inc62_atax23_o = $unsigned(i_inc62_atax23_a) + $unsigned(i_inc62_atax23_b);
    assign i_inc62_atax23_q = i_inc62_atax23_o[32:0];

    // bgTrunc_i_inc62_atax23_sel_x(BITSELECT,85)@2
    assign bgTrunc_i_inc62_atax23_sel_x_b = i_inc62_atax23_q[31:0];

    // i_llvm_fpga_push_i32_j_235_push19_atax24(BLACKBOX,68)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    atax_i_llvm_fpga_push_i32_j_235_push19_0 thei_llvm_fpga_push_i32_j_235_push19_atax24 (
        .in_data_in(bgTrunc_i_inc62_atax23_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_j_235_pop19_atax14_out_feedback_stall_out_19),
        .in_keep_going38(redist6_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_j_235_push19_atax24_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_j_235_push19_atax24_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_235_pop19_atax14(BLACKBOX,62)@2
    // out out_feedback_stall_out_19@20000000
    atax_i_llvm_fpga_pop_i32_j_235_pop19_0 thei_llvm_fpga_pop_i32_j_235_pop19_atax14 (
        .in_data_in(c_i32_055_q),
        .in_dir(redist1_sync_together76_aunroll_x_in_c0_eni189_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_j_235_push19_atax24_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_j_235_push19_atax24_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_235_pop19_atax14_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_j_235_pop19_atax14_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom49_atax15_sel_x(BITSELECT,129)@2
    assign i_idxprom49_atax15_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_235_pop19_atax14_out_data_out[31:0]};

    // i_idxprom49_atax15_vt_select_31(BITSELECT,46)@2
    assign i_idxprom49_atax15_vt_select_31_b = i_idxprom49_atax15_sel_x_b[31:0];

    // i_idxprom49_atax15_vt_join(BITJOIN,45)@2
    assign i_idxprom49_atax15_vt_join_q = {c_i32_055_q, i_idxprom49_atax15_vt_select_31_b};

    // i_arrayidx509_atax0_dupName_0_trunc_sel_x(BITSELECT,102)@2
    assign i_arrayidx509_atax0_dupName_0_trunc_sel_x_b = i_idxprom49_atax15_vt_join_q[7:0];

    // i_arrayidx509_atax0_narrow_x(BITSELECT,95)@2
    assign i_arrayidx509_atax0_narrow_x_b = i_arrayidx509_atax0_dupName_0_trunc_sel_x_b[5:0];

    // i_arrayidx509_atax0_shift_join_x(BITJOIN,96)@2
    assign i_arrayidx509_atax0_shift_join_x_q = {i_arrayidx509_atax0_narrow_x_b, i_arrayidx509_atax16_vt_const_1_q};

    // i_arrayidx509_atax0_add_x(ADD,92)@2
    assign i_arrayidx509_atax0_add_x_a = {1'b0, i_arrayidx509_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx509_atax0_add_x_b = {1'b0, i_arrayidx509_atax0_shift_join_x_q};
    assign i_arrayidx509_atax0_add_x_o = $unsigned(i_arrayidx509_atax0_add_x_a) + $unsigned(i_arrayidx509_atax0_add_x_b);
    assign i_arrayidx509_atax0_add_x_q = i_arrayidx509_atax0_add_x_o[8:0];

    // i_arrayidx509_atax0_dupName_2_trunc_sel_x(BITSELECT,103)@2
    assign i_arrayidx509_atax0_dupName_2_trunc_sel_x_b = i_arrayidx509_atax0_add_x_q[7:0];

    // i_arrayidx509_atax0_append_upper_bits_x(BITJOIN,93)@2
    assign i_arrayidx509_atax0_append_upper_bits_x_q = {i_arrayidx509_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx509_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx509_atax16_vt_select_63(BITSELECT,32)@2
    assign i_arrayidx509_atax16_vt_select_63_b = i_arrayidx509_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx509_atax16_vt_const_1(CONSTANT,30)
    assign i_arrayidx509_atax16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx509_atax16_vt_join(BITJOIN,31)@2
    assign i_arrayidx509_atax16_vt_join_q = {i_arrayidx509_atax16_vt_select_63_b, i_arrayidx509_atax16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax22_atax17(BLACKBOX,57)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_atax22_atax_avm_address@20000000
    // out out_unnamed_atax22_atax_avm_burstcount@20000000
    // out out_unnamed_atax22_atax_avm_byteenable@20000000
    // out out_unnamed_atax22_atax_avm_enable@20000000
    // out out_unnamed_atax22_atax_avm_read@20000000
    // out out_unnamed_atax22_atax_avm_write@20000000
    // out out_unnamed_atax22_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_22_atax0 thei_llvm_fpga_mem_unnamed_atax22_atax17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx509_atax16_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor44_atax4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_atax22_atax_avm_readdata(in_unnamed_atax22_atax_avm_readdata),
        .in_unnamed_atax22_atax_avm_readdatavalid(in_unnamed_atax22_atax_avm_readdatavalid),
        .in_unnamed_atax22_atax_avm_waitrequest(in_unnamed_atax22_atax_avm_waitrequest),
        .in_unnamed_atax22_atax_avm_writeack(in_unnamed_atax22_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax22_atax17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax22_atax_avm_address(i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_address),
        .out_unnamed_atax22_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_burstcount),
        .out_unnamed_atax22_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_byteenable),
        .out_unnamed_atax22_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_enable),
        .out_unnamed_atax22_atax_avm_read(i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_read),
        .out_unnamed_atax22_atax_avm_write(i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_write),
        .out_unnamed_atax22_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,88)
    assign out_unnamed_atax22_atax_avm_address = i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_address;
    assign out_unnamed_atax22_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_enable;
    assign out_unnamed_atax22_atax_avm_read = i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_read;
    assign out_unnamed_atax22_atax_avm_write = i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_write;
    assign out_unnamed_atax22_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_writedata;
    assign out_unnamed_atax22_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_byteenable;
    assign out_unnamed_atax22_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax22_atax17_out_unnamed_atax22_atax_avm_burstcount;

    // valid_fanout_reg7(REG,145)@1 + 1
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

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx5410_atax0_upper_bits_x_merged_bit_select(BITSELECT,175)@2
    assign i_arrayidx5410_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_A_pmem_q[63:14];
    assign i_arrayidx5410_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_A_pmem_q[13:0];

    // i_arrayidx5410_atax0_dupName_3_trunc_sel_x(BITSELECT,122)@2
    assign i_arrayidx5410_atax0_dupName_3_trunc_sel_x_b = i_idxprom49_atax15_vt_join_q[13:0];

    // i_arrayidx5410_atax0_dupName_0_narrow_x(BITSELECT,113)@2
    assign i_arrayidx5410_atax0_dupName_0_narrow_x_b = i_arrayidx5410_atax0_dupName_3_trunc_sel_x_b[11:0];

    // i_arrayidx5410_atax0_dupName_0_shift_join_x(BITJOIN,114)@2
    assign i_arrayidx5410_atax0_dupName_0_shift_join_x_q = {i_arrayidx5410_atax0_dupName_0_narrow_x_b, i_arrayidx509_atax16_vt_const_1_q};

    // valid_fanout_reg4(REG,142)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_i_23623_atax12(BLACKBOX,54)@2
    atax_i_llvm_fpga_ffwd_dest_i32_i_23623_0 thei_llvm_fpga_ffwd_dest_i32_i_23623_atax12 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_i_23623_atax12_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom51_atax13_sel_x(BITSELECT,130)@2
    assign i_idxprom51_atax13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_ffwd_dest_i32_i_23623_atax12_out_dest_data_out_7_0[31:0]};

    // i_idxprom51_atax13_vt_select_31(BITSELECT,50)@2
    assign i_idxprom51_atax13_vt_select_31_b = i_idxprom51_atax13_sel_x_b[31:0];

    // i_idxprom51_atax13_vt_join(BITJOIN,49)@2
    assign i_idxprom51_atax13_vt_join_q = {c_i32_055_q, i_idxprom51_atax13_vt_select_31_b};

    // i_arrayidx5410_atax0_dupName_0_trunc_sel_x(BITSELECT,120)@2
    assign i_arrayidx5410_atax0_dupName_0_trunc_sel_x_b = i_idxprom51_atax13_vt_join_q[13:0];

    // i_arrayidx5410_atax0_narrow_x(BITSELECT,108)@2
    assign i_arrayidx5410_atax0_narrow_x_b = i_arrayidx5410_atax0_dupName_0_trunc_sel_x_b[5:0];

    // i_arrayidx5410_atax0_c_i8_01_x(CONSTANT,107)
    assign i_arrayidx5410_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx5410_atax0_shift_join_x(BITJOIN,109)@2
    assign i_arrayidx5410_atax0_shift_join_x_q = {i_arrayidx5410_atax0_narrow_x_b, i_arrayidx5410_atax0_c_i8_01_x_q};

    // i_arrayidx5410_atax0_add_x(ADD,104)@2
    assign i_arrayidx5410_atax0_add_x_a = {1'b0, i_arrayidx5410_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx5410_atax0_add_x_b = {1'b0, i_arrayidx5410_atax0_shift_join_x_q};
    assign i_arrayidx5410_atax0_add_x_o = $unsigned(i_arrayidx5410_atax0_add_x_a) + $unsigned(i_arrayidx5410_atax0_add_x_b);
    assign i_arrayidx5410_atax0_add_x_q = i_arrayidx5410_atax0_add_x_o[14:0];

    // i_arrayidx5410_atax0_dupName_2_trunc_sel_x(BITSELECT,121)@2
    assign i_arrayidx5410_atax0_dupName_2_trunc_sel_x_b = i_arrayidx5410_atax0_add_x_q[13:0];

    // i_arrayidx5410_atax0_dupName_0_add_x(ADD,112)@2
    assign i_arrayidx5410_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx5410_atax0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx5410_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx5410_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx5410_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx5410_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx5410_atax0_dupName_0_add_x_b);
    assign i_arrayidx5410_atax0_dupName_0_add_x_q = i_arrayidx5410_atax0_dupName_0_add_x_o[14:0];

    // i_arrayidx5410_atax0_dupName_5_trunc_sel_x(BITSELECT,123)@2
    assign i_arrayidx5410_atax0_dupName_5_trunc_sel_x_b = i_arrayidx5410_atax0_dupName_0_add_x_q[13:0];

    // i_arrayidx5410_atax0_append_upper_bits_x(BITJOIN,105)@2
    assign i_arrayidx5410_atax0_append_upper_bits_x_q = {i_arrayidx5410_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx5410_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx5410_atax18_vt_select_63(BITSELECT,35)@2
    assign i_arrayidx5410_atax18_vt_select_63_b = i_arrayidx5410_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx5410_atax18_vt_join(BITJOIN,34)@2
    assign i_arrayidx5410_atax18_vt_join_q = {i_arrayidx5410_atax18_vt_select_63_b, i_arrayidx509_atax16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax23_atax19(BLACKBOX,58)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_atax23_atax_avm_address@20000000
    // out out_unnamed_atax23_atax_avm_burstcount@20000000
    // out out_unnamed_atax23_atax_avm_byteenable@20000000
    // out out_unnamed_atax23_atax_avm_enable@20000000
    // out out_unnamed_atax23_atax_avm_read@20000000
    // out out_unnamed_atax23_atax_avm_write@20000000
    // out out_unnamed_atax23_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_23_atax0 thei_llvm_fpga_mem_unnamed_atax23_atax19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5410_atax18_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor44_atax4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_atax23_atax_avm_readdata(in_unnamed_atax23_atax_avm_readdata),
        .in_unnamed_atax23_atax_avm_readdatavalid(in_unnamed_atax23_atax_avm_readdatavalid),
        .in_unnamed_atax23_atax_avm_waitrequest(in_unnamed_atax23_atax_avm_waitrequest),
        .in_unnamed_atax23_atax_avm_writeack(in_unnamed_atax23_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax23_atax19_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax23_atax_avm_address(i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_address),
        .out_unnamed_atax23_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_burstcount),
        .out_unnamed_atax23_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_byteenable),
        .out_unnamed_atax23_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_enable),
        .out_unnamed_atax23_atax_avm_read(i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_read),
        .out_unnamed_atax23_atax_avm_write(i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_write),
        .out_unnamed_atax23_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,90)
    assign out_unnamed_atax23_atax_avm_address = i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_address;
    assign out_unnamed_atax23_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_enable;
    assign out_unnamed_atax23_atax_avm_read = i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_read;
    assign out_unnamed_atax23_atax_avm_write = i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_write;
    assign out_unnamed_atax23_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_writedata;
    assign out_unnamed_atax23_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_byteenable;
    assign out_unnamed_atax23_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax23_atax19_out_unnamed_atax23_atax_avm_burstcount;

    // redist3_sync_together76_aunroll_x_in_i_valid_4(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together76_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist3_sync_together76_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist3_sync_together76_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist3_sync_together76_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist2_sync_together76_aunroll_x_in_i_valid_1_q);
            redist3_sync_together76_aunroll_x_in_i_valid_4_delay_1 <= redist3_sync_together76_aunroll_x_in_i_valid_4_delay_0;
            redist3_sync_together76_aunroll_x_in_i_valid_4_q <= redist3_sync_together76_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg8(REG,146)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist3_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_add29_atax20(BLACKBOX,53)@6
    atax_i_llvm_fpga_ffwd_dest_f32_add29_0 thei_llvm_fpga_ffwd_dest_f32_add29_atax20 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_f32_add29_atax20_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add70_atax21(BLACKBOX,55)@6
    // out out_primWireOut@10
    atax_flt_i_sfc_logic_s_c0_in_for_body48_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add70_atax21 (
        .in_0(i_llvm_fpga_mem_unnamed_atax23_atax19_out_o_readdata),
        .in_1(i_llvm_fpga_ffwd_dest_f32_add29_atax20_out_dest_data_out_11_0),
        .in_2(i_llvm_fpga_mem_unnamed_atax22_atax17_out_o_readdata),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add70_atax21_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together76_aunroll_x_in_i_valid_8(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together76_aunroll_x_in_i_valid_8_delay_0 <= '0;
            redist4_sync_together76_aunroll_x_in_i_valid_8_delay_1 <= '0;
            redist4_sync_together76_aunroll_x_in_i_valid_8_delay_2 <= '0;
            redist4_sync_together76_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist4_sync_together76_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist3_sync_together76_aunroll_x_in_i_valid_4_q);
            redist4_sync_together76_aunroll_x_in_i_valid_8_delay_1 <= redist4_sync_together76_aunroll_x_in_i_valid_8_delay_0;
            redist4_sync_together76_aunroll_x_in_i_valid_8_delay_2 <= redist4_sync_together76_aunroll_x_in_i_valid_8_delay_1;
            redist4_sync_together76_aunroll_x_in_i_valid_8_q <= redist4_sync_together76_aunroll_x_in_i_valid_8_delay_2;
        end
    end

    // valid_fanout_reg9(REG,147)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist4_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist8_i_first_cleanup_xor44_atax4_q_8(DELAY,185)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_first_cleanup_xor44_atax4_q_8 ( .xin(i_first_cleanup_xor44_atax4_q), .xout(redist8_i_first_cleanup_xor44_atax4_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_i_arrayidx509_atax16_vt_join_q_8_notEnable(LOGICAL,194)
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_i_arrayidx509_atax16_vt_join_q_8_nor(LOGICAL,195)
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_nor_q = ~ (redist9_i_arrayidx509_atax16_vt_join_q_8_notEnable_q | redist9_i_arrayidx509_atax16_vt_join_q_8_sticky_ena_q);

    // redist9_i_arrayidx509_atax16_vt_join_q_8_mem_last(CONSTANT,191)
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_mem_last_q = $unsigned(4'b0100);

    // redist9_i_arrayidx509_atax16_vt_join_q_8_cmp(LOGICAL,192)
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_cmp_b = {1'b0, redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_q};
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_cmp_q = $unsigned(redist9_i_arrayidx509_atax16_vt_join_q_8_mem_last_q == redist9_i_arrayidx509_atax16_vt_join_q_8_cmp_b ? 1'b1 : 1'b0);

    // redist9_i_arrayidx509_atax16_vt_join_q_8_cmpReg(REG,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx509_atax16_vt_join_q_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_i_arrayidx509_atax16_vt_join_q_8_cmpReg_q <= $unsigned(redist9_i_arrayidx509_atax16_vt_join_q_8_cmp_q);
        end
    end

    // redist9_i_arrayidx509_atax16_vt_join_q_8_sticky_ena(REG,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx509_atax16_vt_join_q_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_i_arrayidx509_atax16_vt_join_q_8_nor_q == 1'b1)
        begin
            redist9_i_arrayidx509_atax16_vt_join_q_8_sticky_ena_q <= $unsigned(redist9_i_arrayidx509_atax16_vt_join_q_8_cmpReg_q);
        end
    end

    // redist9_i_arrayidx509_atax16_vt_join_q_8_enaAnd(LOGICAL,197)
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_enaAnd_q = redist9_i_arrayidx509_atax16_vt_join_q_8_sticky_ena_q & VCC_q;

    // redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt(COUNTER,189)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_i <= 3'd0;
            redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_i == 3'd4)
            begin
                redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_eq <= 1'b0;
            end
            if (redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_eq == 1'b1)
            begin
                redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_i <= $unsigned(redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_i <= $unsigned(redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_q = redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_i[2:0];

    // redist9_i_arrayidx509_atax16_vt_join_q_8_inputreg0(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx509_atax16_vt_join_q_8_inputreg0_q <= '0;
        end
        else
        begin
            redist9_i_arrayidx509_atax16_vt_join_q_8_inputreg0_q <= $unsigned(i_arrayidx509_atax16_vt_join_q);
        end
    end

    // redist9_i_arrayidx509_atax16_vt_join_q_8_wraddr(REG,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx509_atax16_vt_join_q_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist9_i_arrayidx509_atax16_vt_join_q_8_wraddr_q <= $unsigned(redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_q);
        end
    end

    // redist9_i_arrayidx509_atax16_vt_join_q_8_mem(DUALMEM,188)
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_mem_ia = $unsigned(redist9_i_arrayidx509_atax16_vt_join_q_8_inputreg0_q);
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_mem_aa = redist9_i_arrayidx509_atax16_vt_join_q_8_wraddr_q;
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_mem_ab = redist9_i_arrayidx509_atax16_vt_join_q_8_rdcnt_q;
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_mem_reset0 = ~ (resetn);
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
    ) redist9_i_arrayidx509_atax16_vt_join_q_8_mem_dmem (
        .clocken1(redist9_i_arrayidx509_atax16_vt_join_q_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_i_arrayidx509_atax16_vt_join_q_8_mem_reset0),
        .clock1(clock),
        .address_a(redist9_i_arrayidx509_atax16_vt_join_q_8_mem_aa),
        .data_a(redist9_i_arrayidx509_atax16_vt_join_q_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_i_arrayidx509_atax16_vt_join_q_8_mem_ab),
        .q_b(redist9_i_arrayidx509_atax16_vt_join_q_8_mem_iq),
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
    assign redist9_i_arrayidx509_atax16_vt_join_q_8_mem_q = redist9_i_arrayidx509_atax16_vt_join_q_8_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_6_atax22(BLACKBOX,56)@10
    // out out_memdep_6_atax_avm_address@20000000
    // out out_memdep_6_atax_avm_burstcount@20000000
    // out out_memdep_6_atax_avm_byteenable@20000000
    // out out_memdep_6_atax_avm_enable@20000000
    // out out_memdep_6_atax_avm_read@20000000
    // out out_memdep_6_atax_avm_write@20000000
    // out out_memdep_6_atax_avm_writedata@20000000
    // out out_o_stall@11
    // out out_o_valid@11
    // out out_o_writeack@11
    atax_i_llvm_fpga_mem_memdep_6_0 thei_llvm_fpga_mem_memdep_6_atax22 (
        .in_flush(in_flush),
        .in_i_address(redist9_i_arrayidx509_atax16_vt_join_q_8_mem_q),
        .in_i_predicate(redist8_i_first_cleanup_xor44_atax4_q_8_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_i_writedata(i_llvm_fpga_fp_multadd_mult_add70_atax21_out_primWireOut),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .out_memdep_6_atax_avm_address(i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,91)
    assign out_memdep_6_atax_avm_address = i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_address;
    assign out_memdep_6_atax_avm_enable = i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_enable;
    assign out_memdep_6_atax_avm_read = i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_read;
    assign out_memdep_6_atax_avm_write = i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_write;
    assign out_memdep_6_atax_avm_writedata = i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_writedata;
    assign out_memdep_6_atax_avm_byteenable = i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_byteenable;
    assign out_memdep_6_atax_avm_burstcount = i_llvm_fpga_mem_memdep_6_atax22_out_memdep_6_atax_avm_burstcount;

    // valid_fanout_reg0(REG,138)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,177)
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

    // i_masked47_atax35(LOGICAL,70)@2 + 1
    assign i_masked47_atax35_qi = i_notcmp34_atax28_q & i_first_cleanup43_atax3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked47_atax35_delay ( .xin(i_masked47_atax35_qi), .xout(i_masked47_atax35_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_i_masked47_atax35_q_9(DELAY,182)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_i_masked47_atax35_q_9 ( .xin(i_masked47_atax35_q), .xout(redist5_i_masked47_atax35_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_10(DELAY,184)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_10 ( .xin(redist6_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_1_q), .xout(redist7_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,136)@11
    assign out_c0_exi293_0_tpl = GND_q;
    assign out_c0_exi293_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out_10_q;
    assign out_c0_exi293_2_tpl = redist5_i_masked47_atax35_q_9_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
