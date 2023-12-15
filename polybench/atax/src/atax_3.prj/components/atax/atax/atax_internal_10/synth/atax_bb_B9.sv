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

// SystemVerilog created from atax_bb_B9
// SystemVerilog created on Wed Dec 13 00:40:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B9 (
    input wire [0:0] in_exitcond1994_pop37114_0,
    input wire [0:0] in_exitcond1994_pop37114_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked25_0,
    input wire [0:0] in_forked25_1,
    input wire [63:0] in_idxprom2791_pop35109_0,
    input wire [63:0] in_idxprom2791_pop35109_1,
    input wire [31:0] in_memdep_6_atax_avm_readdata,
    input wire [0:0] in_memdep_6_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_6_atax_avm_waitrequest,
    input wire [0:0] in_memdep_6_atax_avm_writeack,
    input wire [0:0] in_memdep_phi_pop20118_0,
    input wire [0:0] in_memdep_phi_pop20118_1,
    input wire [0:0] in_notcmp5696_pop38116_0,
    input wire [0:0] in_notcmp5696_pop38116_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_atax15_0,
    input wire [31:0] in_unnamed_atax15_1,
    input wire [31:0] in_unnamed_atax16_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax16_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax16_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax16_atax_avm_writeack,
    input wire [127:0] in_unnamed_atax17_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax17_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax17_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax17_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2194,
    output wire [0:0] out_c0_exe4196,
    output wire [0:0] out_c0_exe5197,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_6_atax_avm_address,
    output wire [0:0] out_memdep_6_atax_avm_burstcount,
    output wire [3:0] out_memdep_6_atax_avm_byteenable,
    output wire [0:0] out_memdep_6_atax_avm_enable,
    output wire [0:0] out_memdep_6_atax_avm_read,
    output wire [0:0] out_memdep_6_atax_avm_write,
    output wire [31:0] out_memdep_6_atax_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax16_atax_avm_address,
    output wire [0:0] out_unnamed_atax16_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax16_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax16_atax_avm_enable,
    output wire [0:0] out_unnamed_atax16_atax_avm_read,
    output wire [0:0] out_unnamed_atax16_atax_avm_write,
    output wire [31:0] out_unnamed_atax16_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax17_atax_avm_address,
    output wire [0:0] out_unnamed_atax17_atax_avm_burstcount,
    output wire [15:0] out_unnamed_atax17_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax17_atax_avm_enable,
    output wire [0:0] out_unnamed_atax17_atax_avm_read,
    output wire [0:0] out_unnamed_atax17_atax_avm_write,
    output wire [127:0] out_unnamed_atax17_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B9_branch_out_c0_exe2194;
    wire [0:0] atax_B9_branch_out_c0_exe4196;
    wire [0:0] atax_B9_branch_out_c0_exe5197;
    wire [0:0] atax_B9_branch_out_stall_out;
    wire [0:0] atax_B9_branch_out_valid_out_0;
    wire [0:0] atax_B9_branch_out_valid_out_1;
    wire [0:0] atax_B9_merge_out_exitcond1994_pop37114;
    wire [0:0] atax_B9_merge_out_forked25;
    wire [63:0] atax_B9_merge_out_idxprom2791_pop35109;
    wire [0:0] atax_B9_merge_out_memdep_phi_pop20118;
    wire [0:0] atax_B9_merge_out_notcmp5696_pop38116;
    wire [0:0] atax_B9_merge_out_stall_out_0;
    wire [0:0] atax_B9_merge_out_stall_out_1;
    wire [31:0] atax_B9_merge_out_unnamed_atax15;
    wire [0:0] atax_B9_merge_out_valid_out;
    wire [0:0] bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out;
    wire [0:0] bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe2194;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe3195;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe4196;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe5197;
    wire [31:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_write;
    wire [31:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_writedata;
    wire [0:0] bb_atax_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B9_stall_region_out_stall_out;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_write;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_writedata;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_burstcount;
    wire [15:0] bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_write;
    wire [127:0] bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_writedata;
    wire [0:0] bb_atax_B9_stall_region_out_valid_out;


    // atax_B9_merge(BLACKBOX,3)
    atax_B9_merge theatax_B9_merge (
        .in_exitcond1994_pop37114_0(in_exitcond1994_pop37114_0),
        .in_exitcond1994_pop37114_1(in_exitcond1994_pop37114_1),
        .in_forked25_0(in_forked25_0),
        .in_forked25_1(in_forked25_1),
        .in_idxprom2791_pop35109_0(in_idxprom2791_pop35109_0),
        .in_idxprom2791_pop35109_1(in_idxprom2791_pop35109_1),
        .in_memdep_phi_pop20118_0(in_memdep_phi_pop20118_0),
        .in_memdep_phi_pop20118_1(in_memdep_phi_pop20118_1),
        .in_notcmp5696_pop38116_0(in_notcmp5696_pop38116_0),
        .in_notcmp5696_pop38116_1(in_notcmp5696_pop38116_1),
        .in_stall_in(bb_atax_B9_stall_region_out_stall_out),
        .in_unnamed_atax15_0(in_unnamed_atax15_0),
        .in_unnamed_atax15_1(in_unnamed_atax15_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1994_pop37114(atax_B9_merge_out_exitcond1994_pop37114),
        .out_forked25(atax_B9_merge_out_forked25),
        .out_idxprom2791_pop35109(atax_B9_merge_out_idxprom2791_pop35109),
        .out_memdep_phi_pop20118(atax_B9_merge_out_memdep_phi_pop20118),
        .out_notcmp5696_pop38116(atax_B9_merge_out_notcmp5696_pop38116),
        .out_stall_out_0(atax_B9_merge_out_stall_out_0),
        .out_stall_out_1(atax_B9_merge_out_stall_out_1),
        .out_unnamed_atax15(atax_B9_merge_out_unnamed_atax15),
        .out_valid_out(atax_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B9_stall_region(BLACKBOX,4)
    atax_bb_B9_stall_region thebb_atax_B9_stall_region (
        .in_exitcond1994_pop37114(atax_B9_merge_out_exitcond1994_pop37114),
        .in_flush(in_flush),
        .in_forked25(atax_B9_merge_out_forked25),
        .in_idxprom2791_pop35109(atax_B9_merge_out_idxprom2791_pop35109),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .in_memdep_phi_pop20118(atax_B9_merge_out_memdep_phi_pop20118),
        .in_notcmp5696_pop38116(atax_B9_merge_out_notcmp5696_pop38116),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B9_branch_out_stall_out),
        .in_unnamed_atax15(atax_B9_merge_out_unnamed_atax15),
        .in_unnamed_atax16_atax_avm_readdata(in_unnamed_atax16_atax_avm_readdata),
        .in_unnamed_atax16_atax_avm_readdatavalid(in_unnamed_atax16_atax_avm_readdatavalid),
        .in_unnamed_atax16_atax_avm_waitrequest(in_unnamed_atax16_atax_avm_waitrequest),
        .in_unnamed_atax16_atax_avm_writeack(in_unnamed_atax16_atax_avm_writeack),
        .in_unnamed_atax17_atax_avm_readdata(in_unnamed_atax17_atax_avm_readdata),
        .in_unnamed_atax17_atax_avm_readdatavalid(in_unnamed_atax17_atax_avm_readdatavalid),
        .in_unnamed_atax17_atax_avm_waitrequest(in_unnamed_atax17_atax_avm_waitrequest),
        .in_unnamed_atax17_atax_avm_writeack(in_unnamed_atax17_atax_avm_writeack),
        .in_valid_in(atax_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out(bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out(bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out),
        .out_c0_exe2194(bb_atax_B9_stall_region_out_c0_exe2194),
        .out_c0_exe3195(bb_atax_B9_stall_region_out_c0_exe3195),
        .out_c0_exe4196(bb_atax_B9_stall_region_out_c0_exe4196),
        .out_c0_exe5197(bb_atax_B9_stall_region_out_c0_exe5197),
        .out_memdep_6_atax_avm_address(bb_atax_B9_stall_region_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(bb_atax_B9_stall_region_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(bb_atax_B9_stall_region_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(bb_atax_B9_stall_region_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(bb_atax_B9_stall_region_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(bb_atax_B9_stall_region_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(bb_atax_B9_stall_region_out_memdep_6_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B9_stall_region_out_stall_out),
        .out_unnamed_atax16_atax_avm_address(bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_address),
        .out_unnamed_atax16_atax_avm_burstcount(bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_burstcount),
        .out_unnamed_atax16_atax_avm_byteenable(bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_byteenable),
        .out_unnamed_atax16_atax_avm_enable(bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_enable),
        .out_unnamed_atax16_atax_avm_read(bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_read),
        .out_unnamed_atax16_atax_avm_write(bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_write),
        .out_unnamed_atax16_atax_avm_writedata(bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_writedata),
        .out_unnamed_atax17_atax_avm_address(bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_address),
        .out_unnamed_atax17_atax_avm_burstcount(bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_burstcount),
        .out_unnamed_atax17_atax_avm_byteenable(bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_byteenable),
        .out_unnamed_atax17_atax_avm_enable(bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_enable),
        .out_unnamed_atax17_atax_avm_read(bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_read),
        .out_unnamed_atax17_atax_avm_write(bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_write),
        .out_unnamed_atax17_atax_avm_writedata(bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_writedata),
        .out_valid_out(bb_atax_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B9_branch(BLACKBOX,2)
    atax_B9_branch theatax_B9_branch (
        .in_c0_exe2194(bb_atax_B9_stall_region_out_c0_exe2194),
        .in_c0_exe3195(bb_atax_B9_stall_region_out_c0_exe3195),
        .in_c0_exe4196(bb_atax_B9_stall_region_out_c0_exe4196),
        .in_c0_exe5197(bb_atax_B9_stall_region_out_c0_exe5197),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B9_stall_region_out_valid_out),
        .out_c0_exe2194(atax_B9_branch_out_c0_exe2194),
        .out_c0_exe4196(atax_B9_branch_out_c0_exe4196),
        .out_c0_exe5197(atax_B9_branch_out_c0_exe5197),
        .out_stall_out(atax_B9_branch_out_stall_out),
        .out_valid_out_0(atax_B9_branch_out_valid_out_0),
        .out_valid_out_1(atax_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2194(GPOUT,34)
    assign out_c0_exe2194 = atax_B9_branch_out_c0_exe2194;

    // out_c0_exe4196(GPOUT,35)
    assign out_c0_exe4196 = atax_B9_branch_out_c0_exe4196;

    // out_c0_exe5197(GPOUT,36)
    assign out_c0_exe5197 = atax_B9_branch_out_c0_exe5197;

    // out_exiting_stall_out(GPOUT,37)
    assign out_exiting_stall_out = bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,38)
    assign out_exiting_valid_out = bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out;

    // out_memdep_6_atax_avm_address(GPOUT,39)
    assign out_memdep_6_atax_avm_address = bb_atax_B9_stall_region_out_memdep_6_atax_avm_address;

    // out_memdep_6_atax_avm_burstcount(GPOUT,40)
    assign out_memdep_6_atax_avm_burstcount = bb_atax_B9_stall_region_out_memdep_6_atax_avm_burstcount;

    // out_memdep_6_atax_avm_byteenable(GPOUT,41)
    assign out_memdep_6_atax_avm_byteenable = bb_atax_B9_stall_region_out_memdep_6_atax_avm_byteenable;

    // out_memdep_6_atax_avm_enable(GPOUT,42)
    assign out_memdep_6_atax_avm_enable = bb_atax_B9_stall_region_out_memdep_6_atax_avm_enable;

    // out_memdep_6_atax_avm_read(GPOUT,43)
    assign out_memdep_6_atax_avm_read = bb_atax_B9_stall_region_out_memdep_6_atax_avm_read;

    // out_memdep_6_atax_avm_write(GPOUT,44)
    assign out_memdep_6_atax_avm_write = bb_atax_B9_stall_region_out_memdep_6_atax_avm_write;

    // out_memdep_6_atax_avm_writedata(GPOUT,45)
    assign out_memdep_6_atax_avm_writedata = bb_atax_B9_stall_region_out_memdep_6_atax_avm_writedata;

    // out_stall_in_0(GPOUT,46)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = atax_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = atax_B9_merge_out_stall_out_1;

    // out_unnamed_atax16_atax_avm_address(GPOUT,49)
    assign out_unnamed_atax16_atax_avm_address = bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_address;

    // out_unnamed_atax16_atax_avm_burstcount(GPOUT,50)
    assign out_unnamed_atax16_atax_avm_burstcount = bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_burstcount;

    // out_unnamed_atax16_atax_avm_byteenable(GPOUT,51)
    assign out_unnamed_atax16_atax_avm_byteenable = bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_byteenable;

    // out_unnamed_atax16_atax_avm_enable(GPOUT,52)
    assign out_unnamed_atax16_atax_avm_enable = bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_enable;

    // out_unnamed_atax16_atax_avm_read(GPOUT,53)
    assign out_unnamed_atax16_atax_avm_read = bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_read;

    // out_unnamed_atax16_atax_avm_write(GPOUT,54)
    assign out_unnamed_atax16_atax_avm_write = bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_write;

    // out_unnamed_atax16_atax_avm_writedata(GPOUT,55)
    assign out_unnamed_atax16_atax_avm_writedata = bb_atax_B9_stall_region_out_unnamed_atax16_atax_avm_writedata;

    // out_unnamed_atax17_atax_avm_address(GPOUT,56)
    assign out_unnamed_atax17_atax_avm_address = bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_address;

    // out_unnamed_atax17_atax_avm_burstcount(GPOUT,57)
    assign out_unnamed_atax17_atax_avm_burstcount = bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_burstcount;

    // out_unnamed_atax17_atax_avm_byteenable(GPOUT,58)
    assign out_unnamed_atax17_atax_avm_byteenable = bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_byteenable;

    // out_unnamed_atax17_atax_avm_enable(GPOUT,59)
    assign out_unnamed_atax17_atax_avm_enable = bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_enable;

    // out_unnamed_atax17_atax_avm_read(GPOUT,60)
    assign out_unnamed_atax17_atax_avm_read = bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_read;

    // out_unnamed_atax17_atax_avm_write(GPOUT,61)
    assign out_unnamed_atax17_atax_avm_write = bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_write;

    // out_unnamed_atax17_atax_avm_writedata(GPOUT,62)
    assign out_unnamed_atax17_atax_avm_writedata = bb_atax_B9_stall_region_out_unnamed_atax17_atax_avm_writedata;

    // out_valid_in_0(GPOUT,63)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,64)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,65)
    assign out_valid_out_0 = atax_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,66)
    assign out_valid_out_1 = atax_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,68)
    assign out_pipeline_valid_out = bb_atax_B9_stall_region_out_pipeline_valid_out;

endmodule
