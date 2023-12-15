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
// SystemVerilog created on Wed Dec 13 00:56:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B7_merge (
    input wire [63:0] in_arrayidx2812126_0,
    input wire [63:0] in_arrayidx2812126_1,
    input wire [31:0] in_arrayidx28_promoted14127_0,
    input wire [31:0] in_arrayidx28_promoted14127_1,
    input wire [0:0] in_exitcond38128_0,
    input wire [0:0] in_exitcond38128_1,
    input wire [0:0] in_forked105124_0,
    input wire [0:0] in_forked105124_1,
    input wire [0:0] in_forked59_0,
    input wire [0:0] in_forked59_1,
    input wire [63:0] in_idxprom27125_0,
    input wire [63:0] in_idxprom27125_1,
    input wire [0:0] in_notcmp74129_0,
    input wire [0:0] in_notcmp74129_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx2812126,
    output wire [31:0] out_arrayidx28_promoted14127,
    output wire [0:0] out_exitcond38128,
    output wire [0:0] out_forked105124,
    output wire [0:0] out_forked59,
    output wire [63:0] out_idxprom27125,
    output wire [0:0] out_notcmp74129,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx2812126_mux_s;
    reg [63:0] arrayidx2812126_mux_q;
    wire [0:0] arrayidx28_promoted14127_mux_s;
    reg [31:0] arrayidx28_promoted14127_mux_q;
    wire [0:0] exitcond38128_mux_s;
    reg [0:0] exitcond38128_mux_q;
    wire [0:0] forked105124_mux_s;
    reg [0:0] forked105124_mux_q;
    wire [0:0] forked59_mux_s;
    reg [0:0] forked59_mux_q;
    wire [0:0] idxprom27125_mux_s;
    reg [63:0] idxprom27125_mux_q;
    wire [0:0] notcmp74129_mux_s;
    reg [0:0] notcmp74129_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx2812126_mux(MUX,2)
    assign arrayidx2812126_mux_s = in_valid_in_0;
    always @(arrayidx2812126_mux_s or in_arrayidx2812126_1 or in_arrayidx2812126_0)
    begin
        unique case (arrayidx2812126_mux_s)
            1'b0 : arrayidx2812126_mux_q = in_arrayidx2812126_1;
            1'b1 : arrayidx2812126_mux_q = in_arrayidx2812126_0;
            default : arrayidx2812126_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx2812126(GPOUT,26)
    assign out_arrayidx2812126 = arrayidx2812126_mux_q;

    // arrayidx28_promoted14127_mux(MUX,3)
    assign arrayidx28_promoted14127_mux_s = in_valid_in_0;
    always @(arrayidx28_promoted14127_mux_s or in_arrayidx28_promoted14127_1 or in_arrayidx28_promoted14127_0)
    begin
        unique case (arrayidx28_promoted14127_mux_s)
            1'b0 : arrayidx28_promoted14127_mux_q = in_arrayidx28_promoted14127_1;
            1'b1 : arrayidx28_promoted14127_mux_q = in_arrayidx28_promoted14127_0;
            default : arrayidx28_promoted14127_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx28_promoted14127(GPOUT,27)
    assign out_arrayidx28_promoted14127 = arrayidx28_promoted14127_mux_q;

    // exitcond38128_mux(MUX,4)
    assign exitcond38128_mux_s = in_valid_in_0;
    always @(exitcond38128_mux_s or in_exitcond38128_1 or in_exitcond38128_0)
    begin
        unique case (exitcond38128_mux_s)
            1'b0 : exitcond38128_mux_q = in_exitcond38128_1;
            1'b1 : exitcond38128_mux_q = in_exitcond38128_0;
            default : exitcond38128_mux_q = 1'b0;
        endcase
    end

    // out_exitcond38128(GPOUT,28)
    assign out_exitcond38128 = exitcond38128_mux_q;

    // forked105124_mux(MUX,5)
    assign forked105124_mux_s = in_valid_in_0;
    always @(forked105124_mux_s or in_forked105124_1 or in_forked105124_0)
    begin
        unique case (forked105124_mux_s)
            1'b0 : forked105124_mux_q = in_forked105124_1;
            1'b1 : forked105124_mux_q = in_forked105124_0;
            default : forked105124_mux_q = 1'b0;
        endcase
    end

    // out_forked105124(GPOUT,29)
    assign out_forked105124 = forked105124_mux_q;

    // forked59_mux(MUX,6)
    assign forked59_mux_s = in_valid_in_0;
    always @(forked59_mux_s or in_forked59_1 or in_forked59_0)
    begin
        unique case (forked59_mux_s)
            1'b0 : forked59_mux_q = in_forked59_1;
            1'b1 : forked59_mux_q = in_forked59_0;
            default : forked59_mux_q = 1'b0;
        endcase
    end

    // out_forked59(GPOUT,30)
    assign out_forked59 = forked59_mux_q;

    // idxprom27125_mux(MUX,7)
    assign idxprom27125_mux_s = in_valid_in_0;
    always @(idxprom27125_mux_s or in_idxprom27125_1 or in_idxprom27125_0)
    begin
        unique case (idxprom27125_mux_s)
            1'b0 : idxprom27125_mux_q = in_idxprom27125_1;
            1'b1 : idxprom27125_mux_q = in_idxprom27125_0;
            default : idxprom27125_mux_q = 64'b0;
        endcase
    end

    // out_idxprom27125(GPOUT,31)
    assign out_idxprom27125 = idxprom27125_mux_q;

    // notcmp74129_mux(MUX,25)
    assign notcmp74129_mux_s = in_valid_in_0;
    always @(notcmp74129_mux_s or in_notcmp74129_1 or in_notcmp74129_0)
    begin
        unique case (notcmp74129_mux_s)
            1'b0 : notcmp74129_mux_q = in_notcmp74129_1;
            1'b1 : notcmp74129_mux_q = in_notcmp74129_0;
            default : notcmp74129_mux_q = 1'b0;
        endcase
    end

    // out_notcmp74129(GPOUT,32)
    assign out_notcmp74129 = notcmp74129_mux_q;

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
