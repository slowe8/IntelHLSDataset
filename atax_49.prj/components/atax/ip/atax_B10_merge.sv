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

// SystemVerilog created from atax_B10_merge
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B10_merge (
    input wire [0:0] in_c0_exe11818_0,
    input wire [0:0] in_c0_exe41849_0,
    input wire [0:0] in_c0_exe518510_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe11818,
    output wire [0:0] out_c0_exe41849,
    output wire [0:0] out_c0_exe518510,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc2_in;
    wire [0:0] adapt_scalar_trunc2_q;
    wire [0:0] adapt_scalar_trunc5_in;
    wire [0:0] adapt_scalar_trunc5_q;
    wire [0:0] adapt_scalar_trunc8_in;
    wire [0:0] adapt_scalar_trunc8_q;
    wire [23:0] atax_B10_merge_data_pack_0_q;
    wire [7:0] atax_B10_merge_data_unpack_0_b;
    wire [7:0] atax_B10_merge_data_unpack_1_b;
    wire [7:0] atax_B10_merge_data_unpack_2_b;
    wire [0:0] atax_B10_merge_storage_out_o_almost_empty;
    wire [23:0] atax_B10_merge_storage_out_o_data;
    wire [0:0] atax_B10_merge_storage_out_o_empty;
    wire [0:0] atax_B10_merge_storage_out_o_stall;
    wire [0:0] atax_B10_merge_storage_out_o_valid;
    wire [1:0] c_i2_09_q;
    wire [6:0] c_i7_01_q;
    wire [7:0] element_extension0_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_01(CONSTANT,11)
    assign c_i7_01_q = $unsigned(7'b0000000);

    // element_extension6(BITJOIN,16)
    assign element_extension6_q = {c_i7_01_q, in_c0_exe518510_0};

    // element_extension3(BITJOIN,15)
    assign element_extension3_q = {c_i7_01_q, in_c0_exe41849_0};

    // element_extension0(BITJOIN,14)
    assign element_extension0_q = {c_i7_01_q, in_c0_exe11818_0};

    // atax_B10_merge_data_pack_0(BITJOIN,5)
    assign atax_B10_merge_data_pack_0_q = {element_extension6_q, element_extension3_q, element_extension0_q};

    // c_i2_09(CONSTANT,10)
    assign c_i2_09_q = $unsigned(2'b00);

    // atax_B10_merge_storage(BLACKBOX,9)
    atax_B10_merge_storage theatax_B10_merge_storage (
        .in_almost_empty_in(c_i2_09_q),
        .in_empty_in(c_i2_09_q),
        .in_i_data(atax_B10_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(atax_B10_merge_storage_out_o_almost_empty),
        .out_o_data(atax_B10_merge_storage_out_o_data),
        .out_o_empty(atax_B10_merge_storage_out_o_empty),
        .out_o_stall(atax_B10_merge_storage_out_o_stall),
        .out_o_valid(atax_B10_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,22)
    assign out_almost_empty_out = atax_B10_merge_storage_out_o_almost_empty;

    // atax_B10_merge_data_unpack_0(BITSELECT,6)
    assign atax_B10_merge_data_unpack_0_b = atax_B10_merge_storage_out_o_data[7:0];

    // adapt_scalar_trunc2(ROUND,2)
    assign adapt_scalar_trunc2_in = atax_B10_merge_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc2_q = adapt_scalar_trunc2_in[0:0];

    // out_c0_exe11818(GPOUT,23)
    assign out_c0_exe11818 = adapt_scalar_trunc2_q;

    // atax_B10_merge_data_unpack_1(BITSELECT,7)
    assign atax_B10_merge_data_unpack_1_b = atax_B10_merge_storage_out_o_data[15:8];

    // adapt_scalar_trunc5(ROUND,3)
    assign adapt_scalar_trunc5_in = atax_B10_merge_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc5_q = adapt_scalar_trunc5_in[0:0];

    // out_c0_exe41849(GPOUT,24)
    assign out_c0_exe41849 = adapt_scalar_trunc5_q;

    // atax_B10_merge_data_unpack_2(BITSELECT,8)
    assign atax_B10_merge_data_unpack_2_b = atax_B10_merge_storage_out_o_data[23:16];

    // adapt_scalar_trunc8(ROUND,4)
    assign adapt_scalar_trunc8_in = atax_B10_merge_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc8_q = adapt_scalar_trunc8_in[0:0];

    // out_c0_exe518510(GPOUT,25)
    assign out_c0_exe518510 = adapt_scalar_trunc8_q;

    // out_empty_out(GPOUT,26)
    assign out_empty_out = atax_B10_merge_storage_out_o_empty;

    // out_stall_out_0(GPOUT,27)
    assign out_stall_out_0 = atax_B10_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,28)
    assign out_valid_out = atax_B10_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,29)
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
