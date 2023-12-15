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

// SystemVerilog created from atax_bb_B6
// SystemVerilog created on Wed Dec 13 00:14:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B6 (
    input wire [31:0] in_arrayidx28_promoted11_atax_avm_readdata,
    input wire [0:0] in_arrayidx28_promoted11_atax_avm_readdatavalid,
    input wire [0:0] in_arrayidx28_promoted11_atax_avm_waitrequest,
    input wire [0:0] in_arrayidx28_promoted11_atax_avm_writeack,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked124_0,
    input wire [0:0] in_forked124_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_arrayidx28_promoted11_atax_avm_address,
    output wire [0:0] out_arrayidx28_promoted11_atax_avm_burstcount,
    output wire [3:0] out_arrayidx28_promoted11_atax_avm_byteenable,
    output wire [0:0] out_arrayidx28_promoted11_atax_avm_enable,
    output wire [0:0] out_arrayidx28_promoted11_atax_avm_read,
    output wire [0:0] out_arrayidx28_promoted11_atax_avm_write,
    output wire [31:0] out_arrayidx28_promoted11_atax_avm_writedata,
    output wire [63:0] out_c0_exe1180,
    output wire [63:0] out_c0_exe2181,
    output wire [31:0] out_c0_exe3182,
    output wire [0:0] out_c0_exe4183,
    output wire [0:0] out_c0_exe5184,
    output wire [0:0] out_c0_exe6185,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B6_branch_out_c0_exe1180;
    wire [63:0] atax_B6_branch_out_c0_exe2181;
    wire [31:0] atax_B6_branch_out_c0_exe3182;
    wire [0:0] atax_B6_branch_out_c0_exe4183;
    wire [0:0] atax_B6_branch_out_c0_exe5184;
    wire [0:0] atax_B6_branch_out_c0_exe6185;
    wire [0:0] atax_B6_branch_out_stall_out;
    wire [0:0] atax_B6_branch_out_valid_out_0;
    wire [0:0] atax_B6_merge_out_forked124;
    wire [0:0] atax_B6_merge_out_stall_out_0;
    wire [0:0] atax_B6_merge_out_stall_out_1;
    wire [0:0] atax_B6_merge_out_valid_out;
    wire [0:0] bb_atax_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_atax2_exiting_stall_out;
    wire [0:0] bb_atax_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_atax2_exiting_valid_out;
    wire [31:0] bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_address;
    wire [0:0] bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_enable;
    wire [0:0] bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_read;
    wire [0:0] bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_write;
    wire [31:0] bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_writedata;
    wire [63:0] bb_atax_B6_stall_region_out_c0_exe1180;
    wire [63:0] bb_atax_B6_stall_region_out_c0_exe2181;
    wire [31:0] bb_atax_B6_stall_region_out_c0_exe3182;
    wire [0:0] bb_atax_B6_stall_region_out_c0_exe4183;
    wire [0:0] bb_atax_B6_stall_region_out_c0_exe5184;
    wire [0:0] bb_atax_B6_stall_region_out_c0_exe6185;
    wire [0:0] bb_atax_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B6_stall_region_out_stall_out;
    wire [0:0] bb_atax_B6_stall_region_out_valid_out;


    // atax_B6_branch(BLACKBOX,2)
    atax_B6_branch theatax_B6_branch (
        .in_c0_exe1180(bb_atax_B6_stall_region_out_c0_exe1180),
        .in_c0_exe2181(bb_atax_B6_stall_region_out_c0_exe2181),
        .in_c0_exe3182(bb_atax_B6_stall_region_out_c0_exe3182),
        .in_c0_exe4183(bb_atax_B6_stall_region_out_c0_exe4183),
        .in_c0_exe5184(bb_atax_B6_stall_region_out_c0_exe5184),
        .in_c0_exe6185(bb_atax_B6_stall_region_out_c0_exe6185),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B6_stall_region_out_valid_out),
        .out_c0_exe1180(atax_B6_branch_out_c0_exe1180),
        .out_c0_exe2181(atax_B6_branch_out_c0_exe2181),
        .out_c0_exe3182(atax_B6_branch_out_c0_exe3182),
        .out_c0_exe4183(atax_B6_branch_out_c0_exe4183),
        .out_c0_exe5184(atax_B6_branch_out_c0_exe5184),
        .out_c0_exe6185(atax_B6_branch_out_c0_exe6185),
        .out_stall_out(atax_B6_branch_out_stall_out),
        .out_valid_out_0(atax_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B6_merge(BLACKBOX,3)
    atax_B6_merge theatax_B6_merge (
        .in_forked124_0(in_forked124_0),
        .in_forked124_1(in_forked124_1),
        .in_stall_in(bb_atax_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked124(atax_B6_merge_out_forked124),
        .out_stall_out_0(atax_B6_merge_out_stall_out_0),
        .out_stall_out_1(atax_B6_merge_out_stall_out_1),
        .out_valid_out(atax_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6_stall_region(BLACKBOX,4)
    atax_bb_B6_stall_region thebb_atax_B6_stall_region (
        .in_arrayidx28_promoted11_atax_avm_readdata(in_arrayidx28_promoted11_atax_avm_readdata),
        .in_arrayidx28_promoted11_atax_avm_readdatavalid(in_arrayidx28_promoted11_atax_avm_readdatavalid),
        .in_arrayidx28_promoted11_atax_avm_waitrequest(in_arrayidx28_promoted11_atax_avm_waitrequest),
        .in_arrayidx28_promoted11_atax_avm_writeack(in_arrayidx28_promoted11_atax_avm_writeack),
        .in_flush(in_flush),
        .in_forked124(atax_B6_merge_out_forked124),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B6_branch_out_stall_out),
        .in_valid_in(atax_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_atax2_exiting_stall_out(bb_atax_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_atax2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_atax2_exiting_valid_out(bb_atax_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_atax2_exiting_valid_out),
        .out_arrayidx28_promoted11_atax_avm_address(bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_address),
        .out_arrayidx28_promoted11_atax_avm_burstcount(bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_burstcount),
        .out_arrayidx28_promoted11_atax_avm_byteenable(bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_byteenable),
        .out_arrayidx28_promoted11_atax_avm_enable(bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_enable),
        .out_arrayidx28_promoted11_atax_avm_read(bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_read),
        .out_arrayidx28_promoted11_atax_avm_write(bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_write),
        .out_arrayidx28_promoted11_atax_avm_writedata(bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_writedata),
        .out_c0_exe1180(bb_atax_B6_stall_region_out_c0_exe1180),
        .out_c0_exe2181(bb_atax_B6_stall_region_out_c0_exe2181),
        .out_c0_exe3182(bb_atax_B6_stall_region_out_c0_exe3182),
        .out_c0_exe4183(bb_atax_B6_stall_region_out_c0_exe4183),
        .out_c0_exe5184(bb_atax_B6_stall_region_out_c0_exe5184),
        .out_c0_exe6185(bb_atax_B6_stall_region_out_c0_exe6185),
        .out_pipeline_valid_out(bb_atax_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B6_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_arrayidx28_promoted11_atax_avm_address(GPOUT,15)
    assign out_arrayidx28_promoted11_atax_avm_address = bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_address;

    // out_arrayidx28_promoted11_atax_avm_burstcount(GPOUT,16)
    assign out_arrayidx28_promoted11_atax_avm_burstcount = bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_burstcount;

    // out_arrayidx28_promoted11_atax_avm_byteenable(GPOUT,17)
    assign out_arrayidx28_promoted11_atax_avm_byteenable = bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_byteenable;

    // out_arrayidx28_promoted11_atax_avm_enable(GPOUT,18)
    assign out_arrayidx28_promoted11_atax_avm_enable = bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_enable;

    // out_arrayidx28_promoted11_atax_avm_read(GPOUT,19)
    assign out_arrayidx28_promoted11_atax_avm_read = bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_read;

    // out_arrayidx28_promoted11_atax_avm_write(GPOUT,20)
    assign out_arrayidx28_promoted11_atax_avm_write = bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_write;

    // out_arrayidx28_promoted11_atax_avm_writedata(GPOUT,21)
    assign out_arrayidx28_promoted11_atax_avm_writedata = bb_atax_B6_stall_region_out_arrayidx28_promoted11_atax_avm_writedata;

    // out_c0_exe1180(GPOUT,22)
    assign out_c0_exe1180 = atax_B6_branch_out_c0_exe1180;

    // out_c0_exe2181(GPOUT,23)
    assign out_c0_exe2181 = atax_B6_branch_out_c0_exe2181;

    // out_c0_exe3182(GPOUT,24)
    assign out_c0_exe3182 = atax_B6_branch_out_c0_exe3182;

    // out_c0_exe4183(GPOUT,25)
    assign out_c0_exe4183 = atax_B6_branch_out_c0_exe4183;

    // out_c0_exe5184(GPOUT,26)
    assign out_c0_exe5184 = atax_B6_branch_out_c0_exe5184;

    // out_c0_exe6185(GPOUT,27)
    assign out_c0_exe6185 = atax_B6_branch_out_c0_exe6185;

    // out_exiting_stall_out(GPOUT,28)
    assign out_exiting_stall_out = bb_atax_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_atax2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,29)
    assign out_exiting_valid_out = bb_atax_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_atax2_exiting_valid_out;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = atax_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,31)
    assign out_stall_out_1 = atax_B6_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,32)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,33)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = atax_B6_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,36)
    assign out_pipeline_valid_out = bb_atax_B6_stall_region_out_pipeline_valid_out;

endmodule
