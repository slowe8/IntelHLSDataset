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

// SystemVerilog created from atax_B9_merge
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B9_merge (
    input wire [0:0] in_exitcond1965_pop3388_0,
    input wire [63:0] in_idxprom3162_pop3182_0,
    input wire [0:0] in_memdep_phi_pop2092_0,
    input wire [31:0] in_mult_add85_0,
    input wire [0:0] in_notcmp3667_pop3490_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_exitcond1965_pop3388,
    output wire [63:0] out_idxprom3162_pop3182,
    output wire [0:0] out_memdep_phi_pop2092,
    output wire [31:0] out_mult_add85,
    output wire [0:0] out_notcmp3667_pop3490,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc11_in;
    wire [0:0] adapt_scalar_trunc11_q;
    wire [0:0] adapt_scalar_trunc5_in;
    wire [0:0] adapt_scalar_trunc5_q;
    wire [0:0] adapt_scalar_trunc8_in;
    wire [0:0] adapt_scalar_trunc8_q;
    wire [119:0] atax_B9_merge_data_pack_0_q;
    wire [63:0] atax_B9_merge_data_unpack_0_b;
    wire [31:0] atax_B9_merge_data_unpack_1_b;
    wire [7:0] atax_B9_merge_data_unpack_2_b;
    wire [7:0] atax_B9_merge_data_unpack_3_b;
    wire [7:0] atax_B9_merge_data_unpack_4_b;
    wire [0:0] atax_B9_merge_storage_out_o_almost_empty;
    wire [119:0] atax_B9_merge_storage_out_o_data;
    wire [0:0] atax_B9_merge_storage_out_o_empty;
    wire [0:0] atax_B9_merge_storage_out_o_stall;
    wire [0:0] atax_B9_merge_storage_out_o_valid;
    wire [1:0] c_i2_012_q;
    wire [6:0] c_i7_010_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension9_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_010(CONSTANT,14)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension9(BITJOIN,19)
    assign element_extension9_q = {c_i7_010_q, in_memdep_phi_pop2092_0};

    // element_extension6(BITJOIN,18)
    assign element_extension6_q = {c_i7_010_q, in_notcmp3667_pop3490_0};

    // element_extension3(BITJOIN,17)
    assign element_extension3_q = {c_i7_010_q, in_exitcond1965_pop3388_0};

    // atax_B9_merge_data_pack_0(BITJOIN,6)
    assign atax_B9_merge_data_pack_0_q = {element_extension9_q, element_extension6_q, element_extension3_q, in_mult_add85_0, in_idxprom3162_pop3182_0};

    // c_i2_012(CONSTANT,13)
    assign c_i2_012_q = $unsigned(2'b00);

    // atax_B9_merge_storage(BLACKBOX,12)
    atax_B9_merge_storage theatax_B9_merge_storage (
        .in_almost_empty_in(c_i2_012_q),
        .in_empty_in(c_i2_012_q),
        .in_i_data(atax_B9_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(atax_B9_merge_storage_out_o_almost_empty),
        .out_o_data(atax_B9_merge_storage_out_o_data),
        .out_o_empty(atax_B9_merge_storage_out_o_empty),
        .out_o_stall(atax_B9_merge_storage_out_o_stall),
        .out_o_valid(atax_B9_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,28)
    assign out_almost_empty_out = atax_B9_merge_storage_out_o_almost_empty;

    // out_empty_out(GPOUT,29)
    assign out_empty_out = atax_B9_merge_storage_out_o_empty;

    // atax_B9_merge_data_unpack_2(BITSELECT,9)
    assign atax_B9_merge_data_unpack_2_b = atax_B9_merge_storage_out_o_data[103:96];

    // adapt_scalar_trunc5(ROUND,3)
    assign adapt_scalar_trunc5_in = atax_B9_merge_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc5_q = adapt_scalar_trunc5_in[0:0];

    // out_exitcond1965_pop3388(GPOUT,30)
    assign out_exitcond1965_pop3388 = adapt_scalar_trunc5_q;

    // atax_B9_merge_data_unpack_0(BITSELECT,7)
    assign atax_B9_merge_data_unpack_0_b = atax_B9_merge_storage_out_o_data[63:0];

    // out_idxprom3162_pop3182(GPOUT,31)
    assign out_idxprom3162_pop3182 = atax_B9_merge_data_unpack_0_b;

    // atax_B9_merge_data_unpack_4(BITSELECT,11)
    assign atax_B9_merge_data_unpack_4_b = atax_B9_merge_storage_out_o_data[119:112];

    // adapt_scalar_trunc11(ROUND,2)
    assign adapt_scalar_trunc11_in = atax_B9_merge_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc11_q = adapt_scalar_trunc11_in[0:0];

    // out_memdep_phi_pop2092(GPOUT,32)
    assign out_memdep_phi_pop2092 = adapt_scalar_trunc11_q;

    // atax_B9_merge_data_unpack_1(BITSELECT,8)
    assign atax_B9_merge_data_unpack_1_b = atax_B9_merge_storage_out_o_data[95:64];

    // out_mult_add85(GPOUT,33)
    assign out_mult_add85 = atax_B9_merge_data_unpack_1_b;

    // atax_B9_merge_data_unpack_3(BITSELECT,10)
    assign atax_B9_merge_data_unpack_3_b = atax_B9_merge_storage_out_o_data[111:104];

    // adapt_scalar_trunc8(ROUND,4)
    assign adapt_scalar_trunc8_in = atax_B9_merge_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc8_q = adapt_scalar_trunc8_in[0:0];

    // out_notcmp3667_pop3490(GPOUT,34)
    assign out_notcmp3667_pop3490 = adapt_scalar_trunc8_q;

    // out_stall_out_0(GPOUT,35)
    assign out_stall_out_0 = atax_B9_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,36)
    assign out_valid_out = atax_B9_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,37)
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
