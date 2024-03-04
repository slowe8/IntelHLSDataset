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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body52_s_c0_enter16817_atax0
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body52_s_c0_enter16817_atax0 (
    input wire [31:0] in_unnamed_atax14_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax14_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax14_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax14_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax14_atax_avm_address,
    output wire [0:0] out_unnamed_atax14_atax_avm_enable,
    output wire [0:0] out_unnamed_atax14_atax_avm_read,
    output wire [0:0] out_unnamed_atax14_atax_avm_write,
    output wire [31:0] out_unnamed_atax14_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax14_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax14_atax_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_atax15_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax15_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax15_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax15_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax15_atax_avm_address,
    output wire [0:0] out_unnamed_atax15_atax_avm_enable,
    output wire [0:0] out_unnamed_atax15_atax_avm_read,
    output wire [0:0] out_unnamed_atax15_atax_avm_write,
    output wire [31:0] out_unnamed_atax15_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax15_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax15_atax_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    input wire [31:0] in_memdep_6_atax_avm_readdata,
    input wire [0:0] in_memdep_6_atax_avm_writeack,
    input wire [0:0] in_memdep_6_atax_avm_waitrequest,
    input wire [0:0] in_memdep_6_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_6_atax_avm_address,
    output wire [0:0] out_memdep_6_atax_avm_enable,
    output wire [0:0] out_memdep_6_atax_avm_read,
    output wire [0:0] out_memdep_6_atax_avm_write,
    output wire [31:0] out_memdep_6_atax_avm_writedata,
    output wire [3:0] out_memdep_6_atax_avm_byteenable,
    output wire [0:0] out_memdep_6_atax_avm_burstcount,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_atax_B9_current_iter_isspec,
    output wire [0:0] out_c0_exi5179_0_tpl,
    output wire [0:0] out_c0_exi5179_1_tpl,
    output wire [0:0] out_c0_exi5179_2_tpl,
    output wire [0:0] out_c0_exi5179_3_tpl,
    output wire [0:0] out_c0_exi5179_4_tpl,
    output wire [0:0] out_c0_exi5179_5_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni6167_0_tpl,
    input wire [0:0] in_c0_eni6167_1_tpl,
    input wire [0:0] in_c0_eni6167_2_tpl,
    input wire [63:0] in_c0_eni6167_3_tpl,
    input wire [31:0] in_c0_eni6167_4_tpl,
    input wire [0:0] in_c0_eni6167_5_tpl,
    input wire [0:0] in_c0_eni6167_6_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_A_pmem_q;
    wire [63:0] c_atax_buff_y_out_pmem_q;
    wire [31:0] c_i32_081_q;
    wire [31:0] c_i32_182_q;
    wire [6:0] c_i7_185_q;
    wire [6:0] c_i7_6283_q;
    wire [1:0] i_arrayidx549_atax11_vt_const_1_q;
    wire [63:0] i_arrayidx549_atax11_vt_join_q;
    wire [61:0] i_arrayidx549_atax11_vt_select_63_b;
    wire [63:0] i_arrayidx5810_atax15_vt_join_q;
    wire [61:0] i_arrayidx5810_atax15_vt_select_63_b;
    wire [0:0] i_atax_b9_current_iter_isspec_atax5_q;
    wire [0:0] i_atax_b9_next_iter_isreal_atax7_q;
    wire [7:0] i_fpga_indvars_iv_next15_atax30_a;
    wire [7:0] i_fpga_indvars_iv_next15_atax30_b;
    logic [7:0] i_fpga_indvars_iv_next15_atax30_o;
    wire [7:0] i_fpga_indvars_iv_next15_atax30_q;
    wire [63:0] i_idxprom53_atax10_vt_join_q;
    wire [31:0] i_idxprom53_atax10_vt_select_31_b;
    wire [32:0] i_inc66_atax20_a;
    wire [32:0] i_inc66_atax20_b;
    logic [32:0] i_inc66_atax20_o;
    wire [32:0] i_inc66_atax20_q;
    wire [0:0] i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add72_atax18_out_primWireOut;
    wire [31:0] i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax19_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax14_atax13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_atax29_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_atax29_out_feedback_valid_out_5;
    wire [0:0] i_notcmp26_atax28_q;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next15_atax30_sel_x_b;
    wire [31:0] bgTrunc_i_inc66_atax20_sel_x_b;
    wire [8:0] i_arrayidx549_atax0_add_x_a;
    wire [8:0] i_arrayidx549_atax0_add_x_b;
    logic [8:0] i_arrayidx549_atax0_add_x_o;
    wire [8:0] i_arrayidx549_atax0_add_x_q;
    wire [63:0] i_arrayidx549_atax0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx549_atax0_narrow_x_b;
    wire [7:0] i_arrayidx549_atax0_shift_join_x_q;
    wire [7:0] i_arrayidx549_atax0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx549_atax0_dupName_2_trunc_sel_x_b;
    wire [14:0] i_arrayidx5810_atax0_add_x_a;
    wire [14:0] i_arrayidx5810_atax0_add_x_b;
    logic [14:0] i_arrayidx5810_atax0_add_x_o;
    wire [14:0] i_arrayidx5810_atax0_add_x_q;
    wire [63:0] i_arrayidx5810_atax0_append_upper_bits_x_q;
    wire [7:0] i_arrayidx5810_atax0_c_i8_01_x_q;
    wire [5:0] i_arrayidx5810_atax0_narrow_x_b;
    wire [13:0] i_arrayidx5810_atax0_shift_join_x_q;
    wire [14:0] i_arrayidx5810_atax0_dupName_0_add_x_a;
    wire [14:0] i_arrayidx5810_atax0_dupName_0_add_x_b;
    logic [14:0] i_arrayidx5810_atax0_dupName_0_add_x_o;
    wire [14:0] i_arrayidx5810_atax0_dupName_0_add_x_q;
    wire [11:0] i_arrayidx5810_atax0_dupName_0_narrow_x_b;
    wire [13:0] i_arrayidx5810_atax0_dupName_0_shift_join_x_q;
    wire [13:0] i_arrayidx5810_atax0_dupName_0_trunc_sel_x_b;
    wire [13:0] i_arrayidx5810_atax0_dupName_2_trunc_sel_x_b;
    wire [13:0] i_arrayidx5810_atax0_dupName_3_trunc_sel_x_b;
    wire [13:0] i_arrayidx5810_atax0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom53_atax10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x_s;
    reg [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x_q;
    wire [0:0] i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_valid;
    wire i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_stall;
    wire i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q;
    wire [6:0] i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1966_push38_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1966_push38_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3668_push39_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3668_push39_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_valid;
    wire i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_stall;
    wire i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_o_data;
    wire [6:0] i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg29_q;
    wire [0:0] i_exitcond16_atax22_cmp_nsign_q;
    wire [49:0] i_arrayidx5810_atax0_upper_bits_x_merged_bit_select_b;
    wire [13:0] i_arrayidx5810_atax0_upper_bits_x_merged_bit_select_c;
    wire [55:0] i_arrayidx549_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx549_atax0_upper_bits_x_merged_bit_select_c;
    reg [49:0] redist0_i_arrayidx5810_atax0_upper_bits_x_merged_bit_select_b_1_q;
    reg [0:0] redist1_i_exitcond16_atax22_cmp_nsign_q_14_q;
    reg [0:0] redist2_valid_fanout_reg0_q_1_q;
    reg [0:0] redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_q;
    reg [0:0] redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_0;
    reg [0:0] redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_1;
    reg [0:0] redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_2;
    reg [0:0] redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_3;
    reg [63:0] redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_q;
    reg [63:0] redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_delay_0;
    reg [63:0] redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_delay_1;
    reg [31:0] redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_q;
    reg [31:0] redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_delay_0;
    reg [31:0] redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_delay_1;
    reg [0:0] redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_q;
    reg [0:0] redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_0;
    reg [0:0] redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_1;
    reg [0:0] redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_2;
    reg [0:0] redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_3;
    reg [0:0] redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_q;
    reg [0:0] redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_delay_0;
    reg [0:0] redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_delay_1;
    reg [0:0] redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_delay_2;
    reg [0:0] redist8_sync_together91_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist9_sync_together91_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist10_sync_together91_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist11_sync_together91_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist12_sync_together91_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist12_sync_together91_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist13_sync_together91_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist14_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_1_q;
    reg [0:0] redist15_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_2_q;
    reg [0:0] redist16_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_3_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q_14_q;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q_2_q;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q_2_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q_13_q;
    reg [13:0] redist21_i_arrayidx5810_atax0_dupName_2_trunc_sel_x_b_1_q;
    reg [5:0] redist22_i_arrayidx549_atax0_narrow_x_b_2_q;
    reg [5:0] redist22_i_arrayidx549_atax0_narrow_x_b_2_delay_0;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going28_atax6_out_data_out_1_q;
    reg [0:0] redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_q;
    reg [0:0] redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_delay_0;
    reg [0:0] redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_delay_1;
    reg [0:0] redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_delay_2;
    reg [0:0] redist25_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_5_q;
    reg [0:0] redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_q;
    reg [0:0] redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_delay_0;
    reg [0:0] redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_delay_1;
    reg [0:0] redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_delay_2;
    reg [0:0] redist27_i_atax_b9_current_iter_isspec_atax5_q_2_q;
    reg [0:0] redist27_i_atax_b9_current_iter_isspec_atax5_q_2_delay_0;
    reg [0:0] redist28_i_atax_b9_current_iter_isspec_atax5_q_12_q;
    reg [0:0] redist29_i_atax_b9_current_iter_isspec_atax5_q_13_q;
    reg [63:0] redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_inputreg0_q;
    reg [31:0] redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_inputreg0_q;
    reg [31:0] redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_outputreg0_q;
    reg [31:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_inputreg0_q;
    reg [31:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_outputreg0_q;
    wire redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_reset0;
    wire [31:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_ia;
    wire [1:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_aa;
    wire [1:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_ab;
    wire [31:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_iq;
    wire [31:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_q;
    wire [1:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_wraddr_i = 2'b11;
    wire [1:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_offset_q;
    wire [2:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_a;
    wire [2:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_b;
    logic [2:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_o;
    wire [2:0] redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_q;
    reg [63:0] redist30_i_arrayidx549_atax11_vt_join_q_10_inputreg0_q;
    reg [63:0] redist30_i_arrayidx549_atax11_vt_join_q_10_outputreg0_q;
    wire redist30_i_arrayidx549_atax11_vt_join_q_10_mem_reset0;
    wire [63:0] redist30_i_arrayidx549_atax11_vt_join_q_10_mem_ia;
    wire [2:0] redist30_i_arrayidx549_atax11_vt_join_q_10_mem_aa;
    wire [2:0] redist30_i_arrayidx549_atax11_vt_join_q_10_mem_ab;
    wire [63:0] redist30_i_arrayidx549_atax11_vt_join_q_10_mem_iq;
    wire [63:0] redist30_i_arrayidx549_atax11_vt_join_q_10_mem_q;
    wire [2:0] redist30_i_arrayidx549_atax11_vt_join_q_10_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist30_i_arrayidx549_atax11_vt_join_q_10_wraddr_i = 3'b111;
    wire [2:0] redist30_i_arrayidx549_atax11_vt_join_q_10_offset_q;
    wire [3:0] redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_a;
    wire [3:0] redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_b;
    logic [3:0] redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_o;
    wire [3:0] redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist8_sync_together91_aunroll_x_in_i_valid_1(DELAY,228)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_together91_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist8_sync_together91_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist9_sync_together91_aunroll_x_in_i_valid_2(DELAY,229)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together91_aunroll_x_in_i_valid_2_q <= $unsigned(redist8_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist10_sync_together91_aunroll_x_in_i_valid_3(DELAY,230)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist10_sync_together91_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist10_sync_together91_aunroll_x_in_i_valid_3_q <= $unsigned(redist9_sync_together91_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist11_sync_together91_aunroll_x_in_i_valid_4(DELAY,231)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together91_aunroll_x_in_i_valid_4_q <= $unsigned(redist10_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist12_sync_together91_aunroll_x_in_i_valid_6(DELAY,232)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist12_sync_together91_aunroll_x_in_i_valid_6_delay_0 <= '0;
        end
        else
        begin
            redist12_sync_together91_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist11_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together91_aunroll_x_in_i_valid_6_q <= redist12_sync_together91_aunroll_x_in_i_valid_6_delay_0;
        end
    end

    // valid_fanout_reg7(REG,185)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist12_sync_together91_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_c_i7_03_x(CONSTANT,141)
    assign i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,180)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist10_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg21(REG,199)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist10_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i7_6283(CONSTANT,54)
    assign c_i7_6283_q = $unsigned(7'b0111110);

    // c_i7_185(CONSTANT,53)
    assign c_i7_185_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next15_atax30(ADD,66)@4
    assign i_fpga_indvars_iv_next15_atax30_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x_q};
    assign i_fpga_indvars_iv_next15_atax30_b = {1'b0, c_i7_185_q};
    assign i_fpga_indvars_iv_next15_atax30_o = $unsigned(i_fpga_indvars_iv_next15_atax30_a) + $unsigned(i_fpga_indvars_iv_next15_atax30_b);
    assign i_fpga_indvars_iv_next15_atax30_q = i_fpga_indvars_iv_next15_atax30_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next15_atax30_sel_x(BITSELECT,85)@4
    assign bgTrunc_i_fpga_indvars_iv_next15_atax30_sel_x_b = i_fpga_indvars_iv_next15_atax30_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_element_extension2_x(BITJOIN,172)@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_element_extension2_x_q = {GND_q, bgTrunc_i_fpga_indvars_iv_next15_atax30_sel_x_b};

    // i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x(LOGICAL,138)@1
    assign i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg23(REG,201)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // redist15_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_2(DELAY,235)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_2_q <= $unsigned(redist14_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_1_q);
        end
    end

    // valid_fanout_reg22(REG,200)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist9_sync_together91_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x(FIFODELAY,173)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_stall = ~ (valid_fanout_reg23_q & i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_valid = valid_fanout_reg22_q & redist15_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_data = i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x (
        .i_valid(i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,175)@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax1_x_o_data[6:0];

    // i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x(MUX,135)@4
    assign i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x_s = redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x_s or i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_adapt_scalar_trunc4_sel_x_b or c_i7_6283_q)
    begin
        unique case (i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x_q = i_llvm_fpga_push_i7_fpga_indvars_iv14_push35_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x_q = c_i7_6283_q;
            default : i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x_q = 7'b0;
        endcase
    end

    // i_exitcond16_atax22_cmp_nsign(LOGICAL,217)@4
    assign i_exitcond16_atax22_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv14_pop35_atax21_mux_x_q[6:6]));

    // i_llvm_fpga_push_i1_notexitcond29_atax29(BLACKBOX,79)@4
    // in in_empty_in@20000000
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    atax_i_llvm_fpga_push_i1_notexitcond29_0 thei_llvm_fpga_push_i1_notexitcond29_atax29 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond16_atax22_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going28_atax6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond29_atax29_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond29_atax29_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2(BLACKBOX,72)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_dummy_thread_b9_dummy_atax0 thei_llvm_fpga_dummy_thread_atax_b9_dummy_atax2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4(DELAY,246)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out);
            redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_delay_1 <= redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_delay_0;
            redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_delay_2 <= redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_delay_1;
            redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_q <= redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_atax_b9_forked_atax3(BLACKBOX,73)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_forked_b9_forked_atax0 thei_llvm_fpga_forked_atax_b9_forked_atax3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4(DELAY,244)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out);
            redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_delay_1 <= redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_delay_0;
            redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_delay_2 <= redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_delay_1;
            redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_q <= redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going28_atax6(BLACKBOX,78)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going28_0 thei_llvm_fpga_pipeline_keep_going28_atax6 (
        .in_data_in(redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_q),
        .in_dummy_in(redist26_i_llvm_fpga_dummy_thread_atax_b9_dummy_atax2_out_dummy_out_4_q),
        .in_forked_in(redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond29_atax29_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond29_atax29_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going28_atax6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going28_atax6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going28_atax6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going28_atax6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going28_atax6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going28_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pipeline_keep_going28_atax6_out_data_out_1(DELAY,243)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_pipeline_keep_going28_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going28_atax6_out_data_out);
        end
    end

    // i_atax_b9_next_iter_isreal_atax7(LOGICAL,64)@5
    assign i_atax_b9_next_iter_isreal_atax7_q = i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x_q & redist23_i_llvm_fpga_pipeline_keep_going28_atax6_out_data_out_1_q;

    // i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_element_extension2_x(BITJOIN,142)@5
    assign i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_c_i7_03_x_q, i_atax_b9_next_iter_isreal_atax7_q};

    // redist14_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_1(DELAY,234)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_1_q <= $unsigned(i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q);
        end
    end

    // valid_fanout_reg4(REG,182)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist8_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist16_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_3(DELAY,236)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_3_q <= $unsigned(redist15_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg3(REG,181)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist10_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x(FIFODELAY,143)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_stall = ~ (valid_fanout_reg4_q & redist14_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_valid = valid_fanout_reg3_q & redist16_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_data = i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,145)@5
    assign i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax1_x_o_data[0:0];

    // redist25_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_5(DELAY,245)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_5_q <= $unsigned(redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x(MUX,128)@5
    assign i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x_s = redist25_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x_s or i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x_q = i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x_q = 1'b0;
        endcase
    end

    // i_atax_b9_current_iter_isspec_atax5(LOGICAL,63)@5
    assign i_atax_b9_current_iter_isspec_atax5_q = i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b9_current_iter_isreal_atax4_mux_x_q ^ VCC_q;

    // redist27_i_atax_b9_current_iter_isspec_atax5_q_2(DELAY,247)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_atax_b9_current_iter_isspec_atax5_q_2_delay_0 <= $unsigned(i_atax_b9_current_iter_isspec_atax5_q);
            redist27_i_atax_b9_current_iter_isspec_atax5_q_2_q <= redist27_i_atax_b9_current_iter_isspec_atax5_q_2_delay_0;
        end
    end

    // redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5(DELAY,223)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_0 <= $unsigned(in_c0_eni6167_2_tpl);
            redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_1 <= redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_0;
            redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_2 <= redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_1;
            redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_3 <= redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_2;
            redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_q <= redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_element_extension2_x(BITJOIN,154)@5
    assign i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q};

    // valid_fanout_reg14(REG,192)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist8_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg13(REG,191)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist10_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x(FIFODELAY,155)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_stall = ~ (valid_fanout_reg14_q & redist14_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_valid = valid_fanout_reg13_q & redist16_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,157)@5
    assign i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x(MUX,131)@5
    assign i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_s = redist25_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_s or i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_adapt_scalar_trunc4_sel_x_b or redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q = i_llvm_fpga_push_i1_memdep_phi_pop2071_push41_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q = redist3_sync_together91_aunroll_x_in_c0_eni6167_2_tpl_5_q;
            default : i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q = 1'b0;
        endcase
    end

    // redist18_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q_2(DELAY,238)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q);
            redist18_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q_2_q <= redist18_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q_2_delay_0;
        end
    end

    // c_atax_buff_y_out_pmem(CONSTANT,5)
    assign c_atax_buff_y_out_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx549_atax0_upper_bits_x_merged_bit_select(BITSELECT,219)@7
    assign i_arrayidx549_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_y_out_pmem_q[63:8];
    assign i_arrayidx549_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_y_out_pmem_q[7:0];

    // c_i32_081(CONSTANT,51)
    assign c_i32_081_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_182(CONSTANT,52)
    assign c_i32_182_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc66_atax20(ADD,71)@5
    assign i_inc66_atax20_a = {1'b0, i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x_q};
    assign i_inc66_atax20_b = {1'b0, c_i32_182_q};
    assign i_inc66_atax20_o = $unsigned(i_inc66_atax20_a) + $unsigned(i_inc66_atax20_b);
    assign i_inc66_atax20_q = i_inc66_atax20_o[32:0];

    // bgTrunc_i_inc66_atax20_sel_x(BITSELECT,86)@5
    assign bgTrunc_i_inc66_atax20_sel_x_b = i_inc66_atax20_q[31:0];

    // valid_fanout_reg20(REG,198)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist8_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg19(REG,197)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist10_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x(FIFODELAY,164)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_stall = ~ (valid_fanout_reg20_q & redist14_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_valid = valid_fanout_reg19_q & redist16_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_data = bgTrunc_i_inc66_atax20_sel_x_b;
    assign i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x (
        .i_valid(i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc66_atax20_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x(MUX,133)@5
    assign i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x_s = redist25_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x_s or i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_o_data or c_i32_081_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x_q = i_llvm_fpga_push_i32_j_235_push36_atax0_i_llvm_fpga_push_i32_j_235_push36_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x_q = c_i32_081_q;
            default : i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom53_atax10_sel_x(BITSELECT,127)@5
    assign i_idxprom53_atax10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_235_pop36_atax0_i_llvm_fpga_pop_i32_j_235_pop36_atax9_mux_x_q[31:0]};

    // i_idxprom53_atax10_vt_select_31(BITSELECT,70)@5
    assign i_idxprom53_atax10_vt_select_31_b = i_idxprom53_atax10_sel_x_b[31:0];

    // i_idxprom53_atax10_vt_join(BITJOIN,69)@5
    assign i_idxprom53_atax10_vt_join_q = {c_i32_081_q, i_idxprom53_atax10_vt_select_31_b};

    // i_arrayidx549_atax0_dupName_0_trunc_sel_x(BITSELECT,105)@5
    assign i_arrayidx549_atax0_dupName_0_trunc_sel_x_b = i_idxprom53_atax10_vt_join_q[7:0];

    // i_arrayidx549_atax0_narrow_x(BITSELECT,98)@5
    assign i_arrayidx549_atax0_narrow_x_b = i_arrayidx549_atax0_dupName_0_trunc_sel_x_b[5:0];

    // redist22_i_arrayidx549_atax0_narrow_x_b_2(DELAY,242)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_arrayidx549_atax0_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx549_atax0_narrow_x_b);
            redist22_i_arrayidx549_atax0_narrow_x_b_2_q <= redist22_i_arrayidx549_atax0_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx549_atax0_shift_join_x(BITJOIN,99)@7
    assign i_arrayidx549_atax0_shift_join_x_q = {redist22_i_arrayidx549_atax0_narrow_x_b_2_q, i_arrayidx549_atax11_vt_const_1_q};

    // i_arrayidx549_atax0_add_x(ADD,95)@7
    assign i_arrayidx549_atax0_add_x_a = {1'b0, i_arrayidx549_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx549_atax0_add_x_b = {1'b0, i_arrayidx549_atax0_shift_join_x_q};
    assign i_arrayidx549_atax0_add_x_o = $unsigned(i_arrayidx549_atax0_add_x_a) + $unsigned(i_arrayidx549_atax0_add_x_b);
    assign i_arrayidx549_atax0_add_x_q = i_arrayidx549_atax0_add_x_o[8:0];

    // i_arrayidx549_atax0_dupName_2_trunc_sel_x(BITSELECT,106)@7
    assign i_arrayidx549_atax0_dupName_2_trunc_sel_x_b = i_arrayidx549_atax0_add_x_q[7:0];

    // i_arrayidx549_atax0_append_upper_bits_x(BITJOIN,96)@7
    assign i_arrayidx549_atax0_append_upper_bits_x_q = {i_arrayidx549_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx549_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx549_atax11_vt_select_63(BITSELECT,59)@7
    assign i_arrayidx549_atax11_vt_select_63_b = i_arrayidx549_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx549_atax11_vt_const_1(CONSTANT,57)
    assign i_arrayidx549_atax11_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx549_atax11_vt_join(BITJOIN,58)@7
    assign i_arrayidx549_atax11_vt_join_q = {i_arrayidx549_atax11_vt_select_63_b, i_arrayidx549_atax11_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_atax14_atax13(BLACKBOX,76)@7
    // out out_o_almost_empty@11
    // out out_o_empty@11
    // out out_o_readdata@11
    // out out_o_stall@11
    // out out_o_valid@11
    // out out_unnamed_atax14_atax_avm_address@20000000
    // out out_unnamed_atax14_atax_avm_burstcount@20000000
    // out out_unnamed_atax14_atax_avm_byteenable@20000000
    // out out_unnamed_atax14_atax_avm_enable@20000000
    // out out_unnamed_atax14_atax_avm_read@20000000
    // out out_unnamed_atax14_atax_avm_write@20000000
    // out out_unnamed_atax14_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_14_atax0 thei_llvm_fpga_mem_unnamed_atax14_atax13 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx549_atax11_vt_join_q),
        .in_i_dependence(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop2071_pop41_atax12_mux_x_q_2_q),
        .in_i_predicate(redist27_i_atax_b9_current_iter_isspec_atax5_q_2_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_atax14_atax_avm_readdata(in_unnamed_atax14_atax_avm_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(in_unnamed_atax14_atax_avm_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(in_unnamed_atax14_atax_avm_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(in_unnamed_atax14_atax_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax14_atax13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax14_atax_avm_address(i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_address),
        .out_unnamed_atax14_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_burstcount),
        .out_unnamed_atax14_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_byteenable),
        .out_unnamed_atax14_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_enable),
        .out_unnamed_atax14_atax_avm_read(i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_read),
        .out_unnamed_atax14_atax_avm_write(i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_write),
        .out_unnamed_atax14_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,56)
    assign out_unnamed_atax14_atax_avm_address = i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_address;
    assign out_unnamed_atax14_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_enable;
    assign out_unnamed_atax14_atax_avm_read = i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_read;
    assign out_unnamed_atax14_atax_avm_write = i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_write;
    assign out_unnamed_atax14_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_writedata;
    assign out_unnamed_atax14_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_byteenable;
    assign out_unnamed_atax14_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax14_atax13_out_unnamed_atax14_atax_avm_burstcount;

    // regfree_osync(GPOUT,83)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going28_atax6_out_exiting_valid_out;

    // valid_fanout_reg9(REG,187)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist11_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx5810_atax0_upper_bits_x_merged_bit_select(BITSELECT,218)@4
    assign i_arrayidx5810_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_A_pmem_q[63:14];
    assign i_arrayidx5810_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_A_pmem_q[13:0];

    // redist0_i_arrayidx5810_atax0_upper_bits_x_merged_bit_select_b_1(DELAY,220)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx5810_atax0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx5810_atax0_upper_bits_x_merged_bit_select_b);
        end
    end

    // i_arrayidx5810_atax0_dupName_3_trunc_sel_x(BITSELECT,125)@5
    assign i_arrayidx5810_atax0_dupName_3_trunc_sel_x_b = i_idxprom53_atax10_vt_join_q[13:0];

    // i_arrayidx5810_atax0_dupName_0_narrow_x(BITSELECT,116)@5
    assign i_arrayidx5810_atax0_dupName_0_narrow_x_b = i_arrayidx5810_atax0_dupName_3_trunc_sel_x_b[11:0];

    // i_arrayidx5810_atax0_dupName_0_shift_join_x(BITJOIN,117)@5
    assign i_arrayidx5810_atax0_dupName_0_shift_join_x_q = {i_arrayidx5810_atax0_dupName_0_narrow_x_b, i_arrayidx549_atax11_vt_const_1_q};

    // redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_inputreg0(DELAY,251)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_inputreg0_q <= $unsigned(in_c0_eni6167_3_tpl);
        end
    end

    // redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4(DELAY,224)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_delay_0 <= $unsigned(redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_inputreg0_q);
            redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_delay_1 <= redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_delay_0;
            redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_q <= redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg18(REG,196)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,195)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist9_sync_together91_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x(FIFODELAY,167)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_stall = ~ (valid_fanout_reg18_q & i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_valid = valid_fanout_reg17_q & redist15_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_data = i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x(MUX,134)@4
    assign i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_s = redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_s or i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_o_data or redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_q = i_llvm_fpga_push_i64_idxprom3163_push37_atax0_i_llvm_fpga_push_i64_idxprom3163_push37_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_q = redist4_sync_together91_aunroll_x_in_c0_eni6167_3_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx5810_atax0_dupName_0_trunc_sel_x(BITSELECT,123)@4
    assign i_arrayidx5810_atax0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom3163_pop37_atax0_i_llvm_fpga_pop_i64_idxprom3163_pop37_atax14_mux_x_q[13:0];

    // i_arrayidx5810_atax0_narrow_x(BITSELECT,111)@4
    assign i_arrayidx5810_atax0_narrow_x_b = i_arrayidx5810_atax0_dupName_0_trunc_sel_x_b[5:0];

    // i_arrayidx5810_atax0_c_i8_01_x(CONSTANT,110)
    assign i_arrayidx5810_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx5810_atax0_shift_join_x(BITJOIN,112)@4
    assign i_arrayidx5810_atax0_shift_join_x_q = {i_arrayidx5810_atax0_narrow_x_b, i_arrayidx5810_atax0_c_i8_01_x_q};

    // i_arrayidx5810_atax0_add_x(ADD,107)@4
    assign i_arrayidx5810_atax0_add_x_a = {1'b0, i_arrayidx5810_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx5810_atax0_add_x_b = {1'b0, i_arrayidx5810_atax0_shift_join_x_q};
    assign i_arrayidx5810_atax0_add_x_o = $unsigned(i_arrayidx5810_atax0_add_x_a) + $unsigned(i_arrayidx5810_atax0_add_x_b);
    assign i_arrayidx5810_atax0_add_x_q = i_arrayidx5810_atax0_add_x_o[14:0];

    // i_arrayidx5810_atax0_dupName_2_trunc_sel_x(BITSELECT,124)@4
    assign i_arrayidx5810_atax0_dupName_2_trunc_sel_x_b = i_arrayidx5810_atax0_add_x_q[13:0];

    // redist21_i_arrayidx5810_atax0_dupName_2_trunc_sel_x_b_1(DELAY,241)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_arrayidx5810_atax0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx5810_atax0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx5810_atax0_dupName_0_add_x(ADD,115)@5
    assign i_arrayidx5810_atax0_dupName_0_add_x_a = {1'b0, redist21_i_arrayidx5810_atax0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx5810_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx5810_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx5810_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx5810_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx5810_atax0_dupName_0_add_x_b);
    assign i_arrayidx5810_atax0_dupName_0_add_x_q = i_arrayidx5810_atax0_dupName_0_add_x_o[14:0];

    // i_arrayidx5810_atax0_dupName_5_trunc_sel_x(BITSELECT,126)@5
    assign i_arrayidx5810_atax0_dupName_5_trunc_sel_x_b = i_arrayidx5810_atax0_dupName_0_add_x_q[13:0];

    // i_arrayidx5810_atax0_append_upper_bits_x(BITJOIN,108)@5
    assign i_arrayidx5810_atax0_append_upper_bits_x_q = {redist0_i_arrayidx5810_atax0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx5810_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx5810_atax15_vt_select_63(BITSELECT,62)@5
    assign i_arrayidx5810_atax15_vt_select_63_b = i_arrayidx5810_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx5810_atax15_vt_join(BITJOIN,61)@5
    assign i_arrayidx5810_atax15_vt_join_q = {i_arrayidx5810_atax15_vt_select_63_b, i_arrayidx549_atax11_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax15_atax16(BLACKBOX,77)@5
    // out out_o_almost_empty@11
    // out out_o_empty@11
    // out out_o_readdata@11
    // out out_o_stall@11
    // out out_o_valid@11
    // out out_unnamed_atax15_atax_avm_address@20000000
    // out out_unnamed_atax15_atax_avm_burstcount@20000000
    // out out_unnamed_atax15_atax_avm_byteenable@20000000
    // out out_unnamed_atax15_atax_avm_enable@20000000
    // out out_unnamed_atax15_atax_avm_read@20000000
    // out out_unnamed_atax15_atax_avm_write@20000000
    // out out_unnamed_atax15_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_15_atax0 thei_llvm_fpga_mem_unnamed_atax15_atax16 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5810_atax15_vt_join_q),
        .in_i_predicate(i_atax_b9_current_iter_isspec_atax5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_atax15_atax_avm_readdata(in_unnamed_atax15_atax_avm_readdata),
        .in_unnamed_atax15_atax_avm_readdatavalid(in_unnamed_atax15_atax_avm_readdatavalid),
        .in_unnamed_atax15_atax_avm_waitrequest(in_unnamed_atax15_atax_avm_waitrequest),
        .in_unnamed_atax15_atax_avm_writeack(in_unnamed_atax15_atax_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax15_atax_avm_address(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_address),
        .out_unnamed_atax15_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_burstcount),
        .out_unnamed_atax15_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_byteenable),
        .out_unnamed_atax15_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_enable),
        .out_unnamed_atax15_atax_avm_read(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_read),
        .out_unnamed_atax15_atax_avm_write(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_write),
        .out_unnamed_atax15_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,89)
    assign out_unnamed_atax15_atax_avm_address = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_address;
    assign out_unnamed_atax15_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_enable;
    assign out_unnamed_atax15_atax_avm_read = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_read;
    assign out_unnamed_atax15_atax_avm_write = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_write;
    assign out_unnamed_atax15_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_writedata;
    assign out_unnamed_atax15_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_byteenable;
    assign out_unnamed_atax15_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,90)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going28_atax6_out_pipeline_dummy_out;

    // redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_offset(CONSTANT,258)
    assign redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_offset_q = $unsigned(2'b11);

    // redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt(ADD,259)
    assign redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_a = {1'b0, redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_wraddr_q};
    assign redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_b = {1'b0, redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_o <= $unsigned(redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_a) + $unsigned(redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_b);
        end
    end
    assign redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_q = redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_o[2:0];

    // redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_inputreg0(DELAY,252)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_inputreg0_q <= $unsigned(in_c0_eni6167_4_tpl);
        end
    end

    // redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5(DELAY,225)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_delay_0 <= $unsigned(redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_inputreg0_q);
            redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_delay_1 <= redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_delay_0;
            redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_q <= redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_delay_1;
        end
    end

    // redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_outputreg0(DELAY,253)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_outputreg0_q <= $unsigned(redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_q);
        end
    end

    // valid_fanout_reg16(REG,194)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist8_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg15(REG,193)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist10_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x(FIFODELAY,137)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_stall = ~ (valid_fanout_reg16_q & redist14_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_valid = valid_fanout_reg15_q & redist16_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_data = i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q;
    assign i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x (
        .i_valid(i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q),
        .o_data(i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x(MUX,129)@5
    assign i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_s = redist25_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_s or i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_o_data or redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_s)
            1'b0 : i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q = i_llvm_fpga_push_f32_add70_push40_atax0_i_llvm_fpga_push_f32_add70_push40_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q = redist5_sync_together91_aunroll_x_in_c0_eni6167_4_tpl_5_outputreg0_q;
            default : i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q = 32'b0;
        endcase
    end

    // redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_inputreg0(DELAY,254)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_inputreg0_q <= $unsigned(i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q);
        end
    end

    // redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_wraddr(COUNTER,257)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_wraddr_i <= $unsigned(redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_wraddr_q = redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_wraddr_i[1:0];

    // redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem(DUALMEM,256)
    assign redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_ia = $unsigned(redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_inputreg0_q);
    assign redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_aa = redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_wraddr_q;
    assign redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_ab = redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_aa),
        .data_a(redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_ab),
        .q_b(redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_iq),
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
    assign redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_q = redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_iq[31:0];

    // redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_outputreg0(DELAY,255)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_outputreg0_q <= $unsigned(redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_mem_q);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add72_atax18(BLACKBOX,74)@11
    // out out_primWireOut@17
    atax_flt_i_sfc_logic_s_c0_in_for_body52_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add72_atax18 (
        .in_0(i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_readdata),
        .in_1(redist20_i_llvm_fpga_pop_f32_add70_pop40_atax0_i_llvm_fpga_pop_f32_add70_pop40_atax17_mux_x_q_6_outputreg0_q),
        .in_2(i_llvm_fpga_mem_unnamed_atax14_atax13_out_o_readdata),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add72_atax18_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together91_aunroll_x_in_i_valid_16(DELAY,233)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("SYNC"), .phase(6), .modulus(2), .reset_high(1'b0) )
    redist13_sync_together91_aunroll_x_in_i_valid_16 ( .xin(redist12_sync_together91_aunroll_x_in_i_valid_6_q), .xout(redist13_sync_together91_aunroll_x_in_i_valid_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,189)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist13_sync_together91_aunroll_x_in_i_valid_16_q);
        end
    end

    // redist28_i_atax_b9_current_iter_isspec_atax5_q_12(DELAY,248)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist28_i_atax_b9_current_iter_isspec_atax5_q_12 ( .xin(redist27_i_atax_b9_current_iter_isspec_atax5_q_2_q), .xout(redist28_i_atax_b9_current_iter_isspec_atax5_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_i_arrayidx549_atax11_vt_join_q_10_offset(CONSTANT,264)
    assign redist30_i_arrayidx549_atax11_vt_join_q_10_offset_q = $unsigned(3'b011);

    // redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt(ADD,265)
    assign redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_a = {1'b0, redist30_i_arrayidx549_atax11_vt_join_q_10_wraddr_q};
    assign redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_b = {1'b0, redist30_i_arrayidx549_atax11_vt_join_q_10_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_o <= $unsigned(redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_a) + $unsigned(redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_b);
        end
    end
    assign redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_q = redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_o[3:0];

    // redist30_i_arrayidx549_atax11_vt_join_q_10_inputreg0(DELAY,260)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_arrayidx549_atax11_vt_join_q_10_inputreg0_q <= $unsigned(i_arrayidx549_atax11_vt_join_q);
        end
    end

    // redist30_i_arrayidx549_atax11_vt_join_q_10_wraddr(COUNTER,263)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_arrayidx549_atax11_vt_join_q_10_wraddr_i <= $unsigned(redist30_i_arrayidx549_atax11_vt_join_q_10_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist30_i_arrayidx549_atax11_vt_join_q_10_wraddr_q = redist30_i_arrayidx549_atax11_vt_join_q_10_wraddr_i[2:0];

    // redist30_i_arrayidx549_atax11_vt_join_q_10_mem(DUALMEM,262)
    assign redist30_i_arrayidx549_atax11_vt_join_q_10_mem_ia = $unsigned(redist30_i_arrayidx549_atax11_vt_join_q_10_inputreg0_q);
    assign redist30_i_arrayidx549_atax11_vt_join_q_10_mem_aa = redist30_i_arrayidx549_atax11_vt_join_q_10_wraddr_q;
    assign redist30_i_arrayidx549_atax11_vt_join_q_10_mem_ab = redist30_i_arrayidx549_atax11_vt_join_q_10_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(8),
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
    ) redist30_i_arrayidx549_atax11_vt_join_q_10_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist30_i_arrayidx549_atax11_vt_join_q_10_mem_aa),
        .data_a(redist30_i_arrayidx549_atax11_vt_join_q_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_i_arrayidx549_atax11_vt_join_q_10_mem_ab),
        .q_b(redist30_i_arrayidx549_atax11_vt_join_q_10_mem_iq),
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
    assign redist30_i_arrayidx549_atax11_vt_join_q_10_mem_q = redist30_i_arrayidx549_atax11_vt_join_q_10_mem_iq[63:0];

    // redist30_i_arrayidx549_atax11_vt_join_q_10_outputreg0(DELAY,261)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_arrayidx549_atax11_vt_join_q_10_outputreg0_q <= $unsigned(redist30_i_arrayidx549_atax11_vt_join_q_10_mem_q);
        end
    end

    // i_llvm_fpga_mem_memdep_6_atax19(BLACKBOX,75)@17
    // out out_memdep_6_atax_avm_address@20000000
    // out out_memdep_6_atax_avm_burstcount@20000000
    // out out_memdep_6_atax_avm_byteenable@20000000
    // out out_memdep_6_atax_avm_enable@20000000
    // out out_memdep_6_atax_avm_read@20000000
    // out out_memdep_6_atax_avm_write@20000000
    // out out_memdep_6_atax_avm_writedata@20000000
    // out out_o_almost_empty@18
    // out out_o_empty@18
    // out out_o_stall@18
    // out out_o_valid@18
    // out out_o_writeack@18
    atax_i_llvm_fpga_mem_memdep_6_0 thei_llvm_fpga_mem_memdep_6_atax19 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(redist30_i_arrayidx549_atax11_vt_join_q_10_outputreg0_q),
        .in_i_predicate(redist28_i_atax_b9_current_iter_isspec_atax5_q_12_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_i_writedata(i_llvm_fpga_fp_multadd_mult_add72_atax18_out_primWireOut),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .out_memdep_6_atax_avm_address(i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_6_atax19_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,92)
    assign out_memdep_6_atax_avm_address = i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_address;
    assign out_memdep_6_atax_avm_enable = i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_enable;
    assign out_memdep_6_atax_avm_read = i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_read;
    assign out_memdep_6_atax_avm_write = i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_write;
    assign out_memdep_6_atax_avm_writedata = i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_writedata;
    assign out_memdep_6_atax_avm_byteenable = i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_byteenable;
    assign out_memdep_6_atax_avm_burstcount = i_llvm_fpga_mem_memdep_6_atax19_out_memdep_6_atax_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,93)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going28_atax6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,94)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going28_atax6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,178)@16 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together91_aunroll_x_in_i_valid_16_q);
        end
    end

    // redist2_valid_fanout_reg0_q_1(DELAY,222)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4(DELAY,227)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_delay_0 <= $unsigned(in_c0_eni6167_6_tpl);
            redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_delay_1 <= redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_delay_0;
            redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_delay_2 <= redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_delay_1;
            redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_q <= redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp3668_push39_atax0_element_extension2_x(BITJOIN,160)@5
    assign i_llvm_fpga_push_i1_notcmp3668_push39_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q};

    // valid_fanout_reg29(REG,207)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg28(REG,206)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist10_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x(FIFODELAY,161)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_stall = ~ (valid_fanout_reg29_q & i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_valid = valid_fanout_reg28_q & redist16_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_data = i_llvm_fpga_push_i1_notcmp3668_push39_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp3668_push39_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp3668_push39_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,163)@4
    assign i_llvm_fpga_push_i1_notcmp3668_push39_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp3668_push39_atax0_i_llvm_fpga_push_i1_notcmp3668_push39_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x(MUX,132)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_s = redist24_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q <= i_llvm_fpga_push_i1_notcmp3668_push39_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q <= redist7_sync_together91_aunroll_x_in_c0_eni6167_6_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist17_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q_14(DELAY,237)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist17_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q), .xout(redist17_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5(DELAY,226)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_0 <= $unsigned(in_c0_eni6167_5_tpl);
            redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_1 <= redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_0;
            redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_2 <= redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_1;
            redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_3 <= redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_2;
            redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_q <= redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_push_i1_exitcond1966_push38_atax0_element_extension2_x(BITJOIN,148)@5
    assign i_llvm_fpga_push_i1_exitcond1966_push38_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b9_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q};

    // valid_fanout_reg26(REG,204)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist8_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg25(REG,203)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist10_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x(FIFODELAY,149)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_stall = ~ (valid_fanout_reg26_q & redist14_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_valid = valid_fanout_reg25_q & redist16_i_llvm_fpga_push_f32_add70_push40_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_data = i_llvm_fpga_push_i1_exitcond1966_push38_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond1966_push38_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond1966_push38_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,151)@5
    assign i_llvm_fpga_push_i1_exitcond1966_push38_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_exitcond1966_push38_atax0_i_llvm_fpga_push_i1_exitcond1966_push38_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x(MUX,130)@5
    assign i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_s = redist25_i_llvm_fpga_forked_atax_b9_forked_atax3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_s or i_llvm_fpga_push_i1_exitcond1966_push38_atax0_adapt_scalar_trunc4_sel_x_b or redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_q)
    begin
        unique case (i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q = i_llvm_fpga_push_i1_exitcond1966_push38_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q = redist6_sync_together91_aunroll_x_in_c0_eni6167_5_tpl_5_q;
            default : i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q = 1'b0;
        endcase
    end

    // redist19_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q_13(DELAY,239)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist19_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q_13 ( .xin(i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q), .xout(redist19_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_notcmp26_atax28(LOGICAL,80)@18
    assign i_notcmp26_atax28_q = redist1_i_exitcond16_atax22_cmp_nsign_q_14_q ^ VCC_q;

    // redist1_i_exitcond16_atax22_cmp_nsign_q_14(DELAY,221)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist1_i_exitcond16_atax22_cmp_nsign_q_14 ( .xin(i_exitcond16_atax22_cmp_nsign_q), .xout(redist1_i_exitcond16_atax22_cmp_nsign_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_i_atax_b9_current_iter_isspec_atax5_q_13(DELAY,249)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_atax_b9_current_iter_isspec_atax5_q_13_q <= $unsigned(redist28_i_atax_b9_current_iter_isspec_atax5_q_12_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,176)@18
    assign out_atax_B9_current_iter_isspec = redist29_i_atax_b9_current_iter_isspec_atax5_q_13_q;
    assign out_c0_exi5179_0_tpl = GND_q;
    assign out_c0_exi5179_1_tpl = i_llvm_fpga_mem_memdep_6_atax19_out_o_writeack;
    assign out_c0_exi5179_2_tpl = redist1_i_exitcond16_atax22_cmp_nsign_q_14_q;
    assign out_c0_exi5179_3_tpl = i_notcmp26_atax28_q;
    assign out_c0_exi5179_4_tpl = redist19_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax0_i_llvm_fpga_pop_i1_exitcond1966_pop38_atax32_mux_x_q_13_q;
    assign out_c0_exi5179_5_tpl = redist17_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax0_i_llvm_fpga_pop_i1_notcmp3668_pop39_atax34_mux_x_q_14_q;
    assign out_o_valid = redist2_valid_fanout_reg0_q_1_q;

endmodule
