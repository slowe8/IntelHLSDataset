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
// SystemVerilog created on Wed Dec 13 00:40:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B7_merge (
    input wire [63:0] in_arrayidx288105_0,
    input wire [63:0] in_arrayidx288105_1,
    input wire [31:0] in_arrayidx28_promoted2106_0,
    input wire [31:0] in_arrayidx28_promoted2106_1,
    input wire [0:0] in_exitcond19107_0,
    input wire [0:0] in_exitcond19107_1,
    input wire [0:0] in_forked41_0,
    input wire [0:0] in_forked41_1,
    input wire [0:0] in_forked87103_0,
    input wire [0:0] in_forked87103_1,
    input wire [63:0] in_idxprom27104_0,
    input wire [63:0] in_idxprom27104_1,
    input wire [0:0] in_notcmp56108_0,
    input wire [0:0] in_notcmp56108_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx288105,
    output wire [31:0] out_arrayidx28_promoted2106,
    output wire [0:0] out_exitcond19107,
    output wire [0:0] out_forked41,
    output wire [0:0] out_forked87103,
    output wire [63:0] out_idxprom27104,
    output wire [0:0] out_notcmp56108,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx288105_mux_s;
    reg [63:0] arrayidx288105_mux_q;
    wire [0:0] arrayidx28_promoted2106_mux_s;
    reg [31:0] arrayidx28_promoted2106_mux_q;
    wire [0:0] exitcond19107_mux_s;
    reg [0:0] exitcond19107_mux_q;
    wire [0:0] forked41_mux_s;
    reg [0:0] forked41_mux_q;
    wire [0:0] forked87103_mux_s;
    reg [0:0] forked87103_mux_q;
    wire [0:0] idxprom27104_mux_s;
    reg [63:0] idxprom27104_mux_q;
    wire [0:0] notcmp56108_mux_s;
    reg [0:0] notcmp56108_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx288105_mux(MUX,2)
    assign arrayidx288105_mux_s = in_valid_in_0;
    always @(arrayidx288105_mux_s or in_arrayidx288105_1 or in_arrayidx288105_0)
    begin
        unique case (arrayidx288105_mux_s)
            1'b0 : arrayidx288105_mux_q = in_arrayidx288105_1;
            1'b1 : arrayidx288105_mux_q = in_arrayidx288105_0;
            default : arrayidx288105_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx288105(GPOUT,26)
    assign out_arrayidx288105 = arrayidx288105_mux_q;

    // arrayidx28_promoted2106_mux(MUX,3)
    assign arrayidx28_promoted2106_mux_s = in_valid_in_0;
    always @(arrayidx28_promoted2106_mux_s or in_arrayidx28_promoted2106_1 or in_arrayidx28_promoted2106_0)
    begin
        unique case (arrayidx28_promoted2106_mux_s)
            1'b0 : arrayidx28_promoted2106_mux_q = in_arrayidx28_promoted2106_1;
            1'b1 : arrayidx28_promoted2106_mux_q = in_arrayidx28_promoted2106_0;
            default : arrayidx28_promoted2106_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx28_promoted2106(GPOUT,27)
    assign out_arrayidx28_promoted2106 = arrayidx28_promoted2106_mux_q;

    // exitcond19107_mux(MUX,4)
    assign exitcond19107_mux_s = in_valid_in_0;
    always @(exitcond19107_mux_s or in_exitcond19107_1 or in_exitcond19107_0)
    begin
        unique case (exitcond19107_mux_s)
            1'b0 : exitcond19107_mux_q = in_exitcond19107_1;
            1'b1 : exitcond19107_mux_q = in_exitcond19107_0;
            default : exitcond19107_mux_q = 1'b0;
        endcase
    end

    // out_exitcond19107(GPOUT,28)
    assign out_exitcond19107 = exitcond19107_mux_q;

    // forked41_mux(MUX,5)
    assign forked41_mux_s = in_valid_in_0;
    always @(forked41_mux_s or in_forked41_1 or in_forked41_0)
    begin
        unique case (forked41_mux_s)
            1'b0 : forked41_mux_q = in_forked41_1;
            1'b1 : forked41_mux_q = in_forked41_0;
            default : forked41_mux_q = 1'b0;
        endcase
    end

    // out_forked41(GPOUT,29)
    assign out_forked41 = forked41_mux_q;

    // forked87103_mux(MUX,6)
    assign forked87103_mux_s = in_valid_in_0;
    always @(forked87103_mux_s or in_forked87103_1 or in_forked87103_0)
    begin
        unique case (forked87103_mux_s)
            1'b0 : forked87103_mux_q = in_forked87103_1;
            1'b1 : forked87103_mux_q = in_forked87103_0;
            default : forked87103_mux_q = 1'b0;
        endcase
    end

    // out_forked87103(GPOUT,30)
    assign out_forked87103 = forked87103_mux_q;

    // idxprom27104_mux(MUX,7)
    assign idxprom27104_mux_s = in_valid_in_0;
    always @(idxprom27104_mux_s or in_idxprom27104_1 or in_idxprom27104_0)
    begin
        unique case (idxprom27104_mux_s)
            1'b0 : idxprom27104_mux_q = in_idxprom27104_1;
            1'b1 : idxprom27104_mux_q = in_idxprom27104_0;
            default : idxprom27104_mux_q = 64'b0;
        endcase
    end

    // out_idxprom27104(GPOUT,31)
    assign out_idxprom27104 = idxprom27104_mux_q;

    // notcmp56108_mux(MUX,25)
    assign notcmp56108_mux_s = in_valid_in_0;
    always @(notcmp56108_mux_s or in_notcmp56108_1 or in_notcmp56108_0)
    begin
        unique case (notcmp56108_mux_s)
            1'b0 : notcmp56108_mux_q = in_notcmp56108_1;
            1'b1 : notcmp56108_mux_q = in_notcmp56108_0;
            default : notcmp56108_mux_q = 1'b0;
        endcase
    end

    // out_notcmp56108(GPOUT,32)
    assign out_notcmp56108 = notcmp56108_mux_q;

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
