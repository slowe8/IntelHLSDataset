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

// SystemVerilog created from atax_B9_merge
// SystemVerilog created on Wed Dec 13 00:37:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B9_merge (
    input wire [0:0] in_exitcond1994_pop37114_0,
    input wire [0:0] in_exitcond1994_pop37114_1,
    input wire [0:0] in_forked25_0,
    input wire [0:0] in_forked25_1,
    input wire [63:0] in_idxprom2791_pop35109_0,
    input wire [63:0] in_idxprom2791_pop35109_1,
    input wire [0:0] in_memdep_phi_pop20118_0,
    input wire [0:0] in_memdep_phi_pop20118_1,
    input wire [0:0] in_notcmp5696_pop38116_0,
    input wire [0:0] in_notcmp5696_pop38116_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_atax15_0,
    input wire [31:0] in_unnamed_atax15_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1994_pop37114,
    output wire [0:0] out_forked25,
    output wire [63:0] out_idxprom2791_pop35109,
    output wire [0:0] out_memdep_phi_pop20118,
    output wire [0:0] out_notcmp5696_pop38116,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax15,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1994_pop37114_mux_s;
    reg [0:0] exitcond1994_pop37114_mux_q;
    wire [0:0] forked25_mux_s;
    reg [0:0] forked25_mux_q;
    wire [0:0] idxprom2791_pop35109_mux_s;
    reg [63:0] idxprom2791_pop35109_mux_q;
    wire [0:0] memdep_phi_pop20118_mux_s;
    reg [0:0] memdep_phi_pop20118_mux_q;
    wire [0:0] notcmp5696_pop38116_mux_s;
    reg [0:0] notcmp5696_pop38116_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_atax15_mux_s;
    reg [31:0] unnamed_atax15_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1994_pop37114_mux(MUX,2)
    assign exitcond1994_pop37114_mux_s = in_valid_in_0;
    always @(exitcond1994_pop37114_mux_s or in_exitcond1994_pop37114_1 or in_exitcond1994_pop37114_0)
    begin
        unique case (exitcond1994_pop37114_mux_s)
            1'b0 : exitcond1994_pop37114_mux_q = in_exitcond1994_pop37114_1;
            1'b1 : exitcond1994_pop37114_mux_q = in_exitcond1994_pop37114_0;
            default : exitcond1994_pop37114_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1994_pop37114(GPOUT,22)
    assign out_exitcond1994_pop37114 = exitcond1994_pop37114_mux_q;

    // forked25_mux(MUX,3)
    assign forked25_mux_s = in_valid_in_0;
    always @(forked25_mux_s or in_forked25_1 or in_forked25_0)
    begin
        unique case (forked25_mux_s)
            1'b0 : forked25_mux_q = in_forked25_1;
            1'b1 : forked25_mux_q = in_forked25_0;
            default : forked25_mux_q = 1'b0;
        endcase
    end

    // out_forked25(GPOUT,23)
    assign out_forked25 = forked25_mux_q;

    // idxprom2791_pop35109_mux(MUX,4)
    assign idxprom2791_pop35109_mux_s = in_valid_in_0;
    always @(idxprom2791_pop35109_mux_s or in_idxprom2791_pop35109_1 or in_idxprom2791_pop35109_0)
    begin
        unique case (idxprom2791_pop35109_mux_s)
            1'b0 : idxprom2791_pop35109_mux_q = in_idxprom2791_pop35109_1;
            1'b1 : idxprom2791_pop35109_mux_q = in_idxprom2791_pop35109_0;
            default : idxprom2791_pop35109_mux_q = 64'b0;
        endcase
    end

    // out_idxprom2791_pop35109(GPOUT,24)
    assign out_idxprom2791_pop35109 = idxprom2791_pop35109_mux_q;

    // memdep_phi_pop20118_mux(MUX,20)
    assign memdep_phi_pop20118_mux_s = in_valid_in_0;
    always @(memdep_phi_pop20118_mux_s or in_memdep_phi_pop20118_1 or in_memdep_phi_pop20118_0)
    begin
        unique case (memdep_phi_pop20118_mux_s)
            1'b0 : memdep_phi_pop20118_mux_q = in_memdep_phi_pop20118_1;
            1'b1 : memdep_phi_pop20118_mux_q = in_memdep_phi_pop20118_0;
            default : memdep_phi_pop20118_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop20118(GPOUT,25)
    assign out_memdep_phi_pop20118 = memdep_phi_pop20118_mux_q;

    // notcmp5696_pop38116_mux(MUX,21)
    assign notcmp5696_pop38116_mux_s = in_valid_in_0;
    always @(notcmp5696_pop38116_mux_s or in_notcmp5696_pop38116_1 or in_notcmp5696_pop38116_0)
    begin
        unique case (notcmp5696_pop38116_mux_s)
            1'b0 : notcmp5696_pop38116_mux_q = in_notcmp5696_pop38116_1;
            1'b1 : notcmp5696_pop38116_mux_q = in_notcmp5696_pop38116_0;
            default : notcmp5696_pop38116_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5696_pop38116(GPOUT,26)
    assign out_notcmp5696_pop38116 = notcmp5696_pop38116_mux_q;

    // valid_or(LOGICAL,34)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,31)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,27)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,32)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,28)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_atax15_mux(MUX,33)
    assign unnamed_atax15_mux_s = in_valid_in_0;
    always @(unnamed_atax15_mux_s or in_unnamed_atax15_1 or in_unnamed_atax15_0)
    begin
        unique case (unnamed_atax15_mux_s)
            1'b0 : unnamed_atax15_mux_q = in_unnamed_atax15_1;
            1'b1 : unnamed_atax15_mux_q = in_unnamed_atax15_0;
            default : unnamed_atax15_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_atax15(GPOUT,29)
    assign out_unnamed_atax15 = unnamed_atax15_mux_q;

    // out_valid_out(GPOUT,30)
    assign out_valid_out = valid_or_q;

endmodule
