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

// SystemVerilog created from atax_B6_branch
// SystemVerilog created on Tue Jan  2 20:41:09 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B6_branch (
    input wire [63:0] in_c0_exe1136,
    input wire [63:0] in_c0_exe2137,
    input wire [31:0] in_c0_exe3138,
    input wire [0:0] in_c0_exe4139,
    input wire [0:0] in_c0_exe5140,
    input wire [0:0] in_c0_exe6141,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe1136,
    output wire [63:0] out_c0_exe2137,
    output wire [31:0] out_c0_exe3138,
    output wire [0:0] out_c0_exe4139,
    output wire [0:0] out_c0_exe5140,
    output wire [0:0] out_c0_exe6141,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1136(GPOUT,10)
    assign out_c0_exe1136 = in_c0_exe1136;

    // out_c0_exe2137(GPOUT,11)
    assign out_c0_exe2137 = in_c0_exe2137;

    // out_c0_exe3138(GPOUT,12)
    assign out_c0_exe3138 = in_c0_exe3138;

    // out_c0_exe4139(GPOUT,13)
    assign out_c0_exe4139 = in_c0_exe4139;

    // out_c0_exe5140(GPOUT,14)
    assign out_c0_exe5140 = in_c0_exe5140;

    // out_c0_exe6141(GPOUT,15)
    assign out_c0_exe6141 = in_c0_exe6141;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,16)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = in_valid_in;

endmodule
