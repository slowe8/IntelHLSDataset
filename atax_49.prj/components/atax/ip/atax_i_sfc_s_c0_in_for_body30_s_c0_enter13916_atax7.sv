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

// SystemVerilog created from atax_i_sfc_s_c0_in_for_body30_s_c0_enter13916_atax7
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_s_c0_in_for_body30_s_c0_enter13916_atax7 (
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_atax11_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax11_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax11_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax11_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax12_atax_avm_readdata,
    output wire [31:0] out_unnamed_atax11_atax_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
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
    input wire [0:0] in_i_valid,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [63:0] in_c0_eni7_2_tpl,
    input wire [31:0] in_c0_eni7_3_tpl,
    input wire [0:0] in_c0_eni7_4_tpl,
    input wire [63:0] in_c0_eni7_5_tpl,
    input wire [0:0] in_c0_eni7_6_tpl,
    input wire [0:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_empty_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exit149_0_tpl,
    output wire [63:0] out_c0_exit149_1_tpl,
    output wire [31:0] out_c0_exit149_2_tpl,
    output wire [0:0] out_c0_exit149_3_tpl,
    output wire [0:0] out_c0_exit149_4_tpl,
    output wire [0:0] out_c0_exit149_5_tpl,
    output wire [63:0] out_c0_exit149_6_tpl,
    output wire [0:0] out_c0_exit149_7_tpl,
    output wire [0:0] out_c0_exit149_8_tpl,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] exiting_q;
    wire [0:0] loop_admit_i_almost_empty;
    wire loop_admit_i_almost_empty_bitsignaltemp;
    wire [0:0] loop_admit_i_empty;
    wire loop_admit_i_empty_bitsignaltemp;
    wire [0:0] loop_admit_i_exit;
    wire loop_admit_i_exit_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_dummy;
    wire loop_admit_i_exit_dummy_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_forked;
    wire loop_admit_i_exit_forked_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_valid;
    wire loop_admit_i_exit_valid_bitsignaltemp;
    wire [0:0] loop_admit_i_stall;
    wire loop_admit_i_stall_bitsignaltemp;
    wire [0:0] loop_admit_o_dummy;
    wire loop_admit_o_dummy_bitsignaltemp;
    wire [0:0] loop_admit_o_forked;
    wire loop_admit_o_forked_bitsignaltemp;
    wire [0:0] loop_admit_o_stall;
    wire loop_admit_o_stall_bitsignaltemp;
    wire [0:0] loop_admit_o_valid;
    wire loop_admit_o_valid_bitsignaltemp;
    reg [0:0] stall_out_reg_0_q;
    reg [0:0] stall_out_reg_1_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_5_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_7_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_8_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_pipeline_dummy_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_pipeline_forked_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_0_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_5_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_7_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_8_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x(BLACKBOX,32)@17
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_almost_empty_out@48
    // out out_empty_out@48
    // out out_stall_entry@20000000
    // out out_valid_out@48
    // out out_data_out_0_tpl@48
    // out out_data_out_1_tpl@48
    // out out_data_out_2_tpl@48
    // out out_data_out_3_tpl@48
    // out out_data_out_4_tpl@48
    // out out_data_out_5_tpl@48
    // out out_data_out_6_tpl@48
    // out out_data_out_7_tpl@48
    // out out_data_out_8_tpl@48
    atax_i_llvm_fpga_sfc_exit_s_c0_out_for_body30_s_c0_exit149_atax0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x (
        .in_input_accepted(loop_admit_o_valid),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_8_tpl),
        .out_almost_empty_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_empty_out),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_8_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // stall_out_reg_0(REG,16)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_0_q <= i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_stall_entry;
        end
    end

    // stall_out_reg_1(REG,17)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_1_q <= stall_out_reg_0_q;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exiting(LOGICAL,3)
    assign exiting_q = ~ (i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_exiting_valid_out);

    // loop_admit(EXTIFACE,4)
    assign loop_admit_i_almost_empty = in_almost_empty_in;
    assign loop_admit_i_empty = in_empty_in;
    assign loop_admit_i_exit = exiting_q;
    assign loop_admit_i_exit_dummy = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_pipeline_dummy_out;
    assign loop_admit_i_exit_forked = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_pipeline_forked_out;
    assign loop_admit_i_exit_valid = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_pipeline_valid_out;
    assign loop_admit_i_stall = stall_out_reg_1_q;
    assign loop_admit_i_almost_empty_bitsignaltemp = loop_admit_i_almost_empty[0];
    assign loop_admit_i_empty_bitsignaltemp = loop_admit_i_empty[0];
    assign loop_admit_i_exit_bitsignaltemp = loop_admit_i_exit[0];
    assign loop_admit_i_exit_dummy_bitsignaltemp = loop_admit_i_exit_dummy[0];
    assign loop_admit_i_exit_forked_bitsignaltemp = loop_admit_i_exit_forked[0];
    assign loop_admit_i_exit_valid_bitsignaltemp = loop_admit_i_exit_valid[0];
    assign loop_admit_i_stall_bitsignaltemp = loop_admit_i_stall[0];
    assign loop_admit_o_dummy[0] = loop_admit_o_dummy_bitsignaltemp;
    assign loop_admit_o_forked[0] = loop_admit_o_forked_bitsignaltemp;
    assign loop_admit_o_stall[0] = loop_admit_o_stall_bitsignaltemp;
    assign loop_admit_o_valid[0] = loop_admit_o_valid_bitsignaltemp;
    acl_loop_admit #(
        .ENABLE_INTERLEAVING(1),
        .II(6),
        .LATENCY_UPSTREAM_EMPTY(5),
        .LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP(4),
        .ASYNC_RESET(0),
        .FAST_ADMIT(0),
        .SYNCHRONIZE_RESET(0)
    ) theloop_admit (
        .i_almost_empty(loop_admit_i_almost_empty_bitsignaltemp),
        .i_empty(loop_admit_i_empty_bitsignaltemp),
        .i_exit(loop_admit_i_exit_bitsignaltemp),
        .i_exit_dummy(loop_admit_i_exit_dummy_bitsignaltemp),
        .i_exit_forked(loop_admit_i_exit_forked_bitsignaltemp),
        .i_exit_valid(loop_admit_i_exit_valid_bitsignaltemp),
        .i_stall(loop_admit_i_stall_bitsignaltemp),
        .o_dummy(loop_admit_o_dummy_bitsignaltemp),
        .o_forked(loop_admit_o_forked_bitsignaltemp),
        .o_stall(loop_admit_o_stall_bitsignaltemp),
        .o_valid(loop_admit_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x(BLACKBOX,33)@0
    // out out_exiting_valid_out@20000000
    // out out_o_valid@17
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_atax11_atax_avm_address@20000000
    // out out_unnamed_atax11_atax_avm_burstcount@20000000
    // out out_unnamed_atax11_atax_avm_byteenable@20000000
    // out out_unnamed_atax11_atax_avm_enable@20000000
    // out out_unnamed_atax11_atax_avm_read@20000000
    // out out_unnamed_atax11_atax_avm_write@20000000
    // out out_unnamed_atax11_atax_avm_writedata@20000000
    // out out_unnamed_atax12_atax_avm_address@20000000
    // out out_unnamed_atax12_atax_avm_burstcount@20000000
    // out out_unnamed_atax12_atax_avm_byteenable@20000000
    // out out_unnamed_atax12_atax_avm_enable@20000000
    // out out_unnamed_atax12_atax_avm_read@20000000
    // out out_unnamed_atax12_atax_avm_write@20000000
    // out out_unnamed_atax12_atax_avm_writedata@20000000
    // out out_unnamed_atax6@17
    // out out_c0_exi8_0_tpl@17
    // out out_c0_exi8_1_tpl@17
    // out out_c0_exi8_2_tpl@17
    // out out_c0_exi8_3_tpl@17
    // out out_c0_exi8_4_tpl@17
    // out out_c0_exi8_5_tpl@17
    // out out_c0_exi8_6_tpl@17
    // out out_c0_exi8_7_tpl@17
    // out out_c0_exi8_8_tpl@17
    atax_i_sfc_logic_s_c0_in_for_body30_s_c0_enter13916_atax0 thei_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x (
        .in_buffer_in(loop_admit_o_forked),
        .in_dummy_in(loop_admit_o_dummy),
        .in_flush(in_flush),
        .in_i_valid(loop_admit_o_valid),
        .in_unnamed_atax11_atax_avm_readdata(in_unnamed_atax11_atax_avm_readdata),
        .in_unnamed_atax11_atax_avm_readdatavalid(in_unnamed_atax11_atax_avm_readdatavalid),
        .in_unnamed_atax11_atax_avm_waitrequest(in_unnamed_atax11_atax_avm_waitrequest),
        .in_unnamed_atax11_atax_avm_writeack(in_unnamed_atax11_atax_avm_writeack),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .in_c0_eni7_0_tpl(in_c0_eni7_0_tpl),
        .in_c0_eni7_1_tpl(in_c0_eni7_1_tpl),
        .in_c0_eni7_2_tpl(in_c0_eni7_2_tpl),
        .in_c0_eni7_3_tpl(in_c0_eni7_3_tpl),
        .in_c0_eni7_4_tpl(in_c0_eni7_4_tpl),
        .in_c0_eni7_5_tpl(in_c0_eni7_5_tpl),
        .in_c0_eni7_6_tpl(in_c0_eni7_6_tpl),
        .in_c0_eni7_7_tpl(in_c0_eni7_7_tpl),
        .out_exiting_valid_out(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_o_valid),
        .out_pipeline_dummy_out(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_atax11_atax_avm_address(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_address),
        .out_unnamed_atax11_atax_avm_burstcount(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_burstcount),
        .out_unnamed_atax11_atax_avm_byteenable(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_byteenable),
        .out_unnamed_atax11_atax_avm_enable(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_enable),
        .out_unnamed_atax11_atax_avm_read(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_read),
        .out_unnamed_atax11_atax_avm_write(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_write),
        .out_unnamed_atax11_atax_avm_writedata(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_writedata),
        .out_unnamed_atax12_atax_avm_address(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_writedata),
        .out_unnamed_atax6(),
        .out_c0_exi8_0_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_0_tpl),
        .out_c0_exi8_1_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_1_tpl),
        .out_c0_exi8_2_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_2_tpl),
        .out_c0_exi8_3_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_3_tpl),
        .out_c0_exi8_4_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_4_tpl),
        .out_c0_exi8_5_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_5_tpl),
        .out_c0_exi8_6_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_6_tpl),
        .out_c0_exi8_7_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_7_tpl),
        .out_c0_exi8_8_tpl(i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_c0_exi8_8_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // regfree_osync(GPOUT,14)
    assign out_unnamed_atax11_atax_avm_address = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_address;

    // sync_out(GPOUT,18)@20000000
    assign out_o_stall = loop_admit_o_stall;

    // dupName_0_regfree_osync_x(GPOUT,19)
    assign out_unnamed_atax11_atax_avm_burstcount = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,20)
    assign out_unnamed_atax11_atax_avm_byteenable = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,21)
    assign out_unnamed_atax11_atax_avm_enable = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,22)
    assign out_unnamed_atax11_atax_avm_read = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,23)
    assign out_unnamed_atax11_atax_avm_write = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,24)
    assign out_unnamed_atax11_atax_avm_writedata = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax11_atax_avm_writedata;

    // dupName_6_regfree_osync_x(GPOUT,25)
    assign out_unnamed_atax12_atax_avm_address = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_address;

    // dupName_7_regfree_osync_x(GPOUT,26)
    assign out_unnamed_atax12_atax_avm_burstcount = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_burstcount;

    // dupName_8_regfree_osync_x(GPOUT,27)
    assign out_unnamed_atax12_atax_avm_byteenable = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_byteenable;

    // dupName_9_regfree_osync_x(GPOUT,28)
    assign out_unnamed_atax12_atax_avm_enable = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_enable;

    // dupName_10_regfree_osync_x(GPOUT,29)
    assign out_unnamed_atax12_atax_avm_read = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_read;

    // dupName_11_regfree_osync_x(GPOUT,30)
    assign out_unnamed_atax12_atax_avm_write = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_write;

    // dupName_12_regfree_osync_x(GPOUT,31)
    assign out_unnamed_atax12_atax_avm_writedata = i_sfc_logic_s_c0_in_for_body30_ataxs_c0_enter13916_atax0_aunroll_x_out_unnamed_atax12_atax_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,36)@48
    assign out_almost_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_almost_empty_out;
    assign out_c0_exit149_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit149_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit149_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit149_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit149_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit149_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit149_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit149_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit149_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_data_out_8_tpl;
    assign out_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_empty_out;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body30_ataxs_c0_exit149_atax1_aunroll_x_out_valid_out;
    assign out_profile_loop_o_valid = loop_admit_o_valid;

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
