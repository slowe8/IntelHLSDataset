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

// SystemVerilog created from atax_i_sfc_s_c1_in_for_body_s_c1_enter101_atax5
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_s_c1_in_for_body_s_c1_enter101_atax5 (
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    output wire [31:0] out_memdep_atax_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c1_eni2_0_tpl,
    input wire [63:0] in_c1_eni2_1_tpl,
    input wire [31:0] in_c1_eni2_2_tpl,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c1_exit103_0_tpl,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_address;
    wire [0:0] i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_enable;
    wire [0:0] i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_read;
    wire [0:0] i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_write;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_writedata;
    wire [0:0] i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // input_accepted_and(LOGICAL,4)
    assign input_accepted_and_q = in_i_valid & VCC_q;

    // i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x(BLACKBOX,20)@67
    // out out_memdep_atax_avm_address@20000000
    // out out_memdep_atax_avm_burstcount@20000000
    // out out_memdep_atax_avm_byteenable@20000000
    // out out_memdep_atax_avm_enable@20000000
    // out out_memdep_atax_avm_read@20000000
    // out out_memdep_atax_avm_write@20000000
    // out out_memdep_atax_avm_writedata@20000000
    // out out_o_valid@69
    // out out_unnamed_atax6@69
    // out out_unnamed_atax8_0_tpl@69
    atax_i_sfc_logic_s_c1_in_for_body_s_c1_enter101_atax0 thei_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_c1_eni2_0_tpl(in_c1_eni2_0_tpl),
        .in_c1_eni2_1_tpl(in_c1_eni2_1_tpl),
        .in_c1_eni2_2_tpl(in_c1_eni2_2_tpl),
        .out_memdep_atax_avm_address(i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_o_valid),
        .out_unnamed_atax6(),
        .out_unnamed_atax8_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // regfree_osync(GPOUT,10)
    assign out_memdep_atax_avm_address = i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_address;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x(BLACKBOX,19)@69
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_almost_empty_out@100
    // out out_empty_out@100
    // out out_stall_entry@20000000
    // out out_valid_out@100
    // out out_data_out_0_tpl@100
    atax_i_llvm_fpga_sfc_exit_s_c1_out_for_body_s_c1_exit103_atax0 thei_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_almost_empty_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_empty_out),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out(GPOUT,12)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,13)
    assign out_memdep_atax_avm_burstcount = i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,14)
    assign out_memdep_atax_avm_byteenable = i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,15)
    assign out_memdep_atax_avm_enable = i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,16)
    assign out_memdep_atax_avm_read = i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,17)
    assign out_memdep_atax_avm_write = i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,18)
    assign out_memdep_atax_avm_writedata = i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter101_atax0_aunroll_x_out_memdep_atax_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,22)@100
    assign out_almost_empty_out = i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_almost_empty_out;
    assign out_c1_exit103_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_data_out_0_tpl;
    assign out_empty_out = i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_empty_out;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body_ataxs_c1_exit103_atax1_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,23)
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
