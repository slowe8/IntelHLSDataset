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

// SystemVerilog created from atax_bb_B8
// SystemVerilog created on Wed Dec 13 00:10:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B8 (
    input wire [0:0] in_feedback_in_20,
    output wire [0:0] out_feedback_stall_out_20,
    input wire [0:0] in_feedback_valid_in_20,
    input wire [63:0] in_c0_exe21802_0,
    input wire [31:0] in_c0_exe31813_0,
    input wire [0:0] in_c0_exe51834_0,
    input wire [63:0] in_c0_exe61845_0,
    input wire [0:0] in_c0_exe71856_0,
    input wire [0:0] in_c0_exe81867_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_17233_atax_avm_readdata,
    input wire [0:0] in_memdep_17233_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_17233_atax_avm_waitrequest,
    input wire [0:0] in_memdep_17233_atax_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_atax18_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax18_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax18_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax18_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1194,
    output wire [63:0] out_c0_exe21802,
    output wire [0:0] out_c0_exe71856,
    output wire [0:0] out_c0_exe81867,
    output wire [31:0] out_memdep_17233_atax_avm_address,
    output wire [0:0] out_memdep_17233_atax_avm_burstcount,
    output wire [3:0] out_memdep_17233_atax_avm_byteenable,
    output wire [0:0] out_memdep_17233_atax_avm_enable,
    output wire [0:0] out_memdep_17233_atax_avm_read,
    output wire [0:0] out_memdep_17233_atax_avm_write,
    output wire [31:0] out_memdep_17233_atax_avm_writedata,
    output wire [0:0] out_memdep_phi_pop20,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_atax18_atax_avm_address,
    output wire [0:0] out_unnamed_atax18_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax18_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax18_atax_avm_enable,
    output wire [0:0] out_unnamed_atax18_atax_avm_read,
    output wire [0:0] out_unnamed_atax18_atax_avm_write,
    output wire [31:0] out_unnamed_atax18_atax_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] atax_B8_branch_out_c0_exe1194;
    wire [63:0] atax_B8_branch_out_c0_exe21802;
    wire [0:0] atax_B8_branch_out_c0_exe71856;
    wire [0:0] atax_B8_branch_out_c0_exe81867;
    wire [0:0] atax_B8_branch_out_memdep_phi_pop20;
    wire [0:0] atax_B8_branch_out_stall_out;
    wire [0:0] atax_B8_branch_out_valid_out_0;
    wire [63:0] atax_B8_merge_out_c0_exe21802;
    wire [31:0] atax_B8_merge_out_c0_exe31813;
    wire [0:0] atax_B8_merge_out_c0_exe51834;
    wire [63:0] atax_B8_merge_out_c0_exe61845;
    wire [0:0] atax_B8_merge_out_c0_exe71856;
    wire [0:0] atax_B8_merge_out_c0_exe81867;
    wire [0:0] atax_B8_merge_out_stall_out_0;
    wire [0:0] atax_B8_merge_out_valid_out;
    wire [31:0] bb_atax_B8_stall_region_out_c0_exe1194;
    wire [63:0] bb_atax_B8_stall_region_out_c0_exe21802;
    wire [0:0] bb_atax_B8_stall_region_out_c0_exe71856;
    wire [0:0] bb_atax_B8_stall_region_out_c0_exe81867;
    wire [0:0] bb_atax_B8_stall_region_out_feedback_stall_out_20;
    wire [31:0] bb_atax_B8_stall_region_out_memdep_17233_atax_avm_address;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_17233_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_stall_region_out_memdep_17233_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_17233_atax_avm_enable;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_17233_atax_avm_read;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_17233_atax_avm_write;
    wire [31:0] bb_atax_B8_stall_region_out_memdep_17233_atax_avm_writedata;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_phi_pop20;
    wire [0:0] bb_atax_B8_stall_region_out_stall_out;
    wire [31:0] bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_address;
    wire [0:0] bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_enable;
    wire [0:0] bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_read;
    wire [0:0] bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_write;
    wire [31:0] bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_writedata;
    wire [0:0] bb_atax_B8_stall_region_out_valid_out;


    // atax_B8_branch(BLACKBOX,2)
    atax_B8_branch theatax_B8_branch (
        .in_c0_exe1194(bb_atax_B8_stall_region_out_c0_exe1194),
        .in_c0_exe21802(bb_atax_B8_stall_region_out_c0_exe21802),
        .in_c0_exe71856(bb_atax_B8_stall_region_out_c0_exe71856),
        .in_c0_exe81867(bb_atax_B8_stall_region_out_c0_exe81867),
        .in_memdep_phi_pop20(bb_atax_B8_stall_region_out_memdep_phi_pop20),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B8_stall_region_out_valid_out),
        .out_c0_exe1194(atax_B8_branch_out_c0_exe1194),
        .out_c0_exe21802(atax_B8_branch_out_c0_exe21802),
        .out_c0_exe71856(atax_B8_branch_out_c0_exe71856),
        .out_c0_exe81867(atax_B8_branch_out_c0_exe81867),
        .out_memdep_phi_pop20(atax_B8_branch_out_memdep_phi_pop20),
        .out_stall_out(atax_B8_branch_out_stall_out),
        .out_valid_out_0(atax_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B8_merge(BLACKBOX,3)
    atax_B8_merge theatax_B8_merge (
        .in_c0_exe21802_0(in_c0_exe21802_0),
        .in_c0_exe31813_0(in_c0_exe31813_0),
        .in_c0_exe51834_0(in_c0_exe51834_0),
        .in_c0_exe61845_0(in_c0_exe61845_0),
        .in_c0_exe71856_0(in_c0_exe71856_0),
        .in_c0_exe81867_0(in_c0_exe81867_0),
        .in_stall_in(bb_atax_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe21802(atax_B8_merge_out_c0_exe21802),
        .out_c0_exe31813(atax_B8_merge_out_c0_exe31813),
        .out_c0_exe51834(atax_B8_merge_out_c0_exe51834),
        .out_c0_exe61845(atax_B8_merge_out_c0_exe61845),
        .out_c0_exe71856(atax_B8_merge_out_c0_exe71856),
        .out_c0_exe81867(atax_B8_merge_out_c0_exe81867),
        .out_stall_out_0(atax_B8_merge_out_stall_out_0),
        .out_valid_out(atax_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B8_stall_region(BLACKBOX,4)
    atax_bb_B8_stall_region thebb_atax_B8_stall_region (
        .in_c0_exe21802(atax_B8_merge_out_c0_exe21802),
        .in_c0_exe31813(atax_B8_merge_out_c0_exe31813),
        .in_c0_exe51834(atax_B8_merge_out_c0_exe51834),
        .in_c0_exe61845(atax_B8_merge_out_c0_exe61845),
        .in_c0_exe71856(atax_B8_merge_out_c0_exe71856),
        .in_c0_exe81867(atax_B8_merge_out_c0_exe81867),
        .in_feedback_in_20(in_feedback_in_20),
        .in_feedback_valid_in_20(in_feedback_valid_in_20),
        .in_flush(in_flush),
        .in_memdep_17233_atax_avm_readdata(in_memdep_17233_atax_avm_readdata),
        .in_memdep_17233_atax_avm_readdatavalid(in_memdep_17233_atax_avm_readdatavalid),
        .in_memdep_17233_atax_avm_waitrequest(in_memdep_17233_atax_avm_waitrequest),
        .in_memdep_17233_atax_avm_writeack(in_memdep_17233_atax_avm_writeack),
        .in_stall_in(atax_B8_branch_out_stall_out),
        .in_unnamed_atax18_atax_avm_readdata(in_unnamed_atax18_atax_avm_readdata),
        .in_unnamed_atax18_atax_avm_readdatavalid(in_unnamed_atax18_atax_avm_readdatavalid),
        .in_unnamed_atax18_atax_avm_waitrequest(in_unnamed_atax18_atax_avm_waitrequest),
        .in_unnamed_atax18_atax_avm_writeack(in_unnamed_atax18_atax_avm_writeack),
        .in_valid_in(atax_B8_merge_out_valid_out),
        .out_c0_exe1194(bb_atax_B8_stall_region_out_c0_exe1194),
        .out_c0_exe21802(bb_atax_B8_stall_region_out_c0_exe21802),
        .out_c0_exe71856(bb_atax_B8_stall_region_out_c0_exe71856),
        .out_c0_exe81867(bb_atax_B8_stall_region_out_c0_exe81867),
        .out_feedback_stall_out_20(bb_atax_B8_stall_region_out_feedback_stall_out_20),
        .out_memdep_17233_atax_avm_address(bb_atax_B8_stall_region_out_memdep_17233_atax_avm_address),
        .out_memdep_17233_atax_avm_burstcount(bb_atax_B8_stall_region_out_memdep_17233_atax_avm_burstcount),
        .out_memdep_17233_atax_avm_byteenable(bb_atax_B8_stall_region_out_memdep_17233_atax_avm_byteenable),
        .out_memdep_17233_atax_avm_enable(bb_atax_B8_stall_region_out_memdep_17233_atax_avm_enable),
        .out_memdep_17233_atax_avm_read(bb_atax_B8_stall_region_out_memdep_17233_atax_avm_read),
        .out_memdep_17233_atax_avm_write(bb_atax_B8_stall_region_out_memdep_17233_atax_avm_write),
        .out_memdep_17233_atax_avm_writedata(bb_atax_B8_stall_region_out_memdep_17233_atax_avm_writedata),
        .out_memdep_phi_pop20(bb_atax_B8_stall_region_out_memdep_phi_pop20),
        .out_stall_out(bb_atax_B8_stall_region_out_stall_out),
        .out_unnamed_atax18_atax_avm_address(bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_address),
        .out_unnamed_atax18_atax_avm_burstcount(bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_burstcount),
        .out_unnamed_atax18_atax_avm_byteenable(bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_byteenable),
        .out_unnamed_atax18_atax_avm_enable(bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_enable),
        .out_unnamed_atax18_atax_avm_read(bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_read),
        .out_unnamed_atax18_atax_avm_write(bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_write),
        .out_unnamed_atax18_atax_avm_writedata(bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_writedata),
        .out_valid_out(bb_atax_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_20_sync(GPOUT,6)
    assign out_feedback_stall_out_20 = bb_atax_B8_stall_region_out_feedback_stall_out_20;

    // out_c0_exe1194(GPOUT,25)
    assign out_c0_exe1194 = atax_B8_branch_out_c0_exe1194;

    // out_c0_exe21802(GPOUT,26)
    assign out_c0_exe21802 = atax_B8_branch_out_c0_exe21802;

    // out_c0_exe71856(GPOUT,27)
    assign out_c0_exe71856 = atax_B8_branch_out_c0_exe71856;

    // out_c0_exe81867(GPOUT,28)
    assign out_c0_exe81867 = atax_B8_branch_out_c0_exe81867;

    // out_memdep_17233_atax_avm_address(GPOUT,29)
    assign out_memdep_17233_atax_avm_address = bb_atax_B8_stall_region_out_memdep_17233_atax_avm_address;

    // out_memdep_17233_atax_avm_burstcount(GPOUT,30)
    assign out_memdep_17233_atax_avm_burstcount = bb_atax_B8_stall_region_out_memdep_17233_atax_avm_burstcount;

    // out_memdep_17233_atax_avm_byteenable(GPOUT,31)
    assign out_memdep_17233_atax_avm_byteenable = bb_atax_B8_stall_region_out_memdep_17233_atax_avm_byteenable;

    // out_memdep_17233_atax_avm_enable(GPOUT,32)
    assign out_memdep_17233_atax_avm_enable = bb_atax_B8_stall_region_out_memdep_17233_atax_avm_enable;

    // out_memdep_17233_atax_avm_read(GPOUT,33)
    assign out_memdep_17233_atax_avm_read = bb_atax_B8_stall_region_out_memdep_17233_atax_avm_read;

    // out_memdep_17233_atax_avm_write(GPOUT,34)
    assign out_memdep_17233_atax_avm_write = bb_atax_B8_stall_region_out_memdep_17233_atax_avm_write;

    // out_memdep_17233_atax_avm_writedata(GPOUT,35)
    assign out_memdep_17233_atax_avm_writedata = bb_atax_B8_stall_region_out_memdep_17233_atax_avm_writedata;

    // out_memdep_phi_pop20(GPOUT,36)
    assign out_memdep_phi_pop20 = atax_B8_branch_out_memdep_phi_pop20;

    // out_stall_out_0(GPOUT,37)
    assign out_stall_out_0 = atax_B8_merge_out_stall_out_0;

    // out_unnamed_atax18_atax_avm_address(GPOUT,38)
    assign out_unnamed_atax18_atax_avm_address = bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_address;

    // out_unnamed_atax18_atax_avm_burstcount(GPOUT,39)
    assign out_unnamed_atax18_atax_avm_burstcount = bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_burstcount;

    // out_unnamed_atax18_atax_avm_byteenable(GPOUT,40)
    assign out_unnamed_atax18_atax_avm_byteenable = bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_byteenable;

    // out_unnamed_atax18_atax_avm_enable(GPOUT,41)
    assign out_unnamed_atax18_atax_avm_enable = bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_enable;

    // out_unnamed_atax18_atax_avm_read(GPOUT,42)
    assign out_unnamed_atax18_atax_avm_read = bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_read;

    // out_unnamed_atax18_atax_avm_write(GPOUT,43)
    assign out_unnamed_atax18_atax_avm_write = bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_write;

    // out_unnamed_atax18_atax_avm_writedata(GPOUT,44)
    assign out_unnamed_atax18_atax_avm_writedata = bb_atax_B8_stall_region_out_unnamed_atax18_atax_avm_writedata;

    // out_valid_out_0(GPOUT,45)
    assign out_valid_out_0 = atax_B8_branch_out_valid_out_0;

endmodule
