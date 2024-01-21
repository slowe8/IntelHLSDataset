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

// SystemVerilog created from bb_atax_B8_stall_region
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B8_stall_region (
    input wire [31:0] in_memdep_5_atax_avm_readdata,
    input wire [0:0] in_memdep_5_atax_avm_writeack,
    input wire [0:0] in_memdep_5_atax_avm_waitrequest,
    input wire [0:0] in_memdep_5_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_5_atax_avm_address,
    output wire [0:0] out_memdep_5_atax_avm_enable,
    output wire [0:0] out_memdep_5_atax_avm_read,
    output wire [0:0] out_memdep_5_atax_avm_write,
    output wire [31:0] out_memdep_5_atax_avm_writedata,
    output wire [3:0] out_memdep_5_atax_avm_byteenable,
    output wire [0:0] out_memdep_5_atax_avm_burstcount,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_17_q;
    wire [32:0] i_inc41_atax4_a;
    wire [32:0] i_inc41_atax4_b;
    logic [32:0] i_inc41_atax4_o;
    wire [32:0] i_inc41_atax4_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_add28_atax1_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_add28_atax1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_add28_atax1_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax2_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax2_out_o_valid;
    wire [31:0] bgTrunc_i_inc41_atax4_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_f32_add28_atax1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_f32_add28_atax1_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_atax2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_atax2_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_atax2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_atax2_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_V0;


    // i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_9_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_0 thei_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_out_dest_data_out_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg(STALLENABLE,88)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_s_tv_0 = SE_out_i_llvm_fpga_mem_memdep_5_atax2_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5(STALLENABLE,60)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_out_valid_out;

    // c_i32_17(CONSTANT,4)
    assign c_i32_17_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3(BITJOIN,42)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_q = i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3(BITSELECT,43)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_q[31:0]);

    // i_inc41_atax4(ADD,9)@1
    assign i_inc41_atax4_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_b};
    assign i_inc41_atax4_b = {1'b0, c_i32_17_q};
    assign i_inc41_atax4_o = $unsigned(i_inc41_atax4_a) + $unsigned(i_inc41_atax4_b);
    assign i_inc41_atax4_q = i_inc41_atax4_o[32:0];

    // bgTrunc_i_inc41_atax4_sel_x(BITSELECT,35)@1
    assign bgTrunc_i_inc41_atax4_sel_x_b = i_inc41_atax4_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_stall_out@20000000
    atax_i_llvm_fpga_ffwd_source_i32_unnamed_21_atax0 thei_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(bgTrunc_i_inc41_atax4_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_V0),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_out_intel_reserved_ffwd_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3(STALLENABLE,56)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_wireValid = i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_i_13821_atax3(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_6_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_i_llvm_fpga_ffwd_dest_i32_i_13821_0 thei_llvm_fpga_ffwd_dest_i32_i_13821_atax3 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_f32_add28_atax1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_i_13821_atax3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_f32_add28_atax1(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_11_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_i_llvm_fpga_ffwd_dest_f32_add28_0 thei_llvm_fpga_ffwd_dest_f32_add28_atax1 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_f32_add28_atax1_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_f32_add28_atax1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_f32_add28_atax1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_f32_add28_atax1(BITJOIN,39)
    assign bubble_join_i_llvm_fpga_ffwd_dest_f32_add28_atax1_q = i_llvm_fpga_ffwd_dest_f32_add28_atax1_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_f32_add28_atax1(BITSELECT,40)
    assign bubble_select_i_llvm_fpga_ffwd_dest_f32_add28_atax1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_f32_add28_atax1_q[31:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0(STALLENABLE,58)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_backStall = i_llvm_fpga_mem_memdep_5_atax2_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_and0 = i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_wireValid = i_llvm_fpga_ffwd_dest_f32_add28_atax1_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_and0;

    // SE_out_i_llvm_fpga_mem_memdep_5_atax2(STALLENABLE,62)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_5_atax2_V0 = SE_out_i_llvm_fpga_mem_memdep_5_atax2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_5_atax2_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_memdep_5_atax2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_5_atax2_and0 = i_llvm_fpga_mem_memdep_5_atax2_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_memdep_5_atax2_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_1_reg_V0 & SE_out_i_llvm_fpga_mem_memdep_5_atax2_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0(BITJOIN,45)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_q = i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_out_dest_data_out_9_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0(BITSELECT,46)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_q[63:0]);

    // i_llvm_fpga_mem_memdep_5_atax2(BLACKBOX,14)@1
    // in in_i_stall@20000000
    // out out_memdep_5_atax_avm_address@20000000
    // out out_memdep_5_atax_avm_burstcount@20000000
    // out out_memdep_5_atax_avm_byteenable@20000000
    // out out_memdep_5_atax_avm_enable@20000000
    // out out_memdep_5_atax_avm_read@20000000
    // out out_memdep_5_atax_avm_write@20000000
    // out out_memdep_5_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_o_writeack@2
    atax_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_atax2 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_5_atax2_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p67f32_arrayidx28525_atax0_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_ffwd_dest_f32_add28_atax1_b),
        .in_memdep_5_atax_avm_readdata(in_memdep_5_atax_avm_readdata),
        .in_memdep_5_atax_avm_readdatavalid(in_memdep_5_atax_avm_readdatavalid),
        .in_memdep_5_atax_avm_waitrequest(in_memdep_5_atax_avm_waitrequest),
        .in_memdep_5_atax_avm_writeack(in_memdep_5_atax_avm_writeack),
        .out_memdep_5_atax_avm_address(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_address),
        .out_memdep_5_atax_avm_burstcount(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_burstcount),
        .out_memdep_5_atax_avm_byteenable(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_byteenable),
        .out_memdep_5_atax_avm_enable(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_enable),
        .out_memdep_5_atax_avm_read(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_read),
        .out_memdep_5_atax_avm_write(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_write),
        .out_memdep_5_atax_avm_writedata(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_5_atax2_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_5_atax2_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_memdep_5_atax_avm_address = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_address;
    assign out_memdep_5_atax_avm_enable = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_enable;
    assign out_memdep_5_atax_avm_read = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_read;
    assign out_memdep_5_atax_avm_write = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_write;
    assign out_memdep_5_atax_avm_writedata = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_writedata;
    assign out_memdep_5_atax_avm_byteenable = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_byteenable;
    assign out_memdep_5_atax_avm_burstcount = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_burstcount;

    // regfree_osync(GPOUT,29)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i32_unnamed_atax21_atax5_out_intel_reserved_ffwd_12_0;

    // sync_out(GPOUT,33)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,36)@2
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memdep_5_atax2_V0;

endmodule
