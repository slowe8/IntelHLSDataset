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

// SystemVerilog created from bb_atax_B10_stall_region
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B10_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_cmp44,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_14_q;
    wire [31:0] c_i32_645_q;
    wire [33:0] i_cmp44_atax2_a;
    wire [33:0] i_cmp44_atax2_b;
    logic [33:0] i_cmp44_atax2_o;
    wire [0:0] i_cmp44_atax2_c;
    wire [32:0] i_inc65_atax1_a;
    wire [32:0] i_inc65_atax1_b;
    logic [32:0] i_inc65_atax1_o;
    wire [32:0] i_inc65_atax1_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_out_valid_out;
    wire [31:0] bgTrunc_i_inc65_atax1_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,37)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_i_23622_atax0(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_7_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_i_llvm_fpga_ffwd_dest_i32_i_23622_0 thei_llvm_fpga_ffwd_dest_i32_i_23622_atax0 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0(STALLENABLE,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_wireValid = i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_and0 = i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_and0;

    // c_i32_14(CONSTANT,4)
    assign c_i32_14_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0(BITJOIN,27)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_q = i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0(BITSELECT,28)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_q[31:0]);

    // i_inc65_atax1(ADD,9)@1
    assign i_inc65_atax1_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_b};
    assign i_inc65_atax1_b = {1'b0, c_i32_14_q};
    assign i_inc65_atax1_o = $unsigned(i_inc65_atax1_a) + $unsigned(i_inc65_atax1_b);
    assign i_inc65_atax1_q = i_inc65_atax1_o[32:0];

    // bgTrunc_i_inc65_atax1_sel_x(BITSELECT,23)@1
    assign bgTrunc_i_inc65_atax1_sel_x_b = i_inc65_atax1_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_stall_out@20000000
    atax_i_llvm_fpga_ffwd_source_i32_unnamed_24_atax0 thei_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(bgTrunc_i_inc65_atax1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_i_23622_atax0_V1),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_out_intel_reserved_ffwd_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,17)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_out_intel_reserved_ffwd_13_0;

    // sync_out(GPOUT,21)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // c_i32_645(CONSTANT,5)
    assign c_i32_645_q = $unsigned(32'b00000000000000000000000001000000);

    // i_cmp44_atax2(COMPARE,8)@1
    assign i_cmp44_atax2_a = {2'b00, bgTrunc_i_inc65_atax1_sel_x_b};
    assign i_cmp44_atax2_b = {2'b00, c_i32_645_q};
    assign i_cmp44_atax2_o = $unsigned(i_cmp44_atax2_a) - $unsigned(i_cmp44_atax2_b);
    assign i_cmp44_atax2_c[0] = i_cmp44_atax2_o[33];

    // dupName_0_sync_out_x(GPOUT,24)@1
    assign out_cmp44 = i_cmp44_atax2_c;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax24_atax3_V0;

endmodule
