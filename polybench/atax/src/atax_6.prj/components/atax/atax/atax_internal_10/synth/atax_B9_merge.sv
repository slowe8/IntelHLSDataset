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
// SystemVerilog created on Wed Dec 13 00:50:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B9_merge (
    input wire [0:0] in_exitcond29105_pop38126_0,
    input wire [0:0] in_exitcond29105_pop38126_1,
    input wire [0:0] in_forked36_0,
    input wire [0:0] in_forked36_1,
    input wire [63:0] in_idxprom27102_pop36121_0,
    input wire [63:0] in_idxprom27102_pop36121_1,
    input wire [0:0] in_memdep_phi_pop20130_0,
    input wire [0:0] in_memdep_phi_pop20130_1,
    input wire [0:0] in_notcmp67107_pop39128_0,
    input wire [0:0] in_notcmp67107_pop39128_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_atax15_0,
    input wire [31:0] in_unnamed_atax15_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond29105_pop38126,
    output wire [0:0] out_forked36,
    output wire [63:0] out_idxprom27102_pop36121,
    output wire [0:0] out_memdep_phi_pop20130,
    output wire [0:0] out_notcmp67107_pop39128,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax15,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond29105_pop38126_mux_s;
    reg [0:0] exitcond29105_pop38126_mux_q;
    wire [0:0] forked36_mux_s;
    reg [0:0] forked36_mux_q;
    wire [0:0] idxprom27102_pop36121_mux_s;
    reg [63:0] idxprom27102_pop36121_mux_q;
    wire [0:0] memdep_phi_pop20130_mux_s;
    reg [0:0] memdep_phi_pop20130_mux_q;
    wire [0:0] notcmp67107_pop39128_mux_s;
    reg [0:0] notcmp67107_pop39128_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_atax15_mux_s;
    reg [31:0] unnamed_atax15_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond29105_pop38126_mux(MUX,2)
    assign exitcond29105_pop38126_mux_s = in_valid_in_0;
    always @(exitcond29105_pop38126_mux_s or in_exitcond29105_pop38126_1 or in_exitcond29105_pop38126_0)
    begin
        unique case (exitcond29105_pop38126_mux_s)
            1'b0 : exitcond29105_pop38126_mux_q = in_exitcond29105_pop38126_1;
            1'b1 : exitcond29105_pop38126_mux_q = in_exitcond29105_pop38126_0;
            default : exitcond29105_pop38126_mux_q = 1'b0;
        endcase
    end

    // out_exitcond29105_pop38126(GPOUT,22)
    assign out_exitcond29105_pop38126 = exitcond29105_pop38126_mux_q;

    // forked36_mux(MUX,3)
    assign forked36_mux_s = in_valid_in_0;
    always @(forked36_mux_s or in_forked36_1 or in_forked36_0)
    begin
        unique case (forked36_mux_s)
            1'b0 : forked36_mux_q = in_forked36_1;
            1'b1 : forked36_mux_q = in_forked36_0;
            default : forked36_mux_q = 1'b0;
        endcase
    end

    // out_forked36(GPOUT,23)
    assign out_forked36 = forked36_mux_q;

    // idxprom27102_pop36121_mux(MUX,4)
    assign idxprom27102_pop36121_mux_s = in_valid_in_0;
    always @(idxprom27102_pop36121_mux_s or in_idxprom27102_pop36121_1 or in_idxprom27102_pop36121_0)
    begin
        unique case (idxprom27102_pop36121_mux_s)
            1'b0 : idxprom27102_pop36121_mux_q = in_idxprom27102_pop36121_1;
            1'b1 : idxprom27102_pop36121_mux_q = in_idxprom27102_pop36121_0;
            default : idxprom27102_pop36121_mux_q = 64'b0;
        endcase
    end

    // out_idxprom27102_pop36121(GPOUT,24)
    assign out_idxprom27102_pop36121 = idxprom27102_pop36121_mux_q;

    // memdep_phi_pop20130_mux(MUX,20)
    assign memdep_phi_pop20130_mux_s = in_valid_in_0;
    always @(memdep_phi_pop20130_mux_s or in_memdep_phi_pop20130_1 or in_memdep_phi_pop20130_0)
    begin
        unique case (memdep_phi_pop20130_mux_s)
            1'b0 : memdep_phi_pop20130_mux_q = in_memdep_phi_pop20130_1;
            1'b1 : memdep_phi_pop20130_mux_q = in_memdep_phi_pop20130_0;
            default : memdep_phi_pop20130_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop20130(GPOUT,25)
    assign out_memdep_phi_pop20130 = memdep_phi_pop20130_mux_q;

    // notcmp67107_pop39128_mux(MUX,21)
    assign notcmp67107_pop39128_mux_s = in_valid_in_0;
    always @(notcmp67107_pop39128_mux_s or in_notcmp67107_pop39128_1 or in_notcmp67107_pop39128_0)
    begin
        unique case (notcmp67107_pop39128_mux_s)
            1'b0 : notcmp67107_pop39128_mux_q = in_notcmp67107_pop39128_1;
            1'b1 : notcmp67107_pop39128_mux_q = in_notcmp67107_pop39128_0;
            default : notcmp67107_pop39128_mux_q = 1'b0;
        endcase
    end

    // out_notcmp67107_pop39128(GPOUT,26)
    assign out_notcmp67107_pop39128 = notcmp67107_pop39128_mux_q;

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
