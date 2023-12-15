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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body48_s_c0_enter22416_atax0
// SystemVerilog created on Wed Dec 13 00:14:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body48_s_c0_enter22416_atax0 (
    input wire [255:0] in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_259_atax_avm_writeack,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_259_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [255:0] in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_247_atax_avm_writeack,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_247_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write,
    output wire [255:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount,
    input wire [255:0] in_memdep_38_atax_avm_readdata,
    input wire [0:0] in_memdep_38_atax_avm_writeack,
    input wire [0:0] in_memdep_38_atax_avm_waitrequest,
    input wire [0:0] in_memdep_38_atax_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write,
    output wire [255:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount,
    output wire [31:0] out_memdep_38_atax_avm_address,
    output wire [0:0] out_memdep_38_atax_avm_enable,
    output wire [0:0] out_memdep_38_atax_avm_read,
    output wire [0:0] out_memdep_38_atax_avm_write,
    output wire [255:0] out_memdep_38_atax_avm_writedata,
    output wire [31:0] out_memdep_38_atax_avm_byteenable,
    output wire [0:0] out_memdep_38_atax_avm_burstcount,
    output wire [0:0] out_c0_exi5235_0_tpl,
    output wire [0:0] out_c0_exi5235_1_tpl,
    output wire [0:0] out_c0_exi5235_2_tpl,
    output wire [0:0] out_c0_exi5235_3_tpl,
    output wire [0:0] out_c0_exi5235_4_tpl,
    output wire [0:0] out_c0_exi5235_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c0_eni6223_0_tpl,
    input wire [0:0] in_c0_eni6223_1_tpl,
    input wire [0:0] in_c0_eni6223_2_tpl,
    input wire [63:0] in_c0_eni6223_3_tpl,
    input wire [31:0] in_c0_eni6223_4_tpl,
    input wire [0:0] in_c0_eni6223_5_tpl,
    input wire [0:0] in_c0_eni6223_6_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_A_pmem_q;
    wire [63:0] c_atax_buff_y_out_pmem_q;
    wire [1:0] c_i2_175_q;
    wire [31:0] c_i32_077_q;
    wire [31:0] c_i32_880_q;
    wire [3:0] c_i4_183_q;
    wire [3:0] c_i4_681_q;
    wire [1:0] i_arrayidx5016_atax10_vt_const_1_q;
    wire [63:0] i_arrayidx5016_atax10_vt_join_q;
    wire [61:0] i_arrayidx5016_atax10_vt_select_63_b;
    wire [63:0] i_arrayidx5417_atax18_vt_join_q;
    wire [61:0] i_arrayidx5417_atax18_vt_select_63_b;
    wire [1:0] i_cleanups_shl69_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl69_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor71_atax4_q;
    wire [4:0] i_fpga_indvars_iv_next53_atax45_a;
    wire [4:0] i_fpga_indvars_iv_next53_atax45_b;
    logic [4:0] i_fpga_indvars_iv_next53_atax45_o;
    wire [4:0] i_fpga_indvars_iv_next53_atax45_q;
    wire [63:0] i_idxprom49_atax9_vt_join_q;
    wire [31:0] i_idxprom49_atax9_vt_select_31_b;
    wire [32:0] i_inc62_7_atax35_a;
    wire [32:0] i_inc62_7_atax35_b;
    logic [32:0] i_inc62_7_atax35_o;
    wire [32:0] i_inc62_7_atax35_q;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add136_atax24_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add137_atax27_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add138_atax28_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add139_atax29_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add140_atax30_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add141_atax31_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add142_atax32_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add143_atax33_out_primWireOut;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_atax6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_pop52_atax22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop52_atax22_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_feedback_stall_out_50;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_feedback_stall_out_53;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_feedback_stall_out_51;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_feedback_stall_out_48;
    wire [31:0] i_llvm_fpga_pop_i32_j_235_pop47_atax8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_235_pop47_atax8_out_feedback_stall_out_47;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv52_pop46_atax37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv52_pop46_atax37_out_feedback_stall_out_46;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom27129_pop49_atax16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom27129_pop49_atax16_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_push_f32_push52_atax23_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_f32_push52_atax23_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_exitcond57132_push50_atax49_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i1_exitcond57132_push50_atax49_out_feedback_valid_out_50;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop20135_push53_atax13_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop20135_push53_atax13_out_feedback_valid_out_53;
    wire [0:0] i_llvm_fpga_push_i1_notcmp93134_push51_atax51_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_notcmp93134_push51_atax51_out_feedback_valid_out_51;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond75_atax41_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond75_atax41_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i2_cleanups68_push48_atax44_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i2_cleanups68_push48_atax44_out_feedback_valid_out_48;
    wire [31:0] i_llvm_fpga_push_i32_j_235_push47_atax36_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i32_j_235_push47_atax36_out_feedback_valid_out_47;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv52_push46_atax46_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv52_push46_atax46_out_feedback_valid_out_46;
    wire [63:0] i_llvm_fpga_push_i64_idxprom27129_push49_atax17_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i64_idxprom27129_push49_atax17_out_feedback_valid_out_49;
    wire [0:0] i_masked74_atax47_qi;
    reg [0:0] i_masked74_atax47_q;
    wire [63:0] i_memcoalesce_bitcast_atax_fpgaunique_41_atax19_vt_join_q;
    wire [61:0] i_memcoalesce_bitcast_atax_fpgaunique_41_atax19_vt_select_63_b;
    wire [63:0] i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q;
    wire [61:0] i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_select_63_b;
    wire [0:0] i_next_cleanups73_atax43_s;
    reg [1:0] i_next_cleanups73_atax43_q;
    wire [0:0] i_notcmp61_atax40_q;
    wire [0:0] i_or72_atax42_q;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next53_atax45_sel_x_b;
    wire [31:0] bgTrunc_i_inc62_7_atax35_sel_x_b;
    wire [64:0] i_arrayidx5016_atax0_add_x_a;
    wire [64:0] i_arrayidx5016_atax0_add_x_b;
    logic [64:0] i_arrayidx5016_atax0_add_x_o;
    wire [64:0] i_arrayidx5016_atax0_add_x_q;
    wire [61:0] i_arrayidx5016_atax0_narrow_x_b;
    wire [63:0] i_arrayidx5016_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx5016_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx5417_atax0_add_x_a;
    wire [64:0] i_arrayidx5417_atax0_add_x_b;
    logic [64:0] i_arrayidx5417_atax0_add_x_o;
    wire [64:0] i_arrayidx5417_atax0_add_x_q;
    wire [7:0] i_arrayidx5417_atax0_c_i8_01_x_q;
    wire [55:0] i_arrayidx5417_atax0_narrow_x_b;
    wire [63:0] i_arrayidx5417_atax0_shift_join_x_q;
    wire [64:0] i_arrayidx5417_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx5417_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx5417_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx5417_atax0_dupName_0_add_x_q;
    wire [63:0] i_arrayidx5417_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx5417_atax0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup70_atax3_sel_x_b;
    wire [63:0] i_idxprom49_atax9_sel_x_b;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write;
    wire [255:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_3_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_4_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_5_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_6_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_7_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write;
    wire [255:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_3_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_4_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_5_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_6_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_7_tpl;
    wire [31:0] i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_burstcount;
    wire [31:0] i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_write;
    wire [255:0] i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_o_writeack;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    wire [0:0] i_exitcond54_atax38_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid164_i_cleanups_shl69_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid164_i_cleanups_shl69_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid165_i_cleanups_shl69_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid167_i_cleanups_shl69_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid167_i_cleanups_shl69_atax0_shift_x_q;
    reg [0:0] redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q;
    reg [0:0] redist1_sync_together106_aunroll_x_in_c0_eni6223_2_tpl_1_q;
    reg [63:0] redist2_sync_together106_aunroll_x_in_c0_eni6223_3_tpl_1_q;
    reg [31:0] redist3_sync_together106_aunroll_x_in_c0_eni6223_4_tpl_1_q;
    reg [0:0] redist4_sync_together106_aunroll_x_in_c0_eni6223_5_tpl_1_q;
    reg [0:0] redist5_sync_together106_aunroll_x_in_c0_eni6223_6_tpl_1_q;
    reg [0:0] redist6_sync_together106_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist7_sync_together106_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist8_sync_together106_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist10_i_masked74_atax47_q_10_q;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_1_q;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_10_q;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_data_out_1_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_1_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_10_q;
    reg [31:0] redist16_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_1_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_2_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_11_q;
    reg [0:0] redist21_i_first_cleanup_xor71_atax4_q_1_q;
    reg [0:0] redist22_i_first_cleanup_xor71_atax4_q_9_q;
    reg [61:0] redist23_i_arrayidx5016_atax10_vt_select_63_b_1_q;
    wire redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_reset0;
    wire [63:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_ia;
    wire [2:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_aa;
    wire [2:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_ab;
    wire [63:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_iq;
    wire [63:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_q;
    wire [2:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_q;
    (* preserve *) reg [2:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_i;
    (* preserve *) reg redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_eq;
    reg [2:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_wraddr_q;
    wire [3:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_last_q;
    wire [3:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmp_b;
    wire [0:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmp_q;
    (* dont_merge *) reg [0:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmpReg_q;
    wire [0:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_notEnable_q;
    wire [0:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_nor_q;
    (* dont_merge *) reg [0:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_sticky_ena_q;
    wire [0:0] redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_enaAnd_q;
    wire redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_reset0;
    wire [31:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_ia;
    wire [1:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_aa;
    wire [1:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_ab;
    wire [31:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_iq;
    wire [31:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_q;
    wire [1:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_i;
    (* preserve *) reg redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_eq;
    reg [1:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_wraddr_q;
    wire [1:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_last_q;
    wire [0:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_cmpReg_q;
    wire [0:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_notEnable_q;
    wire [0:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_sticky_ena_q;
    wire [0:0] redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together106_aunroll_x_in_i_valid_1(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together106_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist6_sync_together106_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid164_i_cleanups_shl69_atax0_shift_x(BITSELECT,163)@2
    assign leftShiftStage0Idx1Rng1_uid164_i_cleanups_shl69_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid164_i_cleanups_shl69_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid164_i_cleanups_shl69_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid165_i_cleanups_shl69_atax0_shift_x(BITJOIN,164)@2
    assign leftShiftStage0Idx1_uid165_i_cleanups_shl69_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid164_i_cleanups_shl69_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid167_i_cleanups_shl69_atax0_shift_x(MUX,166)@2
    assign leftShiftStage0_uid167_i_cleanups_shl69_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid167_i_cleanups_shl69_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_data_out or leftShiftStage0Idx1_uid165_i_cleanups_shl69_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid167_i_cleanups_shl69_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid167_i_cleanups_shl69_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid167_i_cleanups_shl69_atax0_shift_x_q = leftShiftStage0Idx1_uid165_i_cleanups_shl69_atax0_shift_x_q;
            default : leftShiftStage0_uid167_i_cleanups_shl69_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl69_atax5_vt_select_1(BITSELECT,44)@2
    assign i_cleanups_shl69_atax5_vt_select_1_b = leftShiftStage0_uid167_i_cleanups_shl69_atax0_shift_x_q[1:1];

    // i_cleanups_shl69_atax5_vt_join(BITJOIN,43)@2
    assign i_cleanups_shl69_atax5_vt_join_q = {i_cleanups_shl69_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor71_atax4(LOGICAL,47)@2
    assign i_first_cleanup_xor71_atax4_q = i_first_cleanup70_atax3_sel_x_b ^ VCC_q;

    // i_notcmp61_atax40(LOGICAL,92)@2
    assign i_notcmp61_atax40_q = i_exitcond54_atax38_cmp_nsign_q ^ VCC_q;

    // i_or72_atax42(LOGICAL,93)@2
    assign i_or72_atax42_q = i_notcmp61_atax40_q | i_first_cleanup_xor71_atax4_q;

    // i_next_cleanups73_atax43(MUX,91)@2
    assign i_next_cleanups73_atax43_s = i_or72_atax42_q;
    always @(i_next_cleanups73_atax43_s or i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_data_out or i_cleanups_shl69_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups73_atax43_s)
            1'b0 : i_next_cleanups73_atax43_q = i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_data_out;
            1'b1 : i_next_cleanups73_atax43_q = i_cleanups_shl69_atax5_vt_join_q;
            default : i_next_cleanups73_atax43_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups68_push48_atax44(BLACKBOX,77)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    atax_i_llvm_fpga_push_i2_cleanups68_push48_0 thei_llvm_fpga_push_i2_cleanups68_push48_atax44 (
        .in_data_in(i_next_cleanups73_atax43_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_feedback_stall_out_48),
        .in_keep_going65(redist18_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together106_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i2_cleanups68_push48_atax44_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i2_cleanups68_push48_atax44_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q <= $unsigned(in_c0_eni6223_1_tpl);
        end
    end

    // c_i2_175(CONSTANT,29)
    assign c_i2_175_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups68_pop48_atax2(BLACKBOX,67)@2
    // out out_feedback_stall_out_48@20000000
    atax_i_llvm_fpga_pop_i2_cleanups68_pop48_0 thei_llvm_fpga_pop_i2_cleanups68_pop48_atax2 (
        .in_data_in(c_i2_175_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i2_cleanups68_push48_atax44_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i2_cleanups68_push48_atax44_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together106_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup70_atax3_sel_x(BITSELECT,129)@2
    assign i_first_cleanup70_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups68_pop48_atax2_out_data_out[0:0];

    // c_i4_183(CONSTANT,32)
    assign c_i4_183_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next53_atax45(ADD,48)@2
    assign i_fpga_indvars_iv_next53_atax45_a = {1'b0, i_llvm_fpga_pop_i4_fpga_indvars_iv52_pop46_atax37_out_data_out};
    assign i_fpga_indvars_iv_next53_atax45_b = {1'b0, c_i4_183_q};
    assign i_fpga_indvars_iv_next53_atax45_o = $unsigned(i_fpga_indvars_iv_next53_atax45_a) + $unsigned(i_fpga_indvars_iv_next53_atax45_b);
    assign i_fpga_indvars_iv_next53_atax45_q = i_fpga_indvars_iv_next53_atax45_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next53_atax45_sel_x(BITSELECT,99)@2
    assign bgTrunc_i_fpga_indvars_iv_next53_atax45_sel_x_b = i_fpga_indvars_iv_next53_atax45_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv52_push46_atax46(BLACKBOX,79)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    atax_i_llvm_fpga_push_i4_fpga_indvars_iv52_push46_0 thei_llvm_fpga_push_i4_fpga_indvars_iv52_push46_atax46 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next53_atax45_sel_x_b),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i4_fpga_indvars_iv52_pop46_atax37_out_feedback_stall_out_46),
        .in_keep_going65(redist18_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together106_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i4_fpga_indvars_iv52_push46_atax46_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i4_fpga_indvars_iv52_push46_atax46_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_681(CONSTANT,33)
    assign c_i4_681_q = $unsigned(4'b0110);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv52_pop46_atax37(BLACKBOX,69)@2
    // out out_feedback_stall_out_46@20000000
    atax_i_llvm_fpga_pop_i4_fpga_indvars_iv52_pop46_0 thei_llvm_fpga_pop_i4_fpga_indvars_iv52_pop46_atax37 (
        .in_data_in(c_i4_681_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i4_fpga_indvars_iv52_push46_atax46_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i4_fpga_indvars_iv52_push46_atax46_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together106_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv52_pop46_atax37_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i4_fpga_indvars_iv52_pop46_atax37_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond54_atax38_cmp_nsign(LOGICAL,159)@2
    assign i_exitcond54_atax38_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv52_pop46_atax37_out_data_out[3:3]));

    // i_llvm_fpga_push_i1_notexitcond75_atax41(BLACKBOX,76)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    atax_i_llvm_fpga_push_i1_notexitcond75_0 thei_llvm_fpga_push_i1_notexitcond75_atax41 (
        .in_data_in(i_exitcond54_atax38_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going65_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup70(i_first_cleanup70_atax3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together106_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond75_atax41_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond75_atax41_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,137)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_lastiniteration67_atax7(BLACKBOX,73)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration67_0 thei_llvm_fpga_push_i1_lastiniteration67_atax7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going65_atax6_out_initeration_stall_out),
        .in_keep_going65(redist18_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going65_atax6(BLACKBOX,62)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going65_0 thei_llvm_fpga_pipeline_keep_going65_atax6 (
        .in_data_in(in_c0_eni6223_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration67_atax7_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond75_atax41_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond75_atax41_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going65_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,35)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going65_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,96)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going65_atax6_out_pipeline_valid_out;

    // valid_fanout_reg5(REG,141)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist6_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist21_i_first_cleanup_xor71_atax4_q_1(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor71_atax4_q_1_q <= '0;
        end
        else
        begin
            redist21_i_first_cleanup_xor71_atax4_q_1_q <= $unsigned(i_first_cleanup_xor71_atax4_q);
        end
    end

    // valid_fanout_reg3(REG,139)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,140)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist6_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_2(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_2_q <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop20135_push53_atax13(BLACKBOX,74)@3
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi_pop20135_push53_0 thei_llvm_fpga_push_i1_memdep_phi_pop20135_push53_atax13 (
        .in_data_in(redist13_i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_data_out_1_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_feedback_stall_out_53),
        .in_keep_going65(redist19_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i1_memdep_phi_pop20135_push53_atax13_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i1_memdep_phi_pop20135_push53_atax13_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together106_aunroll_x_in_c0_eni6223_2_tpl_1(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together106_aunroll_x_in_c0_eni6223_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together106_aunroll_x_in_c0_eni6223_2_tpl_1_q <= $unsigned(in_c0_eni6223_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12(BLACKBOX,65)@2
    // out out_feedback_stall_out_53@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_0 thei_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12 (
        .in_data_in(redist1_sync_together106_aunroll_x_in_c0_eni6223_2_tpl_1_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q),
        .in_feedback_in_53(i_llvm_fpga_push_i1_memdep_phi_pop20135_push53_atax13_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i1_memdep_phi_pop20135_push53_atax13_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_data_out_1(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_data_out);
        end
    end

    // c_i32_077(CONSTANT,30)
    assign c_i32_077_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,138)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,148)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_880(CONSTANT,31)
    assign c_i32_880_q = $unsigned(32'b00000000000000000000000000001000);

    // i_inc62_7_atax35(ADD,53)@2
    assign i_inc62_7_atax35_a = {1'b0, i_llvm_fpga_pop_i32_j_235_pop47_atax8_out_data_out};
    assign i_inc62_7_atax35_b = {1'b0, c_i32_880_q};
    assign i_inc62_7_atax35_o = $unsigned(i_inc62_7_atax35_a) + $unsigned(i_inc62_7_atax35_b);
    assign i_inc62_7_atax35_q = i_inc62_7_atax35_o[32:0];

    // bgTrunc_i_inc62_7_atax35_sel_x(BITSELECT,100)@2
    assign bgTrunc_i_inc62_7_atax35_sel_x_b = i_inc62_7_atax35_q[31:0];

    // i_llvm_fpga_push_i32_j_235_push47_atax36(BLACKBOX,78)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    atax_i_llvm_fpga_push_i32_j_235_push47_0 thei_llvm_fpga_push_i32_j_235_push47_atax36 (
        .in_data_in(bgTrunc_i_inc62_7_atax35_sel_x_b),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i32_j_235_pop47_atax8_out_feedback_stall_out_47),
        .in_keep_going65(redist18_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i32_j_235_push47_atax36_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i32_j_235_push47_atax36_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_235_pop47_atax8(BLACKBOX,68)@2
    // out out_feedback_stall_out_47@20000000
    atax_i_llvm_fpga_pop_i32_j_235_pop47_0 thei_llvm_fpga_pop_i32_j_235_pop47_atax8 (
        .in_data_in(c_i32_077_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i32_j_235_push47_atax36_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i32_j_235_push47_atax36_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_235_pop47_atax8_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i32_j_235_pop47_atax8_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom49_atax9_sel_x(BITSELECT,130)@2
    assign i_idxprom49_atax9_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_235_pop47_atax8_out_data_out[31:0]};

    // i_idxprom49_atax9_vt_select_31(BITSELECT,52)@2
    assign i_idxprom49_atax9_vt_select_31_b = i_idxprom49_atax9_sel_x_b[31:0];

    // i_idxprom49_atax9_vt_join(BITJOIN,51)@2
    assign i_idxprom49_atax9_vt_join_q = {c_i32_077_q, i_idxprom49_atax9_vt_select_31_b};

    // i_arrayidx5016_atax0_narrow_x(BITSELECT,109)@2
    assign i_arrayidx5016_atax0_narrow_x_b = i_idxprom49_atax9_vt_join_q[61:0];

    // i_arrayidx5016_atax0_shift_join_x(BITJOIN,110)@2
    assign i_arrayidx5016_atax0_shift_join_x_q = {i_arrayidx5016_atax0_narrow_x_b, i_arrayidx5016_atax10_vt_const_1_q};

    // c_atax_buff_y_out_pmem(CONSTANT,5)
    assign c_atax_buff_y_out_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx5016_atax0_add_x(ADD,107)@2
    assign i_arrayidx5016_atax0_add_x_a = {1'b0, c_atax_buff_y_out_pmem_q};
    assign i_arrayidx5016_atax0_add_x_b = {1'b0, i_arrayidx5016_atax0_shift_join_x_q};
    assign i_arrayidx5016_atax0_add_x_o = $unsigned(i_arrayidx5016_atax0_add_x_a) + $unsigned(i_arrayidx5016_atax0_add_x_b);
    assign i_arrayidx5016_atax0_add_x_q = i_arrayidx5016_atax0_add_x_o[64:0];

    // i_arrayidx5016_atax0_dupName_0_trunc_sel_x(BITSELECT,112)@2
    assign i_arrayidx5016_atax0_dupName_0_trunc_sel_x_b = i_arrayidx5016_atax0_add_x_q[63:0];

    // i_arrayidx5016_atax10_vt_select_63(BITSELECT,38)@2
    assign i_arrayidx5016_atax10_vt_select_63_b = i_arrayidx5016_atax0_dupName_0_trunc_sel_x_b[63:2];

    // redist23_i_arrayidx5016_atax10_vt_select_63_b_1(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_arrayidx5016_atax10_vt_select_63_b_1_q <= '0;
        end
        else
        begin
            redist23_i_arrayidx5016_atax10_vt_select_63_b_1_q <= $unsigned(i_arrayidx5016_atax10_vt_select_63_b);
        end
    end

    // i_arrayidx5016_atax10_vt_join(BITJOIN,37)@3
    assign i_arrayidx5016_atax10_vt_join_q = {redist23_i_arrayidx5016_atax10_vt_select_63_b_1_q, i_arrayidx5016_atax10_vt_const_1_q};

    // i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_select_63(BITSELECT,87)@3
    assign i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_select_63_b = i_arrayidx5016_atax10_vt_join_q[63:2];

    // i_arrayidx5016_atax10_vt_const_1(CONSTANT,36)
    assign i_arrayidx5016_atax10_vt_const_1_q = $unsigned(2'b00);

    // i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join(BITJOIN,86)@3
    assign i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q = {i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_select_63_b, i_arrayidx5016_atax10_vt_const_1_q};

    // i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x(BLACKBOX,132)@3
    // in in_i_stall@20000000
    // out out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address@20000000
    // out out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount@20000000
    // out out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read@20000000
    // out out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write@20000000
    // out out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata@20000000
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_o_readdata_0_tpl@7
    // out out_o_readdata_1_tpl@7
    // out out_o_readdata_2_tpl@7
    // out out_o_readdata_3_tpl@7
    // out out_o_readdata_4_tpl@7
    // out out_o_readdata_5_tpl@7
    // out out_o_readdata_6_tpl@7
    // out out_o_readdata_7_tpl@7
    atax_i_llvm_fpga_mem_memcoalesce_load_fpgaunique_259_atax0 thei_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q),
        .in_i_dependence(redist13_i_llvm_fpga_pop_i1_memdep_phi_pop20135_pop53_atax12_out_data_out_1_q),
        .in_i_predicate(redist21_i_first_cleanup_xor71_atax4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_259_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_259_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_259_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_259_atax_avm_writeack),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_3_tpl),
        .out_o_readdata_4_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_4_tpl),
        .out_o_readdata_5_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_5_tpl),
        .out_o_readdata_6_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_6_tpl),
        .out_o_readdata_7_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,103)
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_address;
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_enable;
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_read;
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_write;
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_writedata;
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_byteenable;
    assign out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_memcoalesce_load_atax_fpgaunique_259_atax_avm_burstcount;

    // valid_fanout_reg8(REG,144)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,142)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,143)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i64_idxprom27129_push49_atax17(BLACKBOX,80)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    atax_i_llvm_fpga_push_i64_idxprom27129_push49_0 thei_llvm_fpga_push_i64_idxprom27129_push49_atax17 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom27129_pop49_atax16_out_data_out),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i64_idxprom27129_pop49_atax16_out_feedback_stall_out_49),
        .in_keep_going65(redist18_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i64_idxprom27129_push49_atax17_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i64_idxprom27129_push49_atax17_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together106_aunroll_x_in_c0_eni6223_3_tpl_1(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together106_aunroll_x_in_c0_eni6223_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together106_aunroll_x_in_c0_eni6223_3_tpl_1_q <= $unsigned(in_c0_eni6223_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom27129_pop49_atax16(BLACKBOX,70)@2
    // out out_feedback_stall_out_49@20000000
    atax_i_llvm_fpga_pop_i64_idxprom27129_pop49_0 thei_llvm_fpga_pop_i64_idxprom27129_pop49_atax16 (
        .in_data_in(redist2_sync_together106_aunroll_x_in_c0_eni6223_3_tpl_1_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i64_idxprom27129_push49_atax17_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i64_idxprom27129_push49_atax17_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom27129_pop49_atax16_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i64_idxprom27129_pop49_atax16_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx5417_atax0_narrow_x(BITSELECT,116)@2
    assign i_arrayidx5417_atax0_narrow_x_b = i_llvm_fpga_pop_i64_idxprom27129_pop49_atax16_out_data_out[55:0];

    // i_arrayidx5417_atax0_c_i8_01_x(CONSTANT,115)
    assign i_arrayidx5417_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx5417_atax0_shift_join_x(BITJOIN,117)@2
    assign i_arrayidx5417_atax0_shift_join_x_q = {i_arrayidx5417_atax0_narrow_x_b, i_arrayidx5417_atax0_c_i8_01_x_q};

    // c_atax_buff_A_pmem(CONSTANT,4)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx5417_atax0_add_x(ADD,113)@2
    assign i_arrayidx5417_atax0_add_x_a = {1'b0, c_atax_buff_A_pmem_q};
    assign i_arrayidx5417_atax0_add_x_b = {1'b0, i_arrayidx5417_atax0_shift_join_x_q};
    assign i_arrayidx5417_atax0_add_x_o = $unsigned(i_arrayidx5417_atax0_add_x_a) + $unsigned(i_arrayidx5417_atax0_add_x_b);
    assign i_arrayidx5417_atax0_add_x_q = i_arrayidx5417_atax0_add_x_o[64:0];

    // i_arrayidx5417_atax0_dupName_0_trunc_sel_x(BITSELECT,123)@2
    assign i_arrayidx5417_atax0_dupName_0_trunc_sel_x_b = i_arrayidx5417_atax0_add_x_q[63:0];

    // i_arrayidx5417_atax0_dupName_0_add_x(ADD,118)@2
    assign i_arrayidx5417_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx5417_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx5417_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx5016_atax0_shift_join_x_q};
    assign i_arrayidx5417_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx5417_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx5417_atax0_dupName_0_add_x_b);
    assign i_arrayidx5417_atax0_dupName_0_add_x_q = i_arrayidx5417_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx5417_atax0_dupName_2_trunc_sel_x(BITSELECT,124)@2
    assign i_arrayidx5417_atax0_dupName_2_trunc_sel_x_b = i_arrayidx5417_atax0_dupName_0_add_x_q[63:0];

    // i_arrayidx5417_atax18_vt_select_63(BITSELECT,41)@2
    assign i_arrayidx5417_atax18_vt_select_63_b = i_arrayidx5417_atax0_dupName_2_trunc_sel_x_b[63:2];

    // i_arrayidx5417_atax18_vt_join(BITJOIN,40)@2
    assign i_arrayidx5417_atax18_vt_join_q = {i_arrayidx5417_atax18_vt_select_63_b, i_arrayidx5016_atax10_vt_const_1_q};

    // i_memcoalesce_bitcast_atax_fpgaunique_41_atax19_vt_select_63(BITSELECT,84)@2
    assign i_memcoalesce_bitcast_atax_fpgaunique_41_atax19_vt_select_63_b = i_arrayidx5417_atax18_vt_join_q[63:2];

    // i_memcoalesce_bitcast_atax_fpgaunique_41_atax19_vt_join(BITJOIN,83)@2
    assign i_memcoalesce_bitcast_atax_fpgaunique_41_atax19_vt_join_q = {i_memcoalesce_bitcast_atax_fpgaunique_41_atax19_vt_select_63_b, i_arrayidx5016_atax10_vt_const_1_q};

    // i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x(BLACKBOX,131)@2
    // in in_i_stall@20000000
    // out out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address@20000000
    // out out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount@20000000
    // out out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read@20000000
    // out out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write@20000000
    // out out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata@20000000
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_o_readdata_0_tpl@7
    // out out_o_readdata_1_tpl@7
    // out out_o_readdata_2_tpl@7
    // out out_o_readdata_3_tpl@7
    // out out_o_readdata_4_tpl@7
    // out out_o_readdata_5_tpl@7
    // out out_o_readdata_6_tpl@7
    // out out_o_readdata_7_tpl@7
    atax_i_llvm_fpga_mem_memcoalesce_load_fpgaunique_247_atax0 thei_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_atax_fpgaunique_41_atax19_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor71_atax4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_247_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_247_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_247_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_247_atax_avm_writeack),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_3_tpl),
        .out_o_readdata_4_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_4_tpl),
        .out_o_readdata_5_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_5_tpl),
        .out_o_readdata_6_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_6_tpl),
        .out_o_readdata_7_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,105)
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_address;
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_enable;
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_read;
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_write;
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_writedata;
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_byteenable;
    assign out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_memcoalesce_load_atax_fpgaunique_247_atax_avm_burstcount;

    // redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_notEnable(LOGICAL,208)
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_nor(LOGICAL,209)
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_nor_q = ~ (redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_notEnable_q | redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_sticky_ena_q);

    // redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_last(CONSTANT,205)
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_last_q = $unsigned(2'b01);

    // redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_cmp(LOGICAL,206)
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_cmp_q = $unsigned(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_last_q == redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_cmpReg(REG,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_cmpReg_q <= $unsigned(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_cmp_q);
        end
    end

    // redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_sticky_ena(REG,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_nor_q == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_sticky_ena_q <= $unsigned(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_cmpReg_q);
        end
    end

    // redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_enaAnd(LOGICAL,211)
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_enaAnd_q = redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_sticky_ena_q & VCC_q;

    // redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt(COUNTER,203)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_i <= 2'd0;
            redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_i == 2'd1)
            begin
                redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_eq <= 1'b0;
            end
            if (redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_eq == 1'b1)
            begin
                redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_i <= $unsigned(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_i <= $unsigned(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_q = redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_i[1:0];

    // valid_fanout_reg9(REG,145)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,146)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist6_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_push52_atax23(BLACKBOX,71)@3
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    atax_i_llvm_fpga_push_f32_push52_0 thei_llvm_fpga_push_f32_push52_atax23 (
        .in_data_in(redist16_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_1_q),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_f32_pop52_atax22_out_feedback_stall_out_52),
        .in_keep_going65(redist19_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_f32_push52_atax23_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_f32_push52_atax23_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together106_aunroll_x_in_c0_eni6223_4_tpl_1(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together106_aunroll_x_in_c0_eni6223_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together106_aunroll_x_in_c0_eni6223_4_tpl_1_q <= $unsigned(in_c0_eni6223_4_tpl);
        end
    end

    // i_llvm_fpga_pop_f32_pop52_atax22(BLACKBOX,63)@2
    // out out_feedback_stall_out_52@20000000
    atax_i_llvm_fpga_pop_f32_pop52_0 thei_llvm_fpga_pop_f32_pop52_atax22 (
        .in_data_in(redist3_sync_together106_aunroll_x_in_c0_eni6223_4_tpl_1_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_f32_push52_atax23_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_f32_push52_atax23_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop52_atax22_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_f32_pop52_atax22_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_1(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pop52_atax22_out_data_out);
        end
    end

    // redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_wraddr(REG,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_wraddr_q <= $unsigned(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_q);
        end
    end

    // redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem(DUALMEM,202)
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_ia = $unsigned(redist16_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_1_q);
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_aa = redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_wraddr_q;
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_ab = redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_rdcnt_q;
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone 10 GX")
    ) redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_dmem (
        .clocken1(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_aa),
        .data_a(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_ab),
        .q_b(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
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
    assign redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_q = redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_iq[31:0];

    // i_llvm_fpga_fp_multadd_mult_add143_atax33(BLACKBOX,61)@7
    // out out_primWireOut@11
    atax_flt_i_sfc_logic_s_c0_in_for_body48_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add143_atax33 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_7_tpl),
        .in_1(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_q),
        .in_2(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_7_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add143_atax33_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add142_atax32(BLACKBOX,60)@7
    // out out_primWireOut@11
    atax_flt_i_sfc_logic_s_c0_in_for_body48_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add142_atax32 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_6_tpl),
        .in_1(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_q),
        .in_2(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_6_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add142_atax32_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add141_atax31(BLACKBOX,59)@7
    // out out_primWireOut@11
    atax_flt_i_sfc_logic_s_c0_in_for_body48_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add141_atax31 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_5_tpl),
        .in_1(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_q),
        .in_2(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_5_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add141_atax31_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add140_atax30(BLACKBOX,58)@7
    // out out_primWireOut@11
    atax_flt_i_sfc_logic_s_c0_in_for_body48_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add140_atax30 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_4_tpl),
        .in_1(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_q),
        .in_2(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_4_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add140_atax30_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add139_atax29(BLACKBOX,57)@7
    // out out_primWireOut@11
    atax_flt_i_sfc_logic_s_c0_in_for_body48_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add139_atax29 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_3_tpl),
        .in_1(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_q),
        .in_2(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_3_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add139_atax29_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add138_atax28(BLACKBOX,56)@7
    // out out_primWireOut@11
    atax_flt_i_sfc_logic_s_c0_in_for_body48_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add138_atax28 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_2_tpl),
        .in_1(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_q),
        .in_2(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_2_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add138_atax28_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add137_atax27(BLACKBOX,55)@7
    // out out_primWireOut@11
    atax_flt_i_sfc_logic_s_c0_in_for_body48_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add137_atax27 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_1_tpl),
        .in_1(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_q),
        .in_2(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_1_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add137_atax27_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add136_atax24(BLACKBOX,54)@7
    // out out_primWireOut@11
    atax_flt_i_sfc_logic_s_c0_in_for_body48_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add136_atax24 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_247_atax20_aunroll_x_out_o_readdata_0_tpl),
        .in_1(redist17_i_llvm_fpga_pop_f32_pop52_atax22_out_data_out_5_mem_q),
        .in_2(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_259_atax14_aunroll_x_out_o_readdata_0_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add136_atax24_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together106_aunroll_x_in_i_valid_9(DELAY,175)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together106_aunroll_x_in_i_valid_9 ( .xin(redist6_sync_together106_aunroll_x_in_i_valid_1_q), .xout(redist7_sync_together106_aunroll_x_in_i_valid_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,147)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist7_sync_together106_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist22_i_first_cleanup_xor71_atax4_q_9(DELAY,190)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_i_first_cleanup_xor71_atax4_q_9 ( .xin(redist21_i_first_cleanup_xor71_atax4_q_1_q), .xout(redist22_i_first_cleanup_xor71_atax4_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_notEnable(LOGICAL,198)
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_nor(LOGICAL,199)
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_nor_q = ~ (redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_notEnable_q | redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_sticky_ena_q);

    // redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_last(CONSTANT,195)
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_last_q = $unsigned(4'b0101);

    // redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmp(LOGICAL,196)
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmp_b = {1'b0, redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_q};
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmp_q = $unsigned(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_last_q == redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmp_b ? 1'b1 : 1'b0);

    // redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmpReg(REG,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmpReg_q <= $unsigned(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmp_q);
        end
    end

    // redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_sticky_ena(REG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_nor_q == 1'b1)
        begin
            redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_sticky_ena_q <= $unsigned(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_cmpReg_q);
        end
    end

    // redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_enaAnd(LOGICAL,201)
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_enaAnd_q = redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_sticky_ena_q & VCC_q;

    // redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt(COUNTER,193)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_i <= 3'd0;
            redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_i == 3'd5)
            begin
                redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_eq <= 1'b0;
            end
            if (redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_eq == 1'b1)
            begin
                redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_i <= $unsigned(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_i <= $unsigned(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_q = redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_i[2:0];

    // redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_wraddr(REG,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_wraddr_q <= $unsigned(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_q);
        end
    end

    // redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem(DUALMEM,192)
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_ia = $unsigned(i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q);
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_aa = redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_wraddr_q;
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_ab = redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_rdcnt_q;
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(7),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone 10 GX")
    ) redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_dmem (
        .clocken1(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_reset0),
        .clock1(clock),
        .address_a(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_aa),
        .data_a(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_ab),
        .q_b(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
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
    assign redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_q = redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_38_atax34_aunroll_x(BLACKBOX,133)@11
    // out out_memdep_38_atax_avm_address@20000000
    // out out_memdep_38_atax_avm_burstcount@20000000
    // out out_memdep_38_atax_avm_byteenable@20000000
    // out out_memdep_38_atax_avm_enable@20000000
    // out out_memdep_38_atax_avm_read@20000000
    // out out_memdep_38_atax_avm_write@20000000
    // out out_memdep_38_atax_avm_writedata@20000000
    // out out_o_stall@12
    // out out_o_valid@12
    // out out_o_writeack@12
    atax_i_llvm_fpga_mem_memdep_38_0 thei_llvm_fpga_mem_memdep_38_atax34_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(redist9_i_memcoalesce_bitcast_atax_fpgaunique_42_atax11_vt_join_q_8_mem_q),
        .in_i_predicate(redist22_i_first_cleanup_xor71_atax4_q_9_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_memdep_38_atax_avm_readdata(in_memdep_38_atax_avm_readdata),
        .in_memdep_38_atax_avm_readdatavalid(in_memdep_38_atax_avm_readdatavalid),
        .in_memdep_38_atax_avm_waitrequest(in_memdep_38_atax_avm_waitrequest),
        .in_memdep_38_atax_avm_writeack(in_memdep_38_atax_avm_writeack),
        .in_i_writedata_0_tpl(i_llvm_fpga_fp_multadd_mult_add136_atax24_out_primWireOut),
        .in_i_writedata_1_tpl(i_llvm_fpga_fp_multadd_mult_add137_atax27_out_primWireOut),
        .in_i_writedata_2_tpl(i_llvm_fpga_fp_multadd_mult_add138_atax28_out_primWireOut),
        .in_i_writedata_3_tpl(i_llvm_fpga_fp_multadd_mult_add139_atax29_out_primWireOut),
        .in_i_writedata_4_tpl(i_llvm_fpga_fp_multadd_mult_add140_atax30_out_primWireOut),
        .in_i_writedata_5_tpl(i_llvm_fpga_fp_multadd_mult_add141_atax31_out_primWireOut),
        .in_i_writedata_6_tpl(i_llvm_fpga_fp_multadd_mult_add142_atax32_out_primWireOut),
        .in_i_writedata_7_tpl(i_llvm_fpga_fp_multadd_mult_add143_atax33_out_primWireOut),
        .out_memdep_38_atax_avm_address(i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_address),
        .out_memdep_38_atax_avm_burstcount(i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_burstcount),
        .out_memdep_38_atax_avm_byteenable(i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_byteenable),
        .out_memdep_38_atax_avm_enable(i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_enable),
        .out_memdep_38_atax_avm_read(i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_read),
        .out_memdep_38_atax_avm_write(i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_write),
        .out_memdep_38_atax_avm_writedata(i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,106)
    assign out_memdep_38_atax_avm_address = i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_address;
    assign out_memdep_38_atax_avm_enable = i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_enable;
    assign out_memdep_38_atax_avm_read = i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_read;
    assign out_memdep_38_atax_avm_write = i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_write;
    assign out_memdep_38_atax_avm_writedata = i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_writedata;
    assign out_memdep_38_atax_avm_byteenable = i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_byteenable;
    assign out_memdep_38_atax_avm_burstcount = i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_memdep_38_atax_avm_burstcount;

    // redist8_sync_together106_aunroll_x_in_i_valid_10(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together106_aunroll_x_in_i_valid_10_q <= '0;
        end
        else
        begin
            redist8_sync_together106_aunroll_x_in_i_valid_10_q <= $unsigned(redist7_sync_together106_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg0(REG,136)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together106_aunroll_x_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg15(REG,151)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,152)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist6_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp93134_push51_atax51(BLACKBOX,75)@3
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    atax_i_llvm_fpga_push_i1_notcmp93134_push51_0 thei_llvm_fpga_push_i1_notcmp93134_push51_atax51 (
        .in_data_in(redist11_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_1_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_feedback_stall_out_51),
        .in_keep_going65(redist19_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_notcmp93134_push51_atax51_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_notcmp93134_push51_atax51_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together106_aunroll_x_in_c0_eni6223_6_tpl_1(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together106_aunroll_x_in_c0_eni6223_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together106_aunroll_x_in_c0_eni6223_6_tpl_1_q <= $unsigned(in_c0_eni6223_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50(BLACKBOX,66)@2
    // out out_feedback_stall_out_51@20000000
    atax_i_llvm_fpga_pop_i1_notcmp93134_pop51_0 thei_llvm_fpga_pop_i1_notcmp93134_pop51_atax50 (
        .in_data_in(redist5_sync_together106_aunroll_x_in_c0_eni6223_6_tpl_1_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_notcmp93134_push51_atax51_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_notcmp93134_push51_atax51_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_1(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out);
        end
    end

    // redist12_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_10(DELAY,180)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_10 ( .xin(redist11_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_1_q), .xout(redist12_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg13(REG,149)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,150)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist6_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond57132_push50_atax49(BLACKBOX,72)@3
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    atax_i_llvm_fpga_push_i1_exitcond57132_push50_0 thei_llvm_fpga_push_i1_exitcond57132_push50_atax49 (
        .in_data_in(redist14_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_1_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_feedback_stall_out_50),
        .in_keep_going65(redist19_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i1_exitcond57132_push50_atax49_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i1_exitcond57132_push50_atax49_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together106_aunroll_x_in_c0_eni6223_5_tpl_1(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together106_aunroll_x_in_c0_eni6223_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together106_aunroll_x_in_c0_eni6223_5_tpl_1_q <= $unsigned(in_c0_eni6223_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48(BLACKBOX,64)@2
    // out out_feedback_stall_out_50@20000000
    atax_i_llvm_fpga_pop_i1_exitcond57132_pop50_0 thei_llvm_fpga_pop_i1_exitcond57132_pop50_atax48 (
        .in_data_in(redist4_sync_together106_aunroll_x_in_c0_eni6223_5_tpl_1_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni6223_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i1_exitcond57132_push50_atax49_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i1_exitcond57132_push50_atax49_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_1(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out);
        end
    end

    // redist15_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_10(DELAY,183)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_10 ( .xin(redist14_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_1_q), .xout(redist15_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked74_atax47(LOGICAL,81)@2 + 1
    assign i_masked74_atax47_qi = i_notcmp61_atax40_q & i_first_cleanup70_atax3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked74_atax47_delay ( .xin(i_masked74_atax47_qi), .xout(i_masked74_atax47_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_i_masked74_atax47_q_10(DELAY,178)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_i_masked74_atax47_q_10 ( .xin(i_masked74_atax47_q), .xout(redist10_i_masked74_atax47_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_11(DELAY,188)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_11 ( .xin(redist19_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_2_q), .xout(redist20_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,134)@12
    assign out_c0_exi5235_0_tpl = GND_q;
    assign out_c0_exi5235_1_tpl = redist20_i_llvm_fpga_pipeline_keep_going65_atax6_out_data_out_11_q;
    assign out_c0_exi5235_2_tpl = i_llvm_fpga_mem_memdep_38_atax34_aunroll_x_out_o_writeack;
    assign out_c0_exi5235_3_tpl = redist10_i_masked74_atax47_q_10_q;
    assign out_c0_exi5235_4_tpl = redist15_i_llvm_fpga_pop_i1_exitcond57132_pop50_atax48_out_data_out_10_q;
    assign out_c0_exi5235_5_tpl = redist12_i_llvm_fpga_pop_i1_notcmp93134_pop51_atax50_out_data_out_10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
