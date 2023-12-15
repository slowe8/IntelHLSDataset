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

// SystemVerilog created from atax_bb_B0_runOnce
// SystemVerilog created on Wed Dec 13 00:43:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B0_runOnce (
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B0_runOnce_branch_out_stall_out;
    wire [0:0] atax_B0_runOnce_branch_out_valid_out_0;
    wire [0:0] atax_B0_runOnce_merge_out_stall_out_0;
    wire [0:0] atax_B0_runOnce_merge_out_valid_out;
    wire [0:0] bb_atax_B0_runOnce_stall_region_out_stall_out;
    wire [0:0] bb_atax_B0_runOnce_stall_region_out_valid_out;


    // atax_B0_runOnce_branch(BLACKBOX,2)
    atax_B0_runOnce_branch theatax_B0_runOnce_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B0_runOnce_stall_region_out_valid_out),
        .out_stall_out(atax_B0_runOnce_branch_out_stall_out),
        .out_valid_out_0(atax_B0_runOnce_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B0_runOnce_stall_region(BLACKBOX,4)
    atax_bb_B0_runOnce_stall_region thebb_atax_B0_runOnce_stall_region (
        .in_stall_in(atax_B0_runOnce_branch_out_stall_out),
        .in_valid_in(atax_B0_runOnce_merge_out_valid_out),
        .out_stall_out(bb_atax_B0_runOnce_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B0_runOnce_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B0_runOnce_merge(BLACKBOX,3)
    atax_B0_runOnce_merge theatax_B0_runOnce_merge (
        .in_stall_in(bb_atax_B0_runOnce_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(atax_B0_runOnce_merge_out_stall_out_0),
        .out_valid_out(atax_B0_runOnce_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,7)
    assign out_stall_out_0 = atax_B0_runOnce_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,8)
    assign out_valid_out_0 = atax_B0_runOnce_branch_out_valid_out_0;

endmodule
