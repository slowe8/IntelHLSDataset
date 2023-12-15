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

// SystemVerilog created from atax_bb_B3
// SystemVerilog created on Wed Dec 13 00:37:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B3 (
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_idxprom,
    output wire [31:0] out_memdep_3_atax_avm_address,
    output wire [0:0] out_memdep_3_atax_avm_burstcount,
    output wire [3:0] out_memdep_3_atax_avm_byteenable,
    output wire [0:0] out_memdep_3_atax_avm_enable,
    output wire [0:0] out_memdep_3_atax_avm_read,
    output wire [0:0] out_memdep_3_atax_avm_write,
    output wire [31:0] out_memdep_3_atax_avm_writedata,
    output wire [31:0] out_memdep_4_atax_avm_address,
    output wire [0:0] out_memdep_4_atax_avm_burstcount,
    output wire [3:0] out_memdep_4_atax_avm_byteenable,
    output wire [0:0] out_memdep_4_atax_avm_enable,
    output wire [0:0] out_memdep_4_atax_avm_read,
    output wire [0:0] out_memdep_4_atax_avm_write,
    output wire [31:0] out_memdep_4_atax_avm_writedata,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_notcmp77,
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
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked86_0,
    input wire [0:0] in_forked86_1,
    input wire [31:0] in_memdep_3_atax_avm_readdata,
    input wire [0:0] in_memdep_3_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_3_atax_avm_waitrequest,
    input wire [0:0] in_memdep_3_atax_avm_writeack,
    input wire [31:0] in_memdep_4_atax_avm_readdata,
    input wire [0:0] in_memdep_4_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_4_atax_avm_waitrequest,
    input wire [0:0] in_memdep_4_atax_avm_writeack,
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
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B3_branch_out_idxprom;
    wire [0:0] atax_B3_branch_out_notcmp77;
    wire [0:0] atax_B3_branch_out_stall_out;
    wire [0:0] atax_B3_branch_out_valid_out_0;
    wire [0:0] atax_B3_merge_out_forked86;
    wire [0:0] atax_B3_merge_out_stall_out_0;
    wire [0:0] atax_B3_merge_out_stall_out_1;
    wire [0:0] atax_B3_merge_out_valid_out;
    wire [0:0] bb_atax_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_atax0_exiting_stall_out;
    wire [0:0] bb_atax_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_atax0_exiting_valid_out;
    wire [63:0] bb_atax_B3_stall_region_out_idxprom;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_address;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_enable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_read;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_write;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_3_atax_avm_writedata;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_4_atax_avm_address;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_4_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_stall_region_out_memdep_4_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_4_atax_avm_enable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_4_atax_avm_read;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_4_atax_avm_write;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_4_atax_avm_writedata;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_stall_region_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B3_stall_region_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B3_stall_region_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B3_stall_region_out_notcmp77;
    wire [0:0] bb_atax_B3_stall_region_out_pipeline_valid_out;
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
        .in_idxprom(bb_atax_B3_stall_region_out_idxprom),
        .in_notcmp77(bb_atax_B3_stall_region_out_notcmp77),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B3_stall_region_out_valid_out),
        .out_idxprom(atax_B3_branch_out_idxprom),
        .out_notcmp77(atax_B3_branch_out_notcmp77),
        .out_stall_out(atax_B3_branch_out_stall_out),
        .out_valid_out_0(atax_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B3_merge(BLACKBOX,3)
    atax_B3_merge theatax_B3_merge (
        .in_forked86_0(in_forked86_0),
        .in_forked86_1(in_forked86_1),
        .in_stall_in(bb_atax_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked86(atax_B3_merge_out_forked86),
        .out_stall_out_0(atax_B3_merge_out_stall_out_0),
        .out_stall_out_1(atax_B3_merge_out_stall_out_1),
        .out_valid_out(atax_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3_stall_region(BLACKBOX,4)
    atax_bb_B3_stall_region thebb_atax_B3_stall_region (
        .in_flush(in_flush),
        .in_forked86(atax_B3_merge_out_forked86),
        .in_memdep_3_atax_avm_readdata(in_memdep_3_atax_avm_readdata),
        .in_memdep_3_atax_avm_readdatavalid(in_memdep_3_atax_avm_readdatavalid),
        .in_memdep_3_atax_avm_waitrequest(in_memdep_3_atax_avm_waitrequest),
        .in_memdep_3_atax_avm_writeack(in_memdep_3_atax_avm_writeack),
        .in_memdep_4_atax_avm_readdata(in_memdep_4_atax_avm_readdata),
        .in_memdep_4_atax_avm_readdatavalid(in_memdep_4_atax_avm_readdatavalid),
        .in_memdep_4_atax_avm_waitrequest(in_memdep_4_atax_avm_waitrequest),
        .in_memdep_4_atax_avm_writeack(in_memdep_4_atax_avm_writeack),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B3_branch_out_stall_out),
        .in_unnamed_atax6_atax_avm_readdata(in_unnamed_atax6_atax_avm_readdata),
        .in_unnamed_atax6_atax_avm_readdatavalid(in_unnamed_atax6_atax_avm_readdatavalid),
        .in_unnamed_atax6_atax_avm_waitrequest(in_unnamed_atax6_atax_avm_waitrequest),
        .in_unnamed_atax6_atax_avm_writeack(in_unnamed_atax6_atax_avm_writeack),
        .in_valid_in(atax_B3_merge_out_valid_out),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_atax0_exiting_stall_out(bb_atax_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_atax0_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_atax0_exiting_valid_out(bb_atax_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_atax0_exiting_valid_out),
        .out_idxprom(bb_atax_B3_stall_region_out_idxprom),
        .out_memdep_3_atax_avm_address(bb_atax_B3_stall_region_out_memdep_3_atax_avm_address),
        .out_memdep_3_atax_avm_burstcount(bb_atax_B3_stall_region_out_memdep_3_atax_avm_burstcount),
        .out_memdep_3_atax_avm_byteenable(bb_atax_B3_stall_region_out_memdep_3_atax_avm_byteenable),
        .out_memdep_3_atax_avm_enable(bb_atax_B3_stall_region_out_memdep_3_atax_avm_enable),
        .out_memdep_3_atax_avm_read(bb_atax_B3_stall_region_out_memdep_3_atax_avm_read),
        .out_memdep_3_atax_avm_write(bb_atax_B3_stall_region_out_memdep_3_atax_avm_write),
        .out_memdep_3_atax_avm_writedata(bb_atax_B3_stall_region_out_memdep_3_atax_avm_writedata),
        .out_memdep_4_atax_avm_address(bb_atax_B3_stall_region_out_memdep_4_atax_avm_address),
        .out_memdep_4_atax_avm_burstcount(bb_atax_B3_stall_region_out_memdep_4_atax_avm_burstcount),
        .out_memdep_4_atax_avm_byteenable(bb_atax_B3_stall_region_out_memdep_4_atax_avm_byteenable),
        .out_memdep_4_atax_avm_enable(bb_atax_B3_stall_region_out_memdep_4_atax_avm_enable),
        .out_memdep_4_atax_avm_read(bb_atax_B3_stall_region_out_memdep_4_atax_avm_read),
        .out_memdep_4_atax_avm_write(bb_atax_B3_stall_region_out_memdep_4_atax_avm_write),
        .out_memdep_4_atax_avm_writedata(bb_atax_B3_stall_region_out_memdep_4_atax_avm_writedata),
        .out_memdep_atax_avm_address(bb_atax_B3_stall_region_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B3_stall_region_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B3_stall_region_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B3_stall_region_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B3_stall_region_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B3_stall_region_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B3_stall_region_out_memdep_atax_avm_writedata),
        .out_notcmp77(bb_atax_B3_stall_region_out_notcmp77),
        .out_pipeline_valid_out(bb_atax_B3_stall_region_out_pipeline_valid_out),
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

    // out_exiting_stall_out(GPOUT,5)
    assign out_exiting_stall_out = bb_atax_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_atax0_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,6)
    assign out_exiting_valid_out = bb_atax_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_atax0_exiting_valid_out;

    // out_idxprom(GPOUT,7)
    assign out_idxprom = atax_B3_branch_out_idxprom;

    // out_memdep_3_atax_avm_address(GPOUT,8)
    assign out_memdep_3_atax_avm_address = bb_atax_B3_stall_region_out_memdep_3_atax_avm_address;

    // out_memdep_3_atax_avm_burstcount(GPOUT,9)
    assign out_memdep_3_atax_avm_burstcount = bb_atax_B3_stall_region_out_memdep_3_atax_avm_burstcount;

    // out_memdep_3_atax_avm_byteenable(GPOUT,10)
    assign out_memdep_3_atax_avm_byteenable = bb_atax_B3_stall_region_out_memdep_3_atax_avm_byteenable;

    // out_memdep_3_atax_avm_enable(GPOUT,11)
    assign out_memdep_3_atax_avm_enable = bb_atax_B3_stall_region_out_memdep_3_atax_avm_enable;

    // out_memdep_3_atax_avm_read(GPOUT,12)
    assign out_memdep_3_atax_avm_read = bb_atax_B3_stall_region_out_memdep_3_atax_avm_read;

    // out_memdep_3_atax_avm_write(GPOUT,13)
    assign out_memdep_3_atax_avm_write = bb_atax_B3_stall_region_out_memdep_3_atax_avm_write;

    // out_memdep_3_atax_avm_writedata(GPOUT,14)
    assign out_memdep_3_atax_avm_writedata = bb_atax_B3_stall_region_out_memdep_3_atax_avm_writedata;

    // out_memdep_4_atax_avm_address(GPOUT,15)
    assign out_memdep_4_atax_avm_address = bb_atax_B3_stall_region_out_memdep_4_atax_avm_address;

    // out_memdep_4_atax_avm_burstcount(GPOUT,16)
    assign out_memdep_4_atax_avm_burstcount = bb_atax_B3_stall_region_out_memdep_4_atax_avm_burstcount;

    // out_memdep_4_atax_avm_byteenable(GPOUT,17)
    assign out_memdep_4_atax_avm_byteenable = bb_atax_B3_stall_region_out_memdep_4_atax_avm_byteenable;

    // out_memdep_4_atax_avm_enable(GPOUT,18)
    assign out_memdep_4_atax_avm_enable = bb_atax_B3_stall_region_out_memdep_4_atax_avm_enable;

    // out_memdep_4_atax_avm_read(GPOUT,19)
    assign out_memdep_4_atax_avm_read = bb_atax_B3_stall_region_out_memdep_4_atax_avm_read;

    // out_memdep_4_atax_avm_write(GPOUT,20)
    assign out_memdep_4_atax_avm_write = bb_atax_B3_stall_region_out_memdep_4_atax_avm_write;

    // out_memdep_4_atax_avm_writedata(GPOUT,21)
    assign out_memdep_4_atax_avm_writedata = bb_atax_B3_stall_region_out_memdep_4_atax_avm_writedata;

    // out_memdep_atax_avm_address(GPOUT,22)
    assign out_memdep_atax_avm_address = bb_atax_B3_stall_region_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,23)
    assign out_memdep_atax_avm_burstcount = bb_atax_B3_stall_region_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,24)
    assign out_memdep_atax_avm_byteenable = bb_atax_B3_stall_region_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,25)
    assign out_memdep_atax_avm_enable = bb_atax_B3_stall_region_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,26)
    assign out_memdep_atax_avm_read = bb_atax_B3_stall_region_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,27)
    assign out_memdep_atax_avm_write = bb_atax_B3_stall_region_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,28)
    assign out_memdep_atax_avm_writedata = bb_atax_B3_stall_region_out_memdep_atax_avm_writedata;

    // out_notcmp77(GPOUT,29)
    assign out_notcmp77 = atax_B3_branch_out_notcmp77;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = atax_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,31)
    assign out_stall_out_1 = atax_B3_merge_out_stall_out_1;

    // out_unnamed_atax6_atax_avm_address(GPOUT,32)
    assign out_unnamed_atax6_atax_avm_address = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_address;

    // out_unnamed_atax6_atax_avm_burstcount(GPOUT,33)
    assign out_unnamed_atax6_atax_avm_burstcount = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_burstcount;

    // out_unnamed_atax6_atax_avm_byteenable(GPOUT,34)
    assign out_unnamed_atax6_atax_avm_byteenable = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_byteenable;

    // out_unnamed_atax6_atax_avm_enable(GPOUT,35)
    assign out_unnamed_atax6_atax_avm_enable = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_enable;

    // out_unnamed_atax6_atax_avm_read(GPOUT,36)
    assign out_unnamed_atax6_atax_avm_read = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_read;

    // out_unnamed_atax6_atax_avm_write(GPOUT,37)
    assign out_unnamed_atax6_atax_avm_write = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_write;

    // out_unnamed_atax6_atax_avm_writedata(GPOUT,38)
    assign out_unnamed_atax6_atax_avm_writedata = bb_atax_B3_stall_region_out_unnamed_atax6_atax_avm_writedata;

    // out_valid_in_0(GPOUT,39)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,40)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = atax_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,43)
    assign out_pipeline_valid_out = bb_atax_B3_stall_region_out_pipeline_valid_out;

endmodule
