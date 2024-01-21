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

// SystemVerilog created from bb_atax_B8
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B8 (
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [31:0] in_memdep_5_atax_avm_readdata,
    input wire [0:0] in_memdep_5_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_5_atax_avm_waitrequest,
    input wire [0:0] in_memdep_5_atax_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [31:0] out_memdep_5_atax_avm_address,
    output wire [0:0] out_memdep_5_atax_avm_burstcount,
    output wire [3:0] out_memdep_5_atax_avm_byteenable,
    output wire [0:0] out_memdep_5_atax_avm_enable,
    output wire [0:0] out_memdep_5_atax_avm_read,
    output wire [0:0] out_memdep_5_atax_avm_write,
    output wire [31:0] out_memdep_5_atax_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B8_branch_out_stall_out;
    wire [0:0] atax_B8_branch_out_valid_out_0;
    wire [0:0] atax_B8_merge_out_stall_out_0;
    wire [0:0] atax_B8_merge_out_valid_out;
    wire [31:0] bb_atax_B8_stall_region_out_intel_reserved_ffwd_12_0;
    wire [31:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_address;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_enable;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_read;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_write;
    wire [31:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_writedata;
    wire [0:0] bb_atax_B8_stall_region_out_stall_out;
    wire [0:0] bb_atax_B8_stall_region_out_valid_out;


    // atax_B8_merge(BLACKBOX,3)
    atax_B8_merge theatax_B8_merge (
        .in_stall_in(bb_atax_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(atax_B8_merge_out_stall_out_0),
        .out_valid_out(atax_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B8_branch(BLACKBOX,2)
    atax_B8_branch theatax_B8_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B8_stall_region_out_valid_out),
        .out_stall_out(atax_B8_branch_out_stall_out),
        .out_valid_out_0(atax_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B8_stall_region(BLACKBOX,4)
    atax_bb_B8_stall_region thebb_atax_B8_stall_region (
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_memdep_5_atax_avm_readdata(in_memdep_5_atax_avm_readdata),
        .in_memdep_5_atax_avm_readdatavalid(in_memdep_5_atax_avm_readdatavalid),
        .in_memdep_5_atax_avm_waitrequest(in_memdep_5_atax_avm_waitrequest),
        .in_memdep_5_atax_avm_writeack(in_memdep_5_atax_avm_writeack),
        .in_stall_in(atax_B8_branch_out_stall_out),
        .in_valid_in(atax_B8_merge_out_valid_out),
        .out_intel_reserved_ffwd_12_0(bb_atax_B8_stall_region_out_intel_reserved_ffwd_12_0),
        .out_memdep_5_atax_avm_address(bb_atax_B8_stall_region_out_memdep_5_atax_avm_address),
        .out_memdep_5_atax_avm_burstcount(bb_atax_B8_stall_region_out_memdep_5_atax_avm_burstcount),
        .out_memdep_5_atax_avm_byteenable(bb_atax_B8_stall_region_out_memdep_5_atax_avm_byteenable),
        .out_memdep_5_atax_avm_enable(bb_atax_B8_stall_region_out_memdep_5_atax_avm_enable),
        .out_memdep_5_atax_avm_read(bb_atax_B8_stall_region_out_memdep_5_atax_avm_read),
        .out_memdep_5_atax_avm_write(bb_atax_B8_stall_region_out_memdep_5_atax_avm_write),
        .out_memdep_5_atax_avm_writedata(bb_atax_B8_stall_region_out_memdep_5_atax_avm_writedata),
        .out_stall_out(bb_atax_B8_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_12_0(GPOUT,15)
    assign out_intel_reserved_ffwd_12_0 = bb_atax_B8_stall_region_out_intel_reserved_ffwd_12_0;

    // out_memdep_5_atax_avm_address(GPOUT,16)
    assign out_memdep_5_atax_avm_address = bb_atax_B8_stall_region_out_memdep_5_atax_avm_address;

    // out_memdep_5_atax_avm_burstcount(GPOUT,17)
    assign out_memdep_5_atax_avm_burstcount = bb_atax_B8_stall_region_out_memdep_5_atax_avm_burstcount;

    // out_memdep_5_atax_avm_byteenable(GPOUT,18)
    assign out_memdep_5_atax_avm_byteenable = bb_atax_B8_stall_region_out_memdep_5_atax_avm_byteenable;

    // out_memdep_5_atax_avm_enable(GPOUT,19)
    assign out_memdep_5_atax_avm_enable = bb_atax_B8_stall_region_out_memdep_5_atax_avm_enable;

    // out_memdep_5_atax_avm_read(GPOUT,20)
    assign out_memdep_5_atax_avm_read = bb_atax_B8_stall_region_out_memdep_5_atax_avm_read;

    // out_memdep_5_atax_avm_write(GPOUT,21)
    assign out_memdep_5_atax_avm_write = bb_atax_B8_stall_region_out_memdep_5_atax_avm_write;

    // out_memdep_5_atax_avm_writedata(GPOUT,22)
    assign out_memdep_5_atax_avm_writedata = bb_atax_B8_stall_region_out_memdep_5_atax_avm_writedata;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = atax_B8_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,24)
    assign out_valid_out_0 = atax_B8_branch_out_valid_out_0;

endmodule
