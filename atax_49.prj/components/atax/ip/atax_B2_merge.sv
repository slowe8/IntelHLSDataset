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

// SystemVerilog created from atax_B2_merge
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B2_merge (
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B2_merge_storage_out_o_almost_empty;
    wire [0:0] atax_B2_merge_storage_out_o_empty;
    wire [0:0] atax_B2_merge_storage_out_o_stall;
    wire [0:0] atax_B2_merge_storage_out_o_valid;
    wire [1:0] c_i2_00_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i2_00(CONSTANT,3)
    assign c_i2_00_q = $unsigned(2'b00);

    // atax_B2_merge_storage(BLACKBOX,2)
    atax_B2_merge_storage theatax_B2_merge_storage (
        .in_almost_empty_in(c_i2_00_q),
        .in_empty_in(c_i2_00_q),
        .in_i_data(c_i2_00_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(atax_B2_merge_storage_out_o_almost_empty),
        .out_o_data(),
        .out_o_empty(atax_B2_merge_storage_out_o_empty),
        .out_o_stall(atax_B2_merge_storage_out_o_stall),
        .out_o_valid(atax_B2_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,6)
    assign out_almost_empty_out = atax_B2_merge_storage_out_o_almost_empty;

    // out_empty_out(GPOUT,7)
    assign out_empty_out = atax_B2_merge_storage_out_o_empty;

    // out_stall_out_0(GPOUT,8)
    assign out_stall_out_0 = atax_B2_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,9)
    assign out_valid_out = atax_B2_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,10)
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
