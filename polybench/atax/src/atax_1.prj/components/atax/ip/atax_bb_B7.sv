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

// SystemVerilog created from bb_atax_B7
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B7 (
    input wire [31:0] in_add41_0,
    input wire [31:0] in_add41_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked26_0,
    input wire [0:0] in_forked26_1,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_j_137_0,
    input wire [31:0] in_j_137_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_atax18_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax18_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax18_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax18_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax19_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax19_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax19_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax19_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe188,
    output wire [31:0] out_inc38,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax18_atax_avm_address,
    output wire [0:0] out_unnamed_atax18_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax18_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax18_atax_avm_enable,
    output wire [0:0] out_unnamed_atax18_atax_avm_read,
    output wire [0:0] out_unnamed_atax18_atax_avm_write,
    output wire [31:0] out_unnamed_atax18_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax19_atax_avm_address,
    output wire [0:0] out_unnamed_atax19_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax19_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax19_atax_avm_enable,
    output wire [0:0] out_unnamed_atax19_atax_avm_read,
    output wire [0:0] out_unnamed_atax19_atax_avm_write,
    output wire [31:0] out_unnamed_atax19_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] atax_B7_branch_out_c0_exe188;
    wire [31:0] atax_B7_branch_out_inc38;
    wire [0:0] atax_B7_branch_out_stall_out;
    wire [0:0] atax_B7_branch_out_valid_out_0;
    wire [0:0] atax_B7_branch_out_valid_out_1;
    wire [31:0] atax_B7_merge_out_add41;
    wire [0:0] atax_B7_merge_out_forked26;
    wire [31:0] atax_B7_merge_out_j_137;
    wire [0:0] atax_B7_merge_out_stall_out_0;
    wire [0:0] atax_B7_merge_out_stall_out_1;
    wire [0:0] atax_B7_merge_out_valid_out;
    wire [31:0] bb_atax_B7_stall_region_out_c0_exe188;
    wire [0:0] bb_atax_B7_stall_region_out_cmp25;
    wire [31:0] bb_atax_B7_stall_region_out_inc38;
    wire [31:0] bb_atax_B7_stall_region_out_intel_reserved_ffwd_11_0;
    wire [0:0] bb_atax_B7_stall_region_out_stall_out;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_writedata;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_writedata;
    wire [0:0] bb_atax_B7_stall_region_out_valid_out;


    // atax_B7_merge(BLACKBOX,3)
    atax_B7_merge theatax_B7_merge (
        .in_add41_0(in_add41_0),
        .in_add41_1(in_add41_1),
        .in_forked26_0(in_forked26_0),
        .in_forked26_1(in_forked26_1),
        .in_j_137_0(in_j_137_0),
        .in_j_137_1(in_j_137_1),
        .in_stall_in(bb_atax_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add41(atax_B7_merge_out_add41),
        .out_forked26(atax_B7_merge_out_forked26),
        .out_j_137(atax_B7_merge_out_j_137),
        .out_stall_out_0(atax_B7_merge_out_stall_out_0),
        .out_stall_out_1(atax_B7_merge_out_stall_out_1),
        .out_valid_out(atax_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_stall_region(BLACKBOX,4)
    atax_bb_B7_stall_region thebb_atax_B7_stall_region (
        .in_add41(atax_B7_merge_out_add41),
        .in_flush(in_flush),
        .in_forked26(atax_B7_merge_out_forked26),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_j_137(atax_B7_merge_out_j_137),
        .in_stall_in(atax_B7_branch_out_stall_out),
        .in_unnamed_atax18_atax_avm_readdata(in_unnamed_atax18_atax_avm_readdata),
        .in_unnamed_atax18_atax_avm_readdatavalid(in_unnamed_atax18_atax_avm_readdatavalid),
        .in_unnamed_atax18_atax_avm_waitrequest(in_unnamed_atax18_atax_avm_waitrequest),
        .in_unnamed_atax18_atax_avm_writeack(in_unnamed_atax18_atax_avm_writeack),
        .in_unnamed_atax19_atax_avm_readdata(in_unnamed_atax19_atax_avm_readdata),
        .in_unnamed_atax19_atax_avm_readdatavalid(in_unnamed_atax19_atax_avm_readdatavalid),
        .in_unnamed_atax19_atax_avm_waitrequest(in_unnamed_atax19_atax_avm_waitrequest),
        .in_unnamed_atax19_atax_avm_writeack(in_unnamed_atax19_atax_avm_writeack),
        .in_valid_in(atax_B7_merge_out_valid_out),
        .out_c0_exe188(bb_atax_B7_stall_region_out_c0_exe188),
        .out_cmp25(bb_atax_B7_stall_region_out_cmp25),
        .out_inc38(bb_atax_B7_stall_region_out_inc38),
        .out_intel_reserved_ffwd_11_0(bb_atax_B7_stall_region_out_intel_reserved_ffwd_11_0),
        .out_stall_out(bb_atax_B7_stall_region_out_stall_out),
        .out_unnamed_atax18_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_address),
        .out_unnamed_atax18_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_burstcount),
        .out_unnamed_atax18_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_byteenable),
        .out_unnamed_atax18_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_enable),
        .out_unnamed_atax18_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_read),
        .out_unnamed_atax18_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_write),
        .out_unnamed_atax18_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_writedata),
        .out_unnamed_atax19_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_address),
        .out_unnamed_atax19_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_burstcount),
        .out_unnamed_atax19_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_byteenable),
        .out_unnamed_atax19_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_enable),
        .out_unnamed_atax19_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_read),
        .out_unnamed_atax19_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_write),
        .out_unnamed_atax19_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_writedata),
        .out_valid_out(bb_atax_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B7_branch(BLACKBOX,2)
    atax_B7_branch theatax_B7_branch (
        .in_c0_exe188(bb_atax_B7_stall_region_out_c0_exe188),
        .in_cmp25(bb_atax_B7_stall_region_out_cmp25),
        .in_inc38(bb_atax_B7_stall_region_out_inc38),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B7_stall_region_out_valid_out),
        .out_c0_exe188(atax_B7_branch_out_c0_exe188),
        .out_inc38(atax_B7_branch_out_inc38),
        .out_stall_out(atax_B7_branch_out_stall_out),
        .out_valid_out_0(atax_B7_branch_out_valid_out_0),
        .out_valid_out_1(atax_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe188(GPOUT,26)
    assign out_c0_exe188 = atax_B7_branch_out_c0_exe188;

    // out_inc38(GPOUT,27)
    assign out_inc38 = atax_B7_branch_out_inc38;

    // out_intel_reserved_ffwd_11_0(GPOUT,28)
    assign out_intel_reserved_ffwd_11_0 = bb_atax_B7_stall_region_out_intel_reserved_ffwd_11_0;

    // out_stall_in_0(GPOUT,29)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = atax_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,31)
    assign out_stall_out_1 = atax_B7_merge_out_stall_out_1;

    // out_unnamed_atax18_atax_avm_address(GPOUT,32)
    assign out_unnamed_atax18_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_address;

    // out_unnamed_atax18_atax_avm_burstcount(GPOUT,33)
    assign out_unnamed_atax18_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_burstcount;

    // out_unnamed_atax18_atax_avm_byteenable(GPOUT,34)
    assign out_unnamed_atax18_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_byteenable;

    // out_unnamed_atax18_atax_avm_enable(GPOUT,35)
    assign out_unnamed_atax18_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_enable;

    // out_unnamed_atax18_atax_avm_read(GPOUT,36)
    assign out_unnamed_atax18_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_read;

    // out_unnamed_atax18_atax_avm_write(GPOUT,37)
    assign out_unnamed_atax18_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_write;

    // out_unnamed_atax18_atax_avm_writedata(GPOUT,38)
    assign out_unnamed_atax18_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax18_atax_avm_writedata;

    // out_unnamed_atax19_atax_avm_address(GPOUT,39)
    assign out_unnamed_atax19_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_address;

    // out_unnamed_atax19_atax_avm_burstcount(GPOUT,40)
    assign out_unnamed_atax19_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_burstcount;

    // out_unnamed_atax19_atax_avm_byteenable(GPOUT,41)
    assign out_unnamed_atax19_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_byteenable;

    // out_unnamed_atax19_atax_avm_enable(GPOUT,42)
    assign out_unnamed_atax19_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_enable;

    // out_unnamed_atax19_atax_avm_read(GPOUT,43)
    assign out_unnamed_atax19_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_read;

    // out_unnamed_atax19_atax_avm_write(GPOUT,44)
    assign out_unnamed_atax19_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_write;

    // out_unnamed_atax19_atax_avm_writedata(GPOUT,45)
    assign out_unnamed_atax19_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax19_atax_avm_writedata;

    // out_valid_in_0(GPOUT,46)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,47)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,48)
    assign out_valid_out_0 = atax_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,49)
    assign out_valid_out_1 = atax_B7_branch_out_valid_out_1;

endmodule
