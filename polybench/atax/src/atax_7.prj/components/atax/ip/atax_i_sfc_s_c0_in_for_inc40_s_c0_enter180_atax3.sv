// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 20.4 (Release Build #72)
// 
// Legal Notice: Copyright 2020 Intel Corporation.  All rights reserved.
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

// SystemVerilog created from atax_i_sfc_s_c0_in_for_inc40_s_c0_enter180_atax3
// SystemVerilog created on Wed Dec 13 00:53:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_s_c0_in_for_inc40_s_c0_enter180_atax3 (
    input wire [31:0] in_unnamed_atax14_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax14_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax14_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax14_atax_avm_writeack,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_14220_atax_avm_readdata,
    input wire [0:0] in_memdep_14220_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_14220_atax_avm_waitrequest,
    input wire [0:0] in_memdep_14220_atax_avm_writeack,
    output wire [31:0] out_memdep_14220_atax_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_memdep_14220_atax_avm_burstcount,
    output wire [3:0] out_memdep_14220_atax_avm_byteenable,
    output wire [0:0] out_memdep_14220_atax_avm_enable,
    output wire [0:0] out_memdep_14220_atax_avm_read,
    output wire [0:0] out_memdep_14220_atax_avm_write,
    output wire [31:0] out_memdep_14220_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax14_atax_avm_address,
    output wire [0:0] out_unnamed_atax14_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax14_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax14_atax_avm_enable,
    output wire [0:0] out_unnamed_atax14_atax_avm_read,
    output wire [0:0] out_unnamed_atax14_atax_avm_write,
    output wire [31:0] out_unnamed_atax14_atax_avm_writedata,
    input wire [0:0] in_c0_eni2179_0_tpl,
    input wire [31:0] in_c0_eni2179_1_tpl,
    input wire [63:0] in_c0_eni2179_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit184_0_tpl,
    output wire [31:0] out_c0_exit184_1_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_c0_exi1183_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_c0_exi1183_1_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x(BLACKBOX,30)@7
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@10
    // out out_data_out_0_tpl@10
    // out out_data_out_1_tpl@10
    atax_i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_s_c0_exit184_atax0 thei_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_c0_exi1183_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_c0_exi1183_1_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x(BLACKBOX,31)@0
    // out out_memdep_14220_atax_avm_address@20000000
    // out out_memdep_14220_atax_avm_burstcount@20000000
    // out out_memdep_14220_atax_avm_byteenable@20000000
    // out out_memdep_14220_atax_avm_enable@20000000
    // out out_memdep_14220_atax_avm_read@20000000
    // out out_memdep_14220_atax_avm_write@20000000
    // out out_memdep_14220_atax_avm_writedata@20000000
    // out out_o_valid@7
    // out out_unnamed_atax1@7
    // out out_unnamed_atax14_atax_avm_address@20000000
    // out out_unnamed_atax14_atax_avm_burstcount@20000000
    // out out_unnamed_atax14_atax_avm_byteenable@20000000
    // out out_unnamed_atax14_atax_avm_enable@20000000
    // out out_unnamed_atax14_atax_avm_read@20000000
    // out out_unnamed_atax14_atax_avm_write@20000000
    // out out_unnamed_atax14_atax_avm_writedata@20000000
    // out out_c0_exi1183_0_tpl@7
    // out out_c0_exi1183_1_tpl@7
    atax_i_sfc_logic_s_c0_in_for_inc40_s_c0_enter180_atax0 thei_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_memdep_14220_atax_avm_readdata(in_memdep_14220_atax_avm_readdata),
        .in_memdep_14220_atax_avm_readdatavalid(in_memdep_14220_atax_avm_readdatavalid),
        .in_memdep_14220_atax_avm_waitrequest(in_memdep_14220_atax_avm_waitrequest),
        .in_memdep_14220_atax_avm_writeack(in_memdep_14220_atax_avm_writeack),
        .in_unnamed_atax14_atax_avm_readdata(in_unnamed_atax14_atax_avm_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(in_unnamed_atax14_atax_avm_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(in_unnamed_atax14_atax_avm_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(in_unnamed_atax14_atax_avm_writeack),
        .in_c0_eni2179_0_tpl(in_c0_eni2179_0_tpl),
        .in_c0_eni2179_1_tpl(in_c0_eni2179_1_tpl),
        .in_c0_eni2179_2_tpl(in_c0_eni2179_2_tpl),
        .out_memdep_14220_atax_avm_address(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_address),
        .out_memdep_14220_atax_avm_burstcount(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_burstcount),
        .out_memdep_14220_atax_avm_byteenable(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_byteenable),
        .out_memdep_14220_atax_avm_enable(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_enable),
        .out_memdep_14220_atax_avm_read(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_read),
        .out_memdep_14220_atax_avm_write(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_write),
        .out_memdep_14220_atax_avm_writedata(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_o_valid),
        .out_unnamed_atax1(),
        .out_unnamed_atax14_atax_avm_address(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_address),
        .out_unnamed_atax14_atax_avm_burstcount(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_burstcount),
        .out_unnamed_atax14_atax_avm_byteenable(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_byteenable),
        .out_unnamed_atax14_atax_avm_enable(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_enable),
        .out_unnamed_atax14_atax_avm_read(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_read),
        .out_unnamed_atax14_atax_avm_write(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_write),
        .out_unnamed_atax14_atax_avm_writedata(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_writedata),
        .out_c0_exi1183_0_tpl(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_c0_exi1183_0_tpl),
        .out_c0_exi1183_1_tpl(i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_c0_exi1183_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,14)
    assign out_memdep_14220_atax_avm_address = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_address;

    // sync_out(GPOUT,16)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,17)
    assign out_memdep_14220_atax_avm_burstcount = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,18)
    assign out_memdep_14220_atax_avm_byteenable = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,19)
    assign out_memdep_14220_atax_avm_enable = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,20)
    assign out_memdep_14220_atax_avm_read = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,21)
    assign out_memdep_14220_atax_avm_write = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,22)
    assign out_memdep_14220_atax_avm_writedata = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_memdep_14220_atax_avm_writedata;

    // dupName_6_regfree_osync_x(GPOUT,23)
    assign out_unnamed_atax14_atax_avm_address = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_address;

    // dupName_7_regfree_osync_x(GPOUT,24)
    assign out_unnamed_atax14_atax_avm_burstcount = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_burstcount;

    // dupName_8_regfree_osync_x(GPOUT,25)
    assign out_unnamed_atax14_atax_avm_byteenable = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_byteenable;

    // dupName_9_regfree_osync_x(GPOUT,26)
    assign out_unnamed_atax14_atax_avm_enable = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_enable;

    // dupName_10_regfree_osync_x(GPOUT,27)
    assign out_unnamed_atax14_atax_avm_read = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_read;

    // dupName_11_regfree_osync_x(GPOUT,28)
    assign out_unnamed_atax14_atax_avm_write = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_write;

    // dupName_12_regfree_osync_x(GPOUT,29)
    assign out_unnamed_atax14_atax_avm_writedata = i_sfc_logic_s_c0_in_for_inc40_ataxs_c0_enter180_atax0_aunroll_x_out_unnamed_atax14_atax_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,33)@10
    assign out_c0_exit184_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit184_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_data_out_1_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_inc40_ataxs_c0_exit184_atax1_aunroll_x_out_valid_out;

endmodule
