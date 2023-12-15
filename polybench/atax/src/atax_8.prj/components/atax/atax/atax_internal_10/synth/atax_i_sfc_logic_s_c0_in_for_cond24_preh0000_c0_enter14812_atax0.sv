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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_cond24_preh0000_c0_enter14812_atax0
// SystemVerilog created on Wed Dec 13 00:56:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_cond24_preh0000_c0_enter14812_atax0 (
    input wire [31:0] in_arrayidx28_promoted14_atax_avm_readdata,
    input wire [0:0] in_arrayidx28_promoted14_atax_avm_writeack,
    input wire [0:0] in_arrayidx28_promoted14_atax_avm_waitrequest,
    input wire [0:0] in_arrayidx28_promoted14_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going76_atax2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going76_atax2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_arrayidx28_promoted14_atax_avm_address,
    output wire [0:0] out_arrayidx28_promoted14_atax_avm_enable,
    output wire [0:0] out_arrayidx28_promoted14_atax_avm_read,
    output wire [0:0] out_arrayidx28_promoted14_atax_avm_write,
    output wire [31:0] out_arrayidx28_promoted14_atax_avm_writedata,
    output wire [3:0] out_arrayidx28_promoted14_atax_avm_byteenable,
    output wire [0:0] out_arrayidx28_promoted14_atax_avm_burstcount,
    output wire [0:0] out_c0_exi6155_0_tpl,
    output wire [63:0] out_c0_exi6155_1_tpl,
    output wire [63:0] out_c0_exi6155_2_tpl,
    output wire [31:0] out_c0_exi6155_3_tpl,
    output wire [0:0] out_c0_exi6155_4_tpl,
    output wire [0:0] out_c0_exi6155_5_tpl,
    output wire [0:0] out_c0_exi6155_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c0_eni1147_0_tpl,
    input wire [0:0] in_c0_eni1147_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_tmp1_pmem_q;
    wire [31:0] c_i32_025_q;
    wire [31:0] c_i32_129_q;
    wire [6:0] c_i7_128_q;
    wire [6:0] c_i7_6226_q;
    wire [1:0] i_arrayidx2812_atax5_vt_const_1_q;
    wire [63:0] i_arrayidx2812_atax5_vt_join_q;
    wire [61:0] i_arrayidx2812_atax5_vt_select_63_b;
    wire [7:0] i_fpga_indvars_iv_next37_atax12_a;
    wire [7:0] i_fpga_indvars_iv_next37_atax12_b;
    logic [7:0] i_fpga_indvars_iv_next37_atax12_o;
    wire [7:0] i_fpga_indvars_iv_next37_atax12_q;
    wire [63:0] i_idxprom27_atax4_vt_join_q;
    wire [31:0] i_idxprom27_atax4_vt_select_31_b;
    wire [32:0] i_inc41_atax14_a;
    wire [32:0] i_inc41_atax14_b;
    logic [32:0] i_inc41_atax14_o;
    wire [32:0] i_inc41_atax14_q;
    wire [31:0] i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_atax2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_atax2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_atax2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_atax2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_138_pop19_atax3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_138_pop19_atax3_out_feedback_stall_out_19;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv36_pop18_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv36_pop18_atax7_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond77_atax11_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond77_atax11_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_i_138_push19_atax15_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_i_138_push19_atax15_out_feedback_valid_out_19;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv36_push18_atax13_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv36_push18_atax13_out_feedback_valid_out_18;
    wire [0:0] i_notcmp74_atax10_q;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next37_atax12_sel_x_b;
    wire [31:0] bgTrunc_i_inc41_atax14_sel_x_b;
    wire [64:0] i_arrayidx2812_atax0_add_x_a;
    wire [64:0] i_arrayidx2812_atax0_add_x_b;
    logic [64:0] i_arrayidx2812_atax0_add_x_o;
    wire [64:0] i_arrayidx2812_atax0_add_x_q;
    wire [61:0] i_arrayidx2812_atax0_narrow_x_b;
    wire [63:0] i_arrayidx2812_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx2812_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom27_atax4_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [0:0] i_exitcond38_atax8_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond38_atax8_cmp_nsign_q_1_q;
    reg [0:0] redist1_i_exitcond38_atax8_cmp_nsign_q_6_q;
    reg [0:0] redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_0;
    reg [0:0] redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_1;
    reg [0:0] redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_2;
    reg [0:0] redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_3;
    reg [0:0] redist2_valid_fanout_reg0_q_5_q;
    reg [0:0] redist2_valid_fanout_reg0_q_5_delay_0;
    reg [0:0] redist2_valid_fanout_reg0_q_5_delay_1;
    reg [0:0] redist2_valid_fanout_reg0_q_5_delay_2;
    reg [0:0] redist2_valid_fanout_reg0_q_5_delay_3;
    reg [0:0] redist3_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_1_q;
    reg [0:0] redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_q;
    reg [0:0] redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_0;
    reg [0:0] redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_1;
    reg [0:0] redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_2;
    reg [0:0] redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_3;
    reg [63:0] redist5_i_idxprom27_atax4_vt_join_q_5_inputreg0_q;
    wire redist5_i_idxprom27_atax4_vt_join_q_5_mem_reset0;
    wire [63:0] redist5_i_idxprom27_atax4_vt_join_q_5_mem_ia;
    wire [1:0] redist5_i_idxprom27_atax4_vt_join_q_5_mem_aa;
    wire [1:0] redist5_i_idxprom27_atax4_vt_join_q_5_mem_ab;
    wire [63:0] redist5_i_idxprom27_atax4_vt_join_q_5_mem_iq;
    wire [63:0] redist5_i_idxprom27_atax4_vt_join_q_5_mem_q;
    wire [1:0] redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_q;
    (* preserve *) reg [1:0] redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_i;
    (* preserve *) reg redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_eq;
    reg [1:0] redist5_i_idxprom27_atax4_vt_join_q_5_wraddr_q;
    wire [1:0] redist5_i_idxprom27_atax4_vt_join_q_5_mem_last_q;
    wire [0:0] redist5_i_idxprom27_atax4_vt_join_q_5_cmp_q;
    (* dont_merge *) reg [0:0] redist5_i_idxprom27_atax4_vt_join_q_5_cmpReg_q;
    wire [0:0] redist5_i_idxprom27_atax4_vt_join_q_5_notEnable_q;
    wire [0:0] redist5_i_idxprom27_atax4_vt_join_q_5_nor_q;
    (* dont_merge *) reg [0:0] redist5_i_idxprom27_atax4_vt_join_q_5_sticky_ena_q;
    wire [0:0] redist5_i_idxprom27_atax4_vt_join_q_5_enaAnd_q;
    reg [63:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_inputreg0_q;
    wire redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_reset0;
    wire [63:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_ia;
    wire [1:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_aa;
    wire [1:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_ab;
    wire [63:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_iq;
    wire [63:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_q;
    wire [1:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_q;
    (* preserve *) reg [1:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_i;
    (* preserve *) reg redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_eq;
    reg [1:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_wraddr_q;
    wire [1:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_last_q;
    wire [0:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_cmp_q;
    (* dont_merge *) reg [0:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_cmpReg_q;
    wire [0:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_notEnable_q;
    wire [0:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_nor_q;
    (* dont_merge *) reg [0:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_sticky_ena_q;
    wire [0:0] redist6_i_arrayidx2812_atax5_vt_join_q_5_enaAnd_q;


    // c_i7_128(CONSTANT,17)
    assign c_i7_128_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next37_atax12(ADD,25)@1
    assign i_fpga_indvars_iv_next37_atax12_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv36_pop18_atax7_out_data_out};
    assign i_fpga_indvars_iv_next37_atax12_b = {1'b0, c_i7_128_q};
    assign i_fpga_indvars_iv_next37_atax12_o = $unsigned(i_fpga_indvars_iv_next37_atax12_a) + $unsigned(i_fpga_indvars_iv_next37_atax12_b);
    assign i_fpga_indvars_iv_next37_atax12_q = i_fpga_indvars_iv_next37_atax12_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next37_atax12_sel_x(BITSELECT,44)@1
    assign bgTrunc_i_fpga_indvars_iv_next37_atax12_sel_x_b = i_fpga_indvars_iv_next37_atax12_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv36_push18_atax13(BLACKBOX,37)@1
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    atax_i_llvm_fpga_push_i7_fpga_indvars_iv36_push18_0 thei_llvm_fpga_push_i7_fpga_indvars_iv36_push18_atax13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next37_atax12_sel_x_b),
        .in_exitcond38(i_exitcond38_atax8_cmp_nsign_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i7_fpga_indvars_iv36_pop18_atax7_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i7_fpga_indvars_iv36_push18_atax13_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i7_fpga_indvars_iv36_push18_atax13_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i7_6226(CONSTANT,18)
    assign c_i7_6226_q = $unsigned(7'b0111110);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv36_pop18_atax7(BLACKBOX,34)@1
    // out out_feedback_stall_out_18@20000000
    atax_i_llvm_fpga_pop_i7_fpga_indvars_iv36_pop18_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv36_pop18_atax7 (
        .in_data_in(c_i7_6226_q),
        .in_dir(in_c0_eni1147_1_tpl),
        .in_feedback_in_18(i_llvm_fpga_push_i7_fpga_indvars_iv36_push18_atax13_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i7_fpga_indvars_iv36_push18_atax13_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv36_pop18_atax7_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i7_fpga_indvars_iv36_pop18_atax7_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond38_atax8_cmp_nsign(LOGICAL,65)@1
    assign i_exitcond38_atax8_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv36_pop18_atax7_out_data_out[6:6]));

    // i_llvm_fpga_push_i1_notexitcond77_atax11(BLACKBOX,35)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    atax_i_llvm_fpga_push_i1_notexitcond77_0 thei_llvm_fpga_push_i1_notexitcond77_atax11 (
        .in_data_in(i_exitcond38_atax8_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going76_atax2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond77_atax11_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond77_atax11_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going76_atax2(BLACKBOX,32)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going76_0 thei_llvm_fpga_pipeline_keep_going76_atax2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond77_atax11_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond77_atax11_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going76_atax2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going76_atax2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going76_atax2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going76_atax2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,20)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going76_atax2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going76_atax2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going76_atax2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going76_atax2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,41)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going76_atax2_out_pipeline_valid_out;

    // valid_fanout_reg2(REG,59)@1 + 1
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

    // c_i32_025(CONSTANT,15)
    assign c_i32_025_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg1(REG,58)@1 + 1
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

    // valid_fanout_reg3(REG,60)@1 + 1
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

    // redist0_i_exitcond38_atax8_cmp_nsign_q_1(DELAY,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond38_atax8_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond38_atax8_cmp_nsign_q_1_q <= $unsigned(i_exitcond38_atax8_cmp_nsign_q);
        end
    end

    // c_i32_129(CONSTANT,16)
    assign c_i32_129_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc41_atax14(ADD,30)@2
    assign i_inc41_atax14_a = {1'b0, i_llvm_fpga_pop_i32_i_138_pop19_atax3_out_data_out};
    assign i_inc41_atax14_b = {1'b0, c_i32_129_q};
    assign i_inc41_atax14_o = $unsigned(i_inc41_atax14_a) + $unsigned(i_inc41_atax14_b);
    assign i_inc41_atax14_q = i_inc41_atax14_o[32:0];

    // bgTrunc_i_inc41_atax14_sel_x(BITSELECT,45)@2
    assign bgTrunc_i_inc41_atax14_sel_x_b = i_inc41_atax14_q[31:0];

    // i_llvm_fpga_push_i32_i_138_push19_atax15(BLACKBOX,36)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    atax_i_llvm_fpga_push_i32_i_138_push19_0 thei_llvm_fpga_push_i32_i_138_push19_atax15 (
        .in_data_in(bgTrunc_i_inc41_atax14_sel_x_b),
        .in_exitcond38(redist0_i_exitcond38_atax8_cmp_nsign_q_1_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_i_138_pop19_atax3_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_i_138_push19_atax15_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_i_138_push19_atax15_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_1(DELAY,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_1_q <= $unsigned(in_c0_eni1147_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_138_pop19_atax3(BLACKBOX,33)@2
    // out out_feedback_stall_out_19@20000000
    atax_i_llvm_fpga_pop_i32_i_138_pop19_0 thei_llvm_fpga_pop_i32_i_138_pop19_atax3 (
        .in_data_in(c_i32_025_q),
        .in_dir(redist3_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_i_138_push19_atax15_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_i_138_push19_atax15_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_138_pop19_atax3_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_i_138_pop19_atax3_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom27_atax4_sel_x(BITSELECT,54)@2
    assign i_idxprom27_atax4_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_138_pop19_atax3_out_data_out[31:0]};

    // i_idxprom27_atax4_vt_select_31(BITSELECT,29)@2
    assign i_idxprom27_atax4_vt_select_31_b = i_idxprom27_atax4_sel_x_b[31:0];

    // i_idxprom27_atax4_vt_join(BITJOIN,28)@2
    assign i_idxprom27_atax4_vt_join_q = {c_i32_025_q, i_idxprom27_atax4_vt_select_31_b};

    // i_arrayidx2812_atax0_narrow_x(BITSELECT,50)@2
    assign i_arrayidx2812_atax0_narrow_x_b = i_idxprom27_atax4_vt_join_q[61:0];

    // i_arrayidx2812_atax0_shift_join_x(BITJOIN,51)@2
    assign i_arrayidx2812_atax0_shift_join_x_q = {i_arrayidx2812_atax0_narrow_x_b, i_arrayidx2812_atax5_vt_const_1_q};

    // c_atax_tmp1_pmem(CONSTANT,4)
    assign c_atax_tmp1_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx2812_atax0_add_x(ADD,48)@2
    assign i_arrayidx2812_atax0_add_x_a = {1'b0, c_atax_tmp1_pmem_q};
    assign i_arrayidx2812_atax0_add_x_b = {1'b0, i_arrayidx2812_atax0_shift_join_x_q};
    assign i_arrayidx2812_atax0_add_x_o = $unsigned(i_arrayidx2812_atax0_add_x_a) + $unsigned(i_arrayidx2812_atax0_add_x_b);
    assign i_arrayidx2812_atax0_add_x_q = i_arrayidx2812_atax0_add_x_o[64:0];

    // i_arrayidx2812_atax0_dupName_0_trunc_sel_x(BITSELECT,53)@2
    assign i_arrayidx2812_atax0_dupName_0_trunc_sel_x_b = i_arrayidx2812_atax0_add_x_q[63:0];

    // i_arrayidx2812_atax5_vt_select_63(BITSELECT,23)@2
    assign i_arrayidx2812_atax5_vt_select_63_b = i_arrayidx2812_atax0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2812_atax5_vt_const_1(CONSTANT,21)
    assign i_arrayidx2812_atax5_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx2812_atax5_vt_join(BITJOIN,22)@2
    assign i_arrayidx2812_atax5_vt_join_q = {i_arrayidx2812_atax5_vt_select_63_b, i_arrayidx2812_atax5_vt_const_1_q};

    // i_llvm_fpga_mem_arrayidx28_promoted14_atax6(BLACKBOX,31)@2
    // in in_i_stall@20000000
    // out out_arrayidx28_promoted14_atax_avm_address@20000000
    // out out_arrayidx28_promoted14_atax_avm_burstcount@20000000
    // out out_arrayidx28_promoted14_atax_avm_byteenable@20000000
    // out out_arrayidx28_promoted14_atax_avm_enable@20000000
    // out out_arrayidx28_promoted14_atax_avm_read@20000000
    // out out_arrayidx28_promoted14_atax_avm_write@20000000
    // out out_arrayidx28_promoted14_atax_avm_writedata@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    atax_i_llvm_fpga_mem_arrayidx28_promoted14_0 thei_llvm_fpga_mem_arrayidx28_promoted14_atax6 (
        .in_arrayidx28_promoted14_atax_avm_readdata(in_arrayidx28_promoted14_atax_avm_readdata),
        .in_arrayidx28_promoted14_atax_avm_readdatavalid(in_arrayidx28_promoted14_atax_avm_readdatavalid),
        .in_arrayidx28_promoted14_atax_avm_waitrequest(in_arrayidx28_promoted14_atax_avm_waitrequest),
        .in_arrayidx28_promoted14_atax_avm_writeack(in_arrayidx28_promoted14_atax_avm_writeack),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx2812_atax5_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .out_arrayidx28_promoted14_atax_avm_address(i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_address),
        .out_arrayidx28_promoted14_atax_avm_burstcount(i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_burstcount),
        .out_arrayidx28_promoted14_atax_avm_byteenable(i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_byteenable),
        .out_arrayidx28_promoted14_atax_avm_enable(i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_enable),
        .out_arrayidx28_promoted14_atax_avm_read(i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_read),
        .out_arrayidx28_promoted14_atax_avm_write(i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_write),
        .out_arrayidx28_promoted14_atax_avm_writedata(i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,47)
    assign out_arrayidx28_promoted14_atax_avm_address = i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_address;
    assign out_arrayidx28_promoted14_atax_avm_enable = i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_enable;
    assign out_arrayidx28_promoted14_atax_avm_read = i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_read;
    assign out_arrayidx28_promoted14_atax_avm_write = i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_write;
    assign out_arrayidx28_promoted14_atax_avm_writedata = i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_writedata;
    assign out_arrayidx28_promoted14_atax_avm_byteenable = i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_byteenable;
    assign out_arrayidx28_promoted14_atax_avm_burstcount = i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_arrayidx28_promoted14_atax_avm_burstcount;

    // valid_fanout_reg0(REG,57)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_valid_fanout_reg0_q_5(DELAY,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_valid_fanout_reg0_q_5_delay_0 <= '0;
            redist2_valid_fanout_reg0_q_5_delay_1 <= '0;
            redist2_valid_fanout_reg0_q_5_delay_2 <= '0;
            redist2_valid_fanout_reg0_q_5_delay_3 <= '0;
            redist2_valid_fanout_reg0_q_5_q <= '0;
        end
        else
        begin
            redist2_valid_fanout_reg0_q_5_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist2_valid_fanout_reg0_q_5_delay_1 <= redist2_valid_fanout_reg0_q_5_delay_0;
            redist2_valid_fanout_reg0_q_5_delay_2 <= redist2_valid_fanout_reg0_q_5_delay_1;
            redist2_valid_fanout_reg0_q_5_delay_3 <= redist2_valid_fanout_reg0_q_5_delay_2;
            redist2_valid_fanout_reg0_q_5_q <= redist2_valid_fanout_reg0_q_5_delay_3;
        end
    end

    // redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6(DELAY,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_0 <= '0;
            redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_1 <= '0;
            redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_2 <= '0;
            redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_3 <= '0;
            redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_q <= '0;
        end
        else
        begin
            redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_0 <= $unsigned(redist3_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_1_q);
            redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_1 <= redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_0;
            redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_2 <= redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_1;
            redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_3 <= redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_2;
            redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_q <= redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_delay_3;
        end
    end

    // i_notcmp74_atax10(LOGICAL,38)@7
    assign i_notcmp74_atax10_q = redist1_i_exitcond38_atax8_cmp_nsign_q_6_q ^ VCC_q;

    // redist1_i_exitcond38_atax8_cmp_nsign_q_6(DELAY,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_0 <= '0;
            redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_1 <= '0;
            redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_2 <= '0;
            redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_3 <= '0;
            redist1_i_exitcond38_atax8_cmp_nsign_q_6_q <= '0;
        end
        else
        begin
            redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_0 <= $unsigned(redist0_i_exitcond38_atax8_cmp_nsign_q_1_q);
            redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_1 <= redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_0;
            redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_2 <= redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_1;
            redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_3 <= redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_2;
            redist1_i_exitcond38_atax8_cmp_nsign_q_6_q <= redist1_i_exitcond38_atax8_cmp_nsign_q_6_delay_3;
        end
    end

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_notEnable(LOGICAL,91)
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_nor(LOGICAL,92)
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_nor_q = ~ (redist6_i_arrayidx2812_atax5_vt_join_q_5_notEnable_q | redist6_i_arrayidx2812_atax5_vt_join_q_5_sticky_ena_q);

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_last(CONSTANT,88)
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_last_q = $unsigned(2'b01);

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_cmp(LOGICAL,89)
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_cmp_q = $unsigned(redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_last_q == redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_cmpReg(REG,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx2812_atax5_vt_join_q_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_i_arrayidx2812_atax5_vt_join_q_5_cmpReg_q <= $unsigned(redist6_i_arrayidx2812_atax5_vt_join_q_5_cmp_q);
        end
    end

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_sticky_ena(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx2812_atax5_vt_join_q_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_i_arrayidx2812_atax5_vt_join_q_5_nor_q == 1'b1)
        begin
            redist6_i_arrayidx2812_atax5_vt_join_q_5_sticky_ena_q <= $unsigned(redist6_i_arrayidx2812_atax5_vt_join_q_5_cmpReg_q);
        end
    end

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_enaAnd(LOGICAL,94)
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_enaAnd_q = redist6_i_arrayidx2812_atax5_vt_join_q_5_sticky_ena_q & VCC_q;

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt(COUNTER,86)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_i <= 2'd0;
            redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_i == 2'd1)
            begin
                redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_eq <= 1'b0;
            end
            if (redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_eq == 1'b1)
            begin
                redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_i <= $unsigned(redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_i <= $unsigned(redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_q = redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_i[1:0];

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_inputreg0(DELAY,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx2812_atax5_vt_join_q_5_inputreg0_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx2812_atax5_vt_join_q_5_inputreg0_q <= $unsigned(i_arrayidx2812_atax5_vt_join_q);
        end
    end

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_wraddr(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx2812_atax5_vt_join_q_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist6_i_arrayidx2812_atax5_vt_join_q_5_wraddr_q <= $unsigned(redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_q);
        end
    end

    // redist6_i_arrayidx2812_atax5_vt_join_q_5_mem(DUALMEM,85)
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_ia = $unsigned(redist6_i_arrayidx2812_atax5_vt_join_q_5_inputreg0_q);
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_aa = redist6_i_arrayidx2812_atax5_vt_join_q_5_wraddr_q;
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_ab = redist6_i_arrayidx2812_atax5_vt_join_q_5_rdcnt_q;
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_reset0 = ~ (resetn);
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
    ) redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_dmem (
        .clocken1(redist6_i_arrayidx2812_atax5_vt_join_q_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_reset0),
        .clock1(clock),
        .address_a(redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_aa),
        .data_a(redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_ab),
        .q_b(redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_iq),
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
    assign redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_q = redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_iq[63:0];

    // redist5_i_idxprom27_atax4_vt_join_q_5_notEnable(LOGICAL,80)
    assign redist5_i_idxprom27_atax4_vt_join_q_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_i_idxprom27_atax4_vt_join_q_5_nor(LOGICAL,81)
    assign redist5_i_idxprom27_atax4_vt_join_q_5_nor_q = ~ (redist5_i_idxprom27_atax4_vt_join_q_5_notEnable_q | redist5_i_idxprom27_atax4_vt_join_q_5_sticky_ena_q);

    // redist5_i_idxprom27_atax4_vt_join_q_5_mem_last(CONSTANT,77)
    assign redist5_i_idxprom27_atax4_vt_join_q_5_mem_last_q = $unsigned(2'b01);

    // redist5_i_idxprom27_atax4_vt_join_q_5_cmp(LOGICAL,78)
    assign redist5_i_idxprom27_atax4_vt_join_q_5_cmp_q = $unsigned(redist5_i_idxprom27_atax4_vt_join_q_5_mem_last_q == redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist5_i_idxprom27_atax4_vt_join_q_5_cmpReg(REG,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom27_atax4_vt_join_q_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_i_idxprom27_atax4_vt_join_q_5_cmpReg_q <= $unsigned(redist5_i_idxprom27_atax4_vt_join_q_5_cmp_q);
        end
    end

    // redist5_i_idxprom27_atax4_vt_join_q_5_sticky_ena(REG,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom27_atax4_vt_join_q_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_i_idxprom27_atax4_vt_join_q_5_nor_q == 1'b1)
        begin
            redist5_i_idxprom27_atax4_vt_join_q_5_sticky_ena_q <= $unsigned(redist5_i_idxprom27_atax4_vt_join_q_5_cmpReg_q);
        end
    end

    // redist5_i_idxprom27_atax4_vt_join_q_5_enaAnd(LOGICAL,83)
    assign redist5_i_idxprom27_atax4_vt_join_q_5_enaAnd_q = redist5_i_idxprom27_atax4_vt_join_q_5_sticky_ena_q & VCC_q;

    // redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt(COUNTER,75)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_i <= 2'd0;
            redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_i == 2'd1)
            begin
                redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_eq <= 1'b0;
            end
            if (redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_eq == 1'b1)
            begin
                redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_i <= $unsigned(redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_i <= $unsigned(redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_q = redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_i[1:0];

    // redist5_i_idxprom27_atax4_vt_join_q_5_inputreg0(DELAY,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom27_atax4_vt_join_q_5_inputreg0_q <= '0;
        end
        else
        begin
            redist5_i_idxprom27_atax4_vt_join_q_5_inputreg0_q <= $unsigned(i_idxprom27_atax4_vt_join_q);
        end
    end

    // redist5_i_idxprom27_atax4_vt_join_q_5_wraddr(REG,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom27_atax4_vt_join_q_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist5_i_idxprom27_atax4_vt_join_q_5_wraddr_q <= $unsigned(redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_q);
        end
    end

    // redist5_i_idxprom27_atax4_vt_join_q_5_mem(DUALMEM,74)
    assign redist5_i_idxprom27_atax4_vt_join_q_5_mem_ia = $unsigned(redist5_i_idxprom27_atax4_vt_join_q_5_inputreg0_q);
    assign redist5_i_idxprom27_atax4_vt_join_q_5_mem_aa = redist5_i_idxprom27_atax4_vt_join_q_5_wraddr_q;
    assign redist5_i_idxprom27_atax4_vt_join_q_5_mem_ab = redist5_i_idxprom27_atax4_vt_join_q_5_rdcnt_q;
    assign redist5_i_idxprom27_atax4_vt_join_q_5_mem_reset0 = ~ (resetn);
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
    ) redist5_i_idxprom27_atax4_vt_join_q_5_mem_dmem (
        .clocken1(redist5_i_idxprom27_atax4_vt_join_q_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_i_idxprom27_atax4_vt_join_q_5_mem_reset0),
        .clock1(clock),
        .address_a(redist5_i_idxprom27_atax4_vt_join_q_5_mem_aa),
        .data_a(redist5_i_idxprom27_atax4_vt_join_q_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_i_idxprom27_atax4_vt_join_q_5_mem_ab),
        .q_b(redist5_i_idxprom27_atax4_vt_join_q_5_mem_iq),
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
    assign redist5_i_idxprom27_atax4_vt_join_q_5_mem_q = redist5_i_idxprom27_atax4_vt_join_q_5_mem_iq[63:0];

    // sync_out_aunroll_x(GPOUT,55)@7
    assign out_c0_exi6155_0_tpl = GND_q;
    assign out_c0_exi6155_1_tpl = redist5_i_idxprom27_atax4_vt_join_q_5_mem_q;
    assign out_c0_exi6155_2_tpl = redist6_i_arrayidx2812_atax5_vt_join_q_5_mem_q;
    assign out_c0_exi6155_3_tpl = i_llvm_fpga_mem_arrayidx28_promoted14_atax6_out_o_readdata;
    assign out_c0_exi6155_4_tpl = redist1_i_exitcond38_atax8_cmp_nsign_q_6_q;
    assign out_c0_exi6155_5_tpl = i_notcmp74_atax10_q;
    assign out_c0_exi6155_6_tpl = redist4_sync_together42_aunroll_x_in_c0_eni1147_1_tpl_6_q;
    assign out_o_valid = redist2_valid_fanout_reg0_q_5_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
