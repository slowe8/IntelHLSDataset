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
// SystemVerilog created on Wed Dec 13 00:46:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B8_merge (
    input wire [63:0] in_c0_exe21712_0,
    input wire [31:0] in_c0_exe31723_0,
    input wire [0:0] in_c0_exe51744_0,
    input wire [63:0] in_c0_exe61755_0,
    input wire [0:0] in_c0_exe71766_0,
    input wire [0:0] in_c0_exe81777_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe21712,
    output wire [31:0] out_c0_exe31723,
    output wire [0:0] out_c0_exe51744,
    output wire [63:0] out_c0_exe61755,
    output wire [0:0] out_c0_exe71766,
    output wire [0:0] out_c0_exe81777,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe21712(GPOUT,10)
    assign out_c0_exe21712 = in_c0_exe21712_0;

    // out_c0_exe31723(GPOUT,11)
    assign out_c0_exe31723 = in_c0_exe31723_0;

    // out_c0_exe51744(GPOUT,12)
    assign out_c0_exe51744 = in_c0_exe51744_0;

    // out_c0_exe61755(GPOUT,13)
    assign out_c0_exe61755 = in_c0_exe61755_0;

    // out_c0_exe71766(GPOUT,14)
    assign out_c0_exe71766 = in_c0_exe71766_0;

    // out_c0_exe81777(GPOUT,15)
    assign out_c0_exe81777 = in_c0_exe81777_0;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,17)
    assign out_valid_out = in_valid_in_0;

endmodule
