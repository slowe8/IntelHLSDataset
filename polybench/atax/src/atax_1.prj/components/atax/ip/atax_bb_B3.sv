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

// SystemVerilog created from bb_atax_B3
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B3 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_memdep_2_atax_avm_readdata,
    input wire [0:0] in_memdep_2_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_2_atax_avm_waitrequest,
    input wire [0:0] in_memdep_2_atax_avm_writeack,
    input wire [31:0] in_memdep_3_atax_avm_readdata,
    input wire [0:0] in_memdep_3_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_3_atax_avm_waitrequest,
    input wire [0:0] in_memdep_3_atax_avm_writeack,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [63:0] in_unnamed_atax6_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax6_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax6_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax6_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_memdep_2_atax_avm_address,
    output wire [0:0] out_memdep_2_atax_avm_burstcount,
    output wire [3:0] out_memdep_2_atax_avm_byteenable,
    output wire [0:0] out_memdep_2_atax_avm_enable,
    output wire [0:0] out_memdep_2_atax_avm_read,
    output wire [0:0] out_memdep_2_atax_avm_write,
    output wire [31:0] out_memdep_2_atax_avm_writedata,
    output wire [31:0] out_memdep_3_atax_avm_address,
    output wire [0:0] out_memdep_3_atax_avm_burstcount,
    output wire [3:0] out_memdep_3_atax_avm_byteenable,
    output wire [0:0] out_memdep_3_atax_avm_enable,
    output wire [0:0] out_memdep_3_atax_avm_read,
    output wire [0:0] out_memdep_3_atax_avm_write,
    output wire [31:0] out_memdep_3_atax_avm_writedata,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_atax6_atax_avm_address,
    output wire [0:0] out_unnamed_atax6_atax_avm_burstcount,
    output wire [7:0] out_unnamed_atax6_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax6_atax_avm_enable,
    output wire [0:0] out_unnamed_atax6_atax_avm_read,
    output wire [0:0] out_unnamed_atax6_atax_avm_write,
    output wire [63:0] out_unnamed_atax6_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B3_branch_out_stall_out;
    wire [0:0] atax_B3_branch_out_valid_out_0;
    wire [0:0] atax_B3_merge_out_forked;
    wire [0:0] atax_B3_merge_out_stall_out_0;
    wire [0:0] atax_B3_merge_out_stall_out_1;
    wire [0:0] atax_B3_merge_out_valid_out;
    wire [31:0] bb_atax_B3_stall_region_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_atax_B3_stall_region_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_2_atax_avm_address;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_2_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_stall_region_out_memdep_2_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_2_atax_avm_enable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_2_atax_avm_read;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_2_atax_avm_write;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_2_atax_avm_writedata;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_address;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_enable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_read;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_write;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_writedata;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_stall_region_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B3_stall_region_out_stall_out;
    wire [63:0] bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_address;
    wire [0:0] bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_burstcount;
    wire [7:0] bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_enable;
    wire [0:0] bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_read;
    wire [0:0] bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_write;
    wire [63:0] bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_writedata;
    wire [0:0] bb_atax_B3_stall_region_out_valid_out;


    // atax_B3_branch(BLACKBOX,2)
    atax_B3_branch theatax_B3_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B3_stall_region_out_valid_out),
        .out_stall_out(atax_B3_branch_out_stall_out),
        .out_valid_out_0(atax_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B3_merge(BLACKBOX,3)
    atax_B3_merge theatax_B3_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_atax_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(atax_B3_merge_out_forked),
        .out_stall_out_0(atax_B3_merge_out_stall_out_0),
        .out_stall_out_1(atax_B3_merge_out_stall_out_1),
        .out_valid_out(atax_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3_stall_region(BLACKBOX,4)
    atax_bb_B3_stall_region thebb_atax_B3_stall_region (
        .in_flush(in_flush),
        .in_forked(atax_B3_merge_out_forked),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_memdep_2_atax_avm_readdata(in_memdep_2_atax_avm_readdata),
        .in_memdep_2_atax_avm_readdatavalid(in_memdep_2_atax_avm_readdatavalid),
        .in_memdep_2_atax_avm_waitrequest(in_memdep_2_atax_avm_waitrequest),
        .in_memdep_2_atax_avm_writeack(in_memdep_2_atax_avm_writeack),
        .in_memdep_3_atax_avm_readdata(in_memdep_3_atax_avm_readdata),
        .in_memdep_3_atax_avm_readdatavalid(in_memdep_3_atax_avm_readdatavalid),
        .in_memdep_3_atax_avm_waitrequest(in_memdep_3_atax_avm_waitrequest),
        .in_memdep_3_atax_avm_writeack(in_memdep_3_atax_avm_writeack),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_stall_in(atax_B3_branch_out_stall_out),
        .in_unnamed_atax6_atax_avm_readdata(in_unnamed_atax6_atax_avm_readdata),
        .in_unnamed_atax6_atax_avm_readdatavalid(in_unnamed_atax6_atax_avm_readdatavalid),
        .in_unnamed_atax6_atax_avm_waitrequest(in_unnamed_atax6_atax_avm_waitrequest),
        .in_unnamed_atax6_atax_avm_writeack(in_unnamed_atax6_atax_avm_writeack),
        .in_valid_in(atax_B3_merge_out_valid_out),
        .out_intel_reserved_ffwd_3_0(bb_atax_B3_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_atax_B3_stall_region_out_intel_reserved_ffwd_4_0),
        .out_memdep_2_atax_avm_address(bb_atax_B3_stall_region_out_memdep_2_atax_avm_address),
        .out_memdep_2_atax_avm_burstcount(bb_atax_B3_stall_region_out_memdep_2_atax_avm_burstcount),
        .out_memdep_2_atax_avm_byteenable(bb_atax_B3_stall_region_out_memdep_2_atax_avm_byteenable),
        .out_memdep_2_atax_avm_enable(bb_atax_B3_stall_region_out_memdep_2_atax_avm_enable),
        .out_memdep_2_atax_avm_read(bb_atax_B3_stall_region_out_memdep_2_atax_avm_read),
        .out_memdep_2_atax_avm_write(bb_atax_B3_stall_region_out_memdep_2_atax_avm_write),
        .out_memdep_2_atax_avm_writedata(bb_atax_B3_stall_region_out_memdep_2_atax_avm_writedata),
        .out_memdep_3_atax_avm_address(bb_atax_B3_stall_region_out_memdep_3_atax_avm_address),
        .out_memdep_3_atax_avm_burstcount(bb_atax_B3_stall_region_out_memdep_3_atax_avm_burstcount),
        .out_memdep_3_atax_avm_byteenable(bb_atax_B3_stall_region_out_memdep_3_atax_avm_byteenable),
        .out_memdep_3_atax_avm_enable(bb_atax_B3_stall_region_out_memdep_3_atax_avm_enable),
        .out_memdep_3_atax_avm_read(bb_atax_B3_stall_region_out_memdep_3_atax_avm_read),
        .out_memdep_3_atax_avm_write(bb_atax_B3_stall_region_out_memdep_3_atax_avm_write),
        .out_memdep_3_atax_avm_writedata(bb_atax_B3_stall_region_out_memdep_3_atax_avm_writedata),
        .out_memdep_atax_avm_address(bb_atax_B3_stall_region_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B3_stall_region_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B3_stall_region_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B3_stall_region_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B3_stall_region_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B3_stall_region_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B3_stall_region_out_memdep_atax_avm_writedata),
        .out_stall_out(bb_atax_B3_stall_region_out_stall_out),
        .out_unnamed_atax6_atax_avm_address(bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_address),
        .out_unnamed_atax6_atax_avm_burstcount(bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_burstcount),
        .out_unnamed_atax6_atax_avm_byteenable(bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_byteenable),
        .out_unnamed_atax6_atax_avm_enable(bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_enable),
        .out_unnamed_atax6_atax_avm_read(bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_read),
        .out_unnamed_atax6_atax_avm_write(bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_write),
        .out_unnamed_atax6_atax_avm_writedata(bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_writedata),
        .out_valid_out(bb_atax_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_3_0(GPOUT,29)
    assign out_intel_reserved_ffwd_3_0 = bb_atax_B3_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,30)
    assign out_intel_reserved_ffwd_4_0 = bb_atax_B3_stall_region_out_intel_reserved_ffwd_4_0;

    // out_memdep_2_atax_avm_address(GPOUT,31)
    assign out_memdep_2_atax_avm_address = bb_atax_B3_stall_region_out_memdep_2_atax_avm_address;

    // out_memdep_2_atax_avm_burstcount(GPOUT,32)
    assign out_memdep_2_atax_avm_burstcount = bb_atax_B3_stall_region_out_memdep_2_atax_avm_burstcount;

    // out_memdep_2_atax_avm_byteenable(GPOUT,33)
    assign out_memdep_2_atax_avm_byteenable = bb_atax_B3_stall_region_out_memdep_2_atax_avm_byteenable;

    // out_memdep_2_atax_avm_enable(GPOUT,34)
    assign out_memdep_2_atax_avm_enable = bb_atax_B3_stall_region_out_memdep_2_atax_avm_enable;

    // out_memdep_2_atax_avm_read(GPOUT,35)
    assign out_memdep_2_atax_avm_read = bb_atax_B3_stall_region_out_memdep_2_atax_avm_read;

    // out_memdep_2_atax_avm_write(GPOUT,36)
    assign out_memdep_2_atax_avm_write = bb_atax_B3_stall_region_out_memdep_2_atax_avm_write;

    // out_memdep_2_atax_avm_writedata(GPOUT,37)
    assign out_memdep_2_atax_avm_writedata = bb_atax_B3_stall_region_out_memdep_2_atax_avm_writedata;

    // out_memdep_3_atax_avm_address(GPOUT,38)
    assign out_memdep_3_atax_avm_address = bb_atax_B3_stall_region_out_memdep_3_atax_avm_address;

    // out_memdep_3_atax_avm_burstcount(GPOUT,39)
    assign out_memdep_3_atax_avm_burstcount = bb_atax_B3_stall_region_out_memdep_3_atax_avm_burstcount;

    // out_memdep_3_atax_avm_byteenable(GPOUT,40)
    assign out_memdep_3_atax_avm_byteenable = bb_atax_B3_stall_region_out_memdep_3_atax_avm_byteenable;

    // out_memdep_3_atax_avm_enable(GPOUT,41)
    assign out_memdep_3_atax_avm_enable = bb_atax_B3_stall_region_out_memdep_3_atax_avm_enable;

    // out_memdep_3_atax_avm_read(GPOUT,42)
    assign out_memdep_3_atax_avm_read = bb_atax_B3_stall_region_out_memdep_3_atax_avm_read;

    // out_memdep_3_atax_avm_write(GPOUT,43)
    assign out_memdep_3_atax_avm_write = bb_atax_B3_stall_region_out_memdep_3_atax_avm_write;

    // out_memdep_3_atax_avm_writedata(GPOUT,44)
    assign out_memdep_3_atax_avm_writedata = bb_atax_B3_stall_region_out_memdep_3_atax_avm_writedata;

    // out_memdep_atax_avm_address(GPOUT,45)
    assign out_memdep_atax_avm_address = bb_atax_B3_stall_region_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,46)
    assign out_memdep_atax_avm_burstcount = bb_atax_B3_stall_region_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,47)
    assign out_memdep_atax_avm_byteenable = bb_atax_B3_stall_region_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,48)
    assign out_memdep_atax_avm_enable = bb_atax_B3_stall_region_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,49)
    assign out_memdep_atax_avm_read = bb_atax_B3_stall_region_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,50)
    assign out_memdep_atax_avm_write = bb_atax_B3_stall_region_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,51)
    assign out_memdep_atax_avm_writedata = bb_atax_B3_stall_region_out_memdep_atax_avm_writedata;

    // out_stall_out_0(GPOUT,52)
    assign out_stall_out_0 = atax_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,53)
    assign out_stall_out_1 = atax_B3_merge_out_stall_out_1;

    // out_unnamed_atax6_atax_avm_address(GPOUT,54)
    assign out_unnamed_atax6_atax_avm_address = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_address;

    // out_unnamed_atax6_atax_avm_burstcount(GPOUT,55)
    assign out_unnamed_atax6_atax_avm_burstcount = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_burstcount;

    // out_unnamed_atax6_atax_avm_byteenable(GPOUT,56)
    assign out_unnamed_atax6_atax_avm_byteenable = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_byteenable;

    // out_unnamed_atax6_atax_avm_enable(GPOUT,57)
    assign out_unnamed_atax6_atax_avm_enable = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_enable;

    // out_unnamed_atax6_atax_avm_read(GPOUT,58)
    assign out_unnamed_atax6_atax_avm_read = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_read;

    // out_unnamed_atax6_atax_avm_write(GPOUT,59)
    assign out_unnamed_atax6_atax_avm_write = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_write;

    // out_unnamed_atax6_atax_avm_writedata(GPOUT,60)
    assign out_unnamed_atax6_atax_avm_writedata = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_writedata;

    // out_valid_in_0(GPOUT,61)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,62)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = atax_B3_branch_out_valid_out_0;

endmodule
