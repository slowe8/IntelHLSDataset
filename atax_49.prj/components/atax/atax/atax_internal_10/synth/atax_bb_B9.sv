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

// SystemVerilog created from atax_bb_B9
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B9 (
    input wire [0:0] in_exitcond1965_pop3388_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_idxprom3162_pop3182_0,
    input wire [31:0] in_memdep_6_atax_avm_readdata,
    input wire [0:0] in_memdep_6_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_6_atax_avm_waitrequest,
    input wire [0:0] in_memdep_6_atax_avm_writeack,
    input wire [0:0] in_memdep_phi_pop2092_0,
    input wire [31:0] in_mult_add85_0,
    input wire [0:0] in_notcmp3667_pop3490_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_atax14_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax14_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax14_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax14_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax15_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax15_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax15_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax15_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1181,
    output wire [0:0] out_c0_exe4184,
    output wire [0:0] out_c0_exe5185,
    output wire [31:0] out_memdep_6_atax_avm_address,
    output wire [0:0] out_memdep_6_atax_avm_burstcount,
    output wire [3:0] out_memdep_6_atax_avm_byteenable,
    output wire [0:0] out_memdep_6_atax_avm_enable,
    output wire [0:0] out_memdep_6_atax_avm_read,
    output wire [0:0] out_memdep_6_atax_avm_write,
    output wire [31:0] out_memdep_6_atax_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_atax14_atax_avm_address,
    output wire [0:0] out_unnamed_atax14_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax14_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax14_atax_avm_enable,
    output wire [0:0] out_unnamed_atax14_atax_avm_read,
    output wire [0:0] out_unnamed_atax14_atax_avm_write,
    output wire [31:0] out_unnamed_atax14_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax15_atax_avm_address,
    output wire [0:0] out_unnamed_atax15_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax15_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax15_atax_avm_enable,
    output wire [0:0] out_unnamed_atax15_atax_avm_read,
    output wire [0:0] out_unnamed_atax15_atax_avm_write,
    output wire [31:0] out_unnamed_atax15_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B9_branch_out_c0_exe1181;
    wire [0:0] atax_B9_branch_out_c0_exe4184;
    wire [0:0] atax_B9_branch_out_c0_exe5185;
    wire [0:0] atax_B9_branch_out_stall_out;
    wire [0:0] atax_B9_branch_out_valid_out_0;
    wire [0:0] atax_B9_merge_out_almost_empty_out;
    wire [0:0] atax_B9_merge_out_empty_out;
    wire [0:0] atax_B9_merge_out_exitcond1965_pop3388;
    wire [63:0] atax_B9_merge_out_idxprom3162_pop3182;
    wire [0:0] atax_B9_merge_out_memdep_phi_pop2092;
    wire [31:0] atax_B9_merge_out_mult_add85;
    wire [0:0] atax_B9_merge_out_notcmp3667_pop3490;
    wire [0:0] atax_B9_merge_out_stall_out_0;
    wire [0:0] atax_B9_merge_out_valid_out;
    wire [0:0] bb_atax_B9_stall_region_out_almost_empty_out;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe1181;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe3183;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe4184;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe5185;
    wire [0:0] bb_atax_B9_stall_region_out_empty_out;
    wire [31:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_write;
    wire [31:0] bb_atax_B9_stall_region_out_memdep_6_atax_avm_writedata;
    wire [0:0] bb_atax_B9_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_atax_B9_stall_region_out_stall_out;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_write;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_writedata;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_write;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_writedata;
    wire [0:0] bb_atax_B9_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // atax_B9_merge(BLACKBOX,3)
    atax_B9_merge theatax_B9_merge (
        .in_exitcond1965_pop3388_0(in_exitcond1965_pop3388_0),
        .in_idxprom3162_pop3182_0(in_idxprom3162_pop3182_0),
        .in_memdep_phi_pop2092_0(in_memdep_phi_pop2092_0),
        .in_mult_add85_0(in_mult_add85_0),
        .in_notcmp3667_pop3490_0(in_notcmp3667_pop3490_0),
        .in_stall_in(bb_atax_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(atax_B9_merge_out_almost_empty_out),
        .out_empty_out(atax_B9_merge_out_empty_out),
        .out_exitcond1965_pop3388(atax_B9_merge_out_exitcond1965_pop3388),
        .out_idxprom3162_pop3182(atax_B9_merge_out_idxprom3162_pop3182),
        .out_memdep_phi_pop2092(atax_B9_merge_out_memdep_phi_pop2092),
        .out_mult_add85(atax_B9_merge_out_mult_add85),
        .out_notcmp3667_pop3490(atax_B9_merge_out_notcmp3667_pop3490),
        .out_stall_out_0(atax_B9_merge_out_stall_out_0),
        .out_valid_out(atax_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B9_stall_region(BLACKBOX,4)
    atax_bb_B9_stall_region thebb_atax_B9_stall_region (
        .in_almost_empty_in(atax_B9_merge_out_almost_empty_out),
        .in_empty_in(atax_B9_merge_out_empty_out),
        .in_exitcond1965_pop3388(atax_B9_merge_out_exitcond1965_pop3388),
        .in_flush(in_flush),
        .in_idxprom3162_pop3182(atax_B9_merge_out_idxprom3162_pop3182),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .in_memdep_phi_pop2092(atax_B9_merge_out_memdep_phi_pop2092),
        .in_mult_add85(atax_B9_merge_out_mult_add85),
        .in_notcmp3667_pop3490(atax_B9_merge_out_notcmp3667_pop3490),
        .in_stall_in(atax_B9_branch_out_stall_out),
        .in_unnamed_atax14_atax_avm_readdata(in_unnamed_atax14_atax_avm_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(in_unnamed_atax14_atax_avm_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(in_unnamed_atax14_atax_avm_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(in_unnamed_atax14_atax_avm_writeack),
        .in_unnamed_atax15_atax_avm_readdata(in_unnamed_atax15_atax_avm_readdata),
        .in_unnamed_atax15_atax_avm_readdatavalid(in_unnamed_atax15_atax_avm_readdatavalid),
        .in_unnamed_atax15_atax_avm_waitrequest(in_unnamed_atax15_atax_avm_waitrequest),
        .in_unnamed_atax15_atax_avm_writeack(in_unnamed_atax15_atax_avm_writeack),
        .in_valid_in(atax_B9_merge_out_valid_out),
        .out_almost_empty_out(bb_atax_B9_stall_region_out_almost_empty_out),
        .out_c0_exe1181(bb_atax_B9_stall_region_out_c0_exe1181),
        .out_c0_exe3183(bb_atax_B9_stall_region_out_c0_exe3183),
        .out_c0_exe4184(bb_atax_B9_stall_region_out_c0_exe4184),
        .out_c0_exe5185(bb_atax_B9_stall_region_out_c0_exe5185),
        .out_empty_out(bb_atax_B9_stall_region_out_empty_out),
        .out_memdep_6_atax_avm_address(bb_atax_B9_stall_region_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(bb_atax_B9_stall_region_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(bb_atax_B9_stall_region_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(bb_atax_B9_stall_region_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(bb_atax_B9_stall_region_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(bb_atax_B9_stall_region_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(bb_atax_B9_stall_region_out_memdep_6_atax_avm_writedata),
        .out_profile_loop_o_valid(bb_atax_B9_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_atax_B9_stall_region_out_stall_out),
        .out_unnamed_atax14_atax_avm_address(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_address),
        .out_unnamed_atax14_atax_avm_burstcount(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_burstcount),
        .out_unnamed_atax14_atax_avm_byteenable(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_byteenable),
        .out_unnamed_atax14_atax_avm_enable(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_enable),
        .out_unnamed_atax14_atax_avm_read(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_read),
        .out_unnamed_atax14_atax_avm_write(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_write),
        .out_unnamed_atax14_atax_avm_writedata(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_writedata),
        .out_unnamed_atax15_atax_avm_address(bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_address),
        .out_unnamed_atax15_atax_avm_burstcount(bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_burstcount),
        .out_unnamed_atax15_atax_avm_byteenable(bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_byteenable),
        .out_unnamed_atax15_atax_avm_enable(bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_enable),
        .out_unnamed_atax15_atax_avm_read(bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_read),
        .out_unnamed_atax15_atax_avm_write(bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_write),
        .out_unnamed_atax15_atax_avm_writedata(bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_writedata),
        .out_valid_out(bb_atax_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B9_branch(BLACKBOX,2)
    atax_B9_branch theatax_B9_branch (
        .in_almost_empty_in(bb_atax_B9_stall_region_out_almost_empty_out),
        .in_c0_exe1181(bb_atax_B9_stall_region_out_c0_exe1181),
        .in_c0_exe3183(bb_atax_B9_stall_region_out_c0_exe3183),
        .in_c0_exe4184(bb_atax_B9_stall_region_out_c0_exe4184),
        .in_c0_exe5185(bb_atax_B9_stall_region_out_c0_exe5185),
        .in_empty_in(bb_atax_B9_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B9_stall_region_out_valid_out),
        .out_c0_exe1181(atax_B9_branch_out_c0_exe1181),
        .out_c0_exe4184(atax_B9_branch_out_c0_exe4184),
        .out_c0_exe5185(atax_B9_branch_out_c0_exe5185),
        .out_stall_out(atax_B9_branch_out_stall_out),
        .out_valid_out_0(atax_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1181(GPOUT,25)
    assign out_c0_exe1181 = atax_B9_branch_out_c0_exe1181;

    // out_c0_exe4184(GPOUT,26)
    assign out_c0_exe4184 = atax_B9_branch_out_c0_exe4184;

    // out_c0_exe5185(GPOUT,27)
    assign out_c0_exe5185 = atax_B9_branch_out_c0_exe5185;

    // out_memdep_6_atax_avm_address(GPOUT,28)
    assign out_memdep_6_atax_avm_address = bb_atax_B9_stall_region_out_memdep_6_atax_avm_address;

    // out_memdep_6_atax_avm_burstcount(GPOUT,29)
    assign out_memdep_6_atax_avm_burstcount = bb_atax_B9_stall_region_out_memdep_6_atax_avm_burstcount;

    // out_memdep_6_atax_avm_byteenable(GPOUT,30)
    assign out_memdep_6_atax_avm_byteenable = bb_atax_B9_stall_region_out_memdep_6_atax_avm_byteenable;

    // out_memdep_6_atax_avm_enable(GPOUT,31)
    assign out_memdep_6_atax_avm_enable = bb_atax_B9_stall_region_out_memdep_6_atax_avm_enable;

    // out_memdep_6_atax_avm_read(GPOUT,32)
    assign out_memdep_6_atax_avm_read = bb_atax_B9_stall_region_out_memdep_6_atax_avm_read;

    // out_memdep_6_atax_avm_write(GPOUT,33)
    assign out_memdep_6_atax_avm_write = bb_atax_B9_stall_region_out_memdep_6_atax_avm_write;

    // out_memdep_6_atax_avm_writedata(GPOUT,34)
    assign out_memdep_6_atax_avm_writedata = bb_atax_B9_stall_region_out_memdep_6_atax_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,35)
    assign out_profile_loop_o_valid = bb_atax_B9_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,36)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,37)
    assign out_stall_out_0 = atax_B9_merge_out_stall_out_0;

    // out_unnamed_atax14_atax_avm_address(GPOUT,38)
    assign out_unnamed_atax14_atax_avm_address = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_address;

    // out_unnamed_atax14_atax_avm_burstcount(GPOUT,39)
    assign out_unnamed_atax14_atax_avm_burstcount = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_burstcount;

    // out_unnamed_atax14_atax_avm_byteenable(GPOUT,40)
    assign out_unnamed_atax14_atax_avm_byteenable = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_byteenable;

    // out_unnamed_atax14_atax_avm_enable(GPOUT,41)
    assign out_unnamed_atax14_atax_avm_enable = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_enable;

    // out_unnamed_atax14_atax_avm_read(GPOUT,42)
    assign out_unnamed_atax14_atax_avm_read = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_read;

    // out_unnamed_atax14_atax_avm_write(GPOUT,43)
    assign out_unnamed_atax14_atax_avm_write = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_write;

    // out_unnamed_atax14_atax_avm_writedata(GPOUT,44)
    assign out_unnamed_atax14_atax_avm_writedata = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_writedata;

    // out_unnamed_atax15_atax_avm_address(GPOUT,45)
    assign out_unnamed_atax15_atax_avm_address = bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_address;

    // out_unnamed_atax15_atax_avm_burstcount(GPOUT,46)
    assign out_unnamed_atax15_atax_avm_burstcount = bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_burstcount;

    // out_unnamed_atax15_atax_avm_byteenable(GPOUT,47)
    assign out_unnamed_atax15_atax_avm_byteenable = bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_byteenable;

    // out_unnamed_atax15_atax_avm_enable(GPOUT,48)
    assign out_unnamed_atax15_atax_avm_enable = bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_enable;

    // out_unnamed_atax15_atax_avm_read(GPOUT,49)
    assign out_unnamed_atax15_atax_avm_read = bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_read;

    // out_unnamed_atax15_atax_avm_write(GPOUT,50)
    assign out_unnamed_atax15_atax_avm_write = bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_write;

    // out_unnamed_atax15_atax_avm_writedata(GPOUT,51)
    assign out_unnamed_atax15_atax_avm_writedata = bb_atax_B9_stall_region_out_unnamed_atax15_atax_avm_writedata;

    // out_valid_in_0(GPOUT,52)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,53)
    assign out_valid_out_0 = atax_B9_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,54)
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
