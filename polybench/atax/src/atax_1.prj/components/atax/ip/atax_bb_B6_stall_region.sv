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

// SystemVerilog created from bb_atax_B6_stall_region
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B6_stall_region (
    input wire [31:0] in_arrayidx28_promoted1_atax_avm_readdata,
    input wire [0:0] in_arrayidx28_promoted1_atax_avm_writeack,
    input wire [0:0] in_arrayidx28_promoted1_atax_avm_waitrequest,
    input wire [0:0] in_arrayidx28_promoted1_atax_avm_readdatavalid,
    output wire [31:0] out_arrayidx28_promoted1_atax_avm_address,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_enable,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_read,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_write,
    output wire [31:0] out_arrayidx28_promoted1_atax_avm_writedata,
    output wire [3:0] out_arrayidx28_promoted1_atax_avm_byteenable,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked30,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] atax_B6_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B6_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] atax_B6_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [31:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [31:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [63:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_o_valid;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_atax_B6_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B6_merge_reg_aunroll_x_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B6_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B6_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B6_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,28)
    assign bubble_join_stall_entry_q = in_forked30;

    // bubble_select_stall_entry(BITSELECT,29)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,35)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B6_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B6_merge_reg_aunroll_x(BLACKBOX,20)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    atax_B6_merge_reg theatax_B6_merge_reg_aunroll_x (
        .in_stall_in(SE_out_atax_B6_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(atax_B6_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B6_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(atax_B6_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B6_merge_reg_aunroll_x(BITJOIN,32)
    assign bubble_join_atax_B6_merge_reg_aunroll_x_q = atax_B6_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_atax_B6_merge_reg_aunroll_x(BITSELECT,33)
    assign bubble_select_atax_B6_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B6_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_atax_B6_merge_reg_aunroll_x(STALLENABLE,38)
    // Valid signal propagation
    assign SE_out_atax_B6_merge_reg_aunroll_x_V0 = SE_out_atax_B6_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_atax_B6_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_o_stall | ~ (SE_out_atax_B6_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_atax_B6_merge_reg_aunroll_x_wireValid = atax_B6_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x(STALLENABLE,40)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x(BLACKBOX,26)@1
    // in in_i_stall@20000000
    // out out_arrayidx28_promoted1_atax_avm_address@20000000
    // out out_arrayidx28_promoted1_atax_avm_burstcount@20000000
    // out out_arrayidx28_promoted1_atax_avm_byteenable@20000000
    // out out_arrayidx28_promoted1_atax_avm_enable@20000000
    // out out_arrayidx28_promoted1_atax_avm_read@20000000
    // out out_arrayidx28_promoted1_atax_avm_write@20000000
    // out out_arrayidx28_promoted1_atax_avm_writedata@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_c0_exit82_0_tpl@9
    atax_i_sfc_s_c0_in_for_cond24_preheader_s_c0_enter803_atax1 thei_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x (
        .in_arrayidx28_promoted1_atax_avm_readdata(in_arrayidx28_promoted1_atax_avm_readdata),
        .in_arrayidx28_promoted1_atax_avm_readdatavalid(in_arrayidx28_promoted1_atax_avm_readdatavalid),
        .in_arrayidx28_promoted1_atax_avm_waitrequest(in_arrayidx28_promoted1_atax_avm_waitrequest),
        .in_arrayidx28_promoted1_atax_avm_writeack(in_arrayidx28_promoted1_atax_avm_writeack),
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_backStall),
        .in_i_valid(SE_out_atax_B6_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_c0_eni179_0_tpl(GND_q),
        .in_c0_eni179_1_tpl(bubble_select_atax_B6_merge_reg_aunroll_x_b),
        .out_arrayidx28_promoted1_atax_avm_address(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_address),
        .out_arrayidx28_promoted1_atax_avm_burstcount(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_burstcount),
        .out_arrayidx28_promoted1_atax_avm_byteenable(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_byteenable),
        .out_arrayidx28_promoted1_atax_avm_enable(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_enable),
        .out_arrayidx28_promoted1_atax_avm_read(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_read),
        .out_arrayidx28_promoted1_atax_avm_write(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_write),
        .out_arrayidx28_promoted1_atax_avm_writedata(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_writedata),
        .out_intel_reserved_ffwd_10_0(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_o_valid),
        .out_c0_exit82_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_arrayidx28_promoted1_atax_avm_address = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_address;
    assign out_arrayidx28_promoted1_atax_avm_enable = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_enable;
    assign out_arrayidx28_promoted1_atax_avm_read = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_read;
    assign out_arrayidx28_promoted1_atax_avm_write = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_write;
    assign out_arrayidx28_promoted1_atax_avm_writedata = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_writedata;
    assign out_arrayidx28_promoted1_atax_avm_byteenable = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_byteenable;
    assign out_arrayidx28_promoted1_atax_avm_burstcount = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_arrayidx28_promoted1_atax_avm_burstcount;

    // regfree_osync(GPOUT,14)
    assign out_intel_reserved_ffwd_10_0 = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_10_0;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_0_sync_out_x(GPOUT,22)@9
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_2_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_8_0;

    // dupName_3_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_9_0 = i_sfc_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax1_aunroll_x_out_intel_reserved_ffwd_9_0;

endmodule
