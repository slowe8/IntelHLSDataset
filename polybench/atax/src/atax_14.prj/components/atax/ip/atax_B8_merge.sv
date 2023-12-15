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

// SystemVerilog created from atax_B8_merge
// SystemVerilog created on Wed Dec 13 00:24:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B8_merge (
    input wire [63:0] in_c0_exe22032_0,
    input wire [31:0] in_c0_exe32043_0,
    input wire [0:0] in_c0_exe52064_0,
    input wire [63:0] in_c0_exe62075_0,
    input wire [0:0] in_c0_exe72086_0,
    input wire [0:0] in_c0_exe82097_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe22032,
    output wire [31:0] out_c0_exe32043,
    output wire [0:0] out_c0_exe52064,
    output wire [63:0] out_c0_exe62075,
    output wire [0:0] out_c0_exe72086,
    output wire [0:0] out_c0_exe82097,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe22032(GPOUT,10)
    assign out_c0_exe22032 = in_c0_exe22032_0;

    // out_c0_exe32043(GPOUT,11)
    assign out_c0_exe32043 = in_c0_exe32043_0;

    // out_c0_exe52064(GPOUT,12)
    assign out_c0_exe52064 = in_c0_exe52064_0;

    // out_c0_exe62075(GPOUT,13)
    assign out_c0_exe62075 = in_c0_exe62075_0;

    // out_c0_exe72086(GPOUT,14)
    assign out_c0_exe72086 = in_c0_exe72086_0;

    // out_c0_exe82097(GPOUT,15)
    assign out_c0_exe82097 = in_c0_exe82097_0;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,17)
    assign out_valid_out = in_valid_in_0;

endmodule
