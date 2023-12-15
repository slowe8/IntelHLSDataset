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
// SystemVerilog created on Wed Dec 13 00:34:09 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B8_merge (
    input wire [63:0] in_c0_exe21592_0,
    input wire [31:0] in_c0_exe31603_0,
    input wire [0:0] in_c0_exe51624_0,
    input wire [63:0] in_c0_exe61635_0,
    input wire [0:0] in_c0_exe71646_0,
    input wire [0:0] in_c0_exe81657_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe21592,
    output wire [31:0] out_c0_exe31603,
    output wire [0:0] out_c0_exe51624,
    output wire [63:0] out_c0_exe61635,
    output wire [0:0] out_c0_exe71646,
    output wire [0:0] out_c0_exe81657,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe21592(GPOUT,10)
    assign out_c0_exe21592 = in_c0_exe21592_0;

    // out_c0_exe31603(GPOUT,11)
    assign out_c0_exe31603 = in_c0_exe31603_0;

    // out_c0_exe51624(GPOUT,12)
    assign out_c0_exe51624 = in_c0_exe51624_0;

    // out_c0_exe61635(GPOUT,13)
    assign out_c0_exe61635 = in_c0_exe61635_0;

    // out_c0_exe71646(GPOUT,14)
    assign out_c0_exe71646 = in_c0_exe71646_0;

    // out_c0_exe81657(GPOUT,15)
    assign out_c0_exe81657 = in_c0_exe81657_0;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,17)
    assign out_valid_out = in_valid_in_0;

endmodule
