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

// SystemVerilog created from atax_bb_B1_start
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B1_start (
    input wire [0:0] in_feedback_almost_empty_in_1,
    input wire [0:0] in_feedback_data_in_1,
    input wire [0:0] in_feedback_empty_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [191:0] in_iord_bl_call_atax_i_fifodata,
    input wire [0:0] in_iord_bl_call_atax_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_iord_bl_call_atax_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_atax_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B1_start_branch_out_stall_out;
    wire [0:0] atax_B1_start_branch_out_valid_out_0;
    wire [0:0] atax_B1_start_merge_out_almost_empty_out;
    wire [0:0] atax_B1_start_merge_out_empty_out;
    wire [0:0] atax_B1_start_merge_out_stall_out_0;
    wire [0:0] atax_B1_start_merge_out_valid_out;
    wire [0:0] bb_atax_B1_start_stall_region_out_almost_empty_out;
    wire [0:0] bb_atax_B1_start_stall_region_out_empty_out;
    wire [0:0] bb_atax_B1_start_stall_region_out_feedback_stall_out_1;
    wire [63:0] bb_atax_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_atax_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_atax_B1_start_stall_region_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_atax_B1_start_stall_region_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] bb_atax_B1_start_stall_region_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] bb_atax_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_atax_B1_start_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // atax_B1_start_branch(BLACKBOX,2)
    atax_B1_start_branch theatax_B1_start_branch (
        .in_almost_empty_in(bb_atax_B1_start_stall_region_out_almost_empty_out),
        .in_empty_in(bb_atax_B1_start_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B1_start_stall_region_out_valid_out),
        .out_stall_out(atax_B1_start_branch_out_stall_out),
        .out_valid_out_0(atax_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B1_start_merge(BLACKBOX,3)
    atax_B1_start_merge theatax_B1_start_merge (
        .in_stall_in(bb_atax_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(atax_B1_start_merge_out_almost_empty_out),
        .out_empty_out(atax_B1_start_merge_out_empty_out),
        .out_stall_out_0(atax_B1_start_merge_out_stall_out_0),
        .out_valid_out(atax_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B1_start_stall_region(BLACKBOX,4)
    atax_bb_B1_start_stall_region thebb_atax_B1_start_stall_region (
        .in_almost_empty_in(atax_B1_start_merge_out_almost_empty_out),
        .in_empty_in(atax_B1_start_merge_out_empty_out),
        .in_feedback_almost_empty_in_1(in_feedback_almost_empty_in_1),
        .in_feedback_data_in_1(in_feedback_data_in_1),
        .in_feedback_empty_in_1(in_feedback_empty_in_1),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .in_stall_in(atax_B1_start_branch_out_stall_out),
        .in_valid_in(atax_B1_start_merge_out_valid_out),
        .out_almost_empty_out(bb_atax_B1_start_stall_region_out_almost_empty_out),
        .out_empty_out(bb_atax_B1_start_stall_region_out_empty_out),
        .out_feedback_stall_out_1(bb_atax_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_atax_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_atax_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_atax_B1_start_stall_region_out_intel_reserved_ffwd_2_0),
        .out_iord_bl_call_atax_o_fifoalmost_full(bb_atax_B1_start_stall_region_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(bb_atax_B1_start_stall_region_out_iord_bl_call_atax_o_fifoready),
        .out_stall_out(bb_atax_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,8)
    assign out_feedback_stall_out_1 = bb_atax_B1_start_stall_region_out_feedback_stall_out_1;

    // out_intel_reserved_ffwd_0_0(GPOUT,13)
    assign out_intel_reserved_ffwd_0_0 = bb_atax_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,14)
    assign out_intel_reserved_ffwd_1_0 = bb_atax_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,15)
    assign out_intel_reserved_ffwd_2_0 = bb_atax_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    // out_iord_bl_call_atax_o_fifoalmost_full(GPOUT,16)
    assign out_iord_bl_call_atax_o_fifoalmost_full = bb_atax_B1_start_stall_region_out_iord_bl_call_atax_o_fifoalmost_full;

    // out_iord_bl_call_atax_o_fifoready(GPOUT,17)
    assign out_iord_bl_call_atax_o_fifoready = bb_atax_B1_start_stall_region_out_iord_bl_call_atax_o_fifoready;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = atax_B1_start_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,19)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = atax_B1_start_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,21)
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
