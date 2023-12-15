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

// SystemVerilog created from atax_bb_B7
// SystemVerilog created on Wed Dec 13 00:14:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B7 (
    input wire [63:0] in_arrayidx2812149_0,
    input wire [63:0] in_arrayidx2812149_1,
    input wire [31:0] in_arrayidx28_promoted11150_0,
    input wire [31:0] in_arrayidx28_promoted11150_1,
    input wire [0:0] in_exitcond57151_0,
    input wire [0:0] in_exitcond57151_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked124147_0,
    input wire [0:0] in_forked124147_1,
    input wire [0:0] in_forked78_0,
    input wire [0:0] in_forked78_1,
    input wire [63:0] in_idxprom27148_0,
    input wire [63:0] in_idxprom27148_1,
    input wire [0:0] in_notcmp93152_0,
    input wire [0:0] in_notcmp93152_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [255:0] in_unnamed_atax16_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax16_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax16_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax16_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax17_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax17_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax17_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax17_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe2203,
    output wire [31:0] out_c0_exe3204,
    output wire [0:0] out_c0_exe5206,
    output wire [63:0] out_c0_exe6207,
    output wire [0:0] out_c0_exe7208,
    output wire [0:0] out_c0_exe8209,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax16_atax_avm_address,
    output wire [0:0] out_unnamed_atax16_atax_avm_burstcount,
    output wire [31:0] out_unnamed_atax16_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax16_atax_avm_enable,
    output wire [0:0] out_unnamed_atax16_atax_avm_read,
    output wire [0:0] out_unnamed_atax16_atax_avm_write,
    output wire [255:0] out_unnamed_atax16_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax17_atax_avm_address,
    output wire [0:0] out_unnamed_atax17_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax17_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax17_atax_avm_enable,
    output wire [0:0] out_unnamed_atax17_atax_avm_read,
    output wire [0:0] out_unnamed_atax17_atax_avm_write,
    output wire [31:0] out_unnamed_atax17_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B7_branch_out_c0_exe2203;
    wire [31:0] atax_B7_branch_out_c0_exe3204;
    wire [0:0] atax_B7_branch_out_c0_exe5206;
    wire [63:0] atax_B7_branch_out_c0_exe6207;
    wire [0:0] atax_B7_branch_out_c0_exe7208;
    wire [0:0] atax_B7_branch_out_c0_exe8209;
    wire [0:0] atax_B7_branch_out_stall_out;
    wire [0:0] atax_B7_branch_out_valid_out_0;
    wire [0:0] atax_B7_branch_out_valid_out_1;
    wire [63:0] atax_B7_merge_out_arrayidx2812149;
    wire [31:0] atax_B7_merge_out_arrayidx28_promoted11150;
    wire [0:0] atax_B7_merge_out_exitcond57151;
    wire [0:0] atax_B7_merge_out_forked124147;
    wire [0:0] atax_B7_merge_out_forked78;
    wire [63:0] atax_B7_merge_out_idxprom27148;
    wire [0:0] atax_B7_merge_out_notcmp93152;
    wire [0:0] atax_B7_merge_out_stall_out_0;
    wire [0:0] atax_B7_merge_out_stall_out_1;
    wire [0:0] atax_B7_merge_out_valid_out;
    wire [0:0] bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_stall_out;
    wire [0:0] bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_valid_out;
    wire [63:0] bb_atax_B7_stall_region_out_c0_exe2203;
    wire [31:0] bb_atax_B7_stall_region_out_c0_exe3204;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe4205;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe5206;
    wire [63:0] bb_atax_B7_stall_region_out_c0_exe6207;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe7208;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe8209;
    wire [0:0] bb_atax_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B7_stall_region_out_stall_out;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_burstcount;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_write;
    wire [255:0] bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_writedata;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_writedata;
    wire [0:0] bb_atax_B7_stall_region_out_valid_out;


    // atax_B7_merge(BLACKBOX,3)
    atax_B7_merge theatax_B7_merge (
        .in_arrayidx2812149_0(in_arrayidx2812149_0),
        .in_arrayidx2812149_1(in_arrayidx2812149_1),
        .in_arrayidx28_promoted11150_0(in_arrayidx28_promoted11150_0),
        .in_arrayidx28_promoted11150_1(in_arrayidx28_promoted11150_1),
        .in_exitcond57151_0(in_exitcond57151_0),
        .in_exitcond57151_1(in_exitcond57151_1),
        .in_forked124147_0(in_forked124147_0),
        .in_forked124147_1(in_forked124147_1),
        .in_forked78_0(in_forked78_0),
        .in_forked78_1(in_forked78_1),
        .in_idxprom27148_0(in_idxprom27148_0),
        .in_idxprom27148_1(in_idxprom27148_1),
        .in_notcmp93152_0(in_notcmp93152_0),
        .in_notcmp93152_1(in_notcmp93152_1),
        .in_stall_in(bb_atax_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx2812149(atax_B7_merge_out_arrayidx2812149),
        .out_arrayidx28_promoted11150(atax_B7_merge_out_arrayidx28_promoted11150),
        .out_exitcond57151(atax_B7_merge_out_exitcond57151),
        .out_forked124147(atax_B7_merge_out_forked124147),
        .out_forked78(atax_B7_merge_out_forked78),
        .out_idxprom27148(atax_B7_merge_out_idxprom27148),
        .out_notcmp93152(atax_B7_merge_out_notcmp93152),
        .out_stall_out_0(atax_B7_merge_out_stall_out_0),
        .out_stall_out_1(atax_B7_merge_out_stall_out_1),
        .out_valid_out(atax_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_stall_region(BLACKBOX,4)
    atax_bb_B7_stall_region thebb_atax_B7_stall_region (
        .in_arrayidx2812149(atax_B7_merge_out_arrayidx2812149),
        .in_arrayidx28_promoted11150(atax_B7_merge_out_arrayidx28_promoted11150),
        .in_exitcond57151(atax_B7_merge_out_exitcond57151),
        .in_flush(in_flush),
        .in_forked124147(atax_B7_merge_out_forked124147),
        .in_forked78(atax_B7_merge_out_forked78),
        .in_idxprom27148(atax_B7_merge_out_idxprom27148),
        .in_notcmp93152(atax_B7_merge_out_notcmp93152),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B7_branch_out_stall_out),
        .in_unnamed_atax16_atax_avm_readdata(in_unnamed_atax16_atax_avm_readdata),
        .in_unnamed_atax16_atax_avm_readdatavalid(in_unnamed_atax16_atax_avm_readdatavalid),
        .in_unnamed_atax16_atax_avm_waitrequest(in_unnamed_atax16_atax_avm_waitrequest),
        .in_unnamed_atax16_atax_avm_writeack(in_unnamed_atax16_atax_avm_writeack),
        .in_unnamed_atax17_atax_avm_readdata(in_unnamed_atax17_atax_avm_readdata),
        .in_unnamed_atax17_atax_avm_readdatavalid(in_unnamed_atax17_atax_avm_readdatavalid),
        .in_unnamed_atax17_atax_avm_waitrequest(in_unnamed_atax17_atax_avm_waitrequest),
        .in_unnamed_atax17_atax_avm_writeack(in_unnamed_atax17_atax_avm_writeack),
        .in_valid_in(atax_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_stall_out(bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_valid_out(bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_valid_out),
        .out_c0_exe2203(bb_atax_B7_stall_region_out_c0_exe2203),
        .out_c0_exe3204(bb_atax_B7_stall_region_out_c0_exe3204),
        .out_c0_exe4205(bb_atax_B7_stall_region_out_c0_exe4205),
        .out_c0_exe5206(bb_atax_B7_stall_region_out_c0_exe5206),
        .out_c0_exe6207(bb_atax_B7_stall_region_out_c0_exe6207),
        .out_c0_exe7208(bb_atax_B7_stall_region_out_c0_exe7208),
        .out_c0_exe8209(bb_atax_B7_stall_region_out_c0_exe8209),
        .out_pipeline_valid_out(bb_atax_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B7_stall_region_out_stall_out),
        .out_unnamed_atax16_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_address),
        .out_unnamed_atax16_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_burstcount),
        .out_unnamed_atax16_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_byteenable),
        .out_unnamed_atax16_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_enable),
        .out_unnamed_atax16_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_read),
        .out_unnamed_atax16_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_write),
        .out_unnamed_atax16_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_writedata),
        .out_unnamed_atax17_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_address),
        .out_unnamed_atax17_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_burstcount),
        .out_unnamed_atax17_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_byteenable),
        .out_unnamed_atax17_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_enable),
        .out_unnamed_atax17_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_read),
        .out_unnamed_atax17_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_write),
        .out_unnamed_atax17_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_writedata),
        .out_valid_out(bb_atax_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B7_branch(BLACKBOX,2)
    atax_B7_branch theatax_B7_branch (
        .in_c0_exe2203(bb_atax_B7_stall_region_out_c0_exe2203),
        .in_c0_exe3204(bb_atax_B7_stall_region_out_c0_exe3204),
        .in_c0_exe4205(bb_atax_B7_stall_region_out_c0_exe4205),
        .in_c0_exe5206(bb_atax_B7_stall_region_out_c0_exe5206),
        .in_c0_exe6207(bb_atax_B7_stall_region_out_c0_exe6207),
        .in_c0_exe7208(bb_atax_B7_stall_region_out_c0_exe7208),
        .in_c0_exe8209(bb_atax_B7_stall_region_out_c0_exe8209),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B7_stall_region_out_valid_out),
        .out_c0_exe2203(atax_B7_branch_out_c0_exe2203),
        .out_c0_exe3204(atax_B7_branch_out_c0_exe3204),
        .out_c0_exe5206(atax_B7_branch_out_c0_exe5206),
        .out_c0_exe6207(atax_B7_branch_out_c0_exe6207),
        .out_c0_exe7208(atax_B7_branch_out_c0_exe7208),
        .out_c0_exe8209(atax_B7_branch_out_c0_exe8209),
        .out_stall_out(atax_B7_branch_out_stall_out),
        .out_valid_out_0(atax_B7_branch_out_valid_out_0),
        .out_valid_out_1(atax_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2203(GPOUT,32)
    assign out_c0_exe2203 = atax_B7_branch_out_c0_exe2203;

    // out_c0_exe3204(GPOUT,33)
    assign out_c0_exe3204 = atax_B7_branch_out_c0_exe3204;

    // out_c0_exe5206(GPOUT,34)
    assign out_c0_exe5206 = atax_B7_branch_out_c0_exe5206;

    // out_c0_exe6207(GPOUT,35)
    assign out_c0_exe6207 = atax_B7_branch_out_c0_exe6207;

    // out_c0_exe7208(GPOUT,36)
    assign out_c0_exe7208 = atax_B7_branch_out_c0_exe7208;

    // out_c0_exe8209(GPOUT,37)
    assign out_c0_exe8209 = atax_B7_branch_out_c0_exe8209;

    // out_exiting_stall_out(GPOUT,38)
    assign out_exiting_stall_out = bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,39)
    assign out_exiting_valid_out = bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_atax6_exiting_valid_out;

    // out_stall_in_0(GPOUT,40)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = atax_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,42)
    assign out_stall_out_1 = atax_B7_merge_out_stall_out_1;

    // out_unnamed_atax16_atax_avm_address(GPOUT,43)
    assign out_unnamed_atax16_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_address;

    // out_unnamed_atax16_atax_avm_burstcount(GPOUT,44)
    assign out_unnamed_atax16_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_burstcount;

    // out_unnamed_atax16_atax_avm_byteenable(GPOUT,45)
    assign out_unnamed_atax16_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_byteenable;

    // out_unnamed_atax16_atax_avm_enable(GPOUT,46)
    assign out_unnamed_atax16_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_enable;

    // out_unnamed_atax16_atax_avm_read(GPOUT,47)
    assign out_unnamed_atax16_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_read;

    // out_unnamed_atax16_atax_avm_write(GPOUT,48)
    assign out_unnamed_atax16_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_write;

    // out_unnamed_atax16_atax_avm_writedata(GPOUT,49)
    assign out_unnamed_atax16_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax16_atax_avm_writedata;

    // out_unnamed_atax17_atax_avm_address(GPOUT,50)
    assign out_unnamed_atax17_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_address;

    // out_unnamed_atax17_atax_avm_burstcount(GPOUT,51)
    assign out_unnamed_atax17_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_burstcount;

    // out_unnamed_atax17_atax_avm_byteenable(GPOUT,52)
    assign out_unnamed_atax17_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_byteenable;

    // out_unnamed_atax17_atax_avm_enable(GPOUT,53)
    assign out_unnamed_atax17_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_enable;

    // out_unnamed_atax17_atax_avm_read(GPOUT,54)
    assign out_unnamed_atax17_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_read;

    // out_unnamed_atax17_atax_avm_write(GPOUT,55)
    assign out_unnamed_atax17_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_write;

    // out_unnamed_atax17_atax_avm_writedata(GPOUT,56)
    assign out_unnamed_atax17_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax17_atax_avm_writedata;

    // out_valid_in_0(GPOUT,57)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,58)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,59)
    assign out_valid_out_0 = atax_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,60)
    assign out_valid_out_1 = atax_B7_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,62)
    assign out_pipeline_valid_out = bb_atax_B7_stall_region_out_pipeline_valid_out;

endmodule
