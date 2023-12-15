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

// SystemVerilog created from atax_bb_B12_stall_region
// SystemVerilog created on Wed Dec 13 00:56:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B12_stall_region (
    input wire [127:0] in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writeack,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_memdep_18_atax_avm_readdata,
    input wire [0:0] in_memdep_18_atax_avm_writeack,
    input wire [0:0] in_memdep_18_atax_avm_waitrequest,
    input wire [0:0] in_memdep_18_atax_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write,
    output wire [127:0] out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata,
    output wire [15:0] out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_20_atax_avm_readdata,
    input wire [0:0] in_memdep_20_atax_avm_writeack,
    input wire [0:0] in_memdep_20_atax_avm_waitrequest,
    input wire [0:0] in_memdep_20_atax_avm_readdatavalid,
    output wire [63:0] out_memdep_18_atax_avm_address,
    output wire [0:0] out_memdep_18_atax_avm_enable,
    output wire [0:0] out_memdep_18_atax_avm_read,
    output wire [0:0] out_memdep_18_atax_avm_write,
    output wire [63:0] out_memdep_18_atax_avm_writedata,
    output wire [7:0] out_memdep_18_atax_avm_byteenable,
    output wire [0:0] out_memdep_18_atax_avm_burstcount,
    input wire [63:0] in_memdep_22_atax_avm_readdata,
    input wire [0:0] in_memdep_22_atax_avm_writeack,
    input wire [0:0] in_memdep_22_atax_avm_waitrequest,
    input wire [0:0] in_memdep_22_atax_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_18_o_active,
    input wire [63:0] in_memdep_24_atax_avm_readdata,
    input wire [0:0] in_memdep_24_atax_avm_writeack,
    input wire [0:0] in_memdep_24_atax_avm_waitrequest,
    input wire [0:0] in_memdep_24_atax_avm_readdatavalid,
    output wire [63:0] out_memdep_20_atax_avm_address,
    output wire [0:0] out_memdep_20_atax_avm_enable,
    output wire [0:0] out_memdep_20_atax_avm_read,
    output wire [0:0] out_memdep_20_atax_avm_write,
    output wire [63:0] out_memdep_20_atax_avm_writedata,
    output wire [7:0] out_memdep_20_atax_avm_byteenable,
    output wire [0:0] out_memdep_20_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_20_o_active,
    output wire [63:0] out_memdep_22_atax_avm_address,
    output wire [0:0] out_memdep_22_atax_avm_enable,
    output wire [0:0] out_memdep_22_atax_avm_read,
    output wire [0:0] out_memdep_22_atax_avm_write,
    output wire [63:0] out_memdep_22_atax_avm_writedata,
    output wire [7:0] out_memdep_22_atax_avm_byteenable,
    output wire [0:0] out_memdep_22_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_22_o_active,
    output wire [63:0] out_memdep_24_atax_avm_address,
    output wire [0:0] out_memdep_24_atax_avm_enable,
    output wire [0:0] out_memdep_24_atax_avm_read,
    output wire [0:0] out_memdep_24_atax_avm_write,
    output wire [63:0] out_memdep_24_atax_avm_writedata,
    output wire [7:0] out_memdep_24_atax_avm_byteenable,
    output wire [0:0] out_memdep_24_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_24_o_active,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_y_out_pmem_q;
    wire [31:0] c_i32_056_q;
    wire [31:0] c_i32_159_q;
    wire [31:0] c_i32_260_q;
    wire [31:0] c_i32_361_q;
    wire [31:0] c_i32_462_q;
    wire [3:0] c_i4_754_q;
    wire [4:0] c_i5_1457_q;
    wire [4:0] c_i5_164_q;
    wire [1:0] i_arrayidx7124_atax26_vt_const_1_q;
    wire [63:0] i_arrayidx7124_atax26_vt_join_q;
    wire [61:0] i_arrayidx7124_atax26_vt_select_63_b;
    wire [3:0] i_cleanups_shl_atax11_vt_join_q;
    wire [2:0] i_cleanups_shl_atax11_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_atax23_q;
    wire [5:0] i_fpga_indvars_iv_next40_atax22_a;
    wire [5:0] i_fpga_indvars_iv_next40_atax22_b;
    logic [5:0] i_fpga_indvars_iv_next40_atax22_o;
    wire [5:0] i_fpga_indvars_iv_next40_atax22_q;
    wire [63:0] i_idxprom70_1_atax28_vt_join_q;
    wire [30:0] i_idxprom70_1_atax28_vt_select_31_b;
    wire [63:0] i_idxprom70_2_atax29_vt_join_q;
    wire [1:0] i_idxprom70_3_atax30_vt_const_1_q;
    wire [63:0] i_idxprom70_3_atax30_vt_join_q;
    wire [29:0] i_idxprom70_3_atax30_vt_select_31_b;
    wire [63:0] i_idxprom70_atax13_vt_join_q;
    wire [31:0] i_idxprom70_atax13_vt_select_31_b;
    wire [31:0] i_inc75_1_atax15_q;
    wire [31:0] i_inc75_1_atax15_vt_join_q;
    wire [31:0] i_inc75_2_atax16_q;
    wire [31:0] i_inc75_2_atax16_vt_join_q;
    wire [29:0] i_inc75_2_atax16_vt_select_31_b;
    wire [32:0] i_inc75_3_atax17_a;
    wire [32:0] i_inc75_3_atax17_b;
    logic [32:0] i_inc75_3_atax17_o;
    wire [32:0] i_inc75_3_atax17_q;
    wire [31:0] i_inc75_atax14_q;
    wire [31:0] i_inc75_atax14_vt_join_q;
    wire [30:0] i_inc75_atax14_vt_select_31_b;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax45_out_lsu_memdep_18_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax45_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax45_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax46_out_lsu_memdep_20_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax46_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax46_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax46_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_22_atax47_out_lsu_memdep_22_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_22_atax47_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_22_atax47_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_22_atax47_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_24_atax48_out_lsu_memdep_24_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_24_atax48_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_24_atax48_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_24_atax48_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_valid_out;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax36_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax36_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax36_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax36_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax34_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax34_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax34_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax34_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_334_push22_atax31_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_i_334_push22_atax31_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i32_i_334_push22_atax31_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_334_push22_atax31_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push27_atax53_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push27_atax53_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push27_atax53_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push27_atax53_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push26_atax24_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push26_atax24_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push26_atax24_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push26_atax24_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_valid_out;
    wire [0:0] i_masked_atax44_qi;
    reg [0:0] i_masked_atax44_q;
    wire [0:0] i_memdep_phi23_or_atax18_q;
    wire [0:0] i_memdep_phi25_or26_atax19_q;
    wire [0:0] i_memdep_phi25_or_atax32_q;
    wire [0:0] i_next_cleanups_atax49_s;
    reg [3:0] i_next_cleanups_atax49_q;
    wire [3:0] i_next_initerations_atax12_vt_join_q;
    wire [2:0] i_next_initerations_atax12_vt_select_2_b;
    wire [0:0] i_notcmp_atax33_q;
    wire [0:0] i_or_atax43_q;
    wire [0:0] atax_B12_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B12_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next40_atax22_sel_x_b;
    wire [31:0] bgTrunc_i_inc75_3_atax17_sel_x_b;
    wire [64:0] i_arrayidx7124_atax0_add_x_a;
    wire [64:0] i_arrayidx7124_atax0_add_x_b;
    logic [64:0] i_arrayidx7124_atax0_add_x_o;
    wire [64:0] i_arrayidx7124_atax0_add_x_q;
    wire [61:0] i_arrayidx7124_atax0_narrow_x_b;
    wire [63:0] i_arrayidx7124_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx7124_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx73_1_atax0_add_x_a;
    wire [64:0] i_arrayidx73_1_atax0_add_x_b;
    logic [64:0] i_arrayidx73_1_atax0_add_x_o;
    wire [64:0] i_arrayidx73_1_atax0_add_x_q;
    wire [61:0] i_arrayidx73_1_atax0_narrow_x_b;
    wire [63:0] i_arrayidx73_1_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx73_2_atax0_add_x_a;
    wire [64:0] i_arrayidx73_2_atax0_add_x_b;
    logic [64:0] i_arrayidx73_2_atax0_add_x_o;
    wire [64:0] i_arrayidx73_2_atax0_add_x_q;
    wire [61:0] i_arrayidx73_2_atax0_narrow_x_b;
    wire [63:0] i_arrayidx73_2_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx73_2_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx73_3_atax0_add_x_a;
    wire [64:0] i_arrayidx73_3_atax0_add_x_b;
    logic [64:0] i_arrayidx73_3_atax0_add_x_o;
    wire [64:0] i_arrayidx73_3_atax0_add_x_q;
    wire [61:0] i_arrayidx73_3_atax0_narrow_x_b;
    wire [63:0] i_arrayidx73_3_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx73_3_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx73_atax0_add_x_a;
    wire [64:0] i_arrayidx73_atax0_add_x_b;
    logic [64:0] i_arrayidx73_atax0_add_x_o;
    wire [64:0] i_arrayidx73_atax0_add_x_q;
    wire [63:0] i_arrayidx73_atax0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_atax10_sel_x_b;
    wire [63:0] i_idxprom70_1_atax28_sel_x_b;
    wire [63:0] i_idxprom70_2_atax29_sel_x_b;
    wire [63:0] i_idxprom70_3_atax30_sel_x_b;
    wire [63:0] i_idxprom70_atax13_sel_x_b;
    wire [0:0] i_last_initeration_atax25_sel_x_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount;
    wire [15:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write;
    wire [127:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_4_tpl;
    wire [0:0] i_exitcond41_atax20_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_atax0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_atax0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid235_i_cleanups_shl_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_s;
    reg [3:0] leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid241_i_next_initerations_atax0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid243_i_next_initerations_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid245_i_next_initerations_atax0_shift_x_s;
    reg [3:0] rightShiftStage0_uid245_i_next_initerations_atax0_shift_x_q;
    wire [0:0] i_inc75_1_atax15_vt_select_0_merged_bit_select_b;
    wire [29:0] i_inc75_1_atax15_vt_select_0_merged_bit_select_c;
    wire [31:0] i_idxprom70_2_atax29_vt_select_0_merged_bit_select_in;
    wire [0:0] i_idxprom70_2_atax29_vt_select_0_merged_bit_select_b;
    wire [29:0] i_idxprom70_2_atax29_vt_select_0_merged_bit_select_c;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_in;
    wire redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_in;
    wire redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_data_in;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_out;
    wire redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_out;
    wire redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_data_out;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_in;
    wire redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_in;
    wire redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_data_in;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_out;
    wire redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_out;
    wire redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_data_out;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_in;
    wire redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_in;
    wire redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_data_in;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_out;
    wire redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_out;
    wire redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_data_out;
    wire [0:0] redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in;
    wire redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in;
    wire redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_data_in;
    wire [0:0] redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out;
    wire redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out;
    wire redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_data_out;
    wire [0:0] redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_in;
    wire redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_in;
    wire redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_data_in;
    wire [0:0] redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_out;
    wire redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_out;
    wire redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_data_out;
    wire [0:0] redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in;
    wire redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in;
    wire redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_data_in;
    wire [0:0] redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out;
    wire redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out;
    wire redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_data_out;
    wire [0:0] redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_in;
    wire redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_in;
    wire redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_data_in;
    wire [0:0] redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_out;
    wire redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_out;
    wire redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_data_out;
    wire [0:0] redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in;
    wire redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in;
    wire redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_in;
    wire [0:0] redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out;
    wire redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out;
    wire redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_out;
    wire [0:0] redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in;
    wire redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in;
    wire redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_data_in;
    wire [0:0] redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out;
    wire redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out;
    wire redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_data_out;
    wire [0:0] redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in;
    wire redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in;
    wire redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_in;
    wire [0:0] redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out;
    wire redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out;
    wire redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_out;
    wire [0:0] redist10_i_masked_atax44_q_132_fifo_valid_in;
    wire redist10_i_masked_atax44_q_132_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_i_masked_atax44_q_132_fifo_stall_in;
    wire redist10_i_masked_atax44_q_132_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist10_i_masked_atax44_q_132_fifo_data_in;
    wire [0:0] redist10_i_masked_atax44_q_132_fifo_valid_out;
    wire redist10_i_masked_atax44_q_132_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_i_masked_atax44_q_132_fifo_stall_out;
    wire redist10_i_masked_atax44_q_132_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist10_i_masked_atax44_q_132_fifo_data_out;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in;
    wire redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in;
    wire redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_data_in;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out;
    wire redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out;
    wire redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_data_out;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in;
    wire redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in;
    wire redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_data_in;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out;
    wire redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out;
    wire redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_data_out;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_in;
    wire redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_in;
    wire redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_data_in;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_out;
    wire redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_out;
    wire redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_data_out;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_in;
    wire redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_in;
    wire redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_data_in;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_out;
    wire redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_out;
    wire redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_data_out;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_in;
    wire redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_in;
    wire redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_data_in;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_out;
    wire redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_out;
    wire redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_data_out;
    wire [0:0] redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in;
    wire redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in;
    wire redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_data_in;
    wire [0:0] redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out;
    wire redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out;
    wire redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_data_out;
    wire [0:0] redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in;
    wire redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in;
    wire redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_data_in;
    wire [0:0] redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out;
    wire redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out;
    wire redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_data_out;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in;
    wire redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in;
    wire redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_data_in;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out;
    wire redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out;
    wire redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_data_out;
    wire [0:0] redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_in;
    wire redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_in;
    wire redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_i_first_cleanup_xor_atax23_q_8_fifo_data_in;
    wire [0:0] redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_out;
    wire redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_out;
    wire redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_i_first_cleanup_xor_atax23_q_8_fifo_data_out;
    wire [0:0] redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_in;
    wire redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_in;
    wire redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist20_i_first_cleanup_xor_atax23_q_39_fifo_data_in;
    wire [0:0] redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_out;
    wire redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_out;
    wire redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist20_i_first_cleanup_xor_atax23_q_39_fifo_data_out;
    wire [0:0] redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_in;
    wire redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_in;
    wire redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_i_first_cleanup_xor_atax23_q_70_fifo_data_in;
    wire [0:0] redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_out;
    wire redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_out;
    wire redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_i_first_cleanup_xor_atax23_q_70_fifo_data_out;
    wire [0:0] redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_in;
    wire redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_in;
    wire redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist22_i_first_cleanup_xor_atax23_q_101_fifo_data_in;
    wire [0:0] redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_out;
    wire redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_out;
    wire redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist22_i_first_cleanup_xor_atax23_q_101_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_20_atax46_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_20_atax46_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_22_atax47_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_22_atax47_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_24_atax48_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_24_atax48_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_atax2_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax4_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop26_atax3_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_atax3_b;
    wire [4:0] bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_q;
    wire [4:0] bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_atax_B12_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B12_merge_reg_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b;
    wire [127:0] bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_e;
    wire [31:0] bubble_join_redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_q;
    wire [31:0] bubble_select_redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_b;
    wire [31:0] bubble_join_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_q;
    wire [31:0] bubble_select_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_b;
    wire [31:0] bubble_join_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_q;
    wire [31:0] bubble_select_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_b;
    wire [63:0] bubble_join_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_q;
    wire [63:0] bubble_select_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_b;
    wire [63:0] bubble_join_redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_q;
    wire [63:0] bubble_select_redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_b;
    wire [63:0] bubble_join_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_q;
    wire [63:0] bubble_select_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_b;
    wire [63:0] bubble_join_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_q;
    wire [63:0] bubble_select_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_b;
    wire [0:0] bubble_join_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_q;
    wire [0:0] bubble_select_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b;
    wire [0:0] bubble_join_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_q;
    wire [0:0] bubble_select_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_b;
    wire [0:0] bubble_join_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_q;
    wire [0:0] bubble_select_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b;
    wire [0:0] bubble_join_redist10_i_masked_atax44_q_132_fifo_q;
    wire [0:0] bubble_select_redist10_i_masked_atax44_q_132_fifo_b;
    wire [31:0] bubble_join_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_q;
    wire [31:0] bubble_select_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_b;
    wire [31:0] bubble_join_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_q;
    wire [31:0] bubble_select_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_b;
    wire [0:0] bubble_join_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_q;
    wire [0:0] bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_b;
    wire [0:0] bubble_join_redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_q;
    wire [0:0] bubble_select_redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_b;
    wire [0:0] bubble_join_redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_q;
    wire [0:0] bubble_select_redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_b;
    wire [0:0] bubble_join_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_q;
    wire [0:0] bubble_select_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_b;
    wire [0:0] bubble_join_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_q;
    wire [0:0] bubble_select_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_b;
    wire [0:0] bubble_join_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_q;
    wire [0:0] bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_b;
    wire [0:0] bubble_join_redist19_i_first_cleanup_xor_atax23_q_8_fifo_q;
    wire [0:0] bubble_select_redist19_i_first_cleanup_xor_atax23_q_8_fifo_b;
    wire [0:0] bubble_join_redist20_i_first_cleanup_xor_atax23_q_39_fifo_q;
    wire [0:0] bubble_select_redist20_i_first_cleanup_xor_atax23_q_39_fifo_b;
    wire [0:0] bubble_join_redist21_i_first_cleanup_xor_atax23_q_70_fifo_q;
    wire [0:0] bubble_select_redist21_i_first_cleanup_xor_atax23_q_70_fifo_b;
    wire [0:0] bubble_join_redist22_i_first_cleanup_xor_atax23_q_101_fifo_q;
    wire [0:0] bubble_select_redist22_i_first_cleanup_xor_atax23_q_101_fifo_b;
    wire [0:0] SE_i_arrayidx7124_atax26_vt_select_63_wireValid;
    wire [0:0] SE_i_arrayidx7124_atax26_vt_select_63_and0;
    wire [0:0] SE_i_arrayidx7124_atax26_vt_select_63_backStall;
    wire [0:0] SE_i_arrayidx7124_atax26_vt_select_63_V0;
    wire [0:0] SE_i_idxprom70_3_atax30_vt_join_wireValid;
    wire [0:0] SE_i_idxprom70_3_atax30_vt_join_and0;
    wire [0:0] SE_i_idxprom70_3_atax30_vt_join_and1;
    wire [0:0] SE_i_idxprom70_3_atax30_vt_join_and2;
    wire [0:0] SE_i_idxprom70_3_atax30_vt_join_backStall;
    wire [0:0] SE_i_idxprom70_3_atax30_vt_join_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax46_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_22_atax47_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_24_atax48_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V3;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_atax36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_atax36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_atax34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_atax34_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_334_push22_atax31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_334_push22_atax31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push27_atax53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push27_atax53_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push26_atax24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push26_atax24_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_backStall;
    reg [0:0] SE_i_masked_atax44_R_v_0;
    wire [0:0] SE_i_masked_atax44_v_s_0;
    wire [0:0] SE_i_masked_atax44_s_tv_0;
    wire [0:0] SE_i_masked_atax44_backEN;
    wire [0:0] SE_i_masked_atax44_and0;
    wire [0:0] SE_i_masked_atax44_backStall;
    wire [0:0] SE_i_masked_atax44_V0;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations_atax12_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations_atax12_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_and0;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_or0;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_backStall;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_V0;
    wire [0:0] SE_i_next_initerations_atax12_vt_join_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_atax_B12_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_atax_B12_merge_reg_aunroll_x_V6;
    wire [0:0] SE_i_arrayidx73_1_atax0_add_x_wireValid;
    wire [0:0] SE_i_arrayidx73_1_atax0_add_x_and0;
    wire [0:0] SE_i_arrayidx73_1_atax0_add_x_backStall;
    wire [0:0] SE_i_arrayidx73_1_atax0_add_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V3;
    wire [0:0] SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_and0;
    wire [0:0] SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_and1;
    wire [0:0] SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_V0;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_wireValid;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and0;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and1;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and2;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and3;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_backStall;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_V0;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireStall;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_StallValid;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg0;
    reg [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg0;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed0;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg1;
    reg [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg1;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed1;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg2;
    reg [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg2;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed2;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_or0;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_or1;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_backStall;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V0;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V1;
    wire [0:0] SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V2;
    wire [0:0] SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and0;
    wire [0:0] SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and1;
    wire [0:0] SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and2;
    wire [0:0] SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and3;
    wire [0:0] SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_backStall;
    wire [0:0] SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_V0;
    wire [0:0] SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_wireValid;
    wire [0:0] SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_and0;
    wire [0:0] SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_backStall;
    wire [0:0] SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_V0;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireStall;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_StallValid;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg0;
    reg [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg0;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed0;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg1;
    reg [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg1;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed1;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_or0;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V0;
    wire [0:0] SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V1;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireStall;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_StallValid;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg0;
    reg [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg0;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed0;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg1;
    reg [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg1;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed1;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_or0;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_backStall;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V0;
    wire [0:0] SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V1;
    wire [0:0] SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid;
    wire [0:0] SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall;
    wire [0:0] SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V0;
    wire [0:0] SE_in_redist10_i_masked_atax44_q_132_fifo_wireValid;
    wire [0:0] SE_in_redist10_i_masked_atax44_q_132_fifo_backStall;
    wire [0:0] SE_in_redist10_i_masked_atax44_q_132_fifo_V0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireStall;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_StallValid;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg0;
    reg [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg1;
    reg [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_or0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_backStall;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V1;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireStall;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_StallValid;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg0;
    reg [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg0;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed0;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg1;
    reg [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg1;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed1;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_or0;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_backStall;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V0;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V1;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_wireValid;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_wireStall;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_StallValid;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_toReg0;
    reg [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_fromReg0;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_consumed0;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_toReg1;
    reg [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_fromReg1;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_consumed1;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_or0;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_backStall;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_V0;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_V1;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireStall;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_StallValid;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg0;
    reg [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg1;
    reg [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg1;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed1;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_or0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_backStall;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireStall;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_StallValid;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg0;
    reg [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg1;
    reg [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_or0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_backStall;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V1;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_and0;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_backStall;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_V0;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_wireValid;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_wireStall;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_StallValid;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_toReg0;
    reg [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_fromReg0;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_consumed0;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_toReg1;
    reg [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_fromReg1;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_consumed1;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_or0;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_backStall;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_V0;
    wire [0:0] SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_V1;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_wireValid;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_wireStall;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_StallValid;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_toReg0;
    reg [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_fromReg0;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_consumed0;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_toReg1;
    reg [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_fromReg1;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_consumed1;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_or0;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_backStall;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_V0;
    wire [0:0] SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_V1;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_wireValid;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_wireStall;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_StallValid;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_toReg0;
    reg [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_fromReg0;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_consumed0;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_toReg1;
    reg [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_fromReg1;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_consumed1;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_or0;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_backStall;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_V0;
    wire [0:0] SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_V1;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_wireValid;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and0;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and1;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and2;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and3;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and4;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_backStall;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_V0;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // bubble_join_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(BITJOIN,370)
    assign bubble_join_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_q = redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_out;

    // bubble_select_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(BITSELECT,371)
    assign bubble_select_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b = $unsigned(bubble_join_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_q[0:0]);

    // bubble_join_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo(BITJOIN,373)
    assign bubble_join_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_q = redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_data_out;

    // bubble_select_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo(BITSELECT,374)
    assign bubble_select_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_b = $unsigned(bubble_join_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_q[0:0]);

    // bubble_join_redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo(BITJOIN,349)
    assign bubble_join_redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_q = redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_data_out;

    // bubble_select_redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo(BITSELECT,350)
    assign bubble_select_redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_b = $unsigned(bubble_join_redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_q[31:0]);

    // bubble_join_i_llvm_fpga_pipeline_keep_going_atax2(BITJOIN,308)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_atax2_q = i_llvm_fpga_pipeline_keep_going_atax2_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_atax2(BITSELECT,309)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_atax2_q[0:0]);

    // redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo(STALLFIFO,287)
    assign redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V5;
    assign redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in = SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_backStall;
    assign redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b;
    assign redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in_bitsignaltemp = redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in[0];
    assign redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in_bitsignaltemp = redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in[0];
    assign redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out[0] = redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out_bitsignaltemp;
    assign redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out[0] = redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo (
        .valid_in(redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .valid_out(redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo(BITJOIN,397)
    assign bubble_join_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_q = redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_data_out;

    // bubble_select_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo(BITSELECT,398)
    assign bubble_select_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_b = $unsigned(bubble_join_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52(STALLENABLE,470)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_wireValid = i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_valid_out;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop27_atax1(BITJOIN,324)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_q = i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_atax1(BITSELECT,325)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_q[3:0]);

    // i_first_cleanup_atax10_sel_x(BITSELECT,205)@2
    assign i_first_cleanup_atax10_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_b[0:0];

    // i_first_cleanup_xor_atax23(LOGICAL,28)@2
    assign i_first_cleanup_xor_atax23_q = i_first_cleanup_atax10_sel_x_b ^ VCC_q;

    // c_i32_056(CONSTANT,7)
    assign c_i32_056_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax4(BITJOIN,321)
    assign bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax4_q = i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4(BITSELECT,322)
    assign bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax4_q[31:0]);

    // i_idxprom70_atax13_sel_x(BITSELECT,209)@2
    assign i_idxprom70_atax13_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b[31:0]};

    // i_idxprom70_atax13_vt_select_31(BITSELECT,49)@2
    assign i_idxprom70_atax13_vt_select_31_b = i_idxprom70_atax13_sel_x_b[31:0];

    // i_idxprom70_atax13_vt_join(BITJOIN,48)@2
    assign i_idxprom70_atax13_vt_join_q = {c_i32_056_q, i_idxprom70_atax13_vt_select_31_b};

    // i_arrayidx7124_atax0_narrow_x(BITSELECT,173)@2
    assign i_arrayidx7124_atax0_narrow_x_b = i_idxprom70_atax13_vt_join_q[61:0];

    // i_arrayidx7124_atax0_shift_join_x(BITJOIN,174)@2
    assign i_arrayidx7124_atax0_shift_join_x_q = {i_arrayidx7124_atax0_narrow_x_b, i_arrayidx7124_atax26_vt_const_1_q};

    // c_atax_buff_y_out_pmem(CONSTANT,4)
    assign c_atax_buff_y_out_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx7124_atax0_add_x(ADD,171)@2
    assign i_arrayidx7124_atax0_add_x_a = {1'b0, c_atax_buff_y_out_pmem_q};
    assign i_arrayidx7124_atax0_add_x_b = {1'b0, i_arrayidx7124_atax0_shift_join_x_q};
    assign i_arrayidx7124_atax0_add_x_o = $unsigned(i_arrayidx7124_atax0_add_x_a) + $unsigned(i_arrayidx7124_atax0_add_x_b);
    assign i_arrayidx7124_atax0_add_x_q = i_arrayidx7124_atax0_add_x_o[64:0];

    // i_arrayidx7124_atax0_dupName_0_trunc_sel_x(BITSELECT,176)@2
    assign i_arrayidx7124_atax0_dupName_0_trunc_sel_x_b = i_arrayidx7124_atax0_add_x_q[63:0];

    // i_arrayidx7124_atax26_vt_select_63(BITSELECT,22)@2
    assign i_arrayidx7124_atax26_vt_select_63_b = i_arrayidx7124_atax0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx7124_atax26_vt_const_1(CONSTANT,20)
    assign i_arrayidx7124_atax26_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx7124_atax26_vt_join(BITJOIN,21)@2
    assign i_arrayidx7124_atax26_vt_join_q = {i_arrayidx7124_atax26_vt_select_63_b, i_arrayidx7124_atax26_vt_const_1_q};

    // bubble_join_redist20_i_first_cleanup_xor_atax23_q_39_fifo(BITJOIN,409)
    assign bubble_join_redist20_i_first_cleanup_xor_atax23_q_39_fifo_q = redist20_i_first_cleanup_xor_atax23_q_39_fifo_data_out;

    // bubble_select_redist20_i_first_cleanup_xor_atax23_q_39_fifo(BITSELECT,410)
    assign bubble_select_redist20_i_first_cleanup_xor_atax23_q_39_fifo_b = $unsigned(bubble_join_redist20_i_first_cleanup_xor_atax23_q_39_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7(BITJOIN,318)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_q = i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7(BITSELECT,319)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7(STALLENABLE,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_consumed0 = (~ (SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_consumed1 = (~ (redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_wireValid = i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_valid_out;

    // redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo(STALLFIFO,284)
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_V1;
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_in = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_backStall;
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_b;
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_in_bitsignaltemp = redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_in[0];
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_in_bitsignaltemp = redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_in[0];
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_out[0] = redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_out_bitsignaltemp;
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_out[0] = redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo (
        .valid_in(redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_b),
        .valid_out(redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo(STALLENABLE,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_fromReg0 <= '0;
            SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_fromReg0 <= SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_toReg0;
            // Successor 1
            SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_fromReg1 <= SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_consumed0 = (~ (SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_backStall) & SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_wireValid) | SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_fromReg0;
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_consumed1 = (~ (redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_out) & SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_wireValid) | SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_fromReg1;
    // Consuming
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_StallValid = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_backStall & SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_wireValid;
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_toReg0 = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_StallValid & SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_consumed0;
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_toReg1 = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_StallValid & SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_or0 = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_consumed0;
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_wireStall = ~ (SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_consumed1 & SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_or0);
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_backStall = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_V0 = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_wireValid & ~ (SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_fromReg0);
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_V1 = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_wireValid & ~ (SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_wireValid = redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6(STALLENABLE,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_consumed0 = (~ (SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_consumed1 = (~ (redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_wireValid = i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_valid_out;

    // redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo(STALLFIFO,272)
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V2;
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_in = SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_backStall;
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_c;
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_in_bitsignaltemp = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_in[0];
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_in_bitsignaltemp = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_in[0];
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_out[0] = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_out_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_out[0] = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo (
        .valid_in(redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_c),
        .valid_out(redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_159(CONSTANT,8)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo(STALLFIFO,282)
    assign redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V0;
    assign redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in = SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_backStall;
    assign redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b;
    assign redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in_bitsignaltemp = redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in[0];
    assign redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in_bitsignaltemp = redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in[0];
    assign redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out[0] = redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out_bitsignaltemp;
    assign redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out[0] = redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo (
        .valid_in(redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b),
        .valid_out(redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo(BITJOIN,382)
    assign bubble_join_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_q = redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_data_out;

    // bubble_select_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo(BITSELECT,383)
    assign bubble_select_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_b = $unsigned(bubble_join_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_q[31:0]);

    // SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo(STALLENABLE,558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg0 <= '0;
            SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg0 <= SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg0;
            // Successor 1
            SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg1 <= SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed0 = (~ (SE_i_arrayidx73_1_atax0_add_x_backStall) & SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid) | SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg0;
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed1 = (~ (SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_backStall) & SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid) | SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg1;
    // Consuming
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_StallValid = SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_backStall & SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid;
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg0 = SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_StallValid & SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed0;
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg1 = SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_StallValid & SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_or0 = SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed0;
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireStall = ~ (SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed1 & SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_or0);
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_backStall = SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V0 = SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid & ~ (SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg0);
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V1 = SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid & ~ (SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid = redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out;

    // SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo(STALLENABLE,556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg0 <= '0;
            SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg0 <= SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg0;
            // Successor 1
            SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg1 <= SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed0 = (~ (redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out) & SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg0;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed1 = (~ (SE_i_idxprom70_3_atax30_vt_join_backStall) & SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg1;
    // Consuming
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_StallValid = SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_backStall & SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg0 = SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_StallValid & SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed0;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg1 = SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_StallValid & SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_or0 = SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed0;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireStall = ~ (SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed1 & SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_or0);
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_backStall = SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V0 = SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg0);
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V1 = SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid = redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out;

    // redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo(STALLFIFO,283)
    assign redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in = SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V0;
    assign redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in = SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_backStall;
    assign redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_data_in = bubble_select_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_b;
    assign redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in_bitsignaltemp = redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in[0];
    assign redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in_bitsignaltemp = redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in[0];
    assign redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out[0] = redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out_bitsignaltemp;
    assign redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out[0] = redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo (
        .valid_in(redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_b),
        .valid_out(redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo(BITJOIN,385)
    assign bubble_join_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_q = redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_data_out;

    // bubble_select_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo(BITSELECT,386)
    assign bubble_select_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_b = $unsigned(bubble_join_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_q[31:0]);

    // i_inc75_atax14(LOGICAL,60)@41
    assign i_inc75_atax14_q = bubble_select_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_b | c_i32_159_q;

    // i_inc75_atax14_vt_select_31(BITSELECT,63)@41
    assign i_inc75_atax14_vt_select_31_b = i_inc75_atax14_q[31:1];

    // i_inc75_atax14_vt_join(BITJOIN,62)@41
    assign i_inc75_atax14_vt_join_q = {i_inc75_atax14_vt_select_31_b, VCC_q};

    // i_idxprom70_1_atax28_sel_x(BITSELECT,206)@41
    assign i_idxprom70_1_atax28_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_atax14_vt_join_q[31:0]};

    // i_idxprom70_1_atax28_vt_select_31(BITSELECT,34)@41
    assign i_idxprom70_1_atax28_vt_select_31_b = i_idxprom70_1_atax28_sel_x_b[31:1];

    // i_idxprom70_1_atax28_vt_join(BITJOIN,33)@41
    assign i_idxprom70_1_atax28_vt_join_q = {c_i32_056_q, i_idxprom70_1_atax28_vt_select_31_b, VCC_q};

    // i_arrayidx73_1_atax0_narrow_x(BITSELECT,179)@41
    assign i_arrayidx73_1_atax0_narrow_x_b = i_idxprom70_1_atax28_vt_join_q[61:0];

    // i_arrayidx73_1_atax0_shift_join_x(BITJOIN,180)@41
    assign i_arrayidx73_1_atax0_shift_join_x_q = {i_arrayidx73_1_atax0_narrow_x_b, i_arrayidx7124_atax26_vt_const_1_q};

    // SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1(STALLENABLE,648)
    // Valid signal propagation
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_stall_out | ~ (SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x(BLACKBOX,211)@9
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@10
    // out out_dest_data_out_0_0_0_tpl@10
    // out out_dest_data_out_0_0_1_tpl@10
    // out out_dest_data_out_0_0_2_tpl@10
    atax_i_llvm_fpga_ffwd_dest_s_struct_z4pa0000unnamed_atax20_atax0 thei_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x (
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_backStall),
        .in_valid_in(SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_V0),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_valid_out),
        .out_dest_data_out_0_0_0_tpl(),
        .out_dest_data_out_0_0_1_tpl(),
        .out_dest_data_out_0_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x(BITJOIN,343)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x(BITSELECT,344)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_q[63:0]);

    // redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo(STALLFIFO,277)
    assign redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V2;
    assign redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_in = SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_backStall;
    assign redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_data_in = i_arrayidx7124_atax0_shift_join_x_q;
    assign redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_in_bitsignaltemp = redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_in[0];
    assign redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_in_bitsignaltemp = redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_in[0];
    assign redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_out[0] = redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_out_bitsignaltemp;
    assign redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_out[0] = redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo (
        .valid_in(redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx7124_atax0_shift_join_x_q),
        .valid_out(redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo(STALLENABLE,546)
    // Valid signal propagation
    assign SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_V0 = SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_backStall = redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_out | ~ (SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_and0 = redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_valid_out;
    assign SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_wireValid = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V2 & SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_and0;

    // SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo(STALLENABLE,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg0 <= '0;
            SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg1 <= '0;
            SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg0 <= SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg0;
            // Successor 1
            SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg1 <= SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg1;
            // Successor 2
            SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg2 <= SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed0 = (~ (SE_i_arrayidx73_1_atax0_add_x_backStall) & SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid) | SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg0;
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed1 = (~ (SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_backStall) & SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid) | SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg1;
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed2 = (~ (SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_backStall) & SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid) | SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg2;
    // Consuming
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_StallValid = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_backStall & SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid;
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg0 = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_StallValid & SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed0;
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg1 = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_StallValid & SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed1;
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg2 = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_StallValid & SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_or0 = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed0;
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_or1 = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed1 & SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_or0;
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireStall = ~ (SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed2 & SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_or1);
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_backStall = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V0 = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid & ~ (SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg0);
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V1 = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid & ~ (SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg1);
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V2 = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid & ~ (SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid = redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x(STALLENABLE,521)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed0 = (~ (SE_i_idxprom70_3_atax30_vt_join_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed1 = (~ (redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_StallValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_backStall & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_or0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_backStall = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid = i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_valid_out;

    // redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo(STALLFIFO,274)
    assign redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V1;
    assign redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_backStall;
    assign redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_data_in = bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b;
    assign redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in_bitsignaltemp = redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in[0];
    assign redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in_bitsignaltemp = redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in[0];
    assign redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out[0] = redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out_bitsignaltemp;
    assign redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out[0] = redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo (
        .valid_in(redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b),
        .valid_out(redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo(BITJOIN,358)
    assign bubble_join_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_q = redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_data_out;

    // bubble_select_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo(BITSELECT,359)
    assign bubble_select_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_b = $unsigned(bubble_join_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_q[63:0]);

    // i_arrayidx73_1_atax0_add_x(ADD,177)@41
    assign i_arrayidx73_1_atax0_add_x_a = {1'b0, bubble_select_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_b};
    assign i_arrayidx73_1_atax0_add_x_b = {1'b0, i_arrayidx73_1_atax0_shift_join_x_q};
    assign i_arrayidx73_1_atax0_add_x_o = $unsigned(i_arrayidx73_1_atax0_add_x_a) + $unsigned(i_arrayidx73_1_atax0_add_x_b);
    assign i_arrayidx73_1_atax0_add_x_q = i_arrayidx73_1_atax0_add_x_o[64:0];

    // i_arrayidx73_1_atax0_dupName_0_trunc_sel_x(BITSELECT,182)@41
    assign i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_1_atax0_add_x_q[63:0];

    // SE_i_arrayidx73_1_atax0_add_x(STALLENABLE,500)
    // Valid signal propagation
    assign SE_i_arrayidx73_1_atax0_add_x_V0 = SE_i_arrayidx73_1_atax0_add_x_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx73_1_atax0_add_x_backStall = redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out | ~ (SE_i_arrayidx73_1_atax0_add_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx73_1_atax0_add_x_and0 = SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V0;
    assign SE_i_arrayidx73_1_atax0_add_x_wireValid = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V0 & SE_i_arrayidx73_1_atax0_add_x_and0;

    // redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo(STALLFIFO,276)
    assign redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in = SE_i_arrayidx73_1_atax0_add_x_V0;
    assign redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in = SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_backStall;
    assign redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_data_in = i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b;
    assign redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in_bitsignaltemp = redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in[0];
    assign redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in_bitsignaltemp = redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in[0];
    assign redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out[0] = redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out_bitsignaltemp;
    assign redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out[0] = redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo (
        .valid_in(redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b),
        .valid_out(redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo(STALLENABLE,544)
    // Valid signal propagation
    assign SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_V0 = SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_backStall = i_llvm_fpga_mem_memdep_20_atax46_out_o_stall | ~ (SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and0 = redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out;
    assign SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and1 = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_valid_out & SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and0;
    assign SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_V0 & SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and1;
    assign SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and3 = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_V0 & SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and2;
    assign SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_wireValid = SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_V0 & SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_and3;

    // SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo(STALLENABLE,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_fromReg0 <= '0;
            SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_fromReg0 <= SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_toReg0;
            // Successor 1
            SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_fromReg1 <= SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_consumed0 = (~ (SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_backStall) & SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_wireValid) | SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_fromReg0;
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_consumed1 = (~ (redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_out) & SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_wireValid) | SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_fromReg1;
    // Consuming
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_StallValid = SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_backStall & SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_wireValid;
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_toReg0 = SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_StallValid & SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_consumed0;
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_toReg1 = SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_StallValid & SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_or0 = SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_consumed0;
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_wireStall = ~ (SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_consumed1 & SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_or0);
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_backStall = SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_V0 = SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_wireValid & ~ (SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_fromReg0);
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_V1 = SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_wireValid & ~ (SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_wireValid = redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_out;

    // redist21_i_first_cleanup_xor_atax23_q_70_fifo(STALLFIFO,292)
    assign redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_in = SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_V1;
    assign redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_in = SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_backStall;
    assign redist21_i_first_cleanup_xor_atax23_q_70_fifo_data_in = bubble_select_redist20_i_first_cleanup_xor_atax23_q_39_fifo_b;
    assign redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_in_bitsignaltemp = redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_in[0];
    assign redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_in_bitsignaltemp = redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_in[0];
    assign redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_out[0] = redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_out_bitsignaltemp;
    assign redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_out[0] = redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_i_first_cleanup_xor_atax23_q_70_fifo (
        .valid_in(redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist20_i_first_cleanup_xor_atax23_q_39_fifo_b),
        .valid_out(redist21_i_first_cleanup_xor_atax23_q_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_first_cleanup_xor_atax23_q_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo(BITJOIN,355)
    assign bubble_join_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_q = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_data_out;

    // bubble_select_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo(BITSELECT,356)
    assign bubble_select_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_b = $unsigned(bubble_join_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_q[31:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51(STALLENABLE,468)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_wireValid = i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_22_atax47(BITJOIN,300)
    assign bubble_join_i_llvm_fpga_mem_memdep_22_atax47_q = i_llvm_fpga_mem_memdep_22_atax47_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_22_atax47(BITSELECT,301)
    assign bubble_select_i_llvm_fpga_mem_memdep_22_atax47_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_22_atax47_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi23_push24_atax51(BLACKBOX,79)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    atax_i_llvm_fpga_push_i1_memdep_phi23_push24_0 thei_llvm_fpga_push_i1_memdep_phi23_push24_atax51 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_22_atax47_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_feedback_stall_out_24),
        .in_keep_going(bubble_select_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51(STALLENABLE,467)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_backStall = i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_and0 = SE_out_i_llvm_fpga_mem_memdep_22_atax47_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_wireValid = SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_and0;

    // SE_out_i_llvm_fpga_mem_memdep_22_atax47(STALLENABLE,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_22_atax47_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_22_atax47_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_22_atax47_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_22_atax47_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_22_atax47_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_22_atax47_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_22_atax47_wireValid) | SE_out_i_llvm_fpga_mem_memdep_22_atax47_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_backStall) & SE_out_i_llvm_fpga_mem_memdep_22_atax47_wireValid) | SE_out_i_llvm_fpga_mem_memdep_22_atax47_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_StallValid = SE_out_i_llvm_fpga_mem_memdep_22_atax47_backStall & SE_out_i_llvm_fpga_mem_memdep_22_atax47_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_toReg0 = SE_out_i_llvm_fpga_mem_memdep_22_atax47_StallValid & SE_out_i_llvm_fpga_mem_memdep_22_atax47_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_toReg1 = SE_out_i_llvm_fpga_mem_memdep_22_atax47_StallValid & SE_out_i_llvm_fpga_mem_memdep_22_atax47_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_or0 = SE_out_i_llvm_fpga_mem_memdep_22_atax47_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_22_atax47_consumed1 & SE_out_i_llvm_fpga_mem_memdep_22_atax47_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_backStall = SE_out_i_llvm_fpga_mem_memdep_22_atax47_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_V0 = SE_out_i_llvm_fpga_mem_memdep_22_atax47_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_22_atax47_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_V1 = SE_out_i_llvm_fpga_mem_memdep_22_atax47_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_22_atax47_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_22_atax47_wireValid = i_llvm_fpga_mem_memdep_22_atax47_out_o_valid;

    // c_i32_260(CONSTANT,9)
    assign c_i32_260_q = $unsigned(32'b00000000000000000000000000000010);

    // i_inc75_1_atax15(LOGICAL,50)@41
    assign i_inc75_1_atax15_q = bubble_select_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_b | c_i32_260_q;

    // i_inc75_1_atax15_vt_select_0_merged_bit_select(BITSELECT,246)@41
    assign i_inc75_1_atax15_vt_select_0_merged_bit_select_b = i_inc75_1_atax15_q[0:0];
    assign i_inc75_1_atax15_vt_select_0_merged_bit_select_c = i_inc75_1_atax15_q[31:2];

    // i_inc75_1_atax15_vt_join(BITJOIN,52)@41
    assign i_inc75_1_atax15_vt_join_q = {i_inc75_1_atax15_vt_select_0_merged_bit_select_c, VCC_q, i_inc75_1_atax15_vt_select_0_merged_bit_select_b};

    // i_idxprom70_2_atax29_sel_x(BITSELECT,207)@41
    assign i_idxprom70_2_atax29_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_1_atax15_vt_join_q[31:0]};

    // i_idxprom70_2_atax29_vt_select_0_merged_bit_select(BITSELECT,247)@41
    assign i_idxprom70_2_atax29_vt_select_0_merged_bit_select_in = i_idxprom70_2_atax29_sel_x_b[31:0];
    assign i_idxprom70_2_atax29_vt_select_0_merged_bit_select_b = i_idxprom70_2_atax29_vt_select_0_merged_bit_select_in[0:0];
    assign i_idxprom70_2_atax29_vt_select_0_merged_bit_select_c = i_idxprom70_2_atax29_vt_select_0_merged_bit_select_in[31:2];

    // i_idxprom70_2_atax29_vt_join(BITJOIN,38)@41
    assign i_idxprom70_2_atax29_vt_join_q = {c_i32_056_q, i_idxprom70_2_atax29_vt_select_0_merged_bit_select_c, VCC_q, i_idxprom70_2_atax29_vt_select_0_merged_bit_select_b};

    // i_arrayidx73_2_atax0_narrow_x(BITSELECT,185)@41
    assign i_arrayidx73_2_atax0_narrow_x_b = i_idxprom70_2_atax29_vt_join_q[61:0];

    // i_arrayidx73_2_atax0_shift_join_x(BITJOIN,186)@41
    assign i_arrayidx73_2_atax0_shift_join_x_q = {i_arrayidx73_2_atax0_narrow_x_b, i_arrayidx7124_atax26_vt_const_1_q};

    // i_arrayidx73_2_atax0_add_x(ADD,183)@41
    assign i_arrayidx73_2_atax0_add_x_a = {1'b0, bubble_select_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_b};
    assign i_arrayidx73_2_atax0_add_x_b = {1'b0, i_arrayidx73_2_atax0_shift_join_x_q};
    assign i_arrayidx73_2_atax0_add_x_o = $unsigned(i_arrayidx73_2_atax0_add_x_a) + $unsigned(i_arrayidx73_2_atax0_add_x_b);
    assign i_arrayidx73_2_atax0_add_x_q = i_arrayidx73_2_atax0_add_x_o[64:0];

    // i_arrayidx73_2_atax0_dupName_0_trunc_sel_x(BITSELECT,188)@41
    assign i_arrayidx73_2_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_2_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_22_atax47(BLACKBOX,67)@41
    // in in_i_stall@20000000
    // out out_lsu_memdep_22_o_active@20000000
    // out out_memdep_22_atax_avm_address@20000000
    // out out_memdep_22_atax_avm_burstcount@20000000
    // out out_memdep_22_atax_avm_byteenable@20000000
    // out out_memdep_22_atax_avm_enable@20000000
    // out out_memdep_22_atax_avm_read@20000000
    // out out_memdep_22_atax_avm_write@20000000
    // out out_memdep_22_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@72
    // out out_o_writeack@72
    atax_i_llvm_fpga_mem_memdep_22_0 thei_llvm_fpga_mem_memdep_22_atax47 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_2_atax0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_b),
        .in_i_predicate(bubble_select_redist20_i_first_cleanup_xor_atax23_q_39_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_22_atax47_backStall),
        .in_i_valid(SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_V0),
        .in_i_writedata(bubble_select_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_b),
        .in_memdep_22_atax_avm_readdata(in_memdep_22_atax_avm_readdata),
        .in_memdep_22_atax_avm_readdatavalid(in_memdep_22_atax_avm_readdatavalid),
        .in_memdep_22_atax_avm_waitrequest(in_memdep_22_atax_avm_waitrequest),
        .in_memdep_22_atax_avm_writeack(in_memdep_22_atax_avm_writeack),
        .out_lsu_memdep_22_o_active(i_llvm_fpga_mem_memdep_22_atax47_out_lsu_memdep_22_o_active),
        .out_memdep_22_atax_avm_address(i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_address),
        .out_memdep_22_atax_avm_burstcount(i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_burstcount),
        .out_memdep_22_atax_avm_byteenable(i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_byteenable),
        .out_memdep_22_atax_avm_enable(i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_enable),
        .out_memdep_22_atax_avm_read(i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_read),
        .out_memdep_22_atax_avm_write(i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_write),
        .out_memdep_22_atax_avm_writedata(i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_22_atax47_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_22_atax47_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_22_atax47_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo(STALLFIFO,273)
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V3;
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_in = SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_backStall;
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_d;
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_in_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_in[0];
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_in_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_in[0];
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_out[0] = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_out_bitsignaltemp;
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_out[0] = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo (
        .valid_in(redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_d),
        .valid_out(redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo(STALLENABLE,538)
    // Valid signal propagation
    assign SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_V0 = SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_backStall = i_llvm_fpga_mem_memdep_22_atax47_out_o_stall | ~ (SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and0 = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_valid_out;
    assign SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and1 = SE_out_redist12_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V1 & SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and0;
    assign SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and2 = SE_out_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V1 & SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and1;
    assign SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_V0 & SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and2;
    assign SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_wireValid = SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_V0 & SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_and3;

    // SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo(STALLENABLE,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_fromReg0 <= '0;
            SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_fromReg0 <= SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_toReg0;
            // Successor 1
            SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_fromReg1 <= SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_consumed0 = (~ (SE_out_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_backStall) & SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_wireValid) | SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_fromReg0;
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_consumed1 = (~ (redist21_i_first_cleanup_xor_atax23_q_70_fifo_stall_out) & SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_wireValid) | SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_fromReg1;
    // Consuming
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_StallValid = SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_backStall & SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_wireValid;
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_toReg0 = SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_StallValid & SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_consumed0;
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_toReg1 = SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_StallValid & SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_or0 = SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_consumed0;
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_wireStall = ~ (SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_consumed1 & SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_or0);
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_backStall = SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_V0 = SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_wireValid & ~ (SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_fromReg0);
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_V1 = SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_wireValid & ~ (SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_wireValid = redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_out;

    // redist20_i_first_cleanup_xor_atax23_q_39_fifo(STALLFIFO,291)
    assign redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_in = SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_V1;
    assign redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_in = SE_out_redist20_i_first_cleanup_xor_atax23_q_39_fifo_backStall;
    assign redist20_i_first_cleanup_xor_atax23_q_39_fifo_data_in = bubble_select_redist19_i_first_cleanup_xor_atax23_q_8_fifo_b;
    assign redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_in_bitsignaltemp = redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_in[0];
    assign redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_in_bitsignaltemp = redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_in[0];
    assign redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_out[0] = redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_out_bitsignaltemp;
    assign redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_out[0] = redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist20_i_first_cleanup_xor_atax23_q_39_fifo (
        .valid_in(redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist19_i_first_cleanup_xor_atax23_q_8_fifo_b),
        .valid_out(redist20_i_first_cleanup_xor_atax23_q_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist20_i_first_cleanup_xor_atax23_q_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo(STALLENABLE,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_fromReg0 <= '0;
            SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_fromReg0 <= SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_toReg0;
            // Successor 1
            SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_fromReg1 <= SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_consumed0 = (~ (SE_i_idxprom70_3_atax30_vt_join_backStall) & SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_wireValid) | SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_fromReg0;
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_consumed1 = (~ (redist20_i_first_cleanup_xor_atax23_q_39_fifo_stall_out) & SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_wireValid) | SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_fromReg1;
    // Consuming
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_StallValid = SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_backStall & SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_wireValid;
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_toReg0 = SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_StallValid & SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_consumed0;
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_toReg1 = SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_StallValid & SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_or0 = SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_consumed0;
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_wireStall = ~ (SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_consumed1 & SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_or0);
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_backStall = SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_V0 = SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_wireValid & ~ (SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_fromReg0);
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_V1 = SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_wireValid & ~ (SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_wireValid = redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_out;

    // redist19_i_first_cleanup_xor_atax23_q_8_fifo(STALLFIFO,290)
    assign redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V4;
    assign redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_in = SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_backStall;
    assign redist19_i_first_cleanup_xor_atax23_q_8_fifo_data_in = i_first_cleanup_xor_atax23_q;
    assign redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_in_bitsignaltemp = redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_in[0];
    assign redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_in_bitsignaltemp = redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_in[0];
    assign redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_out[0] = redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_out_bitsignaltemp;
    assign redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_out[0] = redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_i_first_cleanup_xor_atax23_q_8_fifo (
        .valid_in(redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_atax23_q),
        .valid_out(redist19_i_first_cleanup_xor_atax23_q_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_first_cleanup_xor_atax23_q_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist10_i_masked_atax44_q_132_fifo(STALLENABLE,553)
    // Valid signal propagation
    assign SE_in_redist10_i_masked_atax44_q_132_fifo_V0 = SE_in_redist10_i_masked_atax44_q_132_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist10_i_masked_atax44_q_132_fifo_backStall = redist10_i_masked_atax44_q_132_fifo_stall_out | ~ (SE_in_redist10_i_masked_atax44_q_132_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist10_i_masked_atax44_q_132_fifo_wireValid = SE_i_masked_atax44_V0;

    // SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35(STALLENABLE,480)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_wireValid = i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_valid_out;

    // c_i5_164(CONSTANT,15)
    assign c_i5_164_q = $unsigned(5'b11111);

    // bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8(BITJOIN,331)
    assign bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_q = i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8(BITSELECT,332)
    assign bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_b = $unsigned(bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_q[4:0]);

    // i_fpga_indvars_iv_next40_atax22(ADD,29)@2
    assign i_fpga_indvars_iv_next40_atax22_a = {1'b0, bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_b};
    assign i_fpga_indvars_iv_next40_atax22_b = {1'b0, c_i5_164_q};
    assign i_fpga_indvars_iv_next40_atax22_o = $unsigned(i_fpga_indvars_iv_next40_atax22_a) + $unsigned(i_fpga_indvars_iv_next40_atax22_b);
    assign i_fpga_indvars_iv_next40_atax22_q = i_fpga_indvars_iv_next40_atax22_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next40_atax22_sel_x(BITSELECT,154)@2
    assign bgTrunc_i_fpga_indvars_iv_next40_atax22_sel_x_b = i_fpga_indvars_iv_next40_atax22_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35(BLACKBOX,85)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_0 thei_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next40_atax22_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35(STALLENABLE,479)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_V0 = SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_backStall = i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_and0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V3;
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V4 & SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_and0;

    // SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8(STALLENABLE,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg0 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg1 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg2 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg3 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed2 = (~ (SE_i_masked_atax44_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed3 = (~ (SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_StallValid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_backStall & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_toReg3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_or0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_or1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed1 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_or0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_or2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed2 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_or1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireStall = ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_consumed3 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_or2);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_backStall = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_wireValid = i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_valid_out;

    // SE_i_masked_atax44(STALLENABLE,481)
    // Valid signal propagation
    assign SE_i_masked_atax44_V0 = SE_i_masked_atax44_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_atax44_s_tv_0 = SE_in_redist10_i_masked_atax44_q_132_fifo_backStall & SE_i_masked_atax44_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_atax44_backEN = ~ (SE_i_masked_atax44_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_atax44_and0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V2 & SE_i_masked_atax44_backEN;
    assign SE_i_masked_atax44_v_s_0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V2 & SE_i_masked_atax44_and0;
    // Backward Stall generation
    assign SE_i_masked_atax44_backStall = ~ (SE_i_masked_atax44_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_atax44_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_atax44_backEN == 1'b0)
            begin
                SE_i_masked_atax44_R_v_0 <= SE_i_masked_atax44_R_v_0 & SE_i_masked_atax44_s_tv_0;
            end
            else
            begin
                SE_i_masked_atax44_R_v_0 <= SE_i_masked_atax44_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_notexitcond_atax34(STALLENABLE,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_atax34_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_consumed1 = (~ (SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_wireValid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_and0;

    // SE_out_i_llvm_fpga_push_i4_cleanups_push27_atax53(STALLENABLE,476)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push27_atax53_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push27_atax53_wireValid = i_llvm_fpga_push_i4_cleanups_push27_atax53_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_atax0_shift_x(BITSELECT,233)@2
    assign leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_atax0_shift_x_in = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_atax0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid235_i_cleanups_shl_atax0_shift_x(BITJOIN,234)@2
    assign leftShiftStage0Idx1_uid235_i_cleanups_shl_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x(MUX,236)@2
    assign leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_b or leftShiftStage0Idx1_uid235_i_cleanups_shl_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_b;
            1'b1 : leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_q = leftShiftStage0Idx1_uid235_i_cleanups_shl_atax0_shift_x_q;
            default : leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_atax11_vt_select_3(BITSELECT,25)@2
    assign i_cleanups_shl_atax11_vt_select_3_b = leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_q[3:1];

    // i_cleanups_shl_atax11_vt_join(BITJOIN,24)@2
    assign i_cleanups_shl_atax11_vt_join_q = {i_cleanups_shl_atax11_vt_select_3_b, GND_q};

    // i_exitcond41_atax20_cmp_nsign(LOGICAL,229)@2
    assign i_exitcond41_atax20_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_b[4:4]));

    // i_notcmp_atax33(LOGICAL,94)@2
    assign i_notcmp_atax33_q = i_exitcond41_atax20_cmp_nsign_q ^ VCC_q;

    // i_or_atax43(LOGICAL,95)@2
    assign i_or_atax43_q = i_notcmp_atax33_q | i_first_cleanup_xor_atax23_q;

    // i_next_cleanups_atax49(MUX,90)@2
    assign i_next_cleanups_atax49_s = i_or_atax43_q;
    always @(i_next_cleanups_atax49_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_b or i_cleanups_shl_atax11_vt_join_q)
    begin
        unique case (i_next_cleanups_atax49_s)
            1'b0 : i_next_cleanups_atax49_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_b;
            1'b1 : i_next_cleanups_atax49_q = i_cleanups_shl_atax11_vt_join_q;
            default : i_next_cleanups_atax49_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push27_atax53(BLACKBOX,83)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i4_cleanups_push27_0 thei_llvm_fpga_push_i4_cleanups_push27_atax53 (
        .in_data_in(i_next_cleanups_atax49_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_feedback_stall_out_27),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push27_atax53_backStall),
        .in_valid_in(SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i4_cleanups_push27_atax53_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i4_cleanups_push27_atax53_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push27_atax53_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push27_atax53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x(STALLENABLE,527)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_V0 = SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_backStall = i_llvm_fpga_push_i4_cleanups_push27_atax53_out_stall_out | ~ (SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_V1;
    assign SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_and1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V0 & SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_and0;
    assign SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V3 & SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_and1;

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1(STALLENABLE,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg4 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed0 = (~ (SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed2 = (~ (SE_i_masked_atax44_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed3 = (~ (SE_i_arrayidx7124_atax26_vt_select_63_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed4 = (~ (redist19_i_first_cleanup_xor_atax23_q_8_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_toReg4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_consumed4 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_or3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_wireValid = i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_i_334_push22_atax31(STALLENABLE,474)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_334_push22_atax31_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_334_push22_atax31_wireValid = i_llvm_fpga_push_i32_i_334_push22_atax31_out_valid_out;

    // c_i32_462(CONSTANT,11)
    assign c_i32_462_q = $unsigned(32'b00000000000000000000000000000100);

    // i_inc75_3_atax17(ADD,59)@2
    assign i_inc75_3_atax17_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b};
    assign i_inc75_3_atax17_b = {1'b0, c_i32_462_q};
    assign i_inc75_3_atax17_o = $unsigned(i_inc75_3_atax17_a) + $unsigned(i_inc75_3_atax17_b);
    assign i_inc75_3_atax17_q = i_inc75_3_atax17_o[32:0];

    // bgTrunc_i_inc75_3_atax17_sel_x(BITSELECT,155)@2
    assign bgTrunc_i_inc75_3_atax17_sel_x_b = i_inc75_3_atax17_q[31:0];

    // i_llvm_fpga_push_i32_i_334_push22_atax31(BLACKBOX,82)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i32_i_334_push22_0 thei_llvm_fpga_push_i32_i_334_push22_atax31 (
        .in_data_in(bgTrunc_i_inc75_3_atax17_sel_x_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_feedback_stall_out_22),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_334_push22_atax31_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_i_334_push22_atax31_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_i_334_push22_atax31_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i32_i_334_push22_atax31_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_334_push22_atax31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31(STALLENABLE,473)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_V0 = SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_backStall = i_llvm_fpga_push_i32_i_334_push22_atax31_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_and0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V1;
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V2 & SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_and0;

    // SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4(STALLENABLE,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg3 <= SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed0 = (~ (redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_backStall) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed2 = (~ (redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed3 = (~ (SE_i_arrayidx7124_atax26_vt_select_63_backStall) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_StallValid = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_backStall & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_StallValid & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_StallValid & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg2 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_StallValid & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed2;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_toReg3 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_StallValid & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_or0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_or1 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_or0;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_or2 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed2 & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_or1;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed3 & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_or2);
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_backStall = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V1 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V2 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V3 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid = i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_valid_out;

    // SE_i_arrayidx7124_atax26_vt_select_63(STALLENABLE,418)
    // Valid signal propagation
    assign SE_i_arrayidx7124_atax26_vt_select_63_V0 = SE_i_arrayidx7124_atax26_vt_select_63_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx7124_atax26_vt_select_63_backStall = i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_o_stall | ~ (SE_i_arrayidx7124_atax26_vt_select_63_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx7124_atax26_vt_select_63_and0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V3;
    assign SE_i_arrayidx7124_atax26_vt_select_63_wireValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_V3 & SE_i_arrayidx7124_atax26_vt_select_63_and0;

    // SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x(STALLENABLE,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed0 = (~ (SE_i_idxprom70_3_atax30_vt_join_backStall) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed1 = (~ (redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed2 = (~ (redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed3 = (~ (redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl_31_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_wireValid = i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x(BLACKBOX,216)@2
    // in in_i_stall@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write@20000000
    // out out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_c0_exit228_0_tpl@10
    // out out_c0_exit228_1_tpl@10
    // out out_c0_exit228_2_tpl@10
    // out out_c0_exit228_3_tpl@10
    // out out_c0_exit228_4_tpl@10
    atax_i_sfc_s_c0_in_for_body69_s_c0_enter22113_atax38 thei_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_backStall),
        .in_i_valid(SE_i_arrayidx7124_atax26_vt_select_63_V0),
        .in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writeack),
        .in_c0_eni2220_0_tpl(GND_q),
        .in_c0_eni2220_1_tpl(i_arrayidx7124_atax26_vt_join_q),
        .in_c0_eni2220_2_tpl(i_first_cleanup_xor_atax23_q),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_o_valid),
        .out_c0_exit228_0_tpl(),
        .out_c0_exit228_1_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl),
        .out_c0_exit228_2_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl),
        .out_c0_exit228_3_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl),
        .out_c0_exit228_4_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x(BITJOIN,346)
    assign bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_q = {i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_4_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_3_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x(BITSELECT,347)
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_q[127:96]);

    // SE_i_idxprom70_3_atax30_vt_join(STALLENABLE,426)
    // Valid signal propagation
    assign SE_i_idxprom70_3_atax30_vt_join_V0 = SE_i_idxprom70_3_atax30_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_idxprom70_3_atax30_vt_join_backStall = i_llvm_fpga_mem_memdep_24_atax48_out_o_stall | ~ (SE_i_idxprom70_3_atax30_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_idxprom70_3_atax30_vt_join_and0 = SE_out_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V1;
    assign SE_i_idxprom70_3_atax30_vt_join_and1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V0 & SE_i_idxprom70_3_atax30_vt_join_and0;
    assign SE_i_idxprom70_3_atax30_vt_join_and2 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V0 & SE_i_idxprom70_3_atax30_vt_join_and1;
    assign SE_i_idxprom70_3_atax30_vt_join_wireValid = SE_out_redist19_i_first_cleanup_xor_atax23_q_8_fifo_V0 & SE_i_idxprom70_3_atax30_vt_join_and2;

    // bubble_join_redist19_i_first_cleanup_xor_atax23_q_8_fifo(BITJOIN,406)
    assign bubble_join_redist19_i_first_cleanup_xor_atax23_q_8_fifo_q = redist19_i_first_cleanup_xor_atax23_q_8_fifo_data_out;

    // bubble_select_redist19_i_first_cleanup_xor_atax23_q_8_fifo(BITSELECT,407)
    assign bubble_select_redist19_i_first_cleanup_xor_atax23_q_8_fifo_b = $unsigned(bubble_join_redist19_i_first_cleanup_xor_atax23_q_8_fifo_q[0:0]);

    // c_i32_361(CONSTANT,10)
    assign c_i32_361_q = $unsigned(32'b00000000000000000000000000000011);

    // i_inc75_2_atax16(LOGICAL,55)@10
    assign i_inc75_2_atax16_q = bubble_select_redist11_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_b | c_i32_361_q;

    // i_inc75_2_atax16_vt_select_31(BITSELECT,58)@10
    assign i_inc75_2_atax16_vt_select_31_b = i_inc75_2_atax16_q[31:2];

    // i_inc75_2_atax16_vt_join(BITJOIN,57)@10
    assign i_inc75_2_atax16_vt_join_q = {i_inc75_2_atax16_vt_select_31_b, i_idxprom70_3_atax30_vt_const_1_q};

    // i_idxprom70_3_atax30_sel_x(BITSELECT,208)@10
    assign i_idxprom70_3_atax30_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_2_atax16_vt_join_q[31:0]};

    // i_idxprom70_3_atax30_vt_select_31(BITSELECT,45)@10
    assign i_idxprom70_3_atax30_vt_select_31_b = i_idxprom70_3_atax30_sel_x_b[31:2];

    // i_idxprom70_3_atax30_vt_const_1(CONSTANT,42)
    assign i_idxprom70_3_atax30_vt_const_1_q = $unsigned(2'b11);

    // i_idxprom70_3_atax30_vt_join(BITJOIN,44)@10
    assign i_idxprom70_3_atax30_vt_join_q = {c_i32_056_q, i_idxprom70_3_atax30_vt_select_31_b, i_idxprom70_3_atax30_vt_const_1_q};

    // i_arrayidx73_3_atax0_narrow_x(BITSELECT,191)@10
    assign i_arrayidx73_3_atax0_narrow_x_b = i_idxprom70_3_atax30_vt_join_q[61:0];

    // i_arrayidx73_3_atax0_shift_join_x(BITJOIN,192)@10
    assign i_arrayidx73_3_atax0_shift_join_x_q = {i_arrayidx73_3_atax0_narrow_x_b, i_arrayidx7124_atax26_vt_const_1_q};

    // i_arrayidx73_3_atax0_add_x(ADD,189)@10
    assign i_arrayidx73_3_atax0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b};
    assign i_arrayidx73_3_atax0_add_x_b = {1'b0, i_arrayidx73_3_atax0_shift_join_x_q};
    assign i_arrayidx73_3_atax0_add_x_o = $unsigned(i_arrayidx73_3_atax0_add_x_a) + $unsigned(i_arrayidx73_3_atax0_add_x_b);
    assign i_arrayidx73_3_atax0_add_x_q = i_arrayidx73_3_atax0_add_x_o[64:0];

    // i_arrayidx73_3_atax0_dupName_0_trunc_sel_x(BITSELECT,194)@10
    assign i_arrayidx73_3_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_3_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_24_atax48(BLACKBOX,68)@10
    // in in_i_stall@20000000
    // out out_lsu_memdep_24_o_active@20000000
    // out out_memdep_24_atax_avm_address@20000000
    // out out_memdep_24_atax_avm_burstcount@20000000
    // out out_memdep_24_atax_avm_byteenable@20000000
    // out out_memdep_24_atax_avm_enable@20000000
    // out out_memdep_24_atax_avm_read@20000000
    // out out_memdep_24_atax_avm_write@20000000
    // out out_memdep_24_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_o_writeack@41
    atax_i_llvm_fpga_mem_memdep_24_0 thei_llvm_fpga_mem_memdep_24_atax48 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_3_atax0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(bubble_select_redist19_i_first_cleanup_xor_atax23_q_8_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_24_atax48_backStall),
        .in_i_valid(SE_i_idxprom70_3_atax30_vt_join_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_e),
        .in_memdep_24_atax_avm_readdata(in_memdep_24_atax_avm_readdata),
        .in_memdep_24_atax_avm_readdatavalid(in_memdep_24_atax_avm_readdatavalid),
        .in_memdep_24_atax_avm_waitrequest(in_memdep_24_atax_avm_waitrequest),
        .in_memdep_24_atax_avm_writeack(in_memdep_24_atax_avm_writeack),
        .out_lsu_memdep_24_o_active(i_llvm_fpga_mem_memdep_24_atax48_out_lsu_memdep_24_o_active),
        .out_memdep_24_atax_avm_address(i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_address),
        .out_memdep_24_atax_avm_burstcount(i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_burstcount),
        .out_memdep_24_atax_avm_byteenable(i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_byteenable),
        .out_memdep_24_atax_avm_enable(i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_enable),
        .out_memdep_24_atax_avm_read(i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_read),
        .out_memdep_24_atax_avm_write(i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_write),
        .out_memdep_24_atax_avm_writedata(i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_24_atax48_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_24_atax48_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_24_atax48_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_24_atax48(BITJOIN,304)
    assign bubble_join_i_llvm_fpga_mem_memdep_24_atax48_q = i_llvm_fpga_mem_memdep_24_atax48_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_24_atax48(BITSELECT,305)
    assign bubble_select_i_llvm_fpga_mem_memdep_24_atax48_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_24_atax48_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi25_push25_atax52(BLACKBOX,80)@41
    // in in_stall_in@20000000
    // out out_data_out@42
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@42
    atax_i_llvm_fpga_push_i1_memdep_phi25_push25_0 thei_llvm_fpga_push_i1_memdep_phi25_push25_atax52 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_24_atax48_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_feedback_stall_out_25),
        .in_keep_going(bubble_select_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_24_atax48(STALLENABLE,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_24_atax48_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_24_atax48_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_24_atax48_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_24_atax48_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_24_atax48_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_24_atax48_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_24_atax48_wireValid) | SE_out_i_llvm_fpga_mem_memdep_24_atax48_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_backStall) & SE_out_i_llvm_fpga_mem_memdep_24_atax48_wireValid) | SE_out_i_llvm_fpga_mem_memdep_24_atax48_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_StallValid = SE_out_i_llvm_fpga_mem_memdep_24_atax48_backStall & SE_out_i_llvm_fpga_mem_memdep_24_atax48_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_toReg0 = SE_out_i_llvm_fpga_mem_memdep_24_atax48_StallValid & SE_out_i_llvm_fpga_mem_memdep_24_atax48_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_toReg1 = SE_out_i_llvm_fpga_mem_memdep_24_atax48_StallValid & SE_out_i_llvm_fpga_mem_memdep_24_atax48_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_or0 = SE_out_i_llvm_fpga_mem_memdep_24_atax48_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_24_atax48_consumed1 & SE_out_i_llvm_fpga_mem_memdep_24_atax48_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_backStall = SE_out_i_llvm_fpga_mem_memdep_24_atax48_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_V0 = SE_out_i_llvm_fpga_mem_memdep_24_atax48_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_24_atax48_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_V1 = SE_out_i_llvm_fpga_mem_memdep_24_atax48_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_24_atax48_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_24_atax48_wireValid = i_llvm_fpga_mem_memdep_24_atax48_out_o_valid;

    // SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52(STALLENABLE,469)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_backStall = i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_and0 = SE_out_i_llvm_fpga_mem_memdep_24_atax48_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_wireValid = SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_and0;

    // SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo(STALLENABLE,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg0 <= '0;
            SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg0 <= SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg0;
            // Successor 1
            SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg1 <= SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_backStall) & SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid) | SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg0;
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed1 = (~ (redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out) & SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid) | SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg1;
    // Consuming
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_StallValid = SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_backStall & SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid;
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg0 = SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_StallValid & SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed0;
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg1 = SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_StallValid & SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_or0 = SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed0;
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireStall = ~ (SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed1 & SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_or0);
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_backStall = SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V0 = SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid & ~ (SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg0);
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V1 = SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid & ~ (SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid = redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out;

    // redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo(STALLFIFO,288)
    assign redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in = SE_out_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V1;
    assign redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in = SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_backStall;
    assign redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_data_in = bubble_select_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_b;
    assign redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in_bitsignaltemp = redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in[0];
    assign redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in_bitsignaltemp = redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in[0];
    assign redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out[0] = redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out_bitsignaltemp;
    assign redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out[0] = redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo (
        .valid_in(redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_b),
        .valid_out(redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo(BITJOIN,400)
    assign bubble_join_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_q = redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_data_out;

    // bubble_select_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo(BITSELECT,401)
    assign bubble_select_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_b = $unsigned(bubble_join_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_q[0:0]);

    // SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo(STALLENABLE,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg0 <= '0;
            SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg0 <= SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg0;
            // Successor 1
            SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg1 <= SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_backStall) & SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid) | SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg0;
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed1 = (~ (redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out) & SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid) | SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg1;
    // Consuming
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_StallValid = SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_backStall & SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid;
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg0 = SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_StallValid & SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed0;
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg1 = SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_StallValid & SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_or0 = SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed0;
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireStall = ~ (SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed1 & SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_or0);
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_backStall = SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V0 = SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid & ~ (SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg0);
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V1 = SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid & ~ (SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid = redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out;

    // redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo(STALLFIFO,289)
    assign redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in = SE_out_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V1;
    assign redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_backStall;
    assign redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_data_in = bubble_select_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_b;
    assign redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in_bitsignaltemp = redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in[0];
    assign redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in_bitsignaltemp = redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in[0];
    assign redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out[0] = redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out_bitsignaltemp;
    assign redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out[0] = redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo (
        .valid_in(redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist17_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_b),
        .valid_out(redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo(STALLENABLE,570)
    // Valid signal propagation
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_V0 = SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_stall_out | ~ (SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_and0 = redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out;
    assign SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_20_atax46_V1 & SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_and0;

    // bubble_join_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo(BITJOIN,352)
    assign bubble_join_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_q = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_data_out;

    // bubble_select_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo(BITSELECT,353)
    assign bubble_select_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_b = $unsigned(bubble_join_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_q[31:0]);

    // bubble_join_redist21_i_first_cleanup_xor_atax23_q_70_fifo(BITJOIN,412)
    assign bubble_join_redist21_i_first_cleanup_xor_atax23_q_70_fifo_q = redist21_i_first_cleanup_xor_atax23_q_70_fifo_data_out;

    // bubble_select_redist21_i_first_cleanup_xor_atax23_q_70_fifo(BITSELECT,413)
    assign bubble_select_redist21_i_first_cleanup_xor_atax23_q_70_fifo_b = $unsigned(bubble_join_redist21_i_first_cleanup_xor_atax23_q_70_fifo_q[0:0]);

    // bubble_join_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo(BITJOIN,388)
    assign bubble_join_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_q = redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_data_out;

    // bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo(BITSELECT,389)
    assign bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_b = $unsigned(bubble_join_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6(BITJOIN,315)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_q = i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6(BITSELECT,316)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_q[0:0]);

    // i_memdep_phi25_or26_atax19(LOGICAL,88)@72
    assign i_memdep_phi25_or26_atax19_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_b | bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_b;

    // bubble_join_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo(BITJOIN,364)
    assign bubble_join_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_q = redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_data_out;

    // bubble_select_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo(BITSELECT,365)
    assign bubble_select_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_b = $unsigned(bubble_join_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_20_atax46(BLACKBOX,66)@72
    // in in_i_stall@20000000
    // out out_lsu_memdep_20_o_active@20000000
    // out out_memdep_20_atax_avm_address@20000000
    // out out_memdep_20_atax_avm_burstcount@20000000
    // out out_memdep_20_atax_avm_byteenable@20000000
    // out out_memdep_20_atax_avm_enable@20000000
    // out out_memdep_20_atax_avm_read@20000000
    // out out_memdep_20_atax_avm_write@20000000
    // out out_memdep_20_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@103
    // out out_o_writeack@103
    atax_i_llvm_fpga_mem_memdep_20_0 thei_llvm_fpga_mem_memdep_20_atax46 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_b),
        .in_i_dependence(i_memdep_phi25_or26_atax19_q),
        .in_i_predicate(bubble_select_redist21_i_first_cleanup_xor_atax23_q_70_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_20_atax46_backStall),
        .in_i_valid(SE_out_redist5_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_V0),
        .in_i_writedata(bubble_select_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_2_tpl_62_fifo_b),
        .in_memdep_20_atax_avm_readdata(in_memdep_20_atax_avm_readdata),
        .in_memdep_20_atax_avm_readdatavalid(in_memdep_20_atax_avm_readdatavalid),
        .in_memdep_20_atax_avm_waitrequest(in_memdep_20_atax_avm_waitrequest),
        .in_memdep_20_atax_avm_writeack(in_memdep_20_atax_avm_writeack),
        .out_lsu_memdep_20_o_active(i_llvm_fpga_mem_memdep_20_atax46_out_lsu_memdep_20_o_active),
        .out_memdep_20_atax_avm_address(i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_address),
        .out_memdep_20_atax_avm_burstcount(i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_burstcount),
        .out_memdep_20_atax_avm_byteenable(i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_byteenable),
        .out_memdep_20_atax_avm_enable(i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_enable),
        .out_memdep_20_atax_avm_read(i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_read),
        .out_memdep_20_atax_avm_write(i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_write),
        .out_memdep_20_atax_avm_writedata(i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_20_atax46_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_20_atax46_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_20_atax46_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_20_atax46(STALLENABLE,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_20_atax46_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_20_atax46_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_20_atax46_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_20_atax46_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_20_atax46_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_20_atax46_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_20_atax46_wireValid) | SE_out_i_llvm_fpga_mem_memdep_20_atax46_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_consumed1 = (~ (SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_20_atax46_wireValid) | SE_out_i_llvm_fpga_mem_memdep_20_atax46_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_StallValid = SE_out_i_llvm_fpga_mem_memdep_20_atax46_backStall & SE_out_i_llvm_fpga_mem_memdep_20_atax46_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_toReg0 = SE_out_i_llvm_fpga_mem_memdep_20_atax46_StallValid & SE_out_i_llvm_fpga_mem_memdep_20_atax46_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_toReg1 = SE_out_i_llvm_fpga_mem_memdep_20_atax46_StallValid & SE_out_i_llvm_fpga_mem_memdep_20_atax46_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_or0 = SE_out_i_llvm_fpga_mem_memdep_20_atax46_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_20_atax46_consumed1 & SE_out_i_llvm_fpga_mem_memdep_20_atax46_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_backStall = SE_out_i_llvm_fpga_mem_memdep_20_atax46_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_V0 = SE_out_i_llvm_fpga_mem_memdep_20_atax46_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_20_atax46_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_V1 = SE_out_i_llvm_fpga_mem_memdep_20_atax46_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_20_atax46_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax46_wireValid = i_llvm_fpga_mem_memdep_20_atax46_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg(STALLFIFO,749)
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_20_atax46_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_atax44(LOGICAL,86)@2 + 1
    assign i_masked_atax44_qi = i_notcmp_atax33_q & i_first_cleanup_atax10_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_atax44_delay ( .xin(i_masked_atax44_qi), .xout(i_masked_atax44_q), .ena(SE_i_masked_atax44_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist10_i_masked_atax44_q_132_fifo(STALLFIFO,281)
    assign redist10_i_masked_atax44_q_132_fifo_valid_in = SE_in_redist10_i_masked_atax44_q_132_fifo_V0;
    assign redist10_i_masked_atax44_q_132_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_backStall;
    assign redist10_i_masked_atax44_q_132_fifo_data_in = i_masked_atax44_q;
    assign redist10_i_masked_atax44_q_132_fifo_valid_in_bitsignaltemp = redist10_i_masked_atax44_q_132_fifo_valid_in[0];
    assign redist10_i_masked_atax44_q_132_fifo_stall_in_bitsignaltemp = redist10_i_masked_atax44_q_132_fifo_stall_in[0];
    assign redist10_i_masked_atax44_q_132_fifo_valid_out[0] = redist10_i_masked_atax44_q_132_fifo_valid_out_bitsignaltemp;
    assign redist10_i_masked_atax44_q_132_fifo_stall_out[0] = redist10_i_masked_atax44_q_132_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(132),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist10_i_masked_atax44_q_132_fifo (
        .valid_in(redist10_i_masked_atax44_q_132_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_i_masked_atax44_q_132_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_atax44_q),
        .valid_out(redist10_i_masked_atax44_q_132_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_i_masked_atax44_q_132_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_i_masked_atax44_q_132_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg(STALLFIFO,750)
    assign bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_22_atax47_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg(STALLFIFO,751)
    assign bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_24_atax48_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg(STALLFIFO,752)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(133),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i4_initerations_push26_atax24(STALLENABLE,478)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push26_atax24_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push26_atax24_wireValid = i_llvm_fpga_push_i4_initerations_push26_atax24_out_valid_out;

    // rightShiftStage0Idx1Rng1_uid241_i_next_initerations_atax0_shift_x(BITSELECT,240)@2
    assign rightShiftStage0Idx1Rng1_uid241_i_next_initerations_atax0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_atax3_b[3:1];

    // rightShiftStage0Idx1_uid243_i_next_initerations_atax0_shift_x(BITJOIN,242)@2
    assign rightShiftStage0Idx1_uid243_i_next_initerations_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid241_i_next_initerations_atax0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop26_atax3(BITJOIN,327)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop26_atax3_q = i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_atax3(BITSELECT,328)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_atax3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop26_atax3_q[3:0]);

    // rightShiftStage0_uid245_i_next_initerations_atax0_shift_x(MUX,244)@2
    assign rightShiftStage0_uid245_i_next_initerations_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid245_i_next_initerations_atax0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_atax3_b or rightShiftStage0Idx1_uid243_i_next_initerations_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid245_i_next_initerations_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid245_i_next_initerations_atax0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_atax3_b;
            1'b1 : rightShiftStage0_uid245_i_next_initerations_atax0_shift_x_q = rightShiftStage0Idx1_uid243_i_next_initerations_atax0_shift_x_q;
            default : rightShiftStage0_uid245_i_next_initerations_atax0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_atax12_vt_select_2(BITSELECT,93)@2
    assign i_next_initerations_atax12_vt_select_2_b = rightShiftStage0_uid245_i_next_initerations_atax0_shift_x_q[2:0];

    // i_next_initerations_atax12_vt_join(BITJOIN,92)@2
    assign i_next_initerations_atax12_vt_join_q = {GND_q, i_next_initerations_atax12_vt_select_2_b};

    // i_llvm_fpga_push_i4_initerations_push26_atax24(BLACKBOX,84)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i4_initerations_push26_0 thei_llvm_fpga_push_i4_initerations_push26_atax24 (
        .in_data_in(i_next_initerations_atax12_vt_join_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_feedback_stall_out_26),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push26_atax24_backStall),
        .in_valid_in(SE_i_next_initerations_atax12_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i4_initerations_push26_atax24_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i4_initerations_push26_atax24_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push26_atax24_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push26_atax24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_next_initerations_atax12_vt_join(STALLENABLE,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_atax12_vt_join_fromReg0 <= '0;
            SE_i_next_initerations_atax12_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_atax12_vt_join_fromReg0 <= SE_i_next_initerations_atax12_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations_atax12_vt_join_fromReg1 <= SE_i_next_initerations_atax12_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_atax12_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_atax36_out_stall_out) & SE_i_next_initerations_atax12_vt_join_wireValid) | SE_i_next_initerations_atax12_vt_join_fromReg0;
    assign SE_i_next_initerations_atax12_vt_join_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push26_atax24_out_stall_out) & SE_i_next_initerations_atax12_vt_join_wireValid) | SE_i_next_initerations_atax12_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations_atax12_vt_join_StallValid = SE_i_next_initerations_atax12_vt_join_backStall & SE_i_next_initerations_atax12_vt_join_wireValid;
    assign SE_i_next_initerations_atax12_vt_join_toReg0 = SE_i_next_initerations_atax12_vt_join_StallValid & SE_i_next_initerations_atax12_vt_join_consumed0;
    assign SE_i_next_initerations_atax12_vt_join_toReg1 = SE_i_next_initerations_atax12_vt_join_StallValid & SE_i_next_initerations_atax12_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_atax12_vt_join_or0 = SE_i_next_initerations_atax12_vt_join_consumed0;
    assign SE_i_next_initerations_atax12_vt_join_wireStall = ~ (SE_i_next_initerations_atax12_vt_join_consumed1 & SE_i_next_initerations_atax12_vt_join_or0);
    assign SE_i_next_initerations_atax12_vt_join_backStall = SE_i_next_initerations_atax12_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_atax12_vt_join_V0 = SE_i_next_initerations_atax12_vt_join_wireValid & ~ (SE_i_next_initerations_atax12_vt_join_fromReg0);
    assign SE_i_next_initerations_atax12_vt_join_V1 = SE_i_next_initerations_atax12_vt_join_wireValid & ~ (SE_i_next_initerations_atax12_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_atax12_vt_join_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_V1;
    assign SE_i_next_initerations_atax12_vt_join_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V1 & SE_i_next_initerations_atax12_vt_join_and0;

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3(STALLENABLE,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_consumed1 = (~ (SE_i_next_initerations_atax12_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_wireValid = i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_valid_out;

    // bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg(STALLFIFO,753)
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(133),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg(STALLFIFO,754)
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_V0;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(133),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1(STALLENABLE,636)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and0 = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and1 = bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and2 = bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and3 = bubble_out_i_llvm_fpga_mem_memdep_24_atax48_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and4 = bubble_out_i_llvm_fpga_mem_memdep_22_atax47_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and5 = redist10_i_masked_atax44_q_132_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and6 = bubble_out_i_llvm_fpga_mem_memdep_20_atax46_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_wireValid = i_llvm_fpga_mem_memdep_18_atax45_out_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_and6;

    // bubble_join_redist22_i_first_cleanup_xor_atax23_q_101_fifo(BITJOIN,415)
    assign bubble_join_redist22_i_first_cleanup_xor_atax23_q_101_fifo_q = redist22_i_first_cleanup_xor_atax23_q_101_fifo_data_out;

    // bubble_select_redist22_i_first_cleanup_xor_atax23_q_101_fifo(BITSELECT,416)
    assign bubble_select_redist22_i_first_cleanup_xor_atax23_q_101_fifo_b = $unsigned(bubble_join_redist22_i_first_cleanup_xor_atax23_q_101_fifo_q[0:0]);

    // bubble_join_redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo(BITJOIN,391)
    assign bubble_join_redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_q = redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_data_out;

    // bubble_select_redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo(BITSELECT,392)
    assign bubble_select_redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_b = $unsigned(bubble_join_redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_q[0:0]);

    // bubble_join_redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo(BITJOIN,394)
    assign bubble_join_redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_q = redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_data_out;

    // bubble_select_redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo(BITSELECT,395)
    assign bubble_select_redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_b = $unsigned(bubble_join_redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5(BITJOIN,312)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_q = i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5(BITSELECT,313)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_q[0:0]);

    // i_memdep_phi23_or_atax18(LOGICAL,87)@103
    assign i_memdep_phi23_or_atax18_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_b | bubble_select_redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_b;

    // i_memdep_phi25_or_atax32(LOGICAL,89)@103
    assign i_memdep_phi25_or_atax32_q = i_memdep_phi23_or_atax18_q | bubble_select_redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_b;

    // bubble_join_redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo(BITJOIN,361)
    assign bubble_join_redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_q = redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_data_out;

    // bubble_select_redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo(BITSELECT,362)
    assign bubble_select_redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_b = $unsigned(bubble_join_redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_18_atax45(BLACKBOX,65)@103
    // in in_i_stall@20000000
    // out out_lsu_memdep_18_o_active@20000000
    // out out_memdep_18_atax_avm_address@20000000
    // out out_memdep_18_atax_avm_burstcount@20000000
    // out out_memdep_18_atax_avm_byteenable@20000000
    // out out_memdep_18_atax_avm_enable@20000000
    // out out_memdep_18_atax_avm_read@20000000
    // out out_memdep_18_atax_avm_write@20000000
    // out out_memdep_18_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_o_writeack@134
    atax_i_llvm_fpga_mem_memdep_18_0 thei_llvm_fpga_mem_memdep_18_atax45 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_b),
        .in_i_dependence(i_memdep_phi25_or_atax32_q),
        .in_i_predicate(bubble_select_redist22_i_first_cleanup_xor_atax23_q_101_fifo_b),
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_backStall),
        .in_i_valid(SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_V0),
        .in_i_writedata(bubble_select_redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_b),
        .in_memdep_18_atax_avm_readdata(in_memdep_18_atax_avm_readdata),
        .in_memdep_18_atax_avm_readdatavalid(in_memdep_18_atax_avm_readdatavalid),
        .in_memdep_18_atax_avm_waitrequest(in_memdep_18_atax_avm_waitrequest),
        .in_memdep_18_atax_avm_writeack(in_memdep_18_atax_avm_writeack),
        .out_lsu_memdep_18_o_active(i_llvm_fpga_mem_memdep_18_atax45_out_lsu_memdep_18_o_active),
        .out_memdep_18_atax_avm_address(i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_address),
        .out_memdep_18_atax_avm_burstcount(i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_burstcount),
        .out_memdep_18_atax_avm_byteenable(i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_byteenable),
        .out_memdep_18_atax_avm_enable(i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_enable),
        .out_memdep_18_atax_avm_read(i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_read),
        .out_memdep_18_atax_avm_write(i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_write),
        .out_memdep_18_atax_avm_writedata(i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_18_atax45_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_18_atax45_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo(STALLFIFO,271)
    assign redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_V1;
    assign redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_in = SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_backStall;
    assign redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_b;
    assign redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_in_bitsignaltemp = redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_in[0];
    assign redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_in_bitsignaltemp = redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_in[0];
    assign redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_out[0] = redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_out_bitsignaltemp;
    assign redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_out[0] = redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo (
        .valid_in(redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_b),
        .valid_out(redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo(BITJOIN,367)
    assign bubble_join_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_q = redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_data_out;

    // bubble_select_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo(BITSELECT,368)
    assign bubble_select_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_b = $unsigned(bubble_join_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_q[63:0]);

    // i_arrayidx73_atax0_add_x(ADD,195)@41
    assign i_arrayidx73_atax0_add_x_a = {1'b0, bubble_select_redist3_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_b};
    assign i_arrayidx73_atax0_add_x_b = {1'b0, bubble_select_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_b};
    assign i_arrayidx73_atax0_add_x_o = $unsigned(i_arrayidx73_atax0_add_x_a) + $unsigned(i_arrayidx73_atax0_add_x_b);
    assign i_arrayidx73_atax0_add_x_q = i_arrayidx73_atax0_add_x_o[64:0];

    // i_arrayidx73_atax0_dupName_0_trunc_sel_x(BITSELECT,200)@41
    assign i_arrayidx73_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_atax0_add_x_q[63:0];

    // redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo(STALLFIFO,275)
    assign redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_in = SE_out_redist6_i_arrayidx7124_atax0_shift_join_x_q_39_fifo_V0;
    assign redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_in = SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_backStall;
    assign redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_data_in = i_arrayidx73_atax0_dupName_0_trunc_sel_x_b;
    assign redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_in_bitsignaltemp = redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_in[0];
    assign redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_in_bitsignaltemp = redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_in[0];
    assign redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_out[0] = redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_out_bitsignaltemp;
    assign redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_out[0] = redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo (
        .valid_in(redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx73_atax0_dupName_0_trunc_sel_x_b),
        .valid_out(redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo(STALLFIFO,285)
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_in = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_V1;
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_in = SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_backStall;
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_data_in = bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_b;
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_in_bitsignaltemp = redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_in[0];
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_in_bitsignaltemp = redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_in[0];
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_out[0] = redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_out_bitsignaltemp;
    assign redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_out[0] = redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo (
        .valid_in(redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_31_fifo_b),
        .valid_out(redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo(STALLFIFO,286)
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_V1;
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_in = SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_backStall;
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_b;
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_in[0];
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_in[0];
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_out[0] = redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_out_bitsignaltemp;
    assign redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_out[0] = redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo (
        .valid_in(redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_b),
        .valid_out(redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_first_cleanup_xor_atax23_q_101_fifo(STALLFIFO,293)
    assign redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_in = SE_out_redist21_i_first_cleanup_xor_atax23_q_70_fifo_V1;
    assign redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_in = SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_backStall;
    assign redist22_i_first_cleanup_xor_atax23_q_101_fifo_data_in = bubble_select_redist21_i_first_cleanup_xor_atax23_q_70_fifo_b;
    assign redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_in_bitsignaltemp = redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_in[0];
    assign redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_in_bitsignaltemp = redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_in[0];
    assign redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_out[0] = redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_out_bitsignaltemp;
    assign redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_out[0] = redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist22_i_first_cleanup_xor_atax23_q_101_fifo (
        .valid_in(redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist21_i_first_cleanup_xor_atax23_q_70_fifo_b),
        .valid_out(redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_first_cleanup_xor_atax23_q_101_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_first_cleanup_xor_atax23_q_101_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo(STALLENABLE,578)
    // Valid signal propagation
    assign SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_V0 = SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_backStall = i_llvm_fpga_mem_memdep_18_atax45_out_o_stall | ~ (SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and0 = redist22_i_first_cleanup_xor_atax23_q_101_fifo_valid_out;
    assign SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and1 = redist15_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out_31_fifo_valid_out & SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and0;
    assign SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and2 = redist14_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out_62_fifo_valid_out & SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and1;
    assign SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and3 = redist4_i_arrayidx73_atax0_dupName_0_trunc_sel_x_b_62_fifo_valid_out & SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and2;
    assign SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and4 = redist0_i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_c0_exit228_1_tpl_93_fifo_valid_out & SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and3;
    assign SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_wireValid = i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_valid_out & SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_and4;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi21_push23_atax50(STALLENABLE,466)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_wireValid = i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_valid_out;

    // bubble_join_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo(BITJOIN,403)
    assign bubble_join_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_q = redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_data_out;

    // bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo(BITSELECT,404)
    assign bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_b = $unsigned(bubble_join_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_20_atax46(BITJOIN,296)
    assign bubble_join_i_llvm_fpga_mem_memdep_20_atax46_q = i_llvm_fpga_mem_memdep_20_atax46_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_20_atax46(BITSELECT,297)
    assign bubble_select_i_llvm_fpga_mem_memdep_20_atax46_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_20_atax46_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi21_push23_atax50(BLACKBOX,78)@103
    // in in_stall_in@20000000
    // out out_data_out@104
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@104
    atax_i_llvm_fpga_push_i1_memdep_phi21_push23_0 thei_llvm_fpga_push_i1_memdep_phi21_push23_atax50 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_20_atax46_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_feedback_stall_out_23),
        .in_keep_going(bubble_select_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_backStall),
        .in_valid_in(SE_out_redist18_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(BITJOIN,376)
    assign bubble_join_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_q = redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_out;

    // bubble_select_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(BITSELECT,377)
    assign bubble_select_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b = $unsigned(bubble_join_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5(BLACKBOX,70)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    atax_i_llvm_fpga_pop_i1_memdep_phi21_pop23_0 thei_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b),
        .in_feedback_in_23(i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_memdep_phi21_push23_atax50_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_redist22_i_first_cleanup_xor_atax23_q_101_fifo_backStall),
        .in_valid_in(SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(STALLENABLE,552)
    // Valid signal propagation
    assign SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V0 = SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall = i_llvm_fpga_pop_i1_memdep_phi21_pop23_atax5_out_stall_out | ~ (SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid = redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out;

    // redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(STALLFIFO,280)
    assign redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in = SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V1;
    assign redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in = SE_out_redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall;
    assign redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_in = bubble_select_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_b;
    assign redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in_bitsignaltemp = redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in[0];
    assign redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in_bitsignaltemp = redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in[0];
    assign redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out[0] = redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out_bitsignaltemp;
    assign redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out[0] = redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo (
        .valid_in(redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_b),
        .valid_out(redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6(BLACKBOX,71)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    atax_i_llvm_fpga_pop_i1_memdep_phi23_pop24_0 thei_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_b),
        .in_feedback_in_24(i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_memdep_phi23_push24_atax51_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_backStall),
        .in_valid_in(SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo(STALLENABLE,550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg0 <= '0;
            SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg0 <= SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg0;
            // Successor 1
            SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg1 <= SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi23_pop24_atax6_out_stall_out) & SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid) | SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg0;
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed1 = (~ (redist9_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out) & SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid) | SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg1;
    // Consuming
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_StallValid = SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_backStall & SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid;
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg0 = SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_StallValid & SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed0;
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg1 = SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_StallValid & SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_or0 = SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed0;
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireStall = ~ (SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed1 & SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_or0);
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_backStall = SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V0 = SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid & ~ (SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg0);
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V1 = SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid & ~ (SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid = redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out;

    // redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo(STALLFIFO,279)
    assign redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in = SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V1;
    assign redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in = SE_out_redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_backStall;
    assign redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_data_in = bubble_select_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b;
    assign redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in_bitsignaltemp = redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in[0];
    assign redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in_bitsignaltemp = redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in[0];
    assign redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out[0] = redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out_bitsignaltemp;
    assign redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out[0] = redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo (
        .valid_in(redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b),
        .valid_out(redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7(BLACKBOX,72)@40
    // in in_stall_in@20000000
    // out out_data_out@41
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@41
    atax_i_llvm_fpga_pop_i1_memdep_phi25_pop25_0 thei_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b),
        .in_feedback_in_25(i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_memdep_phi25_push25_atax52_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_backStall),
        .in_valid_in(SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(STALLENABLE,548)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg0 <= '0;
            SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg0 <= SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg0;
            // Successor 1
            SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg1 <= SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi25_pop25_atax7_out_stall_out) & SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid) | SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg0;
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed1 = (~ (redist8_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out) & SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid) | SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_StallValid = SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall & SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid;
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg0 = SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_StallValid & SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed0;
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg1 = SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_StallValid & SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_or0 = SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed0;
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireStall = ~ (SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed1 & SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_or0);
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall = SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V0 = SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid & ~ (SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg0);
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V1 = SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid & ~ (SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid = redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out;

    // redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(STALLFIFO,278)
    assign redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in = SE_out_atax_B12_merge_reg_aunroll_x_V6;
    assign redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in = SE_out_redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall;
    assign redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_in = bubble_select_atax_B12_merge_reg_aunroll_x_b;
    assign redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in_bitsignaltemp = redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in[0];
    assign redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in_bitsignaltemp = redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in[0];
    assign redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out[0] = redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out_bitsignaltemp;
    assign redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out[0] = redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo (
        .valid_in(redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .valid_out(redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_1457(CONSTANT,14)
    assign c_i5_1457_q = $unsigned(5'b01110);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8(BLACKBOX,76)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8 (
        .in_data_in(c_i5_1457_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_21(i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_754(CONSTANT,13)
    assign c_i4_754_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_initerations_pop26_atax3(BLACKBOX,75)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i4_initerations_pop26_0 thei_llvm_fpga_pop_i4_initerations_pop26_atax3 (
        .in_data_in(c_i4_754_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_26(i_llvm_fpga_push_i4_initerations_push26_atax24_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i4_initerations_push26_atax24_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop26_atax3_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_cleanups_pop27_atax1(BLACKBOX,74)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i4_cleanups_pop27_0 thei_llvm_fpga_pop_i4_cleanups_pop27_atax1 (
        .in_data_in(c_i4_754_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_27(i_llvm_fpga_push_i4_cleanups_push27_atax53_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i4_cleanups_push27_atax53_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_atax1_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_334_pop22_atax4(BLACKBOX,73)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i32_i_334_pop22_0 thei_llvm_fpga_pop_i32_i_334_pop22_atax4 (
        .in_data_in(c_i32_056_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_22(i_llvm_fpga_push_i32_i_334_push22_atax31_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_i_334_push22_atax31_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_atax_B12_merge_reg_aunroll_x_1_reg(STALLFIFO,755)
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in = SE_out_atax_B12_merge_reg_aunroll_x_V0;
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_atax_B12_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,335)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,336)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,490)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B12_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B12_merge_reg_aunroll_x(BLACKBOX,153)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    atax_B12_merge_reg theatax_B12_merge_reg_aunroll_x (
        .in_stall_in(SE_out_atax_B12_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(atax_B12_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B12_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_atax_B12_merge_reg_aunroll_x(STALLENABLE,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg0 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg1 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg2 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg3 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg4 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg5 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_atax_B12_merge_reg_aunroll_x_fromReg6 <= SE_out_atax_B12_merge_reg_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg0;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_atax2_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg1;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg2;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i4_cleanups_pop27_atax1_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg3;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i4_initerations_pop26_atax3_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg4;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg5;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed6 = (~ (redist7_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_atax_B12_merge_reg_aunroll_x_StallValid = SE_out_atax_B12_merge_reg_aunroll_x_backStall & SE_out_atax_B12_merge_reg_aunroll_x_wireValid;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg0 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed0;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg1 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed1;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg2 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed2;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg3 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed3;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg4 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed4;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg5 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed5;
    assign SE_out_atax_B12_merge_reg_aunroll_x_toReg6 = SE_out_atax_B12_merge_reg_aunroll_x_StallValid & SE_out_atax_B12_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_atax_B12_merge_reg_aunroll_x_or0 = SE_out_atax_B12_merge_reg_aunroll_x_consumed0;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or1 = SE_out_atax_B12_merge_reg_aunroll_x_consumed1 & SE_out_atax_B12_merge_reg_aunroll_x_or0;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or2 = SE_out_atax_B12_merge_reg_aunroll_x_consumed2 & SE_out_atax_B12_merge_reg_aunroll_x_or1;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or3 = SE_out_atax_B12_merge_reg_aunroll_x_consumed3 & SE_out_atax_B12_merge_reg_aunroll_x_or2;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or4 = SE_out_atax_B12_merge_reg_aunroll_x_consumed4 & SE_out_atax_B12_merge_reg_aunroll_x_or3;
    assign SE_out_atax_B12_merge_reg_aunroll_x_or5 = SE_out_atax_B12_merge_reg_aunroll_x_consumed5 & SE_out_atax_B12_merge_reg_aunroll_x_or4;
    assign SE_out_atax_B12_merge_reg_aunroll_x_wireStall = ~ (SE_out_atax_B12_merge_reg_aunroll_x_consumed6 & SE_out_atax_B12_merge_reg_aunroll_x_or5);
    assign SE_out_atax_B12_merge_reg_aunroll_x_backStall = SE_out_atax_B12_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_atax_B12_merge_reg_aunroll_x_V0 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg0);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V1 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg1);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V2 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg2);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V3 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg3);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V4 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg4);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V5 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg5);
    assign SE_out_atax_B12_merge_reg_aunroll_x_V6 = SE_out_atax_B12_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B12_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_atax_B12_merge_reg_aunroll_x_wireValid = atax_B12_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going_atax2(STALLENABLE,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed1 = (~ (SE_i_next_initerations_atax12_vt_join_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed2 = (~ (SE_in_i_llvm_fpga_push_i32_i_334_push22_atax31_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed3 = (~ (SE_leftShiftStage0_uid237_i_cleanups_shl_atax0_shift_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed4 = (~ (SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv39_push21_atax35_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed5 = (~ (redist16_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg5;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed5;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_or4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid = i_llvm_fpga_pipeline_keep_going_atax2_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_atax34(STALLENABLE,472)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_atax34_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_atax34_wireValid = i_llvm_fpga_push_i1_notexitcond_atax34_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_atax34(BLACKBOX,81)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_atax34 (
        .in_data_in(i_exitcond41_atax20_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_atax2_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_atax10_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_atax34_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_atax34_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_atax34_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_atax34_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_atax34_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_atax34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_atax36(STALLENABLE,464)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_atax36_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_atax36_wireValid = i_llvm_fpga_push_i1_lastiniteration_atax36_out_valid_out;

    // i_last_initeration_atax25_sel_x(BITSELECT,210)@2
    assign i_last_initeration_atax25_sel_x_b = i_next_initerations_atax12_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_atax36(BLACKBOX,77)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_atax36 (
        .in_data_in(i_last_initeration_atax25_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_atax2_out_initeration_stall_out),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_atax36_backStall),
        .in_valid_in(SE_i_next_initerations_atax12_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_atax36_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_atax36_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_atax36_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_atax36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B12_merge_reg_aunroll_x(BITJOIN,339)
    assign bubble_join_atax_B12_merge_reg_aunroll_x_q = atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_atax_B12_merge_reg_aunroll_x(BITSELECT,340)
    assign bubble_select_atax_B12_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B12_merge_reg_aunroll_x_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_atax2(BLACKBOX,69)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_atax2 (
        .in_data_in(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_atax36_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_atax36_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_atax34_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_atax34_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_atax2_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_atax2_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_atax2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_atax2_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_atax2_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_atax2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_atax2_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_atax2_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_atax2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_atax2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_atax2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,146)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_atax2_out_pipeline_valid_out;

    // sync_out(GPOUT,151)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,158)
    assign out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address = i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_address;
    assign out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable = i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_enable;
    assign out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read = i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_read;
    assign out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write = i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_write;
    assign out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata = i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_writedata;
    assign out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable = i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_byteenable;
    assign out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount = i_sfc_s_c0_in_for_body69_ataxs_c0_enter22113_atax38_aunroll_x_out_memcoalesce_load_atax_fpgaunique_1713_atax_avm_burstcount;

    // bubble_join_redist10_i_masked_atax44_q_132_fifo(BITJOIN,379)
    assign bubble_join_redist10_i_masked_atax44_q_132_fifo_q = redist10_i_masked_atax44_q_132_fifo_data_out;

    // bubble_select_redist10_i_masked_atax44_q_132_fifo(BITSELECT,380)
    assign bubble_select_redist10_i_masked_atax44_q_132_fifo_b = $unsigned(bubble_join_redist10_i_masked_atax44_q_132_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,159)@134
    assign out_masked = bubble_select_redist10_i_masked_atax44_q_132_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv39_pop21_atax8_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,161)
    assign out_memdep_18_atax_avm_address = i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_address;
    assign out_memdep_18_atax_avm_enable = i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_enable;
    assign out_memdep_18_atax_avm_read = i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_read;
    assign out_memdep_18_atax_avm_write = i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_write;
    assign out_memdep_18_atax_avm_writedata = i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_writedata;
    assign out_memdep_18_atax_avm_byteenable = i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_byteenable;
    assign out_memdep_18_atax_avm_burstcount = i_llvm_fpga_mem_memdep_18_atax45_out_memdep_18_atax_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,163)
    assign out_lsu_memdep_18_o_active = i_llvm_fpga_mem_memdep_18_atax45_out_lsu_memdep_18_o_active;

    // dupName_3_ext_sig_sync_out_x(GPOUT,165)
    assign out_memdep_20_atax_avm_address = i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_address;
    assign out_memdep_20_atax_avm_enable = i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_enable;
    assign out_memdep_20_atax_avm_read = i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_read;
    assign out_memdep_20_atax_avm_write = i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_write;
    assign out_memdep_20_atax_avm_writedata = i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_writedata;
    assign out_memdep_20_atax_avm_byteenable = i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_byteenable;
    assign out_memdep_20_atax_avm_burstcount = i_llvm_fpga_mem_memdep_20_atax46_out_memdep_20_atax_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,166)
    assign out_lsu_memdep_20_o_active = i_llvm_fpga_mem_memdep_20_atax46_out_lsu_memdep_20_o_active;

    // dupName_5_ext_sig_sync_out_x(GPOUT,167)
    assign out_memdep_22_atax_avm_address = i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_address;
    assign out_memdep_22_atax_avm_enable = i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_enable;
    assign out_memdep_22_atax_avm_read = i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_read;
    assign out_memdep_22_atax_avm_write = i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_write;
    assign out_memdep_22_atax_avm_writedata = i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_writedata;
    assign out_memdep_22_atax_avm_byteenable = i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_byteenable;
    assign out_memdep_22_atax_avm_burstcount = i_llvm_fpga_mem_memdep_22_atax47_out_memdep_22_atax_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,168)
    assign out_lsu_memdep_22_o_active = i_llvm_fpga_mem_memdep_22_atax47_out_lsu_memdep_22_o_active;

    // dupName_7_ext_sig_sync_out_x(GPOUT,169)
    assign out_memdep_24_atax_avm_address = i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_address;
    assign out_memdep_24_atax_avm_enable = i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_enable;
    assign out_memdep_24_atax_avm_read = i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_read;
    assign out_memdep_24_atax_avm_write = i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_write;
    assign out_memdep_24_atax_avm_writedata = i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_writedata;
    assign out_memdep_24_atax_avm_byteenable = i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_byteenable;
    assign out_memdep_24_atax_avm_burstcount = i_llvm_fpga_mem_memdep_24_atax48_out_memdep_24_atax_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,170)
    assign out_lsu_memdep_24_o_active = i_llvm_fpga_mem_memdep_24_atax48_out_lsu_memdep_24_o_active;

endmodule
