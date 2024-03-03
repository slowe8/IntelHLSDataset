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

// SystemVerilog created from atax_bb_B7
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B7 (
    input wire [63:0] in_arrayidx32578_0,
    input wire [31:0] in_arrayidx32_promoted179_0,
    input wire [0:0] in_exitcond1980_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked5576_0,
    input wire [63:0] in_idxprom3177_0,
    input wire [0:0] in_notcmp3681_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_atax11_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax11_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax11_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax11_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe1150,
    output wire [31:0] out_c0_exe2151,
    output wire [0:0] out_c0_exe5154,
    output wire [63:0] out_c0_exe6155,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_atax11_atax_avm_address,
    output wire [0:0] out_unnamed_atax11_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax11_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax11_atax_avm_enable,
    output wire [0:0] out_unnamed_atax11_atax_avm_read,
    output wire [0:0] out_unnamed_atax11_atax_avm_write,
    output wire [31:0] out_unnamed_atax11_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [31:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B7_branch_out_c0_exe1150;
    wire [31:0] atax_B7_branch_out_c0_exe2151;
    wire [0:0] atax_B7_branch_out_c0_exe5154;
    wire [63:0] atax_B7_branch_out_c0_exe6155;
    wire [0:0] atax_B7_branch_out_c0_exe7;
    wire [0:0] atax_B7_branch_out_c0_exe8;
    wire [0:0] atax_B7_branch_out_stall_out;
    wire [0:0] atax_B7_branch_out_valid_out_0;
    wire [0:0] atax_B7_merge_out_almost_empty_out;
    wire [63:0] atax_B7_merge_out_arrayidx32578;
    wire [31:0] atax_B7_merge_out_arrayidx32_promoted179;
    wire [0:0] atax_B7_merge_out_empty_out;
    wire [0:0] atax_B7_merge_out_exitcond1980;
    wire [0:0] atax_B7_merge_out_forked5576;
    wire [63:0] atax_B7_merge_out_idxprom3177;
    wire [0:0] atax_B7_merge_out_notcmp3681;
    wire [0:0] atax_B7_merge_out_stall_out_0;
    wire [0:0] atax_B7_merge_out_valid_out;
    wire [0:0] bb_atax_B7_stall_region_out_almost_empty_out;
    wire [63:0] bb_atax_B7_stall_region_out_c0_exe1150;
    wire [31:0] bb_atax_B7_stall_region_out_c0_exe2151;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe4153;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe5154;
    wire [63:0] bb_atax_B7_stall_region_out_c0_exe6155;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe7;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe8;
    wire [0:0] bb_atax_B7_stall_region_out_empty_out;
    wire [0:0] bb_atax_B7_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_atax_B7_stall_region_out_stall_out;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_writedata;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_writedata;
    wire [0:0] bb_atax_B7_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // atax_B7_merge(BLACKBOX,3)
    atax_B7_merge theatax_B7_merge (
        .in_arrayidx32578_0(in_arrayidx32578_0),
        .in_arrayidx32_promoted179_0(in_arrayidx32_promoted179_0),
        .in_exitcond1980_0(in_exitcond1980_0),
        .in_forked5576_0(in_forked5576_0),
        .in_idxprom3177_0(in_idxprom3177_0),
        .in_notcmp3681_0(in_notcmp3681_0),
        .in_stall_in(bb_atax_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(atax_B7_merge_out_almost_empty_out),
        .out_arrayidx32578(atax_B7_merge_out_arrayidx32578),
        .out_arrayidx32_promoted179(atax_B7_merge_out_arrayidx32_promoted179),
        .out_empty_out(atax_B7_merge_out_empty_out),
        .out_exitcond1980(atax_B7_merge_out_exitcond1980),
        .out_forked5576(atax_B7_merge_out_forked5576),
        .out_idxprom3177(atax_B7_merge_out_idxprom3177),
        .out_notcmp3681(atax_B7_merge_out_notcmp3681),
        .out_stall_out_0(atax_B7_merge_out_stall_out_0),
        .out_valid_out(atax_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_stall_region(BLACKBOX,4)
    atax_bb_B7_stall_region thebb_atax_B7_stall_region (
        .in_almost_empty_in(atax_B7_merge_out_almost_empty_out),
        .in_arrayidx32578(atax_B7_merge_out_arrayidx32578),
        .in_arrayidx32_promoted179(atax_B7_merge_out_arrayidx32_promoted179),
        .in_empty_in(atax_B7_merge_out_empty_out),
        .in_exitcond1980(atax_B7_merge_out_exitcond1980),
        .in_flush(in_flush),
        .in_forked5576(atax_B7_merge_out_forked5576),
        .in_idxprom3177(atax_B7_merge_out_idxprom3177),
        .in_notcmp3681(atax_B7_merge_out_notcmp3681),
        .in_stall_in(atax_B7_branch_out_stall_out),
        .in_unnamed_atax11_atax_avm_readdata(in_unnamed_atax11_atax_avm_readdata),
        .in_unnamed_atax11_atax_avm_readdatavalid(in_unnamed_atax11_atax_avm_readdatavalid),
        .in_unnamed_atax11_atax_avm_waitrequest(in_unnamed_atax11_atax_avm_waitrequest),
        .in_unnamed_atax11_atax_avm_writeack(in_unnamed_atax11_atax_avm_writeack),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .in_valid_in(atax_B7_merge_out_valid_out),
        .out_almost_empty_out(bb_atax_B7_stall_region_out_almost_empty_out),
        .out_c0_exe1150(bb_atax_B7_stall_region_out_c0_exe1150),
        .out_c0_exe2151(bb_atax_B7_stall_region_out_c0_exe2151),
        .out_c0_exe4153(bb_atax_B7_stall_region_out_c0_exe4153),
        .out_c0_exe5154(bb_atax_B7_stall_region_out_c0_exe5154),
        .out_c0_exe6155(bb_atax_B7_stall_region_out_c0_exe6155),
        .out_c0_exe7(bb_atax_B7_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_atax_B7_stall_region_out_c0_exe8),
        .out_empty_out(bb_atax_B7_stall_region_out_empty_out),
        .out_profile_loop_o_valid(bb_atax_B7_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_atax_B7_stall_region_out_stall_out),
        .out_unnamed_atax11_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_address),
        .out_unnamed_atax11_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_burstcount),
        .out_unnamed_atax11_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_byteenable),
        .out_unnamed_atax11_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_enable),
        .out_unnamed_atax11_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_read),
        .out_unnamed_atax11_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_write),
        .out_unnamed_atax11_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_writedata),
        .out_unnamed_atax12_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_writedata),
        .out_valid_out(bb_atax_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B7_branch(BLACKBOX,2)
    atax_B7_branch theatax_B7_branch (
        .in_almost_empty_in(bb_atax_B7_stall_region_out_almost_empty_out),
        .in_c0_exe1150(bb_atax_B7_stall_region_out_c0_exe1150),
        .in_c0_exe2151(bb_atax_B7_stall_region_out_c0_exe2151),
        .in_c0_exe4153(bb_atax_B7_stall_region_out_c0_exe4153),
        .in_c0_exe5154(bb_atax_B7_stall_region_out_c0_exe5154),
        .in_c0_exe6155(bb_atax_B7_stall_region_out_c0_exe6155),
        .in_c0_exe7(bb_atax_B7_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_atax_B7_stall_region_out_c0_exe8),
        .in_empty_in(bb_atax_B7_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B7_stall_region_out_valid_out),
        .out_c0_exe1150(atax_B7_branch_out_c0_exe1150),
        .out_c0_exe2151(atax_B7_branch_out_c0_exe2151),
        .out_c0_exe5154(atax_B7_branch_out_c0_exe5154),
        .out_c0_exe6155(atax_B7_branch_out_c0_exe6155),
        .out_c0_exe7(atax_B7_branch_out_c0_exe7),
        .out_c0_exe8(atax_B7_branch_out_c0_exe8),
        .out_stall_out(atax_B7_branch_out_stall_out),
        .out_valid_out_0(atax_B7_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1150(GPOUT,22)
    assign out_c0_exe1150 = atax_B7_branch_out_c0_exe1150;

    // out_c0_exe2151(GPOUT,23)
    assign out_c0_exe2151 = atax_B7_branch_out_c0_exe2151;

    // out_c0_exe5154(GPOUT,24)
    assign out_c0_exe5154 = atax_B7_branch_out_c0_exe5154;

    // out_c0_exe6155(GPOUT,25)
    assign out_c0_exe6155 = atax_B7_branch_out_c0_exe6155;

    // out_c0_exe7(GPOUT,26)
    assign out_c0_exe7 = atax_B7_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,27)
    assign out_c0_exe8 = atax_B7_branch_out_c0_exe8;

    // out_profile_loop_o_valid(GPOUT,28)
    assign out_profile_loop_o_valid = bb_atax_B7_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,29)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = atax_B7_merge_out_stall_out_0;

    // out_unnamed_atax11_atax_avm_address(GPOUT,31)
    assign out_unnamed_atax11_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_address;

    // out_unnamed_atax11_atax_avm_burstcount(GPOUT,32)
    assign out_unnamed_atax11_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_burstcount;

    // out_unnamed_atax11_atax_avm_byteenable(GPOUT,33)
    assign out_unnamed_atax11_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_byteenable;

    // out_unnamed_atax11_atax_avm_enable(GPOUT,34)
    assign out_unnamed_atax11_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_enable;

    // out_unnamed_atax11_atax_avm_read(GPOUT,35)
    assign out_unnamed_atax11_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_read;

    // out_unnamed_atax11_atax_avm_write(GPOUT,36)
    assign out_unnamed_atax11_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_write;

    // out_unnamed_atax11_atax_avm_writedata(GPOUT,37)
    assign out_unnamed_atax11_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax11_atax_avm_writedata;

    // out_unnamed_atax12_atax_avm_address(GPOUT,38)
    assign out_unnamed_atax12_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_address;

    // out_unnamed_atax12_atax_avm_burstcount(GPOUT,39)
    assign out_unnamed_atax12_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_burstcount;

    // out_unnamed_atax12_atax_avm_byteenable(GPOUT,40)
    assign out_unnamed_atax12_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_byteenable;

    // out_unnamed_atax12_atax_avm_enable(GPOUT,41)
    assign out_unnamed_atax12_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_enable;

    // out_unnamed_atax12_atax_avm_read(GPOUT,42)
    assign out_unnamed_atax12_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_read;

    // out_unnamed_atax12_atax_avm_write(GPOUT,43)
    assign out_unnamed_atax12_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_write;

    // out_unnamed_atax12_atax_avm_writedata(GPOUT,44)
    assign out_unnamed_atax12_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax12_atax_avm_writedata;

    // out_valid_in_0(GPOUT,45)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,46)
    assign out_valid_out_0 = atax_B7_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,47)
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
