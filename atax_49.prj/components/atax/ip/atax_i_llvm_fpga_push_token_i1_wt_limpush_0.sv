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

// SystemVerilog created from atax_i_llvm_fpga_push_token_i1_wt_limpush_0
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_llvm_fpga_push_token_i1_wt_limpush_0 (
    input wire [0:0] in_feedback_stall_in_0,
    output wire [0:0] out_feedback_data_out_0,
    output wire [0:0] out_feedback_empty_out_0,
    output wire [0:0] out_feedback_almost_empty_out_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_data_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_data_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc4_in;
    wire [0:0] adapt_scalar_trunc4_q;
    wire [6:0] c_i7_03_q;
    wire [7:0] element_extension2_q;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_in;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_stall_in;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_in;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_in;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_almost_empty_out;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_almost_empty_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_out;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_empty_out;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_empty_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_almost_empty_out;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_almost_empty_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_data_out;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_data_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_empty_out;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_empty_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_out;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_out;
    wire i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_out_bitsignaltemp;


    // c_i7_03(CONSTANT,3)
    assign c_i7_03_q = $unsigned(7'b0000000);

    // element_extension2(BITJOIN,4)
    assign element_extension2_q = {c_i7_03_q, in_data_in};

    // i_llvm_fpga_push_token_i1_wt_limpush_atax1(EXTIFACE,7)
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_in = element_extension2_q[0:0];
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_stall_in = in_feedback_stall_in_0;
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_in = in_stall_in;
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_in = in_valid_in;
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_in_bitsignaltemp = i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_in[0];
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_stall_in_bitsignaltemp = i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_stall_in[0];
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_in_bitsignaltemp = i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_in[0];
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_in_bitsignaltemp = i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_in[0];
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_almost_empty_out[0] = i_llvm_fpga_push_token_i1_wt_limpush_atax1_almost_empty_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_out[0] = i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_empty_out[0] = i_llvm_fpga_push_token_i1_wt_limpush_atax1_empty_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_almost_empty_out[0] = i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_almost_empty_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_data_out[0] = i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_data_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_empty_out[0] = i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_empty_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_out[0] = i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_out[0] = i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_out_bitsignaltemp;
    acl_push_stall_latency #(
        .DOWN_ALMOST_EMPTY_CUTOFF(4),
        .FIFO_DEPTH(1),
        .INITIAL_OCCUPANCY(1),
        .STYLE("TOKEN"),
        .UP_ALMOST_FULL_CUTOFF(4),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(0),
        .DATA_WIDTH(1),
        .NO_PREDICATION(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_push_token_i1_wt_limpush_atax1 (
        .data_in(i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_in_bitsignaltemp),
        .feedback_stall_in(i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_stall_in_bitsignaltemp),
        .stall_in(i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_in_bitsignaltemp),
        .almost_empty_out(i_llvm_fpga_push_token_i1_wt_limpush_atax1_almost_empty_out_bitsignaltemp),
        .data_out(i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_out_bitsignaltemp),
        .empty_out(i_llvm_fpga_push_token_i1_wt_limpush_atax1_empty_out_bitsignaltemp),
        .feedback_almost_empty_out(i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_almost_empty_out_bitsignaltemp),
        .feedback_data_out(i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_data_out_bitsignaltemp),
        .feedback_empty_out(i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_empty_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,6)
    assign out_feedback_data_out_0 = i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_data_out;
    assign out_feedback_empty_out_0 = i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_empty_out;
    assign out_feedback_almost_empty_out_0 = i_llvm_fpga_push_token_i1_wt_limpush_atax1_feedback_almost_empty_out;

    // sync_out(GPOUT,9)@20000000
    assign out_stall_out = i_llvm_fpga_push_token_i1_wt_limpush_atax1_stall_out;

    // adapt_scalar_trunc4(ROUND,2)
    assign adapt_scalar_trunc4_in = i_llvm_fpga_push_token_i1_wt_limpush_atax1_data_out;
    assign adapt_scalar_trunc4_q = adapt_scalar_trunc4_in[0:0];

    // dupName_0_sync_out_x(GPOUT,11)@17
    assign out_almost_empty_out = i_llvm_fpga_push_token_i1_wt_limpush_atax1_almost_empty_out;
    assign out_data_out = adapt_scalar_trunc4_q;
    assign out_empty_out = i_llvm_fpga_push_token_i1_wt_limpush_atax1_empty_out;
    assign out_valid_out = i_llvm_fpga_push_token_i1_wt_limpush_atax1_valid_out;

endmodule
