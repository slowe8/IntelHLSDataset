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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body30_s_c0_enter13916_atax0
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body30_s_c0_enter13916_atax0 (
    input wire [31:0] in_unnamed_atax11_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax11_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax11_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax11_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax11_atax_avm_address,
    output wire [0:0] out_unnamed_atax11_atax_avm_enable,
    output wire [0:0] out_unnamed_atax11_atax_avm_read,
    output wire [0:0] out_unnamed_atax11_atax_avm_write,
    output wire [31:0] out_unnamed_atax11_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax11_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax11_atax_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [31:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi8_0_tpl,
    output wire [63:0] out_c0_exi8_1_tpl,
    output wire [31:0] out_c0_exi8_2_tpl,
    output wire [0:0] out_c0_exi8_3_tpl,
    output wire [0:0] out_c0_exi8_4_tpl,
    output wire [0:0] out_c0_exi8_5_tpl,
    output wire [63:0] out_c0_exi8_6_tpl,
    output wire [0:0] out_c0_exi8_7_tpl,
    output wire [0:0] out_c0_exi8_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax6,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [63:0] in_c0_eni7_2_tpl,
    input wire [31:0] in_c0_eni7_3_tpl,
    input wire [0:0] in_c0_eni7_4_tpl,
    input wire [63:0] in_c0_eni7_5_tpl,
    input wire [0:0] in_c0_eni7_6_tpl,
    input wire [0:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_A_pmem_q;
    wire [63:0] c_atax_buff_x_pmem_q;
    wire [31:0] c_i32_091_q;
    wire [31:0] c_i32_192_q;
    wire [6:0] c_i7_195_q;
    wire [6:0] c_i7_6293_q;
    wire [1:0] i_arrayidx366_atax18_vt_const_1_q;
    wire [63:0] i_arrayidx366_atax18_vt_join_q;
    wire [61:0] i_arrayidx366_atax18_vt_select_63_b;
    wire [63:0] i_arrayidx387_atax20_vt_join_q;
    wire [61:0] i_arrayidx387_atax20_vt_select_63_b;
    wire [0:0] i_atax_b7_current_iter_isspec_atax5_q;
    wire [0:0] i_atax_b7_current_thread_isreal_atax6_q;
    wire [0:0] i_atax_b7_fullexited_atax7_q;
    wire [0:0] i_atax_b7_lastiter_atax13_q;
    wire [0:0] i_atax_b7_latchcond_atax14_q;
    wire [0:0] i_atax_b7_next_iter_isreal_atax9_qi;
    reg [0:0] i_atax_b7_next_iter_isreal_atax9_q;
    wire [0:0] i_atax_b7_next_iter_isrealreal_atax10_q;
    wire [0:0] i_atax_b7_next_iter_isspec_atax12_q;
    wire [0:0] i_atax_b7_realexit_atax32_qi;
    reg [0:0] i_atax_b7_realexit_atax32_q;
    wire [7:0] i_fpga_indvars_iv_next12_atax34_a;
    wire [7:0] i_fpga_indvars_iv_next12_atax34_b;
    logic [7:0] i_fpga_indvars_iv_next12_atax34_o;
    wire [7:0] i_fpga_indvars_iv_next12_atax34_q;
    wire [63:0] i_idxprom35_atax16_vt_join_q;
    wire [31:0] i_idxprom35_atax16_vt_select_31_b;
    wire [32:0] i_inc42_atax24_a;
    wire [32:0] i_inc42_atax24_b;
    logic [32:0] i_inc42_atax24_o;
    wire [32:0] i_inc42_atax24_q;
    wire [0:0] i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_atax23_out_primWireOut;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax11_atax19_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax12_atax21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_atax8_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_atax8_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_atax8_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_atax8_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_atax8_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_atax8_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond34_atax33_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond34_atax33_out_feedback_valid_out_7;
    wire [0:0] i_notcmp31_atax31_q;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next12_atax34_sel_x_b;
    wire [31:0] bgTrunc_i_inc42_atax24_sel_x_b;
    wire [14:0] i_arrayidx366_atax0_add_x_a;
    wire [14:0] i_arrayidx366_atax0_add_x_b;
    logic [14:0] i_arrayidx366_atax0_add_x_o;
    wire [14:0] i_arrayidx366_atax0_add_x_q;
    wire [63:0] i_arrayidx366_atax0_append_upper_bits_x_q;
    wire [7:0] i_arrayidx366_atax0_c_i8_01_x_q;
    wire [5:0] i_arrayidx366_atax0_narrow_x_b;
    wire [13:0] i_arrayidx366_atax0_shift_join_x_q;
    wire [14:0] i_arrayidx366_atax0_dupName_0_add_x_a;
    wire [14:0] i_arrayidx366_atax0_dupName_0_add_x_b;
    logic [14:0] i_arrayidx366_atax0_dupName_0_add_x_o;
    wire [14:0] i_arrayidx366_atax0_dupName_0_add_x_q;
    wire [11:0] i_arrayidx366_atax0_dupName_0_narrow_x_b;
    wire [13:0] i_arrayidx366_atax0_dupName_0_shift_join_x_q;
    wire [13:0] i_arrayidx366_atax0_dupName_0_trunc_sel_x_b;
    wire [13:0] i_arrayidx366_atax0_dupName_2_trunc_sel_x_b;
    wire [13:0] i_arrayidx366_atax0_dupName_3_trunc_sel_x_b;
    wire [13:0] i_arrayidx366_atax0_dupName_5_trunc_sel_x_b;
    wire [8:0] i_arrayidx387_atax0_add_x_a;
    wire [8:0] i_arrayidx387_atax0_add_x_b;
    logic [8:0] i_arrayidx387_atax0_add_x_o;
    wire [8:0] i_arrayidx387_atax0_add_x_q;
    wire [63:0] i_arrayidx387_atax0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx387_atax0_narrow_x_b;
    wire [7:0] i_arrayidx387_atax0_shift_join_x_q;
    wire [7:0] i_arrayidx387_atax0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx387_atax0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom35_atax16_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_f32_add41_pop28_atax0_i_llvm_fpga_pop_f32_add41_pop28_atax22_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_f32_add41_pop28_atax0_i_llvm_fpga_pop_f32_add41_pop28_atax22_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_s;
    reg [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q;
    wire [0:0] i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_valid;
    wire i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_stall;
    wire i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q;
    wire [6:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1965_push33_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1965_push33_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_forked5561_push30_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_forked5561_push30_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3667_push34_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3667_push34_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_valid;
    wire i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_stall;
    wire i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_o_data;
    wire [6:0] i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_valid;
    wire i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_stall;
    wire i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_data;
    wire [63:0] i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    wire [0:0] i_exitcond13_atax26_cmp_nsign_q;
    wire [49:0] i_arrayidx366_atax0_upper_bits_x_merged_bit_select_b;
    wire [13:0] i_arrayidx366_atax0_upper_bits_x_merged_bit_select_c;
    wire [55:0] i_arrayidx387_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx387_atax0_upper_bits_x_merged_bit_select_c;
    reg [49:0] redist0_i_arrayidx366_atax0_upper_bits_x_merged_bit_select_b_1_q;
    reg [0:0] redist1_i_exitcond13_atax26_cmp_nsign_q_1_q;
    reg [0:0] redist2_i_exitcond13_atax26_cmp_nsign_q_13_q;
    reg [0:0] redist3_valid_fanout_reg0_q_1_q;
    reg [63:0] redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_q;
    reg [63:0] redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_delay_0;
    reg [63:0] redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_delay_1;
    reg [0:0] redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_q;
    reg [0:0] redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_delay_0;
    reg [0:0] redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_delay_1;
    reg [0:0] redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_delay_2;
    reg [63:0] redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_q;
    reg [63:0] redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_delay_0;
    reg [63:0] redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_delay_1;
    reg [0:0] redist8_sync_together103_aunroll_x_in_c0_eni7_6_tpl_11_q;
    reg [0:0] redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_q;
    reg [0:0] redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_delay_0;
    reg [0:0] redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_delay_1;
    reg [0:0] redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_delay_2;
    reg [0:0] redist10_sync_together103_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist11_sync_together103_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist12_sync_together103_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist13_sync_together103_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist14_sync_together103_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist15_sync_together103_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist16_sync_together103_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist17_sync_together103_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist18_sync_together103_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist19_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_1_q;
    reg [0:0] redist20_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_2_q;
    reg [0:0] redist21_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_3_q;
    reg [0:0] redist22_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_5_q;
    reg [0:0] redist22_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_5_delay_0;
    reg [0:0] redist23_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_7_q;
    reg [0:0] redist23_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_7_delay_0;
    reg [0:0] redist24_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_8_q;
    reg [0:0] redist25_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_15_q;
    reg [6:0] redist27_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_q_1_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_q_1_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_0;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_1;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_2;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_3;
    reg [0:0] redist31_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_13_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_0;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_1;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_2;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_3;
    reg [0:0] redist33_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_13_q;
    reg [0:0] redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_q;
    reg [0:0] redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_0;
    reg [0:0] redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_1;
    reg [0:0] redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_2;
    reg [0:0] redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_3;
    reg [0:0] redist35_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q_1_q;
    reg [5:0] redist36_i_arrayidx387_atax0_narrow_x_b_2_q;
    reg [5:0] redist36_i_arrayidx387_atax0_narrow_x_b_2_delay_0;
    reg [13:0] redist37_i_arrayidx366_atax0_dupName_2_trunc_sel_x_b_1_q;
    reg [31:0] redist38_bgTrunc_i_inc42_atax24_sel_x_b_1_q;
    reg [0:0] redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    reg [0:0] redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_0;
    reg [0:0] redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_1;
    reg [0:0] redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_2;
    reg [0:0] redist40_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_5_q;
    reg [0:0] redist41_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_11_q;
    reg [0:0] redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_q;
    reg [0:0] redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_0;
    reg [0:0] redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_1;
    reg [0:0] redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_2;
    reg [0:0] redist43_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_5_q;
    reg [0:0] redist44_i_atax_b7_realexit_atax32_q_12_q;
    reg [0:0] redist45_i_atax_b7_fullexited_atax7_q_2_q;
    reg [0:0] redist45_i_atax_b7_fullexited_atax7_q_2_delay_0;
    reg [0:0] redist46_i_atax_b7_fullexited_atax7_q_12_q;
    reg [63:0] redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_inputreg0_q;
    reg [31:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_inputreg0_q;
    wire redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_reset0;
    wire [31:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_ia;
    wire [3:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_aa;
    wire [3:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_ab;
    wire [31:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_iq;
    wire [31:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_q;
    wire [3:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_wraddr_i = 4'b1111;
    wire [3:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_offset_q;
    wire [4:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_a;
    wire [4:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_b;
    logic [4:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_o;
    wire [4:0] redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_q;
    reg [63:0] redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_inputreg0_q;
    reg [63:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_inputreg0_q;
    reg [63:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_outputreg0_q;
    wire redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_reset0;
    wire [63:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_ia;
    wire [3:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_aa;
    wire [3:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_ab;
    wire [63:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_iq;
    wire [63:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_q;
    wire [3:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_wraddr_i = 4'b1111;
    wire [3:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_offset_q;
    wire [4:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_a;
    wire [4:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_b;
    logic [4:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_o;
    wire [4:0] redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_q;
    reg [63:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_inputreg0_q;
    reg [63:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_outputreg0_q;
    wire redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_reset0;
    wire [63:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_ia;
    wire [3:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_aa;
    wire [3:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_ab;
    wire [63:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_iq;
    wire [63:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_q;
    wire [3:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_wraddr_i = 4'b1111;
    wire [4:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_a;
    wire [4:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_b;
    logic [4:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_o;
    wire [4:0] redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist10_sync_together103_aunroll_x_in_i_valid_1(DELAY,242)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist10_sync_together103_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist10_sync_together103_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist11_sync_together103_aunroll_x_in_i_valid_2(DELAY,243)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together103_aunroll_x_in_i_valid_2_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist12_sync_together103_aunroll_x_in_i_valid_3(DELAY,244)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist12_sync_together103_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist12_sync_together103_aunroll_x_in_i_valid_3_q <= $unsigned(redist11_sync_together103_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist13_sync_together103_aunroll_x_in_i_valid_4(DELAY,245)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together103_aunroll_x_in_i_valid_4_q <= $unsigned(redist12_sync_together103_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg7(REG,195)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist13_sync_together103_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2(BLACKBOX,81)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_dummy_thread_b7_dummy_atax0 thei_llvm_fpga_dummy_thread_atax_b7_dummy_atax2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4(DELAY,274)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out);
            redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_1 <= redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_0;
            redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_2 <= redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_1;
            redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_q <= redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_2;
        end
    end

    // redist43_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_5(DELAY,275)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_5_q <= $unsigned(redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x(CONSTANT,148)
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_atax_b7_current_thread_isreal_atax6(LOGICAL,66)@5
    assign i_atax_b7_current_thread_isreal_atax6_q = redist43_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_5_q ^ VCC_q;

    // valid_fanout_reg2(REG,190)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist12_sync_together103_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg17(REG,205)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist12_sync_together103_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i7_6293(CONSTANT,56)
    assign c_i7_6293_q = $unsigned(7'b0111110);

    // c_i7_195(CONSTANT,55)
    assign c_i7_195_q = $unsigned(7'b1111111);

    // redist27_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_q_1(DELAY,259)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_q);
        end
    end

    // i_fpga_indvars_iv_next12_atax34(ADD,75)@5
    assign i_fpga_indvars_iv_next12_atax34_a = {1'b0, redist27_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_q_1_q};
    assign i_fpga_indvars_iv_next12_atax34_b = {1'b0, c_i7_195_q};
    assign i_fpga_indvars_iv_next12_atax34_o = $unsigned(i_fpga_indvars_iv_next12_atax34_a) + $unsigned(i_fpga_indvars_iv_next12_atax34_b);
    assign i_fpga_indvars_iv_next12_atax34_q = i_fpga_indvars_iv_next12_atax34_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next12_atax34_sel_x(BITSELECT,93)@5
    assign bgTrunc_i_fpga_indvars_iv_next12_atax34_sel_x_b = i_fpga_indvars_iv_next12_atax34_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_element_extension2_x(BITJOIN,179)@5
    assign i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_element_extension2_x_q = {GND_q, bgTrunc_i_fpga_indvars_iv_next12_atax34_sel_x_b};

    // valid_fanout_reg19(REG,207)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,206)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist12_sync_together103_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x(FIFODELAY,180)@1 + 5
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_stall = ~ (valid_fanout_reg19_q & i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_valid = valid_fanout_reg18_q & redist21_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_data = i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(6),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x (
        .i_valid(i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,182)@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax1_x_o_data[6:0];

    // i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x(MUX,141)@4
    assign i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_s = redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_s or i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_adapt_scalar_trunc4_sel_x_b or c_i7_6293_q)
    begin
        unique case (i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_q = i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_q = c_i7_6293_q;
            default : i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_q = 7'b0;
        endcase
    end

    // i_exitcond13_atax26_cmp_nsign(LOGICAL,229)@4
    assign i_exitcond13_atax26_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_atax25_mux_x_q[6:6]));

    // i_llvm_fpga_push_i1_notexitcond34_atax33(BLACKBOX,87)@4
    // in in_empty_in@20000000
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    atax_i_llvm_fpga_push_i1_notexitcond34_0 thei_llvm_fpga_push_i1_notexitcond34_atax33 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond13_atax26_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going33_atax8_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond34_atax33_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond34_atax33_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going33_atax8(BLACKBOX,86)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going33_0 thei_llvm_fpga_pipeline_keep_going33_atax8 (
        .in_data_in(redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q),
        .in_dummy_in(redist42_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_q),
        .in_forked_in(redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond34_atax33_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond34_atax33_out_feedback_valid_out_7),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going33_atax8_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going33_atax8_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going33_atax8_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going33_atax8_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going33_atax8_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going33_atax8_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_atax_b7_next_iter_isreal_atax9(LOGICAL,70)@4 + 1
    assign i_atax_b7_next_iter_isreal_atax9_qi = i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q & i_llvm_fpga_pipeline_keep_going33_atax8_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_atax_b7_next_iter_isreal_atax9_delay ( .xin(i_atax_b7_next_iter_isreal_atax9_qi), .xout(i_atax_b7_next_iter_isreal_atax9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_atax_b7_next_iter_isrealreal_atax10(LOGICAL,71)@5
    assign i_atax_b7_next_iter_isrealreal_atax10_q = i_atax_b7_next_iter_isreal_atax9_q & i_atax_b7_current_thread_isreal_atax6_q;

    // i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_element_extension2_x(BITJOIN,149)@5
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q, i_atax_b7_next_iter_isrealreal_atax10_q};

    // i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x(LOGICAL,145)@1
    assign i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,192)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // redist19_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_1(DELAY,251)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_1_q <= $unsigned(i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q);
        end
    end

    // redist20_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_2(DELAY,252)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_2_q <= $unsigned(redist19_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_1_q);
        end
    end

    // redist21_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_3(DELAY,253)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_3_q <= $unsigned(redist20_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg3(REG,191)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist12_sync_together103_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x(FIFODELAY,150)@1 + 5
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid = valid_fanout_reg3_q & redist21_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_data = i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(6),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,152)@4
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_o_data[0:0];

    // i_llvm_fpga_forked_atax_b7_forked_atax3(BLACKBOX,82)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_forked_b7_forked_atax0 thei_llvm_fpga_forked_atax_b7_forked_atax3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4(DELAY,271)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out);
            redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_1 <= redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_0;
            redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_2 <= redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_1;
            redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q <= redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x(MUX,134)@4
    assign i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_s = redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_s or i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q = i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q = 1'b0;
        endcase
    end

    // redist35_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q_1(DELAY,267)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q);
        end
    end

    // i_atax_b7_current_iter_isspec_atax5(LOGICAL,65)@5
    assign i_atax_b7_current_iter_isspec_atax5_q = redist35_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q_1_q ^ VCC_q;

    // i_atax_b7_fullexited_atax7(LOGICAL,67)@5
    assign i_atax_b7_fullexited_atax7_q = i_atax_b7_current_iter_isspec_atax5_q | redist43_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_5_q;

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx366_atax0_upper_bits_x_merged_bit_select(BITSELECT,230)@4
    assign i_arrayidx366_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_A_pmem_q[63:14];
    assign i_arrayidx366_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_A_pmem_q[13:0];

    // redist0_i_arrayidx366_atax0_upper_bits_x_merged_bit_select_b_1(DELAY,232)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx366_atax0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx366_atax0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_091(CONSTANT,53)
    assign c_i32_091_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_192(CONSTANT,54)
    assign c_i32_192_q = $unsigned(32'b00000000000000000000000000000001);

    // redist29_i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_q_1(DELAY,261)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_q);
        end
    end

    // i_inc42_atax24(ADD,80)@6
    assign i_inc42_atax24_a = {1'b0, redist29_i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_q_1_q};
    assign i_inc42_atax24_b = {1'b0, c_i32_192_q};
    assign i_inc42_atax24_o = $unsigned(i_inc42_atax24_a) + $unsigned(i_inc42_atax24_b);
    assign i_inc42_atax24_q = i_inc42_atax24_o[32:0];

    // bgTrunc_i_inc42_atax24_sel_x(BITSELECT,94)@6
    assign bgTrunc_i_inc42_atax24_sel_x_b = i_inc42_atax24_q[31:0];

    // redist38_bgTrunc_i_inc42_atax24_sel_x_b_1(DELAY,270)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_bgTrunc_i_inc42_atax24_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc42_atax24_sel_x_b);
        end
    end

    // valid_fanout_reg14(REG,202)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist22_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_5(DELAY,254)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_5_delay_0 <= $unsigned(redist21_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_3_q);
            redist22_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_5_q <= redist22_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_5_delay_0;
        end
    end

    // redist14_sync_together103_aunroll_x_in_i_valid_5(DELAY,246)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist14_sync_together103_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist14_sync_together103_aunroll_x_in_i_valid_5_q <= $unsigned(redist13_sync_together103_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg13(REG,201)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist14_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x(FIFODELAY,171)@2 + 4
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@5
    assign i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_stall = ~ (valid_fanout_reg14_q & redist19_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_valid = valid_fanout_reg13_q & redist22_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_data = redist38_bgTrunc_i_inc42_atax24_sel_x_b_1_q;
    assign i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(6),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x (
        .i_valid(i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_i_stall_bitsignaltemp),
        .i_data(redist38_bgTrunc_i_inc42_atax24_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_5(DELAY,272)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_5_q <= $unsigned(redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q);
        end
    end

    // i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x(MUX,139)@5
    assign i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_s = redist40_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_s or i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_o_data or c_i32_091_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_q = i_llvm_fpga_push_i32_j_137_push29_atax0_i_llvm_fpga_push_i32_j_137_push29_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_q = c_i32_091_q;
            default : i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom35_atax16_sel_x(BITSELECT,133)@5
    assign i_idxprom35_atax16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_137_pop29_atax0_i_llvm_fpga_pop_i32_j_137_pop29_atax15_mux_x_q[31:0]};

    // i_idxprom35_atax16_vt_select_31(BITSELECT,79)@5
    assign i_idxprom35_atax16_vt_select_31_b = i_idxprom35_atax16_sel_x_b[31:0];

    // i_idxprom35_atax16_vt_join(BITJOIN,78)@5
    assign i_idxprom35_atax16_vt_join_q = {c_i32_091_q, i_idxprom35_atax16_vt_select_31_b};

    // i_arrayidx366_atax0_dupName_3_trunc_sel_x(BITSELECT,119)@5
    assign i_arrayidx366_atax0_dupName_3_trunc_sel_x_b = i_idxprom35_atax16_vt_join_q[13:0];

    // i_arrayidx366_atax0_dupName_0_narrow_x(BITSELECT,110)@5
    assign i_arrayidx366_atax0_dupName_0_narrow_x_b = i_arrayidx366_atax0_dupName_3_trunc_sel_x_b[11:0];

    // i_arrayidx366_atax0_dupName_0_shift_join_x(BITJOIN,111)@5
    assign i_arrayidx366_atax0_dupName_0_shift_join_x_q = {i_arrayidx366_atax0_dupName_0_narrow_x_b, i_arrayidx366_atax18_vt_const_1_q};

    // redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_inputreg0(DELAY,279)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni7_2_tpl);
        end
    end

    // redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4(DELAY,236)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_delay_0 <= $unsigned(redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_inputreg0_q);
            redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_delay_1 <= redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_delay_0;
            redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_q <= redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg12(REG,200)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg11(REG,199)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist11_sync_together103_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x(FIFODELAY,174)@1 + 6
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_stall = ~ (valid_fanout_reg12_q & i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_valid = valid_fanout_reg11_q & redist20_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_data = i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(6),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x(MUX,140)@4
    assign i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_s = redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_s or i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_o_data or redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q = i_llvm_fpga_push_i64_idxprom3162_push31_atax0_i_llvm_fpga_push_i64_idxprom3162_push31_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q = redist4_sync_together103_aunroll_x_in_c0_eni7_2_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx366_atax0_dupName_0_trunc_sel_x(BITSELECT,117)@4
    assign i_arrayidx366_atax0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q[13:0];

    // i_arrayidx366_atax0_narrow_x(BITSELECT,105)@4
    assign i_arrayidx366_atax0_narrow_x_b = i_arrayidx366_atax0_dupName_0_trunc_sel_x_b[5:0];

    // i_arrayidx366_atax0_c_i8_01_x(CONSTANT,104)
    assign i_arrayidx366_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx366_atax0_shift_join_x(BITJOIN,106)@4
    assign i_arrayidx366_atax0_shift_join_x_q = {i_arrayidx366_atax0_narrow_x_b, i_arrayidx366_atax0_c_i8_01_x_q};

    // i_arrayidx366_atax0_add_x(ADD,101)@4
    assign i_arrayidx366_atax0_add_x_a = {1'b0, i_arrayidx366_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx366_atax0_add_x_b = {1'b0, i_arrayidx366_atax0_shift_join_x_q};
    assign i_arrayidx366_atax0_add_x_o = $unsigned(i_arrayidx366_atax0_add_x_a) + $unsigned(i_arrayidx366_atax0_add_x_b);
    assign i_arrayidx366_atax0_add_x_q = i_arrayidx366_atax0_add_x_o[14:0];

    // i_arrayidx366_atax0_dupName_2_trunc_sel_x(BITSELECT,118)@4
    assign i_arrayidx366_atax0_dupName_2_trunc_sel_x_b = i_arrayidx366_atax0_add_x_q[13:0];

    // redist37_i_arrayidx366_atax0_dupName_2_trunc_sel_x_b_1(DELAY,269)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_arrayidx366_atax0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx366_atax0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx366_atax0_dupName_0_add_x(ADD,109)@5
    assign i_arrayidx366_atax0_dupName_0_add_x_a = {1'b0, redist37_i_arrayidx366_atax0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx366_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx366_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx366_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx366_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx366_atax0_dupName_0_add_x_b);
    assign i_arrayidx366_atax0_dupName_0_add_x_q = i_arrayidx366_atax0_dupName_0_add_x_o[14:0];

    // i_arrayidx366_atax0_dupName_5_trunc_sel_x(BITSELECT,120)@5
    assign i_arrayidx366_atax0_dupName_5_trunc_sel_x_b = i_arrayidx366_atax0_dupName_0_add_x_q[13:0];

    // i_arrayidx366_atax0_append_upper_bits_x(BITJOIN,102)@5
    assign i_arrayidx366_atax0_append_upper_bits_x_q = {redist0_i_arrayidx366_atax0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx366_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx366_atax18_vt_select_63(BITSELECT,61)@5
    assign i_arrayidx366_atax18_vt_select_63_b = i_arrayidx366_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx366_atax18_vt_const_1(CONSTANT,59)
    assign i_arrayidx366_atax18_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx366_atax18_vt_join(BITJOIN,60)@5
    assign i_arrayidx366_atax18_vt_join_q = {i_arrayidx366_atax18_vt_select_63_b, i_arrayidx366_atax18_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_atax11_atax19(BLACKBOX,84)@5
    // out out_o_almost_empty@11
    // out out_o_empty@11
    // out out_o_readdata@11
    // out out_o_stall@11
    // out out_o_valid@11
    // out out_unnamed_atax11_atax_avm_address@20000000
    // out out_unnamed_atax11_atax_avm_burstcount@20000000
    // out out_unnamed_atax11_atax_avm_byteenable@20000000
    // out out_unnamed_atax11_atax_avm_enable@20000000
    // out out_unnamed_atax11_atax_avm_read@20000000
    // out out_unnamed_atax11_atax_avm_write@20000000
    // out out_unnamed_atax11_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_11_atax0 thei_llvm_fpga_mem_unnamed_atax11_atax19 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx366_atax18_vt_join_q),
        .in_i_predicate(i_atax_b7_fullexited_atax7_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_atax11_atax_avm_readdata(in_unnamed_atax11_atax_avm_readdata),
        .in_unnamed_atax11_atax_avm_readdatavalid(in_unnamed_atax11_atax_avm_readdatavalid),
        .in_unnamed_atax11_atax_avm_waitrequest(in_unnamed_atax11_atax_avm_waitrequest),
        .in_unnamed_atax11_atax_avm_writeack(in_unnamed_atax11_atax_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax11_atax19_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax11_atax_avm_address(i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_address),
        .out_unnamed_atax11_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_burstcount),
        .out_unnamed_atax11_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_byteenable),
        .out_unnamed_atax11_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_enable),
        .out_unnamed_atax11_atax_avm_read(i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_read),
        .out_unnamed_atax11_atax_avm_write(i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_write),
        .out_unnamed_atax11_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,58)
    assign out_unnamed_atax11_atax_avm_address = i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_address;
    assign out_unnamed_atax11_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_enable;
    assign out_unnamed_atax11_atax_avm_read = i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_read;
    assign out_unnamed_atax11_atax_avm_write = i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_write;
    assign out_unnamed_atax11_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_writedata;
    assign out_unnamed_atax11_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_byteenable;
    assign out_unnamed_atax11_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax11_atax19_out_unnamed_atax11_atax_avm_burstcount;

    // regfree_osync(GPOUT,91)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going33_atax8_out_exiting_valid_out;

    // redist15_sync_together103_aunroll_x_in_i_valid_6(DELAY,247)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together103_aunroll_x_in_i_valid_6_q <= $unsigned(redist14_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg8(REG,196)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist15_sync_together103_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist45_i_atax_b7_fullexited_atax7_q_2(DELAY,277)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist45_i_atax_b7_fullexited_atax7_q_2_delay_0 <= $unsigned(i_atax_b7_fullexited_atax7_q);
            redist45_i_atax_b7_fullexited_atax7_q_2_q <= redist45_i_atax_b7_fullexited_atax7_q_2_delay_0;
        end
    end

    // c_atax_buff_x_pmem(CONSTANT,5)
    assign c_atax_buff_x_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx387_atax0_upper_bits_x_merged_bit_select(BITSELECT,231)@7
    assign i_arrayidx387_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_x_pmem_q[63:8];
    assign i_arrayidx387_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_x_pmem_q[7:0];

    // i_arrayidx387_atax0_dupName_0_trunc_sel_x(BITSELECT,131)@5
    assign i_arrayidx387_atax0_dupName_0_trunc_sel_x_b = i_idxprom35_atax16_vt_join_q[7:0];

    // i_arrayidx387_atax0_narrow_x(BITSELECT,124)@5
    assign i_arrayidx387_atax0_narrow_x_b = i_arrayidx387_atax0_dupName_0_trunc_sel_x_b[5:0];

    // redist36_i_arrayidx387_atax0_narrow_x_b_2(DELAY,268)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_arrayidx387_atax0_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx387_atax0_narrow_x_b);
            redist36_i_arrayidx387_atax0_narrow_x_b_2_q <= redist36_i_arrayidx387_atax0_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx387_atax0_shift_join_x(BITJOIN,125)@7
    assign i_arrayidx387_atax0_shift_join_x_q = {redist36_i_arrayidx387_atax0_narrow_x_b_2_q, i_arrayidx366_atax18_vt_const_1_q};

    // i_arrayidx387_atax0_add_x(ADD,121)@7
    assign i_arrayidx387_atax0_add_x_a = {1'b0, i_arrayidx387_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx387_atax0_add_x_b = {1'b0, i_arrayidx387_atax0_shift_join_x_q};
    assign i_arrayidx387_atax0_add_x_o = $unsigned(i_arrayidx387_atax0_add_x_a) + $unsigned(i_arrayidx387_atax0_add_x_b);
    assign i_arrayidx387_atax0_add_x_q = i_arrayidx387_atax0_add_x_o[8:0];

    // i_arrayidx387_atax0_dupName_2_trunc_sel_x(BITSELECT,132)@7
    assign i_arrayidx387_atax0_dupName_2_trunc_sel_x_b = i_arrayidx387_atax0_add_x_q[7:0];

    // i_arrayidx387_atax0_append_upper_bits_x(BITJOIN,122)@7
    assign i_arrayidx387_atax0_append_upper_bits_x_q = {i_arrayidx387_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx387_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx387_atax20_vt_select_63(BITSELECT,64)@7
    assign i_arrayidx387_atax20_vt_select_63_b = i_arrayidx387_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx387_atax20_vt_join(BITJOIN,63)@7
    assign i_arrayidx387_atax20_vt_join_q = {i_arrayidx387_atax20_vt_select_63_b, i_arrayidx366_atax18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax12_atax21(BLACKBOX,85)@7
    // out out_o_almost_empty@11
    // out out_o_empty@11
    // out out_o_readdata@11
    // out out_o_stall@11
    // out out_o_valid@11
    // out out_unnamed_atax12_atax_avm_address@20000000
    // out out_unnamed_atax12_atax_avm_burstcount@20000000
    // out out_unnamed_atax12_atax_avm_byteenable@20000000
    // out out_unnamed_atax12_atax_avm_enable@20000000
    // out out_unnamed_atax12_atax_avm_read@20000000
    // out out_unnamed_atax12_atax_avm_write@20000000
    // out out_unnamed_atax12_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_12_atax0 thei_llvm_fpga_mem_unnamed_atax12_atax21 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx387_atax20_vt_join_q),
        .in_i_predicate(redist45_i_atax_b7_fullexited_atax7_q_2_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax12_atax21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax12_atax_avm_address(i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,97)
    assign out_unnamed_atax12_atax_avm_address = i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_address;
    assign out_unnamed_atax12_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_enable;
    assign out_unnamed_atax12_atax_avm_read = i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_read;
    assign out_unnamed_atax12_atax_avm_write = i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_write;
    assign out_unnamed_atax12_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_writedata;
    assign out_unnamed_atax12_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_byteenable;
    assign out_unnamed_atax12_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax12_atax21_out_unnamed_atax12_atax_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,98)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going33_atax8_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,99)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going33_atax8_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,100)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going33_atax8_out_pipeline_valid_out;

    // redist16_sync_together103_aunroll_x_in_i_valid_7(DELAY,248)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist16_sync_together103_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist16_sync_together103_aunroll_x_in_i_valid_7_q <= $unsigned(redist15_sync_together103_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist17_sync_together103_aunroll_x_in_i_valid_8(DELAY,249)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together103_aunroll_x_in_i_valid_8_q <= $unsigned(redist16_sync_together103_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist18_sync_together103_aunroll_x_in_i_valid_15(DELAY,250)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("SYNC"), .phase(8), .modulus(2), .reset_high(1'b0) )
    redist18_sync_together103_aunroll_x_in_i_valid_15 ( .xin(redist17_sync_together103_aunroll_x_in_i_valid_8_q), .xout(redist18_sync_together103_aunroll_x_in_i_valid_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,188)@15 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist18_sync_together103_aunroll_x_in_i_valid_15_q);
        end
    end

    // redist3_valid_fanout_reg0_q_1(DELAY,235)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist3_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4(DELAY,241)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_delay_0 <= $unsigned(in_c0_eni7_7_tpl);
            redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_delay_1 <= redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_delay_0;
            redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_delay_2 <= redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_delay_1;
            redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_q <= redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp3667_push34_atax0_element_extension2_x(BITJOIN,167)@10
    assign i_llvm_fpga_push_i1_notcmp3667_push34_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q, redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_q};

    // valid_fanout_reg31(REG,219)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // redist23_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_7(DELAY,255)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_7_delay_0 <= $unsigned(redist22_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_5_q);
            redist23_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_7_q <= redist23_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_7_delay_0;
        end
    end

    // redist24_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_8(DELAY,256)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_8_q <= $unsigned(redist23_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_7_q);
        end
    end

    // valid_fanout_reg30(REG,218)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist17_sync_together103_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x(FIFODELAY,168)@1
    // in i_valid@9
    // in i_write_pred@9
    // in i_data@10
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_stall = ~ (valid_fanout_reg31_q & i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_valid = valid_fanout_reg30_q & redist24_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_8_q;
    assign i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_data = i_llvm_fpga_push_i1_notcmp3667_push34_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(6),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp3667_push34_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp3667_push34_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,170)@4
    assign i_llvm_fpga_push_i1_notcmp3667_push34_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp3667_push34_atax0_i_llvm_fpga_push_i1_notcmp3667_push34_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x(MUX,138)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_s = redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q <= i_llvm_fpga_push_i1_notcmp3667_push34_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q <= redist9_sync_together103_aunroll_x_in_c0_eni7_7_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6(DELAY,262)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q);
            redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_1 <= redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_0;
            redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_2 <= redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_1;
            redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_3 <= redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_2;
            redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_q <= redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_delay_3;
        end
    end

    // redist31_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_13(DELAY,263)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist31_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_13 ( .xin(redist30_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_6_q), .xout(redist31_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together103_aunroll_x_in_c0_eni7_6_tpl_11(DELAY,240)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist8_sync_together103_aunroll_x_in_c0_eni7_6_tpl_11 ( .xin(in_c0_eni7_6_tpl), .xout(redist8_sync_together103_aunroll_x_in_c0_eni7_6_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_exitcond1965_push33_atax0_element_extension2_x(BITJOIN,155)@17
    assign i_llvm_fpga_push_i1_exitcond1965_push33_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q, redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_q};

    // valid_fanout_reg28(REG,216)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist16_sync_together103_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist25_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_15(DELAY,257)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist25_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_15 ( .xin(redist24_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_8_q), .xout(redist25_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg27(REG,215)@15 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist18_sync_together103_aunroll_x_in_i_valid_15_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x(FIFODELAY,156)@8
    // in i_valid@16
    // in i_write_pred@16
    // in i_data@17
    // out o_data@11
    assign i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_stall = ~ (valid_fanout_reg28_q & redist23_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_7_q);
    assign i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_valid = valid_fanout_reg27_q & redist25_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_15_q;
    assign i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_data = i_llvm_fpga_push_i1_exitcond1965_push33_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(6),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond1965_push33_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond1965_push33_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,158)@11
    assign i_llvm_fpga_push_i1_exitcond1965_push33_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_exitcond1965_push33_atax0_i_llvm_fpga_push_i1_exitcond1965_push33_atax1_x_o_data[0:0];

    // redist41_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_11(DELAY,273)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist41_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_11 ( .xin(redist40_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_5_q), .xout(redist41_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x(MUX,136)@11 + 1
    assign i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_s = redist41_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_11_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q <= i_llvm_fpga_push_i1_exitcond1965_push33_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q <= redist8_sync_together103_aunroll_x_in_c0_eni7_6_tpl_11_q;
                default : i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6(DELAY,266)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q);
            redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_1 <= redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_0;
            redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_2 <= redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_1;
            redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_3 <= redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_2;
            redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_q <= redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_delay_3;
        end
    end

    // redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_offset(CONSTANT,290)
    assign redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_offset_q = $unsigned(4'b1000);

    // redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt(ADD,291)
    assign redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_a = {1'b0, redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_wraddr_q};
    assign redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_b = {1'b0, redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_o <= $unsigned(redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_a) + $unsigned(redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_b);
        end
    end
    assign redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_q = redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_o[4:0];

    // redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_inputreg0(DELAY,285)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_inputreg0_q <= $unsigned(in_c0_eni7_5_tpl);
        end
    end

    // redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4(DELAY,239)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_delay_0 <= $unsigned(redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_inputreg0_q);
            redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_delay_1 <= redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_delay_0;
            redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_q <= redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg25(REG,213)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,212)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist11_sync_together103_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x(FIFODELAY,183)@1 + 6
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_stall = ~ (valid_fanout_reg25_q & i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_valid = valid_fanout_reg24_q & redist20_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_data = i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q;
    assign i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(6),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x (
        .i_valid(i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q),
        .o_data(i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x(MUX,142)@4
    assign i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_s = redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_s or i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_o_data or redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_s)
            1'b0 : i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q = i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax0_i_llvm_fpga_push_p67f32_arrayidx32564_push32_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q = redist7_sync_together103_aunroll_x_in_c0_eni7_5_tpl_4_q;
            default : i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q = 64'b0;
        endcase
    end

    // redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_inputreg0(DELAY,286)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_inputreg0_q <= $unsigned(i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q);
        end
    end

    // redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_wraddr(COUNTER,289)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_wraddr_i <= $unsigned(redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_wraddr_q = redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_wraddr_i[3:0];

    // redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem(DUALMEM,288)
    assign redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_ia = $unsigned(redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_inputreg0_q);
    assign redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_aa = redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_wraddr_q;
    assign redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_ab = redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(64),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_aa),
        .data_a(redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_ab),
        .q_b(redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_q = redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_iq[63:0];

    // redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_outputreg0(DELAY,287)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_outputreg0_q <= $unsigned(redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_mem_q);
        end
    end

    // redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4(DELAY,238)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_delay_0 <= $unsigned(in_c0_eni7_4_tpl);
            redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_delay_1 <= redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_delay_0;
            redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_delay_2 <= redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_delay_1;
            redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_q <= redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_forked5561_push30_atax0_element_extension2_x(BITJOIN,161)@10
    assign i_llvm_fpga_push_i1_forked5561_push30_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q, redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_q};

    // valid_fanout_reg22(REG,210)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,209)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist17_sync_together103_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x(FIFODELAY,162)@1
    // in i_valid@9
    // in i_write_pred@9
    // in i_data@10
    // out o_data@4
    assign i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_stall = ~ (valid_fanout_reg22_q & i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_valid = valid_fanout_reg21_q & redist24_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_8_q;
    assign i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_data = i_llvm_fpga_push_i1_forked5561_push30_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(6),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_forked5561_push30_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_forked5561_push30_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,164)@4
    assign i_llvm_fpga_push_i1_forked5561_push30_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_forked5561_push30_atax0_i_llvm_fpga_push_i1_forked5561_push30_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x(MUX,137)@4 + 1
    assign i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_s = redist39_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q <= i_llvm_fpga_push_i1_forked5561_push30_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q <= redist6_sync_together103_aunroll_x_in_c0_eni7_4_tpl_4_q;
                default : i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6(DELAY,264)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q);
            redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_1 <= redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_0;
            redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_2 <= redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_1;
            redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_3 <= redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_2;
            redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_q <= redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_delay_3;
        end
    end

    // redist33_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_13(DELAY,265)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist33_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_13 ( .xin(redist32_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_6_q), .xout(redist33_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist1_i_exitcond13_atax26_cmp_nsign_q_1(DELAY,233)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_exitcond13_atax26_cmp_nsign_q_1_q <= $unsigned(i_exitcond13_atax26_cmp_nsign_q);
        end
    end

    // i_notcmp31_atax31(LOGICAL,88)@5
    assign i_notcmp31_atax31_q = redist1_i_exitcond13_atax26_cmp_nsign_q_1_q ^ VCC_q;

    // i_atax_b7_next_iter_isspec_atax12(LOGICAL,72)@5
    assign i_atax_b7_next_iter_isspec_atax12_q = i_atax_b7_next_iter_isreal_atax9_q ^ VCC_q;

    // i_atax_b7_lastiter_atax13(LOGICAL,68)@5
    assign i_atax_b7_lastiter_atax13_q = redist35_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q_1_q & i_atax_b7_next_iter_isspec_atax12_q;

    // i_atax_b7_latchcond_atax14(LOGICAL,69)@5
    assign i_atax_b7_latchcond_atax14_q = i_atax_b7_lastiter_atax13_q & i_atax_b7_current_thread_isreal_atax6_q;

    // i_atax_b7_realexit_atax32(LOGICAL,73)@5 + 1
    assign i_atax_b7_realexit_atax32_qi = i_atax_b7_latchcond_atax14_q & i_notcmp31_atax31_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_atax_b7_realexit_atax32_delay ( .xin(i_atax_b7_realexit_atax32_qi), .xout(i_atax_b7_realexit_atax32_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist44_i_atax_b7_realexit_atax32_q_12(DELAY,276)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist44_i_atax_b7_realexit_atax32_q_12 ( .xin(i_atax_b7_realexit_atax32_q), .xout(redist44_i_atax_b7_realexit_atax32_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_i_exitcond13_atax26_cmp_nsign_q_13(DELAY,234)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist2_i_exitcond13_atax26_cmp_nsign_q_13 ( .xin(redist1_i_exitcond13_atax26_cmp_nsign_q_1_q), .xout(redist2_i_exitcond13_atax26_cmp_nsign_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_offset(CONSTANT,283)
    assign redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_offset_q = $unsigned(4'b1001);

    // redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt(ADD,284)
    assign redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_a = {1'b0, redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_wraddr_q};
    assign redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_b = {1'b0, redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_o <= $unsigned(redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_a) + $unsigned(redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_b);
        end
    end
    assign redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_q = redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_o[4:0];

    // redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_inputreg0(DELAY,280)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_inputreg0_q <= $unsigned(in_c0_eni7_3_tpl);
        end
    end

    // redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_wraddr(COUNTER,282)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_wraddr_i <= $unsigned(redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_wraddr_q = redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_wraddr_i[3:0];

    // redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem(DUALMEM,281)
    assign redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_ia = $unsigned(redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_inputreg0_q);
    assign redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_aa = redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_wraddr_q;
    assign redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_ab = redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_aa),
        .data_a(redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_ab),
        .q_b(redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_q = redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_iq[31:0];

    // valid_fanout_reg16(REG,204)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist16_sync_together103_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg15(REG,203)@15 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist18_sync_together103_aunroll_x_in_i_valid_15_q);
        end
    end

    // i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x(FIFODELAY,144)@8
    // in i_valid@16
    // in i_write_pred@16
    // in i_data@17
    // out o_data@11
    assign i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_stall = ~ (valid_fanout_reg16_q & redist23_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_7_q);
    assign i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_valid = valid_fanout_reg15_q & redist25_i_llvm_fpga_push_f32_add41_push28_atax0_inv_pred_x_q_15_q;
    assign i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_data = i_llvm_fpga_fp_multadd_mult_add_atax23_out_primWireOut;
    assign i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(32),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(6),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x (
        .i_valid(i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_fp_multadd_mult_add_atax23_out_primWireOut),
        .o_data(i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_add41_pop28_atax0_i_llvm_fpga_pop_f32_add41_pop28_atax22_mux_x(MUX,135)@11
    assign i_llvm_fpga_pop_f32_add41_pop28_atax0_i_llvm_fpga_pop_f32_add41_pop28_atax22_mux_x_s = redist41_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_11_q;
    always @(i_llvm_fpga_pop_f32_add41_pop28_atax0_i_llvm_fpga_pop_f32_add41_pop28_atax22_mux_x_s or i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_o_data or redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_q)
    begin
        unique case (i_llvm_fpga_pop_f32_add41_pop28_atax0_i_llvm_fpga_pop_f32_add41_pop28_atax22_mux_x_s)
            1'b0 : i_llvm_fpga_pop_f32_add41_pop28_atax0_i_llvm_fpga_pop_f32_add41_pop28_atax22_mux_x_q = i_llvm_fpga_push_f32_add41_push28_atax0_i_llvm_fpga_push_f32_add41_push28_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_f32_add41_pop28_atax0_i_llvm_fpga_pop_f32_add41_pop28_atax22_mux_x_q = redist5_sync_together103_aunroll_x_in_c0_eni7_3_tpl_11_mem_q;
            default : i_llvm_fpga_pop_f32_add41_pop28_atax0_i_llvm_fpga_pop_f32_add41_pop28_atax22_mux_x_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_fp_multadd_mult_add_atax23(BLACKBOX,83)@11
    // out out_primWireOut@17
    atax_flt_i_sfc_logic_s_c0_in_for_body30_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_atax23 (
        .in_0(i_llvm_fpga_mem_unnamed_atax11_atax19_out_o_readdata),
        .in_1(i_llvm_fpga_mem_unnamed_atax12_atax21_out_o_readdata),
        .in_2(i_llvm_fpga_pop_f32_add41_pop28_atax0_i_llvm_fpga_pop_f32_add41_pop28_atax22_mux_x_q),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_atax23_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt(ADD,297)
    assign redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_a = {1'b0, redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_wraddr_q};
    assign redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_b = {1'b0, redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_o <= $unsigned(redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_a) + $unsigned(redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_b);
        end
    end
    assign redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_q = redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_o[4:0];

    // redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_inputreg0(DELAY,292)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q);
        end
    end

    // redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_wraddr(COUNTER,295)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_wraddr_i <= $unsigned(redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_wraddr_q = redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_wraddr_i[3:0];

    // redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem(DUALMEM,294)
    assign redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_ia = $unsigned(redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_inputreg0_q);
    assign redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_aa = redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_wraddr_q;
    assign redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_ab = redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(64),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_aa),
        .data_a(redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_ab),
        .q_b(redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_q = redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_iq[63:0];

    // redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_outputreg0(DELAY,293)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_outputreg0_q <= $unsigned(redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_mem_q);
        end
    end

    // redist46_i_atax_b7_fullexited_atax7_q_12(DELAY,278)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist46_i_atax_b7_fullexited_atax7_q_12 ( .xin(redist45_i_atax_b7_fullexited_atax7_q_2_q), .xout(redist46_i_atax_b7_fullexited_atax7_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,186)@17
    assign out_c0_exi8_0_tpl = redist46_i_atax_b7_fullexited_atax7_q_12_q;
    assign out_c0_exi8_1_tpl = redist28_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax0_i_llvm_fpga_pop_i64_idxprom3162_pop31_atax17_mux_x_q_13_outputreg0_q;
    assign out_c0_exi8_2_tpl = i_llvm_fpga_fp_multadd_mult_add_atax23_out_primWireOut;
    assign out_c0_exi8_3_tpl = redist2_i_exitcond13_atax26_cmp_nsign_q_13_q;
    assign out_c0_exi8_4_tpl = redist44_i_atax_b7_realexit_atax32_q_12_q;
    assign out_c0_exi8_5_tpl = redist33_i_llvm_fpga_pop_i1_forked5561_pop30_atax0_i_llvm_fpga_pop_i1_forked5561_pop30_atax36_mux_x_q_13_q;
    assign out_c0_exi8_6_tpl = redist26_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax0_i_llvm_fpga_pop_p67f32_arrayidx32564_pop32_atax38_mux_x_q_13_outputreg0_q;
    assign out_c0_exi8_7_tpl = redist34_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax0_i_llvm_fpga_pop_i1_exitcond1965_pop33_atax40_mux_x_q_6_q;
    assign out_c0_exi8_8_tpl = redist31_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax0_i_llvm_fpga_pop_i1_notcmp3667_pop34_atax42_mux_x_q_13_q;
    assign out_o_valid = redist3_valid_fanout_reg0_q_1_q;
    assign out_unnamed_atax6 = GND_q;

endmodule
