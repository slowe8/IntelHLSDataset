// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.1 (Release Build #173.3)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
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

// SystemVerilog created from atax_B6_branch
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B6_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [63:0] in_c0_exe1131,
    input wire [63:0] in_c0_exe2132,
    input wire [31:0] in_c0_exe3133,
    input wire [0:0] in_c0_exe4134,
    input wire [0:0] in_c0_exe5135,
    input wire [0:0] in_c0_exe6,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe1131,
    output wire [63:0] out_c0_exe2132,
    output wire [31:0] out_c0_exe3133,
    output wire [0:0] out_c0_exe4134,
    output wire [0:0] out_c0_exe5135,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc12_in;
    wire [0:0] adapt_scalar_trunc12_q;
    wire [0:0] adapt_scalar_trunc6_in;
    wire [0:0] adapt_scalar_trunc6_q;
    wire [0:0] adapt_scalar_trunc9_in;
    wire [0:0] adapt_scalar_trunc9_q;
    wire [183:0] atax_B6_branch_data_pack_q;
    wire [63:0] atax_B6_branch_data_unpack_0_b;
    wire [63:0] atax_B6_branch_data_unpack_1_b;
    wire [31:0] atax_B6_branch_data_unpack_2_b;
    wire [7:0] atax_B6_branch_data_unpack_3_b;
    wire [7:0] atax_B6_branch_data_unpack_4_b;
    wire [7:0] atax_B6_branch_data_unpack_5_b;
    wire [6:0] c_i7_011_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension7_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_011(CONSTANT,13)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension10(BITJOIN,16)
    assign element_extension10_q = {c_i7_011_q, in_c0_exe6};

    // element_extension7(BITJOIN,18)
    assign element_extension7_q = {c_i7_011_q, in_c0_exe5135};

    // element_extension4(BITJOIN,17)
    assign element_extension4_q = {c_i7_011_q, in_c0_exe4134};

    // atax_B6_branch_data_pack(BITJOIN,6)
    assign atax_B6_branch_data_pack_q = {element_extension10_q, element_extension7_q, element_extension4_q, in_c0_exe3133, in_c0_exe2132, in_c0_exe1131};

    // atax_B6_branch_data_unpack_0(BITSELECT,7)
    assign atax_B6_branch_data_unpack_0_b = atax_B6_branch_data_pack_q[63:0];

    // out_c0_exe1131(GPOUT,30)
    assign out_c0_exe1131 = atax_B6_branch_data_unpack_0_b;

    // atax_B6_branch_data_unpack_1(BITSELECT,8)
    assign atax_B6_branch_data_unpack_1_b = atax_B6_branch_data_pack_q[127:64];

    // out_c0_exe2132(GPOUT,31)
    assign out_c0_exe2132 = atax_B6_branch_data_unpack_1_b;

    // atax_B6_branch_data_unpack_2(BITSELECT,9)
    assign atax_B6_branch_data_unpack_2_b = atax_B6_branch_data_pack_q[159:128];

    // out_c0_exe3133(GPOUT,32)
    assign out_c0_exe3133 = atax_B6_branch_data_unpack_2_b;

    // atax_B6_branch_data_unpack_3(BITSELECT,10)
    assign atax_B6_branch_data_unpack_3_b = atax_B6_branch_data_pack_q[167:160];

    // adapt_scalar_trunc6(ROUND,3)
    assign adapt_scalar_trunc6_in = atax_B6_branch_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc6_q = adapt_scalar_trunc6_in[0:0];

    // out_c0_exe4134(GPOUT,33)
    assign out_c0_exe4134 = adapt_scalar_trunc6_q;

    // atax_B6_branch_data_unpack_4(BITSELECT,11)
    assign atax_B6_branch_data_unpack_4_b = atax_B6_branch_data_pack_q[175:168];

    // adapt_scalar_trunc9(ROUND,4)
    assign adapt_scalar_trunc9_in = atax_B6_branch_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc9_q = adapt_scalar_trunc9_in[0:0];

    // out_c0_exe5135(GPOUT,34)
    assign out_c0_exe5135 = adapt_scalar_trunc9_q;

    // atax_B6_branch_data_unpack_5(BITSELECT,12)
    assign atax_B6_branch_data_unpack_5_b = atax_B6_branch_data_pack_q[183:176];

    // adapt_scalar_trunc12(ROUND,2)
    assign adapt_scalar_trunc12_in = atax_B6_branch_data_unpack_5_b[0:0];
    assign adapt_scalar_trunc12_q = adapt_scalar_trunc12_in[0:0];

    // out_c0_exe6(GPOUT,35)
    assign out_c0_exe6 = adapt_scalar_trunc12_q;

    // out_stall_out(GPOUT,36)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,38)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
