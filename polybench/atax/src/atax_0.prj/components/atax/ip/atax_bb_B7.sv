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
// SystemVerilog created on Wed Dec 13 00:02:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B7 (
    input wire [63:0] in_arrayidx288105_0,
    input wire [63:0] in_arrayidx288105_1,
    input wire [31:0] in_arrayidx28_promoted2106_0,
    input wire [31:0] in_arrayidx28_promoted2106_1,
    input wire [0:0] in_exitcond19107_0,
    input wire [0:0] in_exitcond19107_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked41_0,
    input wire [0:0] in_forked41_1,
    input wire [0:0] in_forked87103_0,
    input wire [0:0] in_forked87103_1,
    input wire [63:0] in_idxprom27104_0,
    input wire [63:0] in_idxprom27104_1,
    input wire [0:0] in_notcmp56108_0,
    input wire [0:0] in_notcmp56108_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [127:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax13_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax13_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax13_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax13_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe2159,
    output wire [31:0] out_c0_exe3160,
    output wire [0:0] out_c0_exe5162,
    output wire [63:0] out_c0_exe6163,
    output wire [0:0] out_c0_exe7164,
    output wire [0:0] out_c0_exe8165,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    output wire [15:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [127:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax13_atax_avm_address,
    output wire [0:0] out_unnamed_atax13_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax13_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax13_atax_avm_enable,
    output wire [0:0] out_unnamed_atax13_atax_avm_read,
    output wire [0:0] out_unnamed_atax13_atax_avm_write,
    output wire [31:0] out_unnamed_atax13_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B7_branch_out_c0_exe2159;
    wire [31:0] atax_B7_branch_out_c0_exe3160;
    wire [0:0] atax_B7_branch_out_c0_exe5162;
    wire [63:0] atax_B7_branch_out_c0_exe6163;
    wire [0:0] atax_B7_branch_out_c0_exe7164;
    wire [0:0] atax_B7_branch_out_c0_exe8165;
    wire [0:0] atax_B7_branch_out_stall_out;
    wire [0:0] atax_B7_branch_out_valid_out_0;
    wire [0:0] atax_B7_branch_out_valid_out_1;
    wire [63:0] atax_B7_merge_out_arrayidx288105;
    wire [31:0] atax_B7_merge_out_arrayidx28_promoted2106;
    wire [0:0] atax_B7_merge_out_exitcond19107;
    wire [0:0] atax_B7_merge_out_forked41;
    wire [0:0] atax_B7_merge_out_forked87103;
    wire [63:0] atax_B7_merge_out_idxprom27104;
    wire [0:0] atax_B7_merge_out_notcmp56108;
    wire [0:0] atax_B7_merge_out_stall_out_0;
    wire [0:0] atax_B7_merge_out_stall_out_1;
    wire [0:0] atax_B7_merge_out_valid_out;
    wire [0:0] bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_stall_out;
    wire [0:0] bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_valid_out;
    wire [63:0] bb_atax_B7_stall_region_out_c0_exe2159;
    wire [31:0] bb_atax_B7_stall_region_out_c0_exe3160;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe4161;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe5162;
    wire [63:0] bb_atax_B7_stall_region_out_c0_exe6163;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe7164;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe8165;
    wire [0:0] bb_atax_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B7_stall_region_out_stall_out;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_burstcount;
    wire [15:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_write;
    wire [127:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_writedata;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_writedata;
    wire [0:0] bb_atax_B7_stall_region_out_valid_out;


    // atax_B7_merge(BLACKBOX,3)
    atax_B7_merge theatax_B7_merge (
        .in_arrayidx288105_0(in_arrayidx288105_0),
        .in_arrayidx288105_1(in_arrayidx288105_1),
        .in_arrayidx28_promoted2106_0(in_arrayidx28_promoted2106_0),
        .in_arrayidx28_promoted2106_1(in_arrayidx28_promoted2106_1),
        .in_exitcond19107_0(in_exitcond19107_0),
        .in_exitcond19107_1(in_exitcond19107_1),
        .in_forked41_0(in_forked41_0),
        .in_forked41_1(in_forked41_1),
        .in_forked87103_0(in_forked87103_0),
        .in_forked87103_1(in_forked87103_1),
        .in_idxprom27104_0(in_idxprom27104_0),
        .in_idxprom27104_1(in_idxprom27104_1),
        .in_notcmp56108_0(in_notcmp56108_0),
        .in_notcmp56108_1(in_notcmp56108_1),
        .in_stall_in(bb_atax_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx288105(atax_B7_merge_out_arrayidx288105),
        .out_arrayidx28_promoted2106(atax_B7_merge_out_arrayidx28_promoted2106),
        .out_exitcond19107(atax_B7_merge_out_exitcond19107),
        .out_forked41(atax_B7_merge_out_forked41),
        .out_forked87103(atax_B7_merge_out_forked87103),
        .out_idxprom27104(atax_B7_merge_out_idxprom27104),
        .out_notcmp56108(atax_B7_merge_out_notcmp56108),
        .out_stall_out_0(atax_B7_merge_out_stall_out_0),
        .out_stall_out_1(atax_B7_merge_out_stall_out_1),
        .out_valid_out(atax_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_stall_region(BLACKBOX,4)
    atax_bb_B7_stall_region thebb_atax_B7_stall_region (
        .in_arrayidx288105(atax_B7_merge_out_arrayidx288105),
        .in_arrayidx28_promoted2106(atax_B7_merge_out_arrayidx28_promoted2106),
        .in_exitcond19107(atax_B7_merge_out_exitcond19107),
        .in_flush(in_flush),
        .in_forked41(atax_B7_merge_out_forked41),
        .in_forked87103(atax_B7_merge_out_forked87103),
        .in_idxprom27104(atax_B7_merge_out_idxprom27104),
        .in_notcmp56108(atax_B7_merge_out_notcmp56108),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B7_branch_out_stall_out),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .in_unnamed_atax13_atax_avm_readdata(in_unnamed_atax13_atax_avm_readdata),
        .in_unnamed_atax13_atax_avm_readdatavalid(in_unnamed_atax13_atax_avm_readdatavalid),
        .in_unnamed_atax13_atax_avm_waitrequest(in_unnamed_atax13_atax_avm_waitrequest),
        .in_unnamed_atax13_atax_avm_writeack(in_unnamed_atax13_atax_avm_writeack),
        .in_valid_in(atax_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_stall_out(bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_valid_out(bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_valid_out),
        .out_c0_exe2159(bb_atax_B7_stall_region_out_c0_exe2159),
        .out_c0_exe3160(bb_atax_B7_stall_region_out_c0_exe3160),
        .out_c0_exe4161(bb_atax_B7_stall_region_out_c0_exe4161),
        .out_c0_exe5162(bb_atax_B7_stall_region_out_c0_exe5162),
        .out_c0_exe6163(bb_atax_B7_stall_region_out_c0_exe6163),
        .out_c0_exe7164(bb_atax_B7_stall_region_out_c0_exe7164),
        .out_c0_exe8165(bb_atax_B7_stall_region_out_c0_exe8165),
        .out_pipeline_valid_out(bb_atax_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B7_stall_region_out_stall_out),
        .out_unnamed_atax12_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_writedata),
        .out_unnamed_atax13_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_address),
        .out_unnamed_atax13_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_burstcount),
        .out_unnamed_atax13_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_byteenable),
        .out_unnamed_atax13_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_enable),
        .out_unnamed_atax13_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_read),
        .out_unnamed_atax13_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_write),
        .out_unnamed_atax13_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_writedata),
        .out_valid_out(bb_atax_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B7_branch(BLACKBOX,2)
    atax_B7_branch theatax_B7_branch (
        .in_c0_exe2159(bb_atax_B7_stall_region_out_c0_exe2159),
        .in_c0_exe3160(bb_atax_B7_stall_region_out_c0_exe3160),
        .in_c0_exe4161(bb_atax_B7_stall_region_out_c0_exe4161),
        .in_c0_exe5162(bb_atax_B7_stall_region_out_c0_exe5162),
        .in_c0_exe6163(bb_atax_B7_stall_region_out_c0_exe6163),
        .in_c0_exe7164(bb_atax_B7_stall_region_out_c0_exe7164),
        .in_c0_exe8165(bb_atax_B7_stall_region_out_c0_exe8165),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B7_stall_region_out_valid_out),
        .out_c0_exe2159(atax_B7_branch_out_c0_exe2159),
        .out_c0_exe3160(atax_B7_branch_out_c0_exe3160),
        .out_c0_exe5162(atax_B7_branch_out_c0_exe5162),
        .out_c0_exe6163(atax_B7_branch_out_c0_exe6163),
        .out_c0_exe7164(atax_B7_branch_out_c0_exe7164),
        .out_c0_exe8165(atax_B7_branch_out_c0_exe8165),
        .out_stall_out(atax_B7_branch_out_stall_out),
        .out_valid_out_0(atax_B7_branch_out_valid_out_0),
        .out_valid_out_1(atax_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2159(GPOUT,32)
    assign out_c0_exe2159 = atax_B7_branch_out_c0_exe2159;

    // out_c0_exe3160(GPOUT,33)
    assign out_c0_exe3160 = atax_B7_branch_out_c0_exe3160;

    // out_c0_exe5162(GPOUT,34)
    assign out_c0_exe5162 = atax_B7_branch_out_c0_exe5162;

    // out_c0_exe6163(GPOUT,35)
    assign out_c0_exe6163 = atax_B7_branch_out_c0_exe6163;

    // out_c0_exe7164(GPOUT,36)
    assign out_c0_exe7164 = atax_B7_branch_out_c0_exe7164;

    // out_c0_exe8165(GPOUT,37)
    assign out_c0_exe8165 = atax_B7_branch_out_c0_exe8165;

    // out_exiting_stall_out(GPOUT,38)
    assign out_exiting_stall_out = bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,39)
    assign out_exiting_valid_out = bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_atax6_exiting_valid_out;

    // out_stall_in_0(GPOUT,40)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = atax_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,42)
    assign out_stall_out_1 = atax_B7_merge_out_stall_out_1;

    // out_unnamed_atax12_atax_avm_address(GPOUT,43)
    assign out_unnamed_atax12_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_address;

    // out_unnamed_atax12_atax_avm_burstcount(GPOUT,44)
    assign out_unnamed_atax12_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_burstcount;

    // out_unnamed_atax12_atax_avm_byteenable(GPOUT,45)
    assign out_unnamed_atax12_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_byteenable;

    // out_unnamed_atax12_atax_avm_enable(GPOUT,46)
    assign out_unnamed_atax12_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_enable;

    // out_unnamed_atax12_atax_avm_read(GPOUT,47)
    assign out_unnamed_atax12_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_read;

    // out_unnamed_atax12_atax_avm_write(GPOUT,48)
    assign out_unnamed_atax12_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_write;

    // out_unnamed_atax12_atax_avm_writedata(GPOUT,49)
    assign out_unnamed_atax12_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_writedata;

    // out_unnamed_atax13_atax_avm_address(GPOUT,50)
    assign out_unnamed_atax13_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_address;

    // out_unnamed_atax13_atax_avm_burstcount(GPOUT,51)
    assign out_unnamed_atax13_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_burstcount;

    // out_unnamed_atax13_atax_avm_byteenable(GPOUT,52)
    assign out_unnamed_atax13_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_byteenable;

    // out_unnamed_atax13_atax_avm_enable(GPOUT,53)
    assign out_unnamed_atax13_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_enable;

    // out_unnamed_atax13_atax_avm_read(GPOUT,54)
    assign out_unnamed_atax13_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_read;

    // out_unnamed_atax13_atax_avm_write(GPOUT,55)
    assign out_unnamed_atax13_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_write;

    // out_unnamed_atax13_atax_avm_writedata(GPOUT,56)
    assign out_unnamed_atax13_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax13_atax_avm_writedata;

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
