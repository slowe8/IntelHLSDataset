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

// SystemVerilog created from atax_bb_B9_stall_region
// SystemVerilog created on Wed Dec 13 00:40:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B9_stall_region (
    input wire [31:0] in_unnamed_atax16_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax16_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax16_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax16_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond1994_pop37114,
    input wire [0:0] in_forked25,
    input wire [63:0] in_idxprom2791_pop35109,
    input wire [0:0] in_memdep_phi_pop20118,
    input wire [0:0] in_notcmp5696_pop38116,
    input wire [31:0] in_unnamed_atax15,
    input wire [0:0] in_valid_in,
    input wire [127:0] in_unnamed_atax17_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax17_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax17_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax17_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax16_atax_avm_address,
    output wire [0:0] out_unnamed_atax16_atax_avm_enable,
    output wire [0:0] out_unnamed_atax16_atax_avm_read,
    output wire [0:0] out_unnamed_atax16_atax_avm_write,
    output wire [31:0] out_unnamed_atax16_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax16_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax16_atax_avm_burstcount,
    output wire [0:0] out_c0_exe2194,
    output wire [0:0] out_c0_exe3195,
    output wire [0:0] out_c0_exe4196,
    output wire [0:0] out_c0_exe5197,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_6_atax_avm_readdata,
    input wire [0:0] in_memdep_6_atax_avm_writeack,
    input wire [0:0] in_memdep_6_atax_avm_waitrequest,
    input wire [0:0] in_memdep_6_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax17_atax_avm_address,
    output wire [0:0] out_unnamed_atax17_atax_avm_enable,
    output wire [0:0] out_unnamed_atax17_atax_avm_read,
    output wire [0:0] out_unnamed_atax17_atax_avm_write,
    output wire [127:0] out_unnamed_atax17_atax_avm_writedata,
    output wire [15:0] out_unnamed_atax17_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax17_atax_avm_burstcount,
    output wire [31:0] out_memdep_6_atax_avm_address,
    output wire [0:0] out_memdep_6_atax_avm_enable,
    output wire [0:0] out_memdep_6_atax_avm_read,
    output wire [0:0] out_memdep_6_atax_avm_write,
    output wire [31:0] out_memdep_6_atax_avm_writedata,
    output wire [3:0] out_memdep_6_atax_avm_byteenable,
    output wire [0:0] out_memdep_6_atax_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] atax_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B9_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] atax_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] atax_B9_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] atax_B9_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] atax_B9_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] atax_B9_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] atax_B9_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_burstcount;
    wire [15:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_write;
    wire [127:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_5_tpl;
    wire [99:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [99:0] bubble_join_atax_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B9_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_atax_B9_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_atax_B9_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_atax_B9_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_atax_B9_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_atax_B9_merge_reg_aunroll_x_g;
    wire [3:0] bubble_join_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_e;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B9_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,28)
    assign bubble_join_stall_entry_q = {in_unnamed_atax15, in_notcmp5696_pop38116, in_memdep_phi_pop20118, in_idxprom2791_pop35109, in_forked25, in_exitcond1994_pop37114};

    // bubble_select_stall_entry(BITSELECT,29)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[99:68]);

    // SE_stall_entry(STALLENABLE,38)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B9_merge_reg_aunroll_x(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    atax_B9_merge_reg theatax_B9_merge_reg_aunroll_x (
        .in_stall_in(SE_out_atax_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_g),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .out_stall_out(atax_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B9_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(atax_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(atax_B9_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(atax_B9_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(atax_B9_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(atax_B9_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(atax_B9_merge_reg_aunroll_x_out_data_out_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B9_merge_reg_aunroll_x(BITJOIN,32)
    assign bubble_join_atax_B9_merge_reg_aunroll_x_q = {atax_B9_merge_reg_aunroll_x_out_data_out_5_tpl, atax_B9_merge_reg_aunroll_x_out_data_out_4_tpl, atax_B9_merge_reg_aunroll_x_out_data_out_3_tpl, atax_B9_merge_reg_aunroll_x_out_data_out_2_tpl, atax_B9_merge_reg_aunroll_x_out_data_out_1_tpl, atax_B9_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_atax_B9_merge_reg_aunroll_x(BITSELECT,33)
    assign bubble_select_atax_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B9_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_atax_B9_merge_reg_aunroll_x_c = $unsigned(bubble_join_atax_B9_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_atax_B9_merge_reg_aunroll_x_d = $unsigned(bubble_join_atax_B9_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_atax_B9_merge_reg_aunroll_x_e = $unsigned(bubble_join_atax_B9_merge_reg_aunroll_x_q[66:66]);
    assign bubble_select_atax_B9_merge_reg_aunroll_x_f = $unsigned(bubble_join_atax_B9_merge_reg_aunroll_x_q[98:67]);
    assign bubble_select_atax_B9_merge_reg_aunroll_x_g = $unsigned(bubble_join_atax_B9_merge_reg_aunroll_x_q[99:99]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_atax_B9_merge_reg_aunroll_x(STALLENABLE,41)
    // Valid signal propagation
    assign SE_out_atax_B9_merge_reg_aunroll_x_V0 = SE_out_atax_B9_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_atax_B9_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_o_stall | ~ (SE_out_atax_B9_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_atax_B9_merge_reg_aunroll_x_wireValid = atax_B9_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x(STALLENABLE,43)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x(BLACKBOX,26)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out@20000000
    // out out_memdep_6_atax_avm_address@20000000
    // out out_memdep_6_atax_avm_burstcount@20000000
    // out out_memdep_6_atax_avm_byteenable@20000000
    // out out_memdep_6_atax_avm_enable@20000000
    // out out_memdep_6_atax_avm_read@20000000
    // out out_memdep_6_atax_avm_write@20000000
    // out out_memdep_6_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@14
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_atax16_atax_avm_address@20000000
    // out out_unnamed_atax16_atax_avm_burstcount@20000000
    // out out_unnamed_atax16_atax_avm_byteenable@20000000
    // out out_unnamed_atax16_atax_avm_enable@20000000
    // out out_unnamed_atax16_atax_avm_read@20000000
    // out out_unnamed_atax16_atax_avm_write@20000000
    // out out_unnamed_atax16_atax_avm_writedata@20000000
    // out out_unnamed_atax17_atax_avm_address@20000000
    // out out_unnamed_atax17_atax_avm_burstcount@20000000
    // out out_unnamed_atax17_atax_avm_byteenable@20000000
    // out out_unnamed_atax17_atax_avm_enable@20000000
    // out out_unnamed_atax17_atax_avm_read@20000000
    // out out_unnamed_atax17_atax_avm_write@20000000
    // out out_unnamed_atax17_atax_avm_writedata@20000000
    // out out_c0_exit192_0_tpl@14
    // out out_c0_exit192_1_tpl@14
    // out out_c0_exit192_2_tpl@14
    // out out_c0_exit192_3_tpl@14
    // out out_c0_exit192_4_tpl@14
    // out out_c0_exit192_5_tpl@14
    atax_i_sfc_s_c0_in_for_body48_s_c0_enter18016_atax1 thei_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_backStall),
        .in_i_valid(SE_out_atax_B9_merge_reg_aunroll_x_V0),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_atax16_atax_avm_readdata(in_unnamed_atax16_atax_avm_readdata),
        .in_unnamed_atax16_atax_avm_readdatavalid(in_unnamed_atax16_atax_avm_readdatavalid),
        .in_unnamed_atax16_atax_avm_waitrequest(in_unnamed_atax16_atax_avm_waitrequest),
        .in_unnamed_atax16_atax_avm_writeack(in_unnamed_atax16_atax_avm_writeack),
        .in_unnamed_atax17_atax_avm_readdata(in_unnamed_atax17_atax_avm_readdata),
        .in_unnamed_atax17_atax_avm_readdatavalid(in_unnamed_atax17_atax_avm_readdatavalid),
        .in_unnamed_atax17_atax_avm_waitrequest(in_unnamed_atax17_atax_avm_waitrequest),
        .in_unnamed_atax17_atax_avm_writeack(in_unnamed_atax17_atax_avm_writeack),
        .in_c0_eni6179_0_tpl(GND_q),
        .in_c0_eni6179_1_tpl(bubble_select_atax_B9_merge_reg_aunroll_x_b),
        .in_c0_eni6179_2_tpl(bubble_select_atax_B9_merge_reg_aunroll_x_g),
        .in_c0_eni6179_3_tpl(bubble_select_atax_B9_merge_reg_aunroll_x_c),
        .in_c0_eni6179_4_tpl(bubble_select_atax_B9_merge_reg_aunroll_x_f),
        .in_c0_eni6179_5_tpl(bubble_select_atax_B9_merge_reg_aunroll_x_d),
        .in_c0_eni6179_6_tpl(bubble_select_atax_B9_merge_reg_aunroll_x_e),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out),
        .out_memdep_6_atax_avm_address(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_atax16_atax_avm_address(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_address),
        .out_unnamed_atax16_atax_avm_burstcount(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_burstcount),
        .out_unnamed_atax16_atax_avm_byteenable(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_byteenable),
        .out_unnamed_atax16_atax_avm_enable(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_enable),
        .out_unnamed_atax16_atax_avm_read(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_read),
        .out_unnamed_atax16_atax_avm_write(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_write),
        .out_unnamed_atax16_atax_avm_writedata(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_writedata),
        .out_unnamed_atax17_atax_avm_address(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_address),
        .out_unnamed_atax17_atax_avm_burstcount(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_burstcount),
        .out_unnamed_atax17_atax_avm_byteenable(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_byteenable),
        .out_unnamed_atax17_atax_avm_enable(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_enable),
        .out_unnamed_atax17_atax_avm_read(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_read),
        .out_unnamed_atax17_atax_avm_write(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_write),
        .out_unnamed_atax17_atax_avm_writedata(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_writedata),
        .out_c0_exit192_0_tpl(),
        .out_c0_exit192_1_tpl(),
        .out_c0_exit192_2_tpl(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_2_tpl),
        .out_c0_exit192_3_tpl(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_3_tpl),
        .out_c0_exit192_4_tpl(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_4_tpl),
        .out_c0_exit192_5_tpl(i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,21)
    assign out_unnamed_atax16_atax_avm_address = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_address;
    assign out_unnamed_atax16_atax_avm_enable = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_enable;
    assign out_unnamed_atax16_atax_avm_read = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_read;
    assign out_unnamed_atax16_atax_avm_write = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_write;
    assign out_unnamed_atax16_atax_avm_writedata = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_writedata;
    assign out_unnamed_atax16_atax_avm_byteenable = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_byteenable;
    assign out_unnamed_atax16_atax_avm_burstcount = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax16_atax_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x(BITJOIN,36)
    assign bubble_join_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_q = {i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_5_tpl, i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_4_tpl, i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_3_tpl, i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_c0_exit192_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x(BITSELECT,37)
    assign bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_q[3:3]);

    // dupName_0_sync_out_x(GPOUT,22)@14
    assign out_c0_exe2194 = bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_b;
    assign out_c0_exe3195 = bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_c;
    assign out_c0_exe4196 = bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_d;
    assign out_c0_exe5197 = bubble_select_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_e;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,24)
    assign out_unnamed_atax17_atax_avm_address = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_address;
    assign out_unnamed_atax17_atax_avm_enable = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_enable;
    assign out_unnamed_atax17_atax_avm_read = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_read;
    assign out_unnamed_atax17_atax_avm_write = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_write;
    assign out_unnamed_atax17_atax_avm_writedata = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_writedata;
    assign out_unnamed_atax17_atax_avm_byteenable = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_byteenable;
    assign out_unnamed_atax17_atax_avm_burstcount = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_unnamed_atax17_atax_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,25)
    assign out_memdep_6_atax_avm_address = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_address;
    assign out_memdep_6_atax_avm_enable = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_enable;
    assign out_memdep_6_atax_avm_read = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_read;
    assign out_memdep_6_atax_avm_write = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_write;
    assign out_memdep_6_atax_avm_writedata = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_writedata;
    assign out_memdep_6_atax_avm_byteenable = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_byteenable;
    assign out_memdep_6_atax_avm_burstcount = i_sfc_s_c0_in_for_body48_ataxs_c0_enter18016_atax1_aunroll_x_out_memdep_6_atax_avm_burstcount;

endmodule
