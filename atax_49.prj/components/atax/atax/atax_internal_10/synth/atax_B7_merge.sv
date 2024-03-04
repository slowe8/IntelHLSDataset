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

// SystemVerilog created from atax_B7_merge
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B7_merge (
    input wire [63:0] in_arrayidx32578_0,
    input wire [31:0] in_arrayidx32_promoted179_0,
    input wire [0:0] in_exitcond1980_0,
    input wire [0:0] in_forked5576_0,
    input wire [63:0] in_idxprom3177_0,
    input wire [0:0] in_notcmp3681_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [63:0] out_arrayidx32578,
    output wire [31:0] out_arrayidx32_promoted179,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_exitcond1980,
    output wire [0:0] out_forked5576,
    output wire [63:0] out_idxprom3177,
    output wire [0:0] out_notcmp3681,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc12_in;
    wire [0:0] adapt_scalar_trunc12_q;
    wire [0:0] adapt_scalar_trunc2_in;
    wire [0:0] adapt_scalar_trunc2_q;
    wire [0:0] adapt_scalar_trunc9_in;
    wire [0:0] adapt_scalar_trunc9_q;
    wire [183:0] atax_B7_merge_data_pack_0_q;
    wire [7:0] atax_B7_merge_data_unpack_0_b;
    wire [63:0] atax_B7_merge_data_unpack_1_b;
    wire [63:0] atax_B7_merge_data_unpack_2_b;
    wire [31:0] atax_B7_merge_data_unpack_3_b;
    wire [7:0] atax_B7_merge_data_unpack_4_b;
    wire [7:0] atax_B7_merge_data_unpack_5_b;
    wire [0:0] atax_B7_merge_storage_out_o_almost_empty;
    wire [183:0] atax_B7_merge_storage_out_o_data;
    wire [0:0] atax_B7_merge_storage_out_o_empty;
    wire [0:0] atax_B7_merge_storage_out_o_stall;
    wire [0:0] atax_B7_merge_storage_out_o_valid;
    wire [1:0] c_i2_013_q;
    wire [6:0] c_i7_01_q;
    wire [7:0] element_extension0_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension7_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_01(CONSTANT,15)
    assign c_i7_01_q = $unsigned(7'b0000000);

    // element_extension10(BITJOIN,19)
    assign element_extension10_q = {c_i7_01_q, in_notcmp3681_0};

    // element_extension7(BITJOIN,20)
    assign element_extension7_q = {c_i7_01_q, in_exitcond1980_0};

    // element_extension0(BITJOIN,18)
    assign element_extension0_q = {c_i7_01_q, in_forked5576_0};

    // atax_B7_merge_data_pack_0(BITJOIN,6)
    assign atax_B7_merge_data_pack_0_q = {element_extension10_q, element_extension7_q, in_arrayidx32_promoted179_0, in_arrayidx32578_0, in_idxprom3177_0, element_extension0_q};

    // c_i2_013(CONSTANT,14)
    assign c_i2_013_q = $unsigned(2'b00);

    // atax_B7_merge_storage(BLACKBOX,13)
    atax_B7_merge_storage theatax_B7_merge_storage (
        .in_almost_empty_in(c_i2_013_q),
        .in_empty_in(c_i2_013_q),
        .in_i_data(atax_B7_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(atax_B7_merge_storage_out_o_almost_empty),
        .out_o_data(atax_B7_merge_storage_out_o_data),
        .out_o_empty(atax_B7_merge_storage_out_o_empty),
        .out_o_stall(atax_B7_merge_storage_out_o_stall),
        .out_o_valid(atax_B7_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,30)
    assign out_almost_empty_out = atax_B7_merge_storage_out_o_almost_empty;

    // atax_B7_merge_data_unpack_2(BITSELECT,9)
    assign atax_B7_merge_data_unpack_2_b = atax_B7_merge_storage_out_o_data[135:72];

    // out_arrayidx32578(GPOUT,31)
    assign out_arrayidx32578 = atax_B7_merge_data_unpack_2_b;

    // atax_B7_merge_data_unpack_3(BITSELECT,10)
    assign atax_B7_merge_data_unpack_3_b = atax_B7_merge_storage_out_o_data[167:136];

    // out_arrayidx32_promoted179(GPOUT,32)
    assign out_arrayidx32_promoted179 = atax_B7_merge_data_unpack_3_b;

    // out_empty_out(GPOUT,33)
    assign out_empty_out = atax_B7_merge_storage_out_o_empty;

    // atax_B7_merge_data_unpack_4(BITSELECT,11)
    assign atax_B7_merge_data_unpack_4_b = atax_B7_merge_storage_out_o_data[175:168];

    // adapt_scalar_trunc9(ROUND,4)
    assign adapt_scalar_trunc9_in = atax_B7_merge_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc9_q = adapt_scalar_trunc9_in[0:0];

    // out_exitcond1980(GPOUT,34)
    assign out_exitcond1980 = adapt_scalar_trunc9_q;

    // atax_B7_merge_data_unpack_0(BITSELECT,7)
    assign atax_B7_merge_data_unpack_0_b = atax_B7_merge_storage_out_o_data[7:0];

    // adapt_scalar_trunc2(ROUND,3)
    assign adapt_scalar_trunc2_in = atax_B7_merge_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc2_q = adapt_scalar_trunc2_in[0:0];

    // out_forked5576(GPOUT,35)
    assign out_forked5576 = adapt_scalar_trunc2_q;

    // atax_B7_merge_data_unpack_1(BITSELECT,8)
    assign atax_B7_merge_data_unpack_1_b = atax_B7_merge_storage_out_o_data[71:8];

    // out_idxprom3177(GPOUT,36)
    assign out_idxprom3177 = atax_B7_merge_data_unpack_1_b;

    // atax_B7_merge_data_unpack_5(BITSELECT,12)
    assign atax_B7_merge_data_unpack_5_b = atax_B7_merge_storage_out_o_data[183:176];

    // adapt_scalar_trunc12(ROUND,2)
    assign adapt_scalar_trunc12_in = atax_B7_merge_data_unpack_5_b[0:0];
    assign adapt_scalar_trunc12_q = adapt_scalar_trunc12_in[0:0];

    // out_notcmp3681(GPOUT,37)
    assign out_notcmp3681 = adapt_scalar_trunc12_q;

    // out_stall_out_0(GPOUT,38)
    assign out_stall_out_0 = atax_B7_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,39)
    assign out_valid_out = atax_B7_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,40)
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
