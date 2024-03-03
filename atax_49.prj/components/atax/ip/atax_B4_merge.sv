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

// SystemVerilog created from atax_B4_merge
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B4_merge (
    input wire [63:0] in_idxprom73_0,
    input wire [0:0] in_notcmp4674_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [63:0] out_idxprom73,
    output wire [0:0] out_notcmp4674,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc3_in;
    wire [0:0] adapt_scalar_trunc3_q;
    wire [71:0] atax_B4_merge_data_pack_0_q;
    wire [63:0] atax_B4_merge_data_unpack_0_b;
    wire [7:0] atax_B4_merge_data_unpack_1_b;
    wire [0:0] atax_B4_merge_storage_out_o_almost_empty;
    wire [71:0] atax_B4_merge_storage_out_o_data;
    wire [0:0] atax_B4_merge_storage_out_o_empty;
    wire [0:0] atax_B4_merge_storage_out_o_stall;
    wire [0:0] atax_B4_merge_storage_out_o_valid;
    wire [1:0] c_i2_04_q;
    wire [6:0] c_i7_02_q;
    wire [7:0] element_extension1_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_02(CONSTANT,8)
    assign c_i7_02_q = $unsigned(7'b0000000);

    // element_extension1(BITJOIN,9)
    assign element_extension1_q = {c_i7_02_q, in_notcmp4674_0};

    // atax_B4_merge_data_pack_0(BITJOIN,3)
    assign atax_B4_merge_data_pack_0_q = {element_extension1_q, in_idxprom73_0};

    // c_i2_04(CONSTANT,7)
    assign c_i2_04_q = $unsigned(2'b00);

    // atax_B4_merge_storage(BLACKBOX,6)
    atax_B4_merge_storage theatax_B4_merge_storage (
        .in_almost_empty_in(c_i2_04_q),
        .in_empty_in(c_i2_04_q),
        .in_i_data(atax_B4_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(atax_B4_merge_storage_out_o_almost_empty),
        .out_o_data(atax_B4_merge_storage_out_o_data),
        .out_o_empty(atax_B4_merge_storage_out_o_empty),
        .out_o_stall(atax_B4_merge_storage_out_o_stall),
        .out_o_valid(atax_B4_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,14)
    assign out_almost_empty_out = atax_B4_merge_storage_out_o_almost_empty;

    // out_empty_out(GPOUT,15)
    assign out_empty_out = atax_B4_merge_storage_out_o_empty;

    // atax_B4_merge_data_unpack_0(BITSELECT,4)
    assign atax_B4_merge_data_unpack_0_b = atax_B4_merge_storage_out_o_data[63:0];

    // out_idxprom73(GPOUT,16)
    assign out_idxprom73 = atax_B4_merge_data_unpack_0_b;

    // atax_B4_merge_data_unpack_1(BITSELECT,5)
    assign atax_B4_merge_data_unpack_1_b = atax_B4_merge_storage_out_o_data[71:64];

    // adapt_scalar_trunc3(ROUND,2)
    assign adapt_scalar_trunc3_in = atax_B4_merge_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc3_q = adapt_scalar_trunc3_in[0:0];

    // out_notcmp4674(GPOUT,17)
    assign out_notcmp4674 = adapt_scalar_trunc3_q;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = atax_B4_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,19)
    assign out_valid_out = atax_B4_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,20)
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
