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

// SystemVerilog created from atax_B7_merge
// SystemVerilog created on Wed Dec 13 00:19:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B7_merge (
    input wire [63:0] in_arrayidx2812149_0,
    input wire [63:0] in_arrayidx2812149_1,
    input wire [31:0] in_arrayidx28_promoted11150_0,
    input wire [31:0] in_arrayidx28_promoted11150_1,
    input wire [0:0] in_exitcond57151_0,
    input wire [0:0] in_exitcond57151_1,
    input wire [0:0] in_forked124147_0,
    input wire [0:0] in_forked124147_1,
    input wire [0:0] in_forked78_0,
    input wire [0:0] in_forked78_1,
    input wire [63:0] in_idxprom27148_0,
    input wire [63:0] in_idxprom27148_1,
    input wire [0:0] in_notcmp93152_0,
    input wire [0:0] in_notcmp93152_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx2812149,
    output wire [31:0] out_arrayidx28_promoted11150,
    output wire [0:0] out_exitcond57151,
    output wire [0:0] out_forked124147,
    output wire [0:0] out_forked78,
    output wire [63:0] out_idxprom27148,
    output wire [0:0] out_notcmp93152,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx2812149_mux_s;
    reg [63:0] arrayidx2812149_mux_q;
    wire [0:0] arrayidx28_promoted11150_mux_s;
    reg [31:0] arrayidx28_promoted11150_mux_q;
    wire [0:0] exitcond57151_mux_s;
    reg [0:0] exitcond57151_mux_q;
    wire [0:0] forked124147_mux_s;
    reg [0:0] forked124147_mux_q;
    wire [0:0] forked78_mux_s;
    reg [0:0] forked78_mux_q;
    wire [0:0] idxprom27148_mux_s;
    reg [63:0] idxprom27148_mux_q;
    wire [0:0] notcmp93152_mux_s;
    reg [0:0] notcmp93152_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx2812149_mux(MUX,2)
    assign arrayidx2812149_mux_s = in_valid_in_0;
    always @(arrayidx2812149_mux_s or in_arrayidx2812149_1 or in_arrayidx2812149_0)
    begin
        unique case (arrayidx2812149_mux_s)
            1'b0 : arrayidx2812149_mux_q = in_arrayidx2812149_1;
            1'b1 : arrayidx2812149_mux_q = in_arrayidx2812149_0;
            default : arrayidx2812149_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx2812149(GPOUT,26)
    assign out_arrayidx2812149 = arrayidx2812149_mux_q;

    // arrayidx28_promoted11150_mux(MUX,3)
    assign arrayidx28_promoted11150_mux_s = in_valid_in_0;
    always @(arrayidx28_promoted11150_mux_s or in_arrayidx28_promoted11150_1 or in_arrayidx28_promoted11150_0)
    begin
        unique case (arrayidx28_promoted11150_mux_s)
            1'b0 : arrayidx28_promoted11150_mux_q = in_arrayidx28_promoted11150_1;
            1'b1 : arrayidx28_promoted11150_mux_q = in_arrayidx28_promoted11150_0;
            default : arrayidx28_promoted11150_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx28_promoted11150(GPOUT,27)
    assign out_arrayidx28_promoted11150 = arrayidx28_promoted11150_mux_q;

    // exitcond57151_mux(MUX,4)
    assign exitcond57151_mux_s = in_valid_in_0;
    always @(exitcond57151_mux_s or in_exitcond57151_1 or in_exitcond57151_0)
    begin
        unique case (exitcond57151_mux_s)
            1'b0 : exitcond57151_mux_q = in_exitcond57151_1;
            1'b1 : exitcond57151_mux_q = in_exitcond57151_0;
            default : exitcond57151_mux_q = 1'b0;
        endcase
    end

    // out_exitcond57151(GPOUT,28)
    assign out_exitcond57151 = exitcond57151_mux_q;

    // forked124147_mux(MUX,5)
    assign forked124147_mux_s = in_valid_in_0;
    always @(forked124147_mux_s or in_forked124147_1 or in_forked124147_0)
    begin
        unique case (forked124147_mux_s)
            1'b0 : forked124147_mux_q = in_forked124147_1;
            1'b1 : forked124147_mux_q = in_forked124147_0;
            default : forked124147_mux_q = 1'b0;
        endcase
    end

    // out_forked124147(GPOUT,29)
    assign out_forked124147 = forked124147_mux_q;

    // forked78_mux(MUX,6)
    assign forked78_mux_s = in_valid_in_0;
    always @(forked78_mux_s or in_forked78_1 or in_forked78_0)
    begin
        unique case (forked78_mux_s)
            1'b0 : forked78_mux_q = in_forked78_1;
            1'b1 : forked78_mux_q = in_forked78_0;
            default : forked78_mux_q = 1'b0;
        endcase
    end

    // out_forked78(GPOUT,30)
    assign out_forked78 = forked78_mux_q;

    // idxprom27148_mux(MUX,7)
    assign idxprom27148_mux_s = in_valid_in_0;
    always @(idxprom27148_mux_s or in_idxprom27148_1 or in_idxprom27148_0)
    begin
        unique case (idxprom27148_mux_s)
            1'b0 : idxprom27148_mux_q = in_idxprom27148_1;
            1'b1 : idxprom27148_mux_q = in_idxprom27148_0;
            default : idxprom27148_mux_q = 64'b0;
        endcase
    end

    // out_idxprom27148(GPOUT,31)
    assign out_idxprom27148 = idxprom27148_mux_q;

    // notcmp93152_mux(MUX,25)
    assign notcmp93152_mux_s = in_valid_in_0;
    always @(notcmp93152_mux_s or in_notcmp93152_1 or in_notcmp93152_0)
    begin
        unique case (notcmp93152_mux_s)
            1'b0 : notcmp93152_mux_q = in_notcmp93152_1;
            1'b1 : notcmp93152_mux_q = in_notcmp93152_0;
            default : notcmp93152_mux_q = 1'b0;
        endcase
    end

    // out_notcmp93152(GPOUT,32)
    assign out_notcmp93152 = notcmp93152_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,36)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,37)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,34)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,35)
    assign out_valid_out = valid_or_q;

endmodule
