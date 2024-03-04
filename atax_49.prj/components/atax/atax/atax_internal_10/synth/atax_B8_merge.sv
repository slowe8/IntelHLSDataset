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

// SystemVerilog created from atax_B8_merge
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B8_merge (
    input wire [63:0] in_c0_exe11502_0,
    input wire [31:0] in_c0_exe21513_0,
    input wire [0:0] in_c0_exe51544_0,
    input wire [63:0] in_c0_exe61555_0,
    input wire [0:0] in_c0_exe76_0,
    input wire [0:0] in_c0_exe87_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [63:0] out_c0_exe11502,
    output wire [31:0] out_c0_exe21513,
    output wire [0:0] out_c0_exe51544,
    output wire [63:0] out_c0_exe61555,
    output wire [0:0] out_c0_exe76,
    output wire [0:0] out_c0_exe87,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc12_in;
    wire [0:0] adapt_scalar_trunc12_q;
    wire [0:0] adapt_scalar_trunc5_in;
    wire [0:0] adapt_scalar_trunc5_q;
    wire [0:0] adapt_scalar_trunc9_in;
    wire [0:0] adapt_scalar_trunc9_q;
    wire [183:0] atax_B8_merge_data_pack_0_q;
    wire [63:0] atax_B8_merge_data_unpack_0_b;
    wire [31:0] atax_B8_merge_data_unpack_1_b;
    wire [7:0] atax_B8_merge_data_unpack_2_b;
    wire [63:0] atax_B8_merge_data_unpack_3_b;
    wire [7:0] atax_B8_merge_data_unpack_4_b;
    wire [7:0] atax_B8_merge_data_unpack_5_b;
    wire [0:0] atax_B8_merge_storage_out_o_almost_empty;
    wire [183:0] atax_B8_merge_storage_out_o_data;
    wire [0:0] atax_B8_merge_storage_out_o_empty;
    wire [0:0] atax_B8_merge_storage_out_o_stall;
    wire [0:0] atax_B8_merge_storage_out_o_valid;
    wire [1:0] c_i2_013_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension7_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_011(CONSTANT,15)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension10(BITJOIN,18)
    assign element_extension10_q = {c_i7_011_q, in_c0_exe87_0};

    // element_extension7(BITJOIN,20)
    assign element_extension7_q = {c_i7_011_q, in_c0_exe76_0};

    // element_extension3(BITJOIN,19)
    assign element_extension3_q = {c_i7_011_q, in_c0_exe51544_0};

    // atax_B8_merge_data_pack_0(BITJOIN,6)
    assign atax_B8_merge_data_pack_0_q = {element_extension10_q, element_extension7_q, in_c0_exe61555_0, element_extension3_q, in_c0_exe21513_0, in_c0_exe11502_0};

    // c_i2_013(CONSTANT,14)
    assign c_i2_013_q = $unsigned(2'b00);

    // atax_B8_merge_storage(BLACKBOX,13)
    atax_B8_merge_storage theatax_B8_merge_storage (
        .in_almost_empty_in(c_i2_013_q),
        .in_empty_in(c_i2_013_q),
        .in_i_data(atax_B8_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(atax_B8_merge_storage_out_o_almost_empty),
        .out_o_data(atax_B8_merge_storage_out_o_data),
        .out_o_empty(atax_B8_merge_storage_out_o_empty),
        .out_o_stall(atax_B8_merge_storage_out_o_stall),
        .out_o_valid(atax_B8_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,30)
    assign out_almost_empty_out = atax_B8_merge_storage_out_o_almost_empty;

    // atax_B8_merge_data_unpack_0(BITSELECT,7)
    assign atax_B8_merge_data_unpack_0_b = atax_B8_merge_storage_out_o_data[63:0];

    // out_c0_exe11502(GPOUT,31)
    assign out_c0_exe11502 = atax_B8_merge_data_unpack_0_b;

    // atax_B8_merge_data_unpack_1(BITSELECT,8)
    assign atax_B8_merge_data_unpack_1_b = atax_B8_merge_storage_out_o_data[95:64];

    // out_c0_exe21513(GPOUT,32)
    assign out_c0_exe21513 = atax_B8_merge_data_unpack_1_b;

    // atax_B8_merge_data_unpack_2(BITSELECT,9)
    assign atax_B8_merge_data_unpack_2_b = atax_B8_merge_storage_out_o_data[103:96];

    // adapt_scalar_trunc5(ROUND,3)
    assign adapt_scalar_trunc5_in = atax_B8_merge_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc5_q = adapt_scalar_trunc5_in[0:0];

    // out_c0_exe51544(GPOUT,33)
    assign out_c0_exe51544 = adapt_scalar_trunc5_q;

    // atax_B8_merge_data_unpack_3(BITSELECT,10)
    assign atax_B8_merge_data_unpack_3_b = atax_B8_merge_storage_out_o_data[167:104];

    // out_c0_exe61555(GPOUT,34)
    assign out_c0_exe61555 = atax_B8_merge_data_unpack_3_b;

    // atax_B8_merge_data_unpack_4(BITSELECT,11)
    assign atax_B8_merge_data_unpack_4_b = atax_B8_merge_storage_out_o_data[175:168];

    // adapt_scalar_trunc9(ROUND,4)
    assign adapt_scalar_trunc9_in = atax_B8_merge_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc9_q = adapt_scalar_trunc9_in[0:0];

    // out_c0_exe76(GPOUT,35)
    assign out_c0_exe76 = adapt_scalar_trunc9_q;

    // atax_B8_merge_data_unpack_5(BITSELECT,12)
    assign atax_B8_merge_data_unpack_5_b = atax_B8_merge_storage_out_o_data[183:176];

    // adapt_scalar_trunc12(ROUND,2)
    assign adapt_scalar_trunc12_in = atax_B8_merge_data_unpack_5_b[0:0];
    assign adapt_scalar_trunc12_q = adapt_scalar_trunc12_in[0:0];

    // out_c0_exe87(GPOUT,36)
    assign out_c0_exe87 = adapt_scalar_trunc12_q;

    // out_empty_out(GPOUT,37)
    assign out_empty_out = atax_B8_merge_storage_out_o_empty;

    // out_stall_out_0(GPOUT,38)
    assign out_stall_out_0 = atax_B8_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,39)
    assign out_valid_out = atax_B8_merge_storage_out_o_valid;

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
