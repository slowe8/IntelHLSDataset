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

// SystemVerilog created from bb_atax_B7_stall_region
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B7_stall_region (
    input wire [31:0] in_unnamed_atax18_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax18_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax18_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax18_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax18_atax_avm_address,
    output wire [0:0] out_unnamed_atax18_atax_avm_enable,
    output wire [0:0] out_unnamed_atax18_atax_avm_read,
    output wire [0:0] out_unnamed_atax18_atax_avm_write,
    output wire [31:0] out_unnamed_atax18_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax18_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax18_atax_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add41,
    input wire [0:0] in_forked26,
    input wire [31:0] in_j_137,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_atax19_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax19_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax19_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax19_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax19_atax_avm_address,
    output wire [0:0] out_unnamed_atax19_atax_avm_enable,
    output wire [0:0] out_unnamed_atax19_atax_avm_read,
    output wire [0:0] out_unnamed_atax19_atax_avm_write,
    output wire [31:0] out_unnamed_atax19_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax19_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax19_atax_avm_burstcount,
    output wire [31:0] out_c0_exe188,
    output wire [0:0] out_cmp25,
    output wire [31:0] out_inc38,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_15_q;
    wire [31:0] c_i32_6410_q;
    wire [33:0] i_cmp25_atax4_a;
    wire [33:0] i_cmp25_atax4_b;
    logic [33:0] i_cmp25_atax4_o;
    wire [0:0] i_cmp25_atax4_c;
    wire [32:0] i_inc38_atax0_a;
    wire [32:0] i_inc38_atax0_b;
    logic [32:0] i_inc38_atax0_o;
    wire [32:0] i_inc38_atax0_q;
    wire [24:0] i_inc38_atax0_vt_const_31_q;
    wire [31:0] i_inc38_atax0_vt_join_q;
    wire [6:0] i_inc38_atax0_vt_select_6_b;
    wire [0:0] atax_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B7_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] atax_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] atax_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] atax_B7_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] bgTrunc_i_inc38_atax0_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_c0_exit87_1_tpl;
    wire [0:0] redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_in;
    wire redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_in;
    wire redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_in_bitsignaltemp;
    wire [6:0] redist0_i_inc38_atax0_vt_select_6_b_12_fifo_data_in;
    wire [0:0] redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_out;
    wire redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_out;
    wire redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_out_bitsignaltemp;
    wire [6:0] redist0_i_inc38_atax0_vt_select_6_b_12_fifo_data_out;
    wire [64:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [64:0] bubble_join_atax_B7_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_atax_B7_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_atax_B7_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_atax_B7_merge_reg_aunroll_x_d;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_b;
    wire [6:0] bubble_join_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_q;
    wire [6:0] bubble_select_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_atax_B7_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_atax_B7_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_atax_B7_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_and0;
    wire [0:0] SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_backStall;
    wire [0:0] SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,38)
    assign bubble_join_stall_entry_q = {in_j_137, in_forked26, in_add41};

    // bubble_select_stall_entry(BITSELECT,39)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);

    // SE_stall_entry(STALLENABLE,55)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B7_merge_reg_aunroll_x(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    atax_B7_merge_reg theatax_B7_merge_reg_aunroll_x (
        .in_stall_in(SE_out_atax_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .out_stall_out(atax_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B7_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(atax_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(atax_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(atax_B7_merge_reg_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B7_merge_reg_aunroll_x(BITJOIN,42)
    assign bubble_join_atax_B7_merge_reg_aunroll_x_q = {atax_B7_merge_reg_aunroll_x_out_data_out_2_tpl, atax_B7_merge_reg_aunroll_x_out_data_out_1_tpl, atax_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_atax_B7_merge_reg_aunroll_x(BITSELECT,43)
    assign bubble_select_atax_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B7_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_atax_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_atax_B7_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_atax_B7_merge_reg_aunroll_x_d = $unsigned(bubble_join_atax_B7_merge_reg_aunroll_x_q[64:64]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i32_15(CONSTANT,4)
    assign c_i32_15_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc38_atax0(ADD,11)@1
    assign i_inc38_atax0_a = {1'b0, bubble_select_atax_B7_merge_reg_aunroll_x_c};
    assign i_inc38_atax0_b = {1'b0, c_i32_15_q};
    assign i_inc38_atax0_o = $unsigned(i_inc38_atax0_a) + $unsigned(i_inc38_atax0_b);
    assign i_inc38_atax0_q = i_inc38_atax0_o[32:0];

    // bgTrunc_i_inc38_atax0_sel_x(BITSELECT,29)@1
    assign bgTrunc_i_inc38_atax0_sel_x_b = i_inc38_atax0_q[31:0];

    // i_inc38_atax0_vt_select_6(BITSELECT,14)@1
    assign i_inc38_atax0_vt_select_6_b = bgTrunc_i_inc38_atax0_sel_x_b[6:0];

    // redist0_i_inc38_atax0_vt_select_6_b_12_fifo(STALLFIFO,36)
    assign redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_in = SE_out_atax_B7_merge_reg_aunroll_x_V1;
    assign redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_in = SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_backStall;
    assign redist0_i_inc38_atax0_vt_select_6_b_12_fifo_data_in = i_inc38_atax0_vt_select_6_b;
    assign redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_in_bitsignaltemp = redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_in[0];
    assign redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_in_bitsignaltemp = redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_in[0];
    assign redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_out[0] = redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_out_bitsignaltemp;
    assign redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_out[0] = redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(13),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(7),
        .IMPL("ram")
    ) theredist0_i_inc38_atax0_vt_select_6_b_12_fifo (
        .valid_in(redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_in_bitsignaltemp),
        .data_in(i_inc38_atax0_vt_select_6_b),
        .valid_out(redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_inc38_atax0_vt_select_6_b_12_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_atax_B7_merge_reg_aunroll_x(STALLENABLE,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_atax_B7_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_atax_B7_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_atax_B7_merge_reg_aunroll_x_fromReg0 <= SE_out_atax_B7_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_atax_B7_merge_reg_aunroll_x_fromReg1 <= SE_out_atax_B7_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_atax_B7_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_o_stall) & SE_out_atax_B7_merge_reg_aunroll_x_wireValid) | SE_out_atax_B7_merge_reg_aunroll_x_fromReg0;
    assign SE_out_atax_B7_merge_reg_aunroll_x_consumed1 = (~ (redist0_i_inc38_atax0_vt_select_6_b_12_fifo_stall_out) & SE_out_atax_B7_merge_reg_aunroll_x_wireValid) | SE_out_atax_B7_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_atax_B7_merge_reg_aunroll_x_StallValid = SE_out_atax_B7_merge_reg_aunroll_x_backStall & SE_out_atax_B7_merge_reg_aunroll_x_wireValid;
    assign SE_out_atax_B7_merge_reg_aunroll_x_toReg0 = SE_out_atax_B7_merge_reg_aunroll_x_StallValid & SE_out_atax_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_atax_B7_merge_reg_aunroll_x_toReg1 = SE_out_atax_B7_merge_reg_aunroll_x_StallValid & SE_out_atax_B7_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_atax_B7_merge_reg_aunroll_x_or0 = SE_out_atax_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_atax_B7_merge_reg_aunroll_x_wireStall = ~ (SE_out_atax_B7_merge_reg_aunroll_x_consumed1 & SE_out_atax_B7_merge_reg_aunroll_x_or0);
    assign SE_out_atax_B7_merge_reg_aunroll_x_backStall = SE_out_atax_B7_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_atax_B7_merge_reg_aunroll_x_V0 = SE_out_atax_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B7_merge_reg_aunroll_x_fromReg0);
    assign SE_out_atax_B7_merge_reg_aunroll_x_V1 = SE_out_atax_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B7_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_atax_B7_merge_reg_aunroll_x_wireValid = atax_B7_merge_reg_aunroll_x_out_valid_out;

    // SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo(STALLENABLE,63)
    // Valid signal propagation
    assign SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_V0 = SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_backStall = in_stall_in | ~ (SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_and0 = redist0_i_inc38_atax0_vt_select_6_b_12_fifo_valid_out;
    assign SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_wireValid = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_o_valid & SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_and0;

    // i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x(BLACKBOX,33)@1
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@13
    // out out_unnamed_atax18_atax_avm_address@20000000
    // out out_unnamed_atax18_atax_avm_burstcount@20000000
    // out out_unnamed_atax18_atax_avm_byteenable@20000000
    // out out_unnamed_atax18_atax_avm_enable@20000000
    // out out_unnamed_atax18_atax_avm_read@20000000
    // out out_unnamed_atax18_atax_avm_write@20000000
    // out out_unnamed_atax18_atax_avm_writedata@20000000
    // out out_unnamed_atax19_atax_avm_address@20000000
    // out out_unnamed_atax19_atax_avm_burstcount@20000000
    // out out_unnamed_atax19_atax_avm_byteenable@20000000
    // out out_unnamed_atax19_atax_avm_enable@20000000
    // out out_unnamed_atax19_atax_avm_read@20000000
    // out out_unnamed_atax19_atax_avm_write@20000000
    // out out_unnamed_atax19_atax_avm_writedata@20000000
    // out out_c0_exit87_0_tpl@13
    // out out_c0_exit87_1_tpl@13
    atax_i_sfc_s_c0_in_for_body26_s_c0_enter846_atax2 thei_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_backStall),
        .in_i_valid(SE_out_atax_B7_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_unnamed_atax18_atax_avm_readdata(in_unnamed_atax18_atax_avm_readdata),
        .in_unnamed_atax18_atax_avm_readdatavalid(in_unnamed_atax18_atax_avm_readdatavalid),
        .in_unnamed_atax18_atax_avm_waitrequest(in_unnamed_atax18_atax_avm_waitrequest),
        .in_unnamed_atax18_atax_avm_writeack(in_unnamed_atax18_atax_avm_writeack),
        .in_unnamed_atax19_atax_avm_readdata(in_unnamed_atax19_atax_avm_readdata),
        .in_unnamed_atax19_atax_avm_readdatavalid(in_unnamed_atax19_atax_avm_readdatavalid),
        .in_unnamed_atax19_atax_avm_waitrequest(in_unnamed_atax19_atax_avm_waitrequest),
        .in_unnamed_atax19_atax_avm_writeack(in_unnamed_atax19_atax_avm_writeack),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_atax_B7_merge_reg_aunroll_x_d),
        .in_c0_eni3_2_tpl(bubble_select_atax_B7_merge_reg_aunroll_x_b),
        .in_c0_eni3_3_tpl(bubble_select_atax_B7_merge_reg_aunroll_x_c),
        .out_intel_reserved_ffwd_11_0(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_o_stall(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_o_valid),
        .out_unnamed_atax18_atax_avm_address(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_address),
        .out_unnamed_atax18_atax_avm_burstcount(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_burstcount),
        .out_unnamed_atax18_atax_avm_byteenable(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_byteenable),
        .out_unnamed_atax18_atax_avm_enable(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_enable),
        .out_unnamed_atax18_atax_avm_read(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_read),
        .out_unnamed_atax18_atax_avm_write(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_write),
        .out_unnamed_atax18_atax_avm_writedata(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_writedata),
        .out_unnamed_atax19_atax_avm_address(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_address),
        .out_unnamed_atax19_atax_avm_burstcount(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_burstcount),
        .out_unnamed_atax19_atax_avm_byteenable(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_byteenable),
        .out_unnamed_atax19_atax_avm_enable(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_enable),
        .out_unnamed_atax19_atax_avm_read(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_read),
        .out_unnamed_atax19_atax_avm_write(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_write),
        .out_unnamed_atax19_atax_avm_writedata(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_writedata),
        .out_c0_exit87_0_tpl(),
        .out_c0_exit87_1_tpl(i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_c0_exit87_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_unnamed_atax18_atax_avm_address = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_address;
    assign out_unnamed_atax18_atax_avm_enable = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_enable;
    assign out_unnamed_atax18_atax_avm_read = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_read;
    assign out_unnamed_atax18_atax_avm_write = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_write;
    assign out_unnamed_atax18_atax_avm_writedata = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_writedata;
    assign out_unnamed_atax18_atax_avm_byteenable = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_byteenable;
    assign out_unnamed_atax18_atax_avm_burstcount = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax18_atax_avm_burstcount;

    // regfree_osync(GPOUT,22)
    assign out_intel_reserved_ffwd_11_0 = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_intel_reserved_ffwd_11_0;

    // sync_out(GPOUT,26)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,31)
    assign out_unnamed_atax19_atax_avm_address = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_address;
    assign out_unnamed_atax19_atax_avm_enable = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_enable;
    assign out_unnamed_atax19_atax_avm_read = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_read;
    assign out_unnamed_atax19_atax_avm_write = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_write;
    assign out_unnamed_atax19_atax_avm_writedata = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_writedata;
    assign out_unnamed_atax19_atax_avm_byteenable = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_byteenable;
    assign out_unnamed_atax19_atax_avm_burstcount = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_unnamed_atax19_atax_avm_burstcount;

    // i_inc38_atax0_vt_const_31(CONSTANT,12)
    assign i_inc38_atax0_vt_const_31_q = $unsigned(25'b0000000000000000000000000);

    // bubble_join_redist0_i_inc38_atax0_vt_select_6_b_12_fifo(BITJOIN,49)
    assign bubble_join_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_q = redist0_i_inc38_atax0_vt_select_6_b_12_fifo_data_out;

    // bubble_select_redist0_i_inc38_atax0_vt_select_6_b_12_fifo(BITSELECT,50)
    assign bubble_select_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_b = $unsigned(bubble_join_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_q[6:0]);

    // i_inc38_atax0_vt_join(BITJOIN,13)@13
    assign i_inc38_atax0_vt_join_q = {i_inc38_atax0_vt_const_31_q, bubble_select_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_b};

    // c_i32_6410(CONSTANT,5)
    assign c_i32_6410_q = $unsigned(32'b00000000000000000000000001000000);

    // i_cmp25_atax4(COMPARE,10)@13
    assign i_cmp25_atax4_a = {2'b00, i_inc38_atax0_vt_join_q};
    assign i_cmp25_atax4_b = {2'b00, c_i32_6410_q};
    assign i_cmp25_atax4_o = $unsigned(i_cmp25_atax4_a) - $unsigned(i_cmp25_atax4_b);
    assign i_cmp25_atax4_c[0] = i_cmp25_atax4_o[33];

    // bubble_join_i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x(BITJOIN,45)
    assign bubble_join_i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_q = i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_out_c0_exit87_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x(BITSELECT,46)
    assign bubble_select_i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,32)@13
    assign out_c0_exe188 = bubble_select_i_sfc_s_c0_in_for_body26_ataxs_c0_enter846_atax2_aunroll_x_b;
    assign out_cmp25 = i_cmp25_atax4_c;
    assign out_inc38 = i_inc38_atax0_vt_join_q;
    assign out_valid_out = SE_out_redist0_i_inc38_atax0_vt_select_6_b_12_fifo_V0;

endmodule
