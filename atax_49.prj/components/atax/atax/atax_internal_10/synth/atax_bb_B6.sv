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

// SystemVerilog created from atax_bb_B6
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B6 (
    input wire [31:0] in_arrayidx32_promoted1_atax_avm_readdata,
    input wire [0:0] in_arrayidx32_promoted1_atax_avm_readdatavalid,
    input wire [0:0] in_arrayidx32_promoted1_atax_avm_waitrequest,
    input wire [0:0] in_arrayidx32_promoted1_atax_avm_writeack,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_arrayidx32_promoted1_atax_avm_address,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_burstcount,
    output wire [3:0] out_arrayidx32_promoted1_atax_avm_byteenable,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_enable,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_read,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_write,
    output wire [31:0] out_arrayidx32_promoted1_atax_avm_writedata,
    output wire [63:0] out_c0_exe1131,
    output wire [63:0] out_c0_exe2132,
    output wire [31:0] out_c0_exe3133,
    output wire [0:0] out_c0_exe4134,
    output wire [0:0] out_c0_exe5135,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B6_branch_out_c0_exe1131;
    wire [63:0] atax_B6_branch_out_c0_exe2132;
    wire [31:0] atax_B6_branch_out_c0_exe3133;
    wire [0:0] atax_B6_branch_out_c0_exe4134;
    wire [0:0] atax_B6_branch_out_c0_exe5135;
    wire [0:0] atax_B6_branch_out_c0_exe6;
    wire [0:0] atax_B6_branch_out_stall_out;
    wire [0:0] atax_B6_branch_out_valid_out_0;
    wire [0:0] atax_B6_merge_out_almost_empty_out;
    wire [0:0] atax_B6_merge_out_empty_out;
    wire [0:0] atax_B6_merge_out_stall_out_0;
    wire [0:0] atax_B6_merge_out_valid_out;
    wire [0:0] bb_atax_B6_stall_region_out_almost_empty_out;
    wire [31:0] bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_address;
    wire [0:0] bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_enable;
    wire [0:0] bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_read;
    wire [0:0] bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_write;
    wire [31:0] bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_writedata;
    wire [63:0] bb_atax_B6_stall_region_out_c0_exe1131;
    wire [63:0] bb_atax_B6_stall_region_out_c0_exe2132;
    wire [31:0] bb_atax_B6_stall_region_out_c0_exe3133;
    wire [0:0] bb_atax_B6_stall_region_out_c0_exe4134;
    wire [0:0] bb_atax_B6_stall_region_out_c0_exe5135;
    wire [0:0] bb_atax_B6_stall_region_out_c0_exe6;
    wire [0:0] bb_atax_B6_stall_region_out_empty_out;
    wire [0:0] bb_atax_B6_stall_region_out_stall_out;
    wire [0:0] bb_atax_B6_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // atax_B6_branch(BLACKBOX,2)
    atax_B6_branch theatax_B6_branch (
        .in_almost_empty_in(bb_atax_B6_stall_region_out_almost_empty_out),
        .in_c0_exe1131(bb_atax_B6_stall_region_out_c0_exe1131),
        .in_c0_exe2132(bb_atax_B6_stall_region_out_c0_exe2132),
        .in_c0_exe3133(bb_atax_B6_stall_region_out_c0_exe3133),
        .in_c0_exe4134(bb_atax_B6_stall_region_out_c0_exe4134),
        .in_c0_exe5135(bb_atax_B6_stall_region_out_c0_exe5135),
        .in_c0_exe6(bb_atax_B6_stall_region_out_c0_exe6),
        .in_empty_in(bb_atax_B6_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B6_stall_region_out_valid_out),
        .out_c0_exe1131(atax_B6_branch_out_c0_exe1131),
        .out_c0_exe2132(atax_B6_branch_out_c0_exe2132),
        .out_c0_exe3133(atax_B6_branch_out_c0_exe3133),
        .out_c0_exe4134(atax_B6_branch_out_c0_exe4134),
        .out_c0_exe5135(atax_B6_branch_out_c0_exe5135),
        .out_c0_exe6(atax_B6_branch_out_c0_exe6),
        .out_stall_out(atax_B6_branch_out_stall_out),
        .out_valid_out_0(atax_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B6_merge(BLACKBOX,3)
    atax_B6_merge theatax_B6_merge (
        .in_stall_in(bb_atax_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(atax_B6_merge_out_almost_empty_out),
        .out_empty_out(atax_B6_merge_out_empty_out),
        .out_stall_out_0(atax_B6_merge_out_stall_out_0),
        .out_valid_out(atax_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6_stall_region(BLACKBOX,4)
    atax_bb_B6_stall_region thebb_atax_B6_stall_region (
        .in_almost_empty_in(atax_B6_merge_out_almost_empty_out),
        .in_arrayidx32_promoted1_atax_avm_readdata(in_arrayidx32_promoted1_atax_avm_readdata),
        .in_arrayidx32_promoted1_atax_avm_readdatavalid(in_arrayidx32_promoted1_atax_avm_readdatavalid),
        .in_arrayidx32_promoted1_atax_avm_waitrequest(in_arrayidx32_promoted1_atax_avm_waitrequest),
        .in_arrayidx32_promoted1_atax_avm_writeack(in_arrayidx32_promoted1_atax_avm_writeack),
        .in_empty_in(atax_B6_merge_out_empty_out),
        .in_flush(in_flush),
        .in_stall_in(atax_B6_branch_out_stall_out),
        .in_valid_in(atax_B6_merge_out_valid_out),
        .out_almost_empty_out(bb_atax_B6_stall_region_out_almost_empty_out),
        .out_arrayidx32_promoted1_atax_avm_address(bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_address),
        .out_arrayidx32_promoted1_atax_avm_burstcount(bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_burstcount),
        .out_arrayidx32_promoted1_atax_avm_byteenable(bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_byteenable),
        .out_arrayidx32_promoted1_atax_avm_enable(bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_enable),
        .out_arrayidx32_promoted1_atax_avm_read(bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_read),
        .out_arrayidx32_promoted1_atax_avm_write(bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_write),
        .out_arrayidx32_promoted1_atax_avm_writedata(bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_writedata),
        .out_c0_exe1131(bb_atax_B6_stall_region_out_c0_exe1131),
        .out_c0_exe2132(bb_atax_B6_stall_region_out_c0_exe2132),
        .out_c0_exe3133(bb_atax_B6_stall_region_out_c0_exe3133),
        .out_c0_exe4134(bb_atax_B6_stall_region_out_c0_exe4134),
        .out_c0_exe5135(bb_atax_B6_stall_region_out_c0_exe5135),
        .out_c0_exe6(bb_atax_B6_stall_region_out_c0_exe6),
        .out_empty_out(bb_atax_B6_stall_region_out_empty_out),
        .out_stall_out(bb_atax_B6_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_arrayidx32_promoted1_atax_avm_address(GPOUT,12)
    assign out_arrayidx32_promoted1_atax_avm_address = bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_address;

    // out_arrayidx32_promoted1_atax_avm_burstcount(GPOUT,13)
    assign out_arrayidx32_promoted1_atax_avm_burstcount = bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_burstcount;

    // out_arrayidx32_promoted1_atax_avm_byteenable(GPOUT,14)
    assign out_arrayidx32_promoted1_atax_avm_byteenable = bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_byteenable;

    // out_arrayidx32_promoted1_atax_avm_enable(GPOUT,15)
    assign out_arrayidx32_promoted1_atax_avm_enable = bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_enable;

    // out_arrayidx32_promoted1_atax_avm_read(GPOUT,16)
    assign out_arrayidx32_promoted1_atax_avm_read = bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_read;

    // out_arrayidx32_promoted1_atax_avm_write(GPOUT,17)
    assign out_arrayidx32_promoted1_atax_avm_write = bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_write;

    // out_arrayidx32_promoted1_atax_avm_writedata(GPOUT,18)
    assign out_arrayidx32_promoted1_atax_avm_writedata = bb_atax_B6_stall_region_out_arrayidx32_promoted1_atax_avm_writedata;

    // out_c0_exe1131(GPOUT,19)
    assign out_c0_exe1131 = atax_B6_branch_out_c0_exe1131;

    // out_c0_exe2132(GPOUT,20)
    assign out_c0_exe2132 = atax_B6_branch_out_c0_exe2132;

    // out_c0_exe3133(GPOUT,21)
    assign out_c0_exe3133 = atax_B6_branch_out_c0_exe3133;

    // out_c0_exe4134(GPOUT,22)
    assign out_c0_exe4134 = atax_B6_branch_out_c0_exe4134;

    // out_c0_exe5135(GPOUT,23)
    assign out_c0_exe5135 = atax_B6_branch_out_c0_exe5135;

    // out_c0_exe6(GPOUT,24)
    assign out_c0_exe6 = atax_B6_branch_out_c0_exe6;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = atax_B6_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,26)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = atax_B6_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,28)
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
