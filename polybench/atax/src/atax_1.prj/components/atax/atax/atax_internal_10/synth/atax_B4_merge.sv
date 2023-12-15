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

// SystemVerilog created from atax_B4_merge
// SystemVerilog created on Wed Dec 13 00:34:09 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B4_merge (
    input wire [0:0] in_forked62_0,
    input wire [0:0] in_forked62_1,
    input wire [63:0] in_idxprom100_0,
    input wire [63:0] in_idxprom100_1,
    input wire [0:0] in_notcmp77101_0,
    input wire [0:0] in_notcmp77101_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked62,
    output wire [63:0] out_idxprom100,
    output wire [0:0] out_notcmp77101,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked62_mux_s;
    reg [0:0] forked62_mux_q;
    wire [0:0] idxprom100_mux_s;
    reg [63:0] idxprom100_mux_q;
    wire [0:0] notcmp77101_mux_s;
    reg [0:0] notcmp77101_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked62_mux(MUX,2)
    assign forked62_mux_s = in_valid_in_0;
    always @(forked62_mux_s or in_forked62_1 or in_forked62_0)
    begin
        unique case (forked62_mux_s)
            1'b0 : forked62_mux_q = in_forked62_1;
            1'b1 : forked62_mux_q = in_forked62_0;
            default : forked62_mux_q = 1'b0;
        endcase
    end

    // out_forked62(GPOUT,14)
    assign out_forked62 = forked62_mux_q;

    // idxprom100_mux(MUX,3)
    assign idxprom100_mux_s = in_valid_in_0;
    always @(idxprom100_mux_s or in_idxprom100_1 or in_idxprom100_0)
    begin
        unique case (idxprom100_mux_s)
            1'b0 : idxprom100_mux_q = in_idxprom100_1;
            1'b1 : idxprom100_mux_q = in_idxprom100_0;
            default : idxprom100_mux_q = 64'b0;
        endcase
    end

    // out_idxprom100(GPOUT,15)
    assign out_idxprom100 = idxprom100_mux_q;

    // notcmp77101_mux(MUX,13)
    assign notcmp77101_mux_s = in_valid_in_0;
    always @(notcmp77101_mux_s or in_notcmp77101_1 or in_notcmp77101_0)
    begin
        unique case (notcmp77101_mux_s)
            1'b0 : notcmp77101_mux_q = in_notcmp77101_1;
            1'b1 : notcmp77101_mux_q = in_notcmp77101_0;
            default : notcmp77101_mux_q = 1'b0;
        endcase
    end

    // out_notcmp77101(GPOUT,16)
    assign out_notcmp77101 = notcmp77101_mux_q;

    // valid_or(LOGICAL,22)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,20)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,21)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,19)
    assign out_valid_out = valid_or_q;

endmodule
