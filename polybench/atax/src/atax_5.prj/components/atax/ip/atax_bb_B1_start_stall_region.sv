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

// SystemVerilog created from atax_bb_B1_start_stall_region
// SystemVerilog created on Wed Dec 13 00:46:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B1_start_stall_region (
    input wire [191:0] in_iord_bl_call_atax_i_fifodata,
    input wire [0:0] in_iord_bl_call_atax_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_atax_o_fifoready,
    output wire [0:0] out_iord_bl_call_atax_o_fifoalmost_full,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] atax_B1_start_merge_reg_out_stall_out;
    wire [0:0] atax_B1_start_merge_reg_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_valid_out;
    wire [0:0] i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_data_1_tpl;
    wire [63:0] i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_data_2_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_b;
    wire [191:0] bubble_join_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_c;
    wire [63:0] bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_d;
    wire [0:0] SE_out_atax_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_atax_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_atax_B1_start_merge_reg_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,58)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B1_start_merge_reg(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_B1_start_merge_reg theatax_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_atax_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(atax_B1_start_merge_reg_out_stall_out),
        .out_valid_out(atax_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_atax_B1_start_merge_reg(STALLENABLE,53)
    // Valid signal propagation
    assign SE_out_atax_B1_start_merge_reg_V0 = SE_out_atax_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_atax_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_o_stall | ~ (SE_out_atax_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_atax_B1_start_merge_reg_wireValid = atax_B1_start_merge_reg_out_valid_out;

    // bubble_join_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x(BITJOIN,48)
    assign bubble_join_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_q = {i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x(BITSELECT,49)
    assign bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_q[191:128]);

    // SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x(STALLENABLE,63)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_and0 = i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_wireValid = i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_and0;

    // i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x(BLACKBOX,38)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_intel_reserved_ffwd_0_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_2_tpl@20000000
    atax_i_llvm_fpga_ffwd_source_s_struct_z40000_unnamed_atax3_atax0 thei_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_V1),
        .in_src_data_in_0_0_0_tpl(bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_b),
        .in_src_data_in_0_0_1_tpl(bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_c),
        .in_src_data_in_0_0_2_tpl(bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_d),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_valid_out),
        .out_intel_reserved_ffwd_0_0_0_tpl(i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5(BLACKBOX,13)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    atax_i_llvm_fpga_ffwd_source_p1024f32_unnamed_4_atax0 thei_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_d),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x(STALLENABLE,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_stall_out) & SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_stall_out) & SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_StallValid = SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_backStall & SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_toReg0 = SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_StallValid & SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_toReg1 = SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_StallValid & SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_or0 = SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_consumed1 & SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_or0);
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_backStall = SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_V0 = SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_V1 = SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_wireValid = i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1(BITJOIN,44)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1(BITSELECT,45)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_q[0:0]);

    // i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x(BLACKBOX,37)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_atax_o_fifoalmost_full@20000000
    // out out_iord_bl_call_atax_o_fifoready@20000000
    // out out_o_stall@20000000
    atax_i_iord_bl_call_unnamed_atax2_atax0 thei_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_b),
        .in_i_stall(SE_out_i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_V0),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .out_iord_bl_call_atax_o_fifoalmost_full(i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_iord_bl_call_atax_o_fifoready),
        .out_o_stall(i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1(STALLENABLE,57)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_backStall = i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_atax1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x(STALLENABLE,65)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x(BLACKBOX,39)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_sfc_s_c0_in_wt_entry_s_c0_enter11_atax0 thei_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_backStall),
        .in_i_valid(SE_out_atax_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_atax0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going94_atax1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,11)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_atax1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,28)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_ataxs_c0_enter11_atax0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,32)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,34)
    assign out_iord_bl_call_atax_o_fifoready = i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_iord_bl_call_atax_o_fifoready;
    assign out_iord_bl_call_atax_o_fifoalmost_full = i_iord_bl_call_atax_unnamed_atax2_atax2_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full;

    // dupName_0_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,36)@2
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_V0;

    // regfree_osync_aunroll_x(GPOUT,40)
    assign out_intel_reserved_ffwd_0_0_0_tpl = i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    assign out_intel_reserved_ffwd_0_0_1_tpl = i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    assign out_intel_reserved_ffwd_0_0_2_tpl = i_llvm_fpga_ffwd_source_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax3_atax4_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;

endmodule
