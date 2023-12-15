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
// SystemVerilog created on Wed Dec 13 00:10:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B9_merge (
    input wire [0:0] in_exitcond38112_pop40135_0,
    input wire [0:0] in_exitcond38112_pop40135_1,
    input wire [0:0] in_forked43_0,
    input wire [0:0] in_forked43_1,
    input wire [63:0] in_idxprom27109_pop38130_0,
    input wire [63:0] in_idxprom27109_pop38130_1,
    input wire [0:0] in_memdep_phi_pop20139_0,
    input wire [0:0] in_memdep_phi_pop20139_1,
    input wire [0:0] in_notcmp74114_pop41137_0,
    input wire [0:0] in_notcmp74114_pop41137_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_atax19_0,
    input wire [31:0] in_unnamed_atax19_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond38112_pop40135,
    output wire [0:0] out_forked43,
    output wire [63:0] out_idxprom27109_pop38130,
    output wire [0:0] out_memdep_phi_pop20139,
    output wire [0:0] out_notcmp74114_pop41137,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax19,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond38112_pop40135_mux_s;
    reg [0:0] exitcond38112_pop40135_mux_q;
    wire [0:0] forked43_mux_s;
    reg [0:0] forked43_mux_q;
    wire [0:0] idxprom27109_pop38130_mux_s;
    reg [63:0] idxprom27109_pop38130_mux_q;
    wire [0:0] memdep_phi_pop20139_mux_s;
    reg [0:0] memdep_phi_pop20139_mux_q;
    wire [0:0] notcmp74114_pop41137_mux_s;
    reg [0:0] notcmp74114_pop41137_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_atax19_mux_s;
    reg [31:0] unnamed_atax19_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond38112_pop40135_mux(MUX,2)
    assign exitcond38112_pop40135_mux_s = in_valid_in_0;
    always @(exitcond38112_pop40135_mux_s or in_exitcond38112_pop40135_1 or in_exitcond38112_pop40135_0)
    begin
        unique case (exitcond38112_pop40135_mux_s)
            1'b0 : exitcond38112_pop40135_mux_q = in_exitcond38112_pop40135_1;
            1'b1 : exitcond38112_pop40135_mux_q = in_exitcond38112_pop40135_0;
            default : exitcond38112_pop40135_mux_q = 1'b0;
        endcase
    end

    // out_exitcond38112_pop40135(GPOUT,22)
    assign out_exitcond38112_pop40135 = exitcond38112_pop40135_mux_q;

    // forked43_mux(MUX,3)
    assign forked43_mux_s = in_valid_in_0;
    always @(forked43_mux_s or in_forked43_1 or in_forked43_0)
    begin
        unique case (forked43_mux_s)
            1'b0 : forked43_mux_q = in_forked43_1;
            1'b1 : forked43_mux_q = in_forked43_0;
            default : forked43_mux_q = 1'b0;
        endcase
    end

    // out_forked43(GPOUT,23)
    assign out_forked43 = forked43_mux_q;

    // idxprom27109_pop38130_mux(MUX,4)
    assign idxprom27109_pop38130_mux_s = in_valid_in_0;
    always @(idxprom27109_pop38130_mux_s or in_idxprom27109_pop38130_1 or in_idxprom27109_pop38130_0)
    begin
        unique case (idxprom27109_pop38130_mux_s)
            1'b0 : idxprom27109_pop38130_mux_q = in_idxprom27109_pop38130_1;
            1'b1 : idxprom27109_pop38130_mux_q = in_idxprom27109_pop38130_0;
            default : idxprom27109_pop38130_mux_q = 64'b0;
        endcase
    end

    // out_idxprom27109_pop38130(GPOUT,24)
    assign out_idxprom27109_pop38130 = idxprom27109_pop38130_mux_q;

    // memdep_phi_pop20139_mux(MUX,20)
    assign memdep_phi_pop20139_mux_s = in_valid_in_0;
    always @(memdep_phi_pop20139_mux_s or in_memdep_phi_pop20139_1 or in_memdep_phi_pop20139_0)
    begin
        unique case (memdep_phi_pop20139_mux_s)
            1'b0 : memdep_phi_pop20139_mux_q = in_memdep_phi_pop20139_1;
            1'b1 : memdep_phi_pop20139_mux_q = in_memdep_phi_pop20139_0;
            default : memdep_phi_pop20139_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop20139(GPOUT,25)
    assign out_memdep_phi_pop20139 = memdep_phi_pop20139_mux_q;

    // notcmp74114_pop41137_mux(MUX,21)
    assign notcmp74114_pop41137_mux_s = in_valid_in_0;
    always @(notcmp74114_pop41137_mux_s or in_notcmp74114_pop41137_1 or in_notcmp74114_pop41137_0)
    begin
        unique case (notcmp74114_pop41137_mux_s)
            1'b0 : notcmp74114_pop41137_mux_q = in_notcmp74114_pop41137_1;
            1'b1 : notcmp74114_pop41137_mux_q = in_notcmp74114_pop41137_0;
            default : notcmp74114_pop41137_mux_q = 1'b0;
        endcase
    end

    // out_notcmp74114_pop41137(GPOUT,26)
    assign out_notcmp74114_pop41137 = notcmp74114_pop41137_mux_q;

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

    // unnamed_atax19_mux(MUX,33)
    assign unnamed_atax19_mux_s = in_valid_in_0;
    always @(unnamed_atax19_mux_s or in_unnamed_atax19_1 or in_unnamed_atax19_0)
    begin
        unique case (unnamed_atax19_mux_s)
            1'b0 : unnamed_atax19_mux_q = in_unnamed_atax19_1;
            1'b1 : unnamed_atax19_mux_q = in_unnamed_atax19_0;
            default : unnamed_atax19_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_atax19(GPOUT,29)
    assign out_unnamed_atax19 = unnamed_atax19_mux_q;

    // out_valid_out(GPOUT,30)
    assign out_valid_out = valid_or_q;

endmodule
