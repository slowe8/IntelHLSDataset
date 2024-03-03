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

// SystemVerilog created from atax_B3_branch
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B3_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [63:0] in_c0_exe199,
    input wire [0:0] in_c0_exe4,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe199,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc3_in;
    wire [0:0] adapt_scalar_trunc3_q;
    wire [71:0] atax_B3_branch_data_pack_q;
    wire [63:0] atax_B3_branch_data_unpack_0_b;
    wire [7:0] atax_B3_branch_data_unpack_1_b;
    wire [6:0] c_i7_02_q;
    wire [7:0] element_extension1_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_02(CONSTANT,6)
    assign c_i7_02_q = $unsigned(7'b0000000);

    // element_extension1(BITJOIN,7)
    assign element_extension1_q = {c_i7_02_q, in_c0_exe4};

    // atax_B3_branch_data_pack(BITJOIN,3)
    assign atax_B3_branch_data_pack_q = {element_extension1_q, in_c0_exe199};

    // atax_B3_branch_data_unpack_0(BITSELECT,4)
    assign atax_B3_branch_data_unpack_0_b = atax_B3_branch_data_pack_q[63:0];

    // out_c0_exe199(GPOUT,14)
    assign out_c0_exe199 = atax_B3_branch_data_unpack_0_b;

    // atax_B3_branch_data_unpack_1(BITSELECT,5)
    assign atax_B3_branch_data_unpack_1_b = atax_B3_branch_data_pack_q[71:64];

    // adapt_scalar_trunc3(ROUND,2)
    assign adapt_scalar_trunc3_in = atax_B3_branch_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc3_q = adapt_scalar_trunc3_in[0:0];

    // out_c0_exe4(GPOUT,15)
    assign out_c0_exe4 = adapt_scalar_trunc3_q;

    // out_stall_out(GPOUT,16)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,18)
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
