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
// SystemVerilog created on Wed Dec 13 00:14:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B12_stall_region (
    input wire [255:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_memdep_20_atax_avm_readdata,
    input wire [0:0] in_memdep_20_atax_avm_writeack,
    input wire [0:0] in_memdep_20_atax_avm_waitrequest,
    input wire [0:0] in_memdep_20_atax_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write,
    output wire [255:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_23_atax_avm_readdata,
    input wire [0:0] in_memdep_23_atax_avm_writeack,
    input wire [0:0] in_memdep_23_atax_avm_waitrequest,
    input wire [0:0] in_memdep_23_atax_avm_readdatavalid,
    output wire [63:0] out_memdep_20_atax_avm_address,
    output wire [0:0] out_memdep_20_atax_avm_enable,
    output wire [0:0] out_memdep_20_atax_avm_read,
    output wire [0:0] out_memdep_20_atax_avm_write,
    output wire [63:0] out_memdep_20_atax_avm_writedata,
    output wire [7:0] out_memdep_20_atax_avm_byteenable,
    output wire [0:0] out_memdep_20_atax_avm_burstcount,
    input wire [63:0] in_memdep_27_atax_avm_readdata,
    input wire [0:0] in_memdep_27_atax_avm_writeack,
    input wire [0:0] in_memdep_27_atax_avm_waitrequest,
    input wire [0:0] in_memdep_27_atax_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_20_o_active,
    input wire [63:0] in_memdep_32_atax_avm_readdata,
    input wire [0:0] in_memdep_32_atax_avm_writeack,
    input wire [0:0] in_memdep_32_atax_avm_waitrequest,
    input wire [0:0] in_memdep_32_atax_avm_readdatavalid,
    output wire [63:0] out_memdep_23_atax_avm_address,
    output wire [0:0] out_memdep_23_atax_avm_enable,
    output wire [0:0] out_memdep_23_atax_avm_read,
    output wire [0:0] out_memdep_23_atax_avm_write,
    output wire [63:0] out_memdep_23_atax_avm_writedata,
    output wire [7:0] out_memdep_23_atax_avm_byteenable,
    output wire [0:0] out_memdep_23_atax_avm_burstcount,
    input wire [63:0] in_memdep_39_atax_avm_readdata,
    input wire [0:0] in_memdep_39_atax_avm_writeack,
    input wire [0:0] in_memdep_39_atax_avm_waitrequest,
    input wire [0:0] in_memdep_39_atax_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_23_o_active,
    input wire [63:0] in_memdep_16_atax_avm_readdata,
    input wire [0:0] in_memdep_16_atax_avm_writeack,
    input wire [0:0] in_memdep_16_atax_avm_waitrequest,
    input wire [0:0] in_memdep_16_atax_avm_readdatavalid,
    output wire [63:0] out_memdep_27_atax_avm_address,
    output wire [0:0] out_memdep_27_atax_avm_enable,
    output wire [0:0] out_memdep_27_atax_avm_read,
    output wire [0:0] out_memdep_27_atax_avm_write,
    output wire [63:0] out_memdep_27_atax_avm_writedata,
    output wire [7:0] out_memdep_27_atax_avm_byteenable,
    output wire [0:0] out_memdep_27_atax_avm_burstcount,
    input wire [63:0] in_memdep_15_atax_avm_readdata,
    input wire [0:0] in_memdep_15_atax_avm_writeack,
    input wire [0:0] in_memdep_15_atax_avm_waitrequest,
    input wire [0:0] in_memdep_15_atax_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_27_o_active,
    input wire [63:0] in_memdep_18_atax_avm_readdata,
    input wire [0:0] in_memdep_18_atax_avm_writeack,
    input wire [0:0] in_memdep_18_atax_avm_waitrequest,
    input wire [0:0] in_memdep_18_atax_avm_readdatavalid,
    output wire [63:0] out_memdep_32_atax_avm_address,
    output wire [0:0] out_memdep_32_atax_avm_enable,
    output wire [0:0] out_memdep_32_atax_avm_read,
    output wire [0:0] out_memdep_32_atax_avm_write,
    output wire [63:0] out_memdep_32_atax_avm_writedata,
    output wire [7:0] out_memdep_32_atax_avm_byteenable,
    output wire [0:0] out_memdep_32_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_32_o_active,
    output wire [63:0] out_memdep_39_atax_avm_address,
    output wire [0:0] out_memdep_39_atax_avm_enable,
    output wire [0:0] out_memdep_39_atax_avm_read,
    output wire [0:0] out_memdep_39_atax_avm_write,
    output wire [63:0] out_memdep_39_atax_avm_writedata,
    output wire [7:0] out_memdep_39_atax_avm_byteenable,
    output wire [0:0] out_memdep_39_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_39_o_active,
    output wire [63:0] out_memdep_16_atax_avm_address,
    output wire [0:0] out_memdep_16_atax_avm_enable,
    output wire [0:0] out_memdep_16_atax_avm_read,
    output wire [0:0] out_memdep_16_atax_avm_write,
    output wire [63:0] out_memdep_16_atax_avm_writedata,
    output wire [7:0] out_memdep_16_atax_avm_byteenable,
    output wire [0:0] out_memdep_16_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_16_o_active,
    output wire [63:0] out_memdep_15_atax_avm_address,
    output wire [0:0] out_memdep_15_atax_avm_enable,
    output wire [0:0] out_memdep_15_atax_avm_read,
    output wire [0:0] out_memdep_15_atax_avm_write,
    output wire [63:0] out_memdep_15_atax_avm_writedata,
    output wire [7:0] out_memdep_15_atax_avm_byteenable,
    output wire [0:0] out_memdep_15_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_15_o_active,
    output wire [63:0] out_memdep_18_atax_avm_address,
    output wire [0:0] out_memdep_18_atax_avm_enable,
    output wire [0:0] out_memdep_18_atax_avm_read,
    output wire [0:0] out_memdep_18_atax_avm_write,
    output wire [63:0] out_memdep_18_atax_avm_writedata,
    output wire [7:0] out_memdep_18_atax_avm_byteenable,
    output wire [0:0] out_memdep_18_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_18_o_active,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_y_out_pmem_q;
    wire [31:0] c_i32_091_q;
    wire [31:0] c_i32_194_q;
    wire [31:0] c_i32_295_q;
    wire [31:0] c_i32_396_q;
    wire [31:0] c_i32_497_q;
    wire [31:0] c_i32_598_q;
    wire [31:0] c_i32_699_q;
    wire [31:0] c_i32_7100_q;
    wire [31:0] c_i32_8101_q;
    wire [3:0] c_i4_1103_q;
    wire [3:0] c_i4_692_q;
    wire [3:0] c_i4_789_q;
    wire [1:0] i_arrayidx7132_atax38_vt_const_1_q;
    wire [63:0] i_arrayidx7132_atax38_vt_join_q;
    wire [61:0] i_arrayidx7132_atax38_vt_select_63_b;
    wire [3:0] i_cleanups_shl_atax15_vt_join_q;
    wire [2:0] i_cleanups_shl_atax15_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_atax35_q;
    wire [4:0] i_fpga_indvars_iv_next59_atax34_a;
    wire [4:0] i_fpga_indvars_iv_next59_atax34_b;
    logic [4:0] i_fpga_indvars_iv_next59_atax34_o;
    wire [4:0] i_fpga_indvars_iv_next59_atax34_q;
    wire [63:0] i_idxprom70_1_atax40_vt_join_q;
    wire [30:0] i_idxprom70_1_atax40_vt_select_31_b;
    wire [63:0] i_idxprom70_2_atax41_vt_join_q;
    wire [1:0] i_idxprom70_3_atax42_vt_const_1_q;
    wire [63:0] i_idxprom70_3_atax42_vt_join_q;
    wire [29:0] i_idxprom70_3_atax42_vt_select_31_b;
    wire [63:0] i_idxprom70_4_atax43_vt_join_q;
    wire [63:0] i_idxprom70_5_atax44_vt_join_q;
    wire [63:0] i_idxprom70_6_atax45_vt_join_q;
    wire [2:0] i_idxprom70_7_atax46_vt_const_2_q;
    wire [63:0] i_idxprom70_7_atax46_vt_join_q;
    wire [28:0] i_idxprom70_7_atax46_vt_select_31_b;
    wire [63:0] i_idxprom70_atax17_vt_join_q;
    wire [31:0] i_idxprom70_atax17_vt_select_31_b;
    wire [31:0] i_inc75_1_atax19_q;
    wire [31:0] i_inc75_1_atax19_vt_join_q;
    wire [31:0] i_inc75_2_atax20_q;
    wire [31:0] i_inc75_2_atax20_vt_join_q;
    wire [29:0] i_inc75_2_atax20_vt_select_31_b;
    wire [31:0] i_inc75_3_atax21_q;
    wire [31:0] i_inc75_3_atax21_vt_join_q;
    wire [31:0] i_inc75_4_atax22_q;
    wire [31:0] i_inc75_4_atax22_vt_join_q;
    wire [31:0] i_inc75_5_atax23_q;
    wire [31:0] i_inc75_5_atax23_vt_join_q;
    wire [31:0] i_inc75_6_atax24_q;
    wire [31:0] i_inc75_6_atax24_vt_join_q;
    wire [28:0] i_inc75_6_atax24_vt_select_31_b;
    wire [32:0] i_inc75_7_atax25_a;
    wire [32:0] i_inc75_7_atax25_b;
    logic [32:0] i_inc75_7_atax25_o;
    wire [32:0] i_inc75_7_atax25_q;
    wire [31:0] i_inc75_atax18_q;
    wire [31:0] i_inc75_atax18_vt_join_q;
    wire [30:0] i_inc75_atax18_vt_select_31_b;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax78_out_lsu_memdep_15_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax78_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_15_atax78_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax77_out_lsu_memdep_16_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax77_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax77_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_16_atax77_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax79_out_lsu_memdep_18_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax79_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax79_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_18_atax79_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax72_out_lsu_memdep_20_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax72_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax72_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_20_atax72_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_23_atax73_out_lsu_memdep_23_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_23_atax73_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_23_atax73_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_23_atax73_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_27_atax74_out_lsu_memdep_27_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_27_atax74_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_27_atax74_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_27_atax74_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_32_atax75_out_lsu_memdep_32_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_32_atax75_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_32_atax75_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_32_atax75_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_39_atax76_out_lsu_memdep_39_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_39_atax76_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_39_atax76_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_39_atax76_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax2_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax56_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax56_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax56_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax56_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax54_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax54_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax54_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax54_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_334_push22_atax47_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_i_334_push22_atax47_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i32_i_334_push22_atax47_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_334_push22_atax47_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push31_atax88_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push31_atax88_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push31_atax88_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push31_atax88_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push30_atax36_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push30_atax36_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push30_atax36_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push30_atax36_out_valid_out;
    wire [0:0] i_masked_atax71_qi;
    reg [0:0] i_masked_atax71_q;
    wire [0:0] i_next_cleanups_atax80_s;
    reg [3:0] i_next_cleanups_atax80_q;
    wire [3:0] i_next_initerations_atax16_vt_join_q;
    wire [2:0] i_next_initerations_atax16_vt_select_2_b;
    wire [0:0] i_notcmp_atax53_q;
    wire [0:0] i_or_atax70_q;
    wire [0:0] i_reduction_atax_0_atax26_q;
    wire [0:0] i_reduction_atax_10_atax67_q;
    wire [0:0] i_reduction_atax_13_atax51_q;
    wire [0:0] i_reduction_atax_14_atax69_q;
    wire [0:0] i_reduction_atax_17_atax52_q;
    wire [0:0] i_reduction_atax_1_atax28_q;
    wire [0:0] i_reduction_atax_2_atax30_q;
    wire [0:0] i_reduction_atax_3_atax48_q;
    wire [0:0] i_reduction_atax_4_atax50_q;
    wire [0:0] i_reduction_atax_5_atax68_q;
    wire [0:0] i_reduction_atax_6_atax27_q;
    wire [0:0] i_reduction_atax_7_atax29_q;
    wire [0:0] i_reduction_atax_8_atax31_q;
    wire [0:0] i_reduction_atax_9_atax49_q;
    wire [0:0] atax_B12_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B12_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next59_atax34_sel_x_b;
    wire [31:0] bgTrunc_i_inc75_7_atax25_sel_x_b;
    wire [64:0] i_arrayidx7132_atax0_add_x_a;
    wire [64:0] i_arrayidx7132_atax0_add_x_b;
    logic [64:0] i_arrayidx7132_atax0_add_x_o;
    wire [64:0] i_arrayidx7132_atax0_add_x_q;
    wire [61:0] i_arrayidx7132_atax0_narrow_x_b;
    wire [63:0] i_arrayidx7132_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx7132_atax0_dupName_0_trunc_sel_x_b;
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
    wire [64:0] i_arrayidx73_4_atax0_add_x_a;
    wire [64:0] i_arrayidx73_4_atax0_add_x_b;
    logic [64:0] i_arrayidx73_4_atax0_add_x_o;
    wire [64:0] i_arrayidx73_4_atax0_add_x_q;
    wire [61:0] i_arrayidx73_4_atax0_narrow_x_b;
    wire [63:0] i_arrayidx73_4_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx73_4_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx73_5_atax0_add_x_a;
    wire [64:0] i_arrayidx73_5_atax0_add_x_b;
    logic [64:0] i_arrayidx73_5_atax0_add_x_o;
    wire [64:0] i_arrayidx73_5_atax0_add_x_q;
    wire [61:0] i_arrayidx73_5_atax0_narrow_x_b;
    wire [63:0] i_arrayidx73_5_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx73_5_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx73_6_atax0_add_x_a;
    wire [64:0] i_arrayidx73_6_atax0_add_x_b;
    logic [64:0] i_arrayidx73_6_atax0_add_x_o;
    wire [64:0] i_arrayidx73_6_atax0_add_x_q;
    wire [61:0] i_arrayidx73_6_atax0_narrow_x_b;
    wire [63:0] i_arrayidx73_6_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx73_6_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx73_7_atax0_add_x_a;
    wire [64:0] i_arrayidx73_7_atax0_add_x_b;
    logic [64:0] i_arrayidx73_7_atax0_add_x_o;
    wire [64:0] i_arrayidx73_7_atax0_add_x_q;
    wire [61:0] i_arrayidx73_7_atax0_narrow_x_b;
    wire [63:0] i_arrayidx73_7_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx73_7_atax0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx73_atax0_add_x_a;
    wire [64:0] i_arrayidx73_atax0_add_x_b;
    logic [64:0] i_arrayidx73_atax0_add_x_o;
    wire [64:0] i_arrayidx73_atax0_add_x_q;
    wire [63:0] i_arrayidx73_atax0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_atax14_sel_x_b;
    wire [63:0] i_idxprom70_1_atax40_sel_x_b;
    wire [63:0] i_idxprom70_2_atax41_sel_x_b;
    wire [63:0] i_idxprom70_3_atax42_sel_x_b;
    wire [63:0] i_idxprom70_4_atax43_sel_x_b;
    wire [63:0] i_idxprom70_5_atax44_sel_x_b;
    wire [63:0] i_idxprom70_6_atax45_sel_x_b;
    wire [63:0] i_idxprom70_7_atax46_sel_x_b;
    wire [63:0] i_idxprom70_atax17_sel_x_b;
    wire [0:0] i_last_initeration_atax37_sel_x_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write;
    wire [255:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_8_tpl;
    wire [0:0] i_exitcond60_atax32_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid373_i_cleanups_shl_atax0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid373_i_cleanups_shl_atax0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid374_i_cleanups_shl_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_s;
    reg [3:0] leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid380_i_next_initerations_atax0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid382_i_next_initerations_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid384_i_next_initerations_atax0_shift_x_s;
    reg [3:0] rightShiftStage0_uid384_i_next_initerations_atax0_shift_x_q;
    wire [0:0] i_inc75_1_atax19_vt_select_0_merged_bit_select_b;
    wire [29:0] i_inc75_1_atax19_vt_select_0_merged_bit_select_c;
    wire [1:0] i_inc75_3_atax21_vt_select_1_merged_bit_select_b;
    wire [28:0] i_inc75_3_atax21_vt_select_1_merged_bit_select_c;
    wire [0:0] i_inc75_4_atax22_vt_select_1_merged_bit_select_b;
    wire [28:0] i_inc75_4_atax22_vt_select_1_merged_bit_select_c;
    wire [0:0] i_inc75_5_atax23_vt_select_0_merged_bit_select_b;
    wire [28:0] i_inc75_5_atax23_vt_select_0_merged_bit_select_c;
    wire [31:0] i_idxprom70_2_atax41_vt_select_0_merged_bit_select_in;
    wire [0:0] i_idxprom70_2_atax41_vt_select_0_merged_bit_select_b;
    wire [29:0] i_idxprom70_2_atax41_vt_select_0_merged_bit_select_c;
    wire [31:0] i_idxprom70_4_atax43_vt_select_1_merged_bit_select_in;
    wire [1:0] i_idxprom70_4_atax43_vt_select_1_merged_bit_select_b;
    wire [28:0] i_idxprom70_4_atax43_vt_select_1_merged_bit_select_c;
    wire [31:0] i_idxprom70_5_atax44_vt_select_1_merged_bit_select_in;
    wire [0:0] i_idxprom70_5_atax44_vt_select_1_merged_bit_select_b;
    wire [28:0] i_idxprom70_5_atax44_vt_select_1_merged_bit_select_c;
    wire [31:0] i_idxprom70_6_atax45_vt_select_0_merged_bit_select_in;
    wire [0:0] i_idxprom70_6_atax45_vt_select_0_merged_bit_select_b;
    wire [28:0] i_idxprom70_6_atax45_vt_select_0_merged_bit_select_c;
    wire [95:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_in;
    wire redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_in;
    wire redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_data_in;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_out;
    wire redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_out;
    wire redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_data_out;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_in;
    wire redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_in;
    wire redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_data_in;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_out;
    wire redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_out;
    wire redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_data_out;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_in;
    wire redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_in;
    wire redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_data_in;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_out;
    wire redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_out;
    wire redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_data_out;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_in;
    wire redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_in;
    wire redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_data_in;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_out;
    wire redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_out;
    wire redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_data_out;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_in;
    wire redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_in;
    wire redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_data_in;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_out;
    wire redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_out;
    wire redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_data_out;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_in;
    wire redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_in;
    wire redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_data_in;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_out;
    wire redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_out;
    wire redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_data_out;
    wire [0:0] redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in;
    wire redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in;
    wire redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_data_in;
    wire [0:0] redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out;
    wire redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out;
    wire redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_data_out;
    wire [0:0] redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_in;
    wire redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_in;
    wire redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_data_in;
    wire [0:0] redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_out;
    wire redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_out;
    wire redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_data_out;
    wire [0:0] redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_in;
    wire redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_in;
    wire redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_data_in;
    wire [0:0] redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_out;
    wire redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_out;
    wire redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_data_out;
    wire [0:0] redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_in;
    wire redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_in;
    wire redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_data_in;
    wire [0:0] redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_out;
    wire redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_out;
    wire redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_data_out;
    wire [0:0] redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_in;
    wire redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_in;
    wire redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_data_in;
    wire [0:0] redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_out;
    wire redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_out;
    wire redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_data_out;
    wire [0:0] redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in;
    wire redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in;
    wire redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_data_in;
    wire [0:0] redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out;
    wire redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out;
    wire redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_data_out;
    wire [0:0] redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_in;
    wire redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_in;
    wire redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_data_in;
    wire [0:0] redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_out;
    wire redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_out;
    wire redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_data_out;
    wire [0:0] redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in;
    wire redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in;
    wire redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_in;
    wire [0:0] redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out;
    wire redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out;
    wire redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_out;
    wire [0:0] redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in;
    wire redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in;
    wire redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_data_in;
    wire [0:0] redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out;
    wire redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out;
    wire redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_data_out;
    wire [0:0] redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in;
    wire redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in;
    wire redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_in;
    wire [0:0] redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out;
    wire redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out;
    wire redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_out;
    wire [0:0] redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in;
    wire redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in;
    wire redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_data_in;
    wire [0:0] redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out;
    wire redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out;
    wire redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_data_out;
    wire [0:0] redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_in;
    wire redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_in;
    wire redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_data_in;
    wire [0:0] redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_out;
    wire redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_out;
    wire redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_data_out;
    wire [0:0] redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_in;
    wire redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_in;
    wire redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_data_in;
    wire [0:0] redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_out;
    wire redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_out;
    wire redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_data_out;
    wire [0:0] redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_in;
    wire redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_in;
    wire redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_data_in;
    wire [0:0] redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_out;
    wire redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_out;
    wire redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_data_out;
    wire [0:0] redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_in;
    wire redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_in;
    wire redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist22_i_reduction_atax_8_atax31_q_62_fifo_data_in;
    wire [0:0] redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_out;
    wire redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_out;
    wire redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist22_i_reduction_atax_8_atax31_q_62_fifo_data_out;
    wire [0:0] redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_in;
    wire redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_in;
    wire redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist23_i_reduction_atax_8_atax31_q_124_fifo_data_in;
    wire [0:0] redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_out;
    wire redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_out;
    wire redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist23_i_reduction_atax_8_atax31_q_124_fifo_data_out;
    wire [0:0] redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_in;
    wire redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_in;
    wire redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist24_i_reduction_atax_7_atax29_q_62_fifo_data_in;
    wire [0:0] redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_out;
    wire redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_out;
    wire redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist24_i_reduction_atax_7_atax29_q_62_fifo_data_out;
    wire [0:0] redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_in;
    wire redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_in;
    wire redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist25_i_reduction_atax_4_atax50_q_124_fifo_data_in;
    wire [0:0] redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_out;
    wire redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_out;
    wire redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist25_i_reduction_atax_4_atax50_q_124_fifo_data_out;
    wire [0:0] redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_in;
    wire redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_in;
    wire redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist26_i_reduction_atax_2_atax30_q_62_fifo_data_in;
    wire [0:0] redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_out;
    wire redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_out;
    wire redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist26_i_reduction_atax_2_atax30_q_62_fifo_data_out;
    wire [0:0] redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_in;
    wire redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_in;
    wire redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist27_i_reduction_atax_1_atax28_q_62_fifo_data_in;
    wire [0:0] redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_out;
    wire redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_out;
    wire redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist27_i_reduction_atax_1_atax28_q_62_fifo_data_out;
    wire [0:0] redist28_i_masked_atax71_q_256_fifo_valid_in;
    wire redist28_i_masked_atax71_q_256_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist28_i_masked_atax71_q_256_fifo_stall_in;
    wire redist28_i_masked_atax71_q_256_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist28_i_masked_atax71_q_256_fifo_data_in;
    wire [0:0] redist28_i_masked_atax71_q_256_fifo_valid_out;
    wire redist28_i_masked_atax71_q_256_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist28_i_masked_atax71_q_256_fifo_stall_out;
    wire redist28_i_masked_atax71_q_256_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist28_i_masked_atax71_q_256_fifo_data_out;
    wire [0:0] redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in;
    wire redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in;
    wire redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_data_in;
    wire [0:0] redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out;
    wire redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out;
    wire redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_data_out;
    wire [0:0] redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in;
    wire redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in;
    wire redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_data_in;
    wire [0:0] redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out;
    wire redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out;
    wire redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_data_out;
    wire [0:0] redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_in;
    wire redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_in;
    wire redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_data_in;
    wire [0:0] redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_out;
    wire redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_out;
    wire redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_data_out;
    wire [0:0] redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_in;
    wire redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_in;
    wire redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_data_in;
    wire [0:0] redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_out;
    wire redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_out;
    wire redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_data_out;
    wire [0:0] redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_in;
    wire redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_in;
    wire redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_data_in;
    wire [0:0] redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_out;
    wire redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_out;
    wire redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_data_out;
    wire [0:0] redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_in;
    wire redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_in;
    wire redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_data_in;
    wire [0:0] redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_out;
    wire redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_out;
    wire redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_data_out;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_in;
    wire redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_in;
    wire redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_data_in;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_out;
    wire redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_out;
    wire redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_data_out;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_in;
    wire redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_in;
    wire redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_data_in;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_out;
    wire redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_out;
    wire redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_data_out;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_in;
    wire redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_in;
    wire redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_data_in;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_out;
    wire redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_out;
    wire redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_data_out;
    wire [0:0] redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_in;
    wire redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_in;
    wire redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_data_in;
    wire [0:0] redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_out;
    wire redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_out;
    wire redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_data_out;
    wire [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_in;
    wire redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_in;
    wire redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_data_in;
    wire [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_out;
    wire redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_out;
    wire redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_data_out;
    wire [0:0] redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_in;
    wire redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_in;
    wire redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_data_in;
    wire [0:0] redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_out;
    wire redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_out;
    wire redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_data_out;
    wire [0:0] redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_in;
    wire redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_in;
    wire redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_data_in;
    wire [0:0] redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_out;
    wire redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_out;
    wire redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_data_out;
    wire [0:0] redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_in;
    wire redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_in;
    wire redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_data_in;
    wire [0:0] redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_out;
    wire redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_out;
    wire redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_data_out;
    wire [0:0] redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in;
    wire redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in;
    wire redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_data_in;
    wire [0:0] redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out;
    wire redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out;
    wire redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_data_out;
    wire [0:0] redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in;
    wire redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in;
    wire redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_data_in;
    wire [0:0] redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out;
    wire redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out;
    wire redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_data_out;
    wire [0:0] redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in;
    wire redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in;
    wire redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_data_in;
    wire [0:0] redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out;
    wire redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out;
    wire redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_data_out;
    wire [0:0] redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_in;
    wire redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_in;
    wire redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_data_in;
    wire [0:0] redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_out;
    wire redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_out;
    wire redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_data_out;
    wire [0:0] redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_in;
    wire redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_in;
    wire redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_data_in;
    wire [0:0] redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_out;
    wire redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_out;
    wire redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_data_out;
    wire [0:0] redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_in;
    wire redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_in;
    wire redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_data_in;
    wire [0:0] redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_out;
    wire redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_out;
    wire redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_data_out;
    wire [0:0] redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_in;
    wire redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_in;
    wire redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_data_in;
    wire [0:0] redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_out;
    wire redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_out;
    wire redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_data_out;
    wire [0:0] redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_in;
    wire redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_in;
    wire redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist50_i_first_cleanup_xor_atax35_q_8_fifo_data_in;
    wire [0:0] redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_out;
    wire redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_out;
    wire redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist50_i_first_cleanup_xor_atax35_q_8_fifo_data_out;
    wire [0:0] redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_in;
    wire redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_in;
    wire redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist51_i_first_cleanup_xor_atax35_q_39_fifo_data_in;
    wire [0:0] redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_out;
    wire redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_out;
    wire redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist51_i_first_cleanup_xor_atax35_q_39_fifo_data_out;
    wire [0:0] redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_in;
    wire redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_in;
    wire redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist52_i_first_cleanup_xor_atax35_q_70_fifo_data_in;
    wire [0:0] redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_out;
    wire redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_out;
    wire redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist52_i_first_cleanup_xor_atax35_q_70_fifo_data_out;
    wire [0:0] redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_in;
    wire redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_in;
    wire redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist53_i_first_cleanup_xor_atax35_q_101_fifo_data_in;
    wire [0:0] redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_out;
    wire redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_out;
    wire redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist53_i_first_cleanup_xor_atax35_q_101_fifo_data_out;
    wire [0:0] redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_in;
    wire redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_in;
    wire redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist54_i_first_cleanup_xor_atax35_q_132_fifo_data_in;
    wire [0:0] redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_out;
    wire redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_out;
    wire redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist54_i_first_cleanup_xor_atax35_q_132_fifo_data_out;
    wire [0:0] redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_in;
    wire redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_in;
    wire redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist55_i_first_cleanup_xor_atax35_q_163_fifo_data_in;
    wire [0:0] redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_out;
    wire redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_out;
    wire redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist55_i_first_cleanup_xor_atax35_q_163_fifo_data_out;
    wire [0:0] redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_in;
    wire redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_in;
    wire redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist56_i_first_cleanup_xor_atax35_q_194_fifo_data_in;
    wire [0:0] redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_out;
    wire redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_out;
    wire redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist56_i_first_cleanup_xor_atax35_q_194_fifo_data_out;
    wire [0:0] redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_in;
    wire redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_in;
    wire redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist57_i_first_cleanup_xor_atax35_q_225_fifo_data_in;
    wire [0:0] redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_out;
    wire redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_out;
    wire redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist57_i_first_cleanup_xor_atax35_q_225_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [95:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [95:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_16_atax77_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_16_atax77_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_18_atax79_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_18_atax79_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_20_atax72_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_20_atax72_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_23_atax73_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_23_atax73_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_27_atax74_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_27_atax74_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_32_atax75_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_32_atax75_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_39_atax76_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_39_atax76_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_atax2_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax4_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop30_atax3_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop30_atax3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_atax_B12_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B12_merge_reg_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b;
    wire [255:0] bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_i;
    wire [31:0] bubble_join_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_q;
    wire [31:0] bubble_select_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_b;
    wire [31:0] bubble_join_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_q;
    wire [31:0] bubble_select_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_b;
    wire [31:0] bubble_join_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_q;
    wire [31:0] bubble_select_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_b;
    wire [31:0] bubble_join_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_q;
    wire [31:0] bubble_select_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_b;
    wire [31:0] bubble_join_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_q;
    wire [31:0] bubble_select_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_b;
    wire [31:0] bubble_join_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_q;
    wire [31:0] bubble_select_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_b;
    wire [63:0] bubble_join_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_q;
    wire [63:0] bubble_select_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_b;
    wire [63:0] bubble_join_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_q;
    wire [63:0] bubble_select_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_b;
    wire [63:0] bubble_join_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_q;
    wire [63:0] bubble_select_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_b;
    wire [63:0] bubble_join_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_q;
    wire [63:0] bubble_select_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_b;
    wire [63:0] bubble_join_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_q;
    wire [63:0] bubble_select_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_b;
    wire [63:0] bubble_join_redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_q;
    wire [63:0] bubble_select_redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_b;
    wire [63:0] bubble_join_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_q;
    wire [63:0] bubble_select_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_b;
    wire [0:0] bubble_join_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_q;
    wire [0:0] bubble_select_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b;
    wire [0:0] bubble_join_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_q;
    wire [0:0] bubble_select_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_b;
    wire [0:0] bubble_join_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_q;
    wire [0:0] bubble_select_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b;
    wire [0:0] bubble_join_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_q;
    wire [0:0] bubble_select_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b;
    wire [0:0] bubble_join_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_q;
    wire [0:0] bubble_select_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_b;
    wire [0:0] bubble_join_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_q;
    wire [0:0] bubble_select_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_b;
    wire [0:0] bubble_join_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_q;
    wire [0:0] bubble_select_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_b;
    wire [0:0] bubble_join_redist22_i_reduction_atax_8_atax31_q_62_fifo_q;
    wire [0:0] bubble_select_redist22_i_reduction_atax_8_atax31_q_62_fifo_b;
    wire [0:0] bubble_join_redist23_i_reduction_atax_8_atax31_q_124_fifo_q;
    wire [0:0] bubble_select_redist23_i_reduction_atax_8_atax31_q_124_fifo_b;
    wire [0:0] bubble_join_redist24_i_reduction_atax_7_atax29_q_62_fifo_q;
    wire [0:0] bubble_select_redist24_i_reduction_atax_7_atax29_q_62_fifo_b;
    wire [0:0] bubble_join_redist25_i_reduction_atax_4_atax50_q_124_fifo_q;
    wire [0:0] bubble_select_redist25_i_reduction_atax_4_atax50_q_124_fifo_b;
    wire [0:0] bubble_join_redist26_i_reduction_atax_2_atax30_q_62_fifo_q;
    wire [0:0] bubble_select_redist26_i_reduction_atax_2_atax30_q_62_fifo_b;
    wire [0:0] bubble_join_redist27_i_reduction_atax_1_atax28_q_62_fifo_q;
    wire [0:0] bubble_select_redist27_i_reduction_atax_1_atax28_q_62_fifo_b;
    wire [0:0] bubble_join_redist28_i_masked_atax71_q_256_fifo_q;
    wire [0:0] bubble_select_redist28_i_masked_atax71_q_256_fifo_b;
    wire [31:0] bubble_join_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_q;
    wire [31:0] bubble_select_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_b;
    wire [31:0] bubble_join_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_q;
    wire [31:0] bubble_select_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_b;
    wire [31:0] bubble_join_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_q;
    wire [31:0] bubble_select_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_b;
    wire [31:0] bubble_join_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_q;
    wire [31:0] bubble_select_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_b;
    wire [31:0] bubble_join_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_q;
    wire [31:0] bubble_select_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_b;
    wire [31:0] bubble_join_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_q;
    wire [31:0] bubble_select_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_b;
    wire [0:0] bubble_join_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_q;
    wire [0:0] bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_b;
    wire [0:0] bubble_join_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_q;
    wire [0:0] bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_b;
    wire [0:0] bubble_join_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_q;
    wire [0:0] bubble_select_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_b;
    wire [0:0] bubble_join_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_q;
    wire [0:0] bubble_select_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_b;
    wire [0:0] bubble_join_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_q;
    wire [0:0] bubble_select_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_b;
    wire [0:0] bubble_join_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_q;
    wire [0:0] bubble_select_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_b;
    wire [0:0] bubble_join_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_q;
    wire [0:0] bubble_select_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_b;
    wire [0:0] bubble_join_redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_q;
    wire [0:0] bubble_select_redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_b;
    wire [0:0] bubble_join_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_q;
    wire [0:0] bubble_select_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_b;
    wire [0:0] bubble_join_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_q;
    wire [0:0] bubble_select_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_b;
    wire [0:0] bubble_join_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_q;
    wire [0:0] bubble_select_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_b;
    wire [0:0] bubble_join_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_q;
    wire [0:0] bubble_select_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_b;
    wire [0:0] bubble_join_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_q;
    wire [0:0] bubble_select_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_b;
    wire [0:0] bubble_join_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_q;
    wire [0:0] bubble_select_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_b;
    wire [0:0] bubble_join_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_q;
    wire [0:0] bubble_select_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_b;
    wire [0:0] bubble_join_redist50_i_first_cleanup_xor_atax35_q_8_fifo_q;
    wire [0:0] bubble_select_redist50_i_first_cleanup_xor_atax35_q_8_fifo_b;
    wire [0:0] bubble_join_redist51_i_first_cleanup_xor_atax35_q_39_fifo_q;
    wire [0:0] bubble_select_redist51_i_first_cleanup_xor_atax35_q_39_fifo_b;
    wire [0:0] bubble_join_redist52_i_first_cleanup_xor_atax35_q_70_fifo_q;
    wire [0:0] bubble_select_redist52_i_first_cleanup_xor_atax35_q_70_fifo_b;
    wire [0:0] bubble_join_redist53_i_first_cleanup_xor_atax35_q_101_fifo_q;
    wire [0:0] bubble_select_redist53_i_first_cleanup_xor_atax35_q_101_fifo_b;
    wire [0:0] bubble_join_redist54_i_first_cleanup_xor_atax35_q_132_fifo_q;
    wire [0:0] bubble_select_redist54_i_first_cleanup_xor_atax35_q_132_fifo_b;
    wire [0:0] bubble_join_redist55_i_first_cleanup_xor_atax35_q_163_fifo_q;
    wire [0:0] bubble_select_redist55_i_first_cleanup_xor_atax35_q_163_fifo_b;
    wire [0:0] bubble_join_redist56_i_first_cleanup_xor_atax35_q_194_fifo_q;
    wire [0:0] bubble_select_redist56_i_first_cleanup_xor_atax35_q_194_fifo_b;
    wire [0:0] bubble_join_redist57_i_first_cleanup_xor_atax35_q_225_fifo_q;
    wire [0:0] bubble_select_redist57_i_first_cleanup_xor_atax35_q_225_fifo_b;
    wire [95:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [95:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_i_arrayidx7132_atax38_vt_select_63_wireValid;
    wire [0:0] SE_i_arrayidx7132_atax38_vt_select_63_and0;
    wire [0:0] SE_i_arrayidx7132_atax38_vt_select_63_backStall;
    wire [0:0] SE_i_arrayidx7132_atax38_vt_select_63_V0;
    wire [0:0] SE_i_idxprom70_7_atax46_vt_join_wireValid;
    wire [0:0] SE_i_idxprom70_7_atax46_vt_join_and0;
    wire [0:0] SE_i_idxprom70_7_atax46_vt_join_and1;
    wire [0:0] SE_i_idxprom70_7_atax46_vt_join_and2;
    wire [0:0] SE_i_idxprom70_7_atax46_vt_join_backStall;
    wire [0:0] SE_i_idxprom70_7_atax46_vt_join_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_16_atax77_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_18_atax79_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_atax72_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_23_atax73_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_27_atax74_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_atax75_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_39_atax76_V1;
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
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_V1;
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
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_atax56_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_atax56_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_atax54_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_atax54_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_334_push22_atax47_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_334_push22_atax47_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push31_atax88_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push31_atax88_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push30_atax36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push30_atax36_backStall;
    reg [0:0] SE_i_masked_atax71_R_v_0;
    wire [0:0] SE_i_masked_atax71_v_s_0;
    wire [0:0] SE_i_masked_atax71_s_tv_0;
    wire [0:0] SE_i_masked_atax71_backEN;
    wire [0:0] SE_i_masked_atax71_and0;
    wire [0:0] SE_i_masked_atax71_backStall;
    wire [0:0] SE_i_masked_atax71_V0;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations_atax16_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations_atax16_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_and0;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_or0;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_backStall;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_V0;
    wire [0:0] SE_i_next_initerations_atax16_vt_join_V1;
    wire [0:0] SE_i_reduction_atax_4_atax50_wireValid;
    wire [0:0] SE_i_reduction_atax_4_atax50_wireStall;
    wire [0:0] SE_i_reduction_atax_4_atax50_StallValid;
    wire [0:0] SE_i_reduction_atax_4_atax50_toReg0;
    reg [0:0] SE_i_reduction_atax_4_atax50_fromReg0;
    wire [0:0] SE_i_reduction_atax_4_atax50_consumed0;
    wire [0:0] SE_i_reduction_atax_4_atax50_toReg1;
    reg [0:0] SE_i_reduction_atax_4_atax50_fromReg1;
    wire [0:0] SE_i_reduction_atax_4_atax50_consumed1;
    wire [0:0] SE_i_reduction_atax_4_atax50_and0;
    wire [0:0] SE_i_reduction_atax_4_atax50_or0;
    wire [0:0] SE_i_reduction_atax_4_atax50_backStall;
    wire [0:0] SE_i_reduction_atax_4_atax50_V0;
    wire [0:0] SE_i_reduction_atax_4_atax50_V1;
    wire [0:0] SE_i_reduction_atax_8_atax31_wireValid;
    wire [0:0] SE_i_reduction_atax_8_atax31_wireStall;
    wire [0:0] SE_i_reduction_atax_8_atax31_StallValid;
    wire [0:0] SE_i_reduction_atax_8_atax31_toReg0;
    reg [0:0] SE_i_reduction_atax_8_atax31_fromReg0;
    wire [0:0] SE_i_reduction_atax_8_atax31_consumed0;
    wire [0:0] SE_i_reduction_atax_8_atax31_toReg1;
    reg [0:0] SE_i_reduction_atax_8_atax31_fromReg1;
    wire [0:0] SE_i_reduction_atax_8_atax31_consumed1;
    wire [0:0] SE_i_reduction_atax_8_atax31_and0;
    wire [0:0] SE_i_reduction_atax_8_atax31_or0;
    wire [0:0] SE_i_reduction_atax_8_atax31_backStall;
    wire [0:0] SE_i_reduction_atax_8_atax31_V0;
    wire [0:0] SE_i_reduction_atax_8_atax31_V1;
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
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg6;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg7;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V7;
    wire [0:0] SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_and0;
    wire [0:0] SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_and1;
    wire [0:0] SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_V0;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and0;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and1;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and2;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and3;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and4;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_backStall;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_V0;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_wireValid;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and0;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and1;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and2;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and3;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_backStall;
    wire [0:0] SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_V0;
    wire [0:0] SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and0;
    wire [0:0] SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and1;
    wire [0:0] SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and2;
    wire [0:0] SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and3;
    wire [0:0] SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_backStall;
    wire [0:0] SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_V0;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_wireValid;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and0;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and1;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and2;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and3;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_backStall;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_V0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireStall;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_StallValid;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg0;
    reg [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg1;
    reg [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg1;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed1;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_or0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_backStall;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V1;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_wireValid;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_wireStall;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_StallValid;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_toReg0;
    reg [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_fromReg0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_consumed0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_toReg1;
    reg [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_fromReg1;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_consumed1;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_or0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_backStall;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_V0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_V1;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_wireValid;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_wireStall;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_StallValid;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_toReg0;
    reg [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_fromReg0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_consumed0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_toReg1;
    reg [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_fromReg1;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_consumed1;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_or0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_backStall;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_V0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_V1;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_wireValid;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_wireStall;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_StallValid;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_toReg0;
    reg [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_fromReg0;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_consumed0;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_toReg1;
    reg [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_fromReg1;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_consumed1;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_or0;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_backStall;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_V0;
    wire [0:0] SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_V1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_wireValid;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_wireStall;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_StallValid;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_toReg0;
    reg [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_fromReg0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_consumed0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_toReg1;
    reg [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_fromReg1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_consumed1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_or0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_backStall;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_V0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_V1;
    wire [0:0] SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_and0;
    wire [0:0] SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_and1;
    wire [0:0] SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_backStall;
    wire [0:0] SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_V0;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireStall;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_StallValid;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg0;
    reg [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg0;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed0;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg1;
    reg [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg1;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed1;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_or0;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V0;
    wire [0:0] SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V1;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireStall;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_StallValid;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg0;
    reg [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg0;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed0;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg1;
    reg [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg1;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed1;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_or0;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_backStall;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V0;
    wire [0:0] SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V1;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireStall;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_StallValid;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg0;
    reg [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg0;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed0;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg1;
    reg [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg1;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed1;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_or0;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V0;
    wire [0:0] SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V1;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_wireValid;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_wireStall;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_StallValid;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_toReg0;
    reg [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_fromReg0;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_consumed0;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_toReg1;
    reg [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_fromReg1;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_consumed1;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_or0;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_backStall;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_V0;
    wire [0:0] SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_V1;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_wireValid;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_wireStall;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_StallValid;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_toReg0;
    reg [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_fromReg0;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_consumed0;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_toReg1;
    reg [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_fromReg1;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_consumed1;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_or0;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_backStall;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_V0;
    wire [0:0] SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_V1;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_wireValid;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_wireStall;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_StallValid;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_toReg0;
    reg [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_fromReg0;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_consumed0;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_toReg1;
    reg [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_fromReg1;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_consumed1;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_or0;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_backStall;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_V0;
    wire [0:0] SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_V1;
    wire [0:0] SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_wireValid;
    wire [0:0] SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_backStall;
    wire [0:0] SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_V0;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_wireValid;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_wireStall;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_StallValid;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_toReg0;
    reg [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_fromReg0;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_consumed0;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_toReg1;
    reg [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_fromReg1;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_consumed1;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_or0;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_backStall;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_V0;
    wire [0:0] SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_V1;
    wire [0:0] SE_in_redist28_i_masked_atax71_q_256_fifo_wireValid;
    wire [0:0] SE_in_redist28_i_masked_atax71_q_256_fifo_backStall;
    wire [0:0] SE_in_redist28_i_masked_atax71_q_256_fifo_V0;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireStall;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_StallValid;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg0;
    reg [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg0;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed0;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg1;
    reg [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg1;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed1;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_or0;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_backStall;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V0;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V1;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireStall;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_StallValid;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg0;
    reg [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg0;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed0;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg1;
    reg [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg1;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed1;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_or0;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_backStall;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V0;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V1;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_wireValid;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_wireStall;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_StallValid;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_toReg0;
    reg [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_fromReg0;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_consumed0;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_toReg1;
    reg [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_fromReg1;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_consumed1;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_or0;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_backStall;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_V0;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_V1;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_wireValid;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_wireStall;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_StallValid;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_toReg0;
    reg [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_fromReg0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_consumed0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_toReg1;
    reg [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_fromReg1;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_consumed1;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_or0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_backStall;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_V0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_V1;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_wireValid;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_wireStall;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_StallValid;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_toReg0;
    reg [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_fromReg0;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_consumed0;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_toReg1;
    reg [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_fromReg1;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_consumed1;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_or0;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_backStall;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_V0;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_V1;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_wireValid;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_wireStall;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_StallValid;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_toReg0;
    reg [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_fromReg0;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_consumed0;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_toReg1;
    reg [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_fromReg1;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_consumed1;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_or0;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_backStall;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_V0;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_V1;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_wireValid;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_wireStall;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_StallValid;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_toReg0;
    reg [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_fromReg0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_consumed0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_toReg1;
    reg [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_fromReg1;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_consumed1;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_or0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_backStall;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_V0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_V1;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_wireValid;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_wireStall;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_StallValid;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_toReg0;
    reg [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_fromReg0;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_consumed0;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_toReg1;
    reg [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_fromReg1;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_consumed1;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_or0;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_backStall;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_V0;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_V1;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_wireValid;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and0;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and1;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and2;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and3;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and4;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and5;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_backStall;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_V0;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_wireValid;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_wireStall;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_StallValid;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_toReg0;
    reg [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_fromReg0;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_consumed0;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_toReg1;
    reg [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_fromReg1;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_consumed1;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_and0;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_or0;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_backStall;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_V0;
    wire [0:0] SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_V1;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_wireValid;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_wireStall;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_StallValid;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_toReg0;
    reg [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_fromReg0;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_consumed0;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_toReg1;
    reg [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_fromReg1;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_consumed1;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_and0;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_or0;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_backStall;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_V0;
    wire [0:0] SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_V1;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_wireValid;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_wireStall;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_StallValid;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_toReg0;
    reg [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_fromReg0;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_consumed0;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_toReg1;
    reg [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_fromReg1;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_consumed1;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_and0;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_or0;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_backStall;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_V0;
    wire [0:0] SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_V1;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_wireValid;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and0;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and1;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and2;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and3;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and4;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and5;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_backStall;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_V0;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireStall;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_StallValid;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg0;
    reg [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg0;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed0;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg1;
    reg [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg1;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed1;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_or0;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_backStall;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V0;
    wire [0:0] SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V1;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireStall;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_StallValid;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg0;
    reg [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg0;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed0;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg1;
    reg [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg1;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed1;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_or0;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_backStall;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V0;
    wire [0:0] SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V1;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireStall;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_StallValid;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_toReg0;
    reg [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_fromReg0;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_consumed0;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_toReg1;
    reg [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_fromReg1;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_consumed1;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_or0;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_backStall;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_V0;
    wire [0:0] SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_V1;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_wireValid;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_wireStall;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_StallValid;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_toReg0;
    reg [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_fromReg0;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_consumed0;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_toReg1;
    reg [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_fromReg1;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_consumed1;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_or0;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_backStall;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_V0;
    wire [0:0] SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_V1;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_wireValid;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_wireStall;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_StallValid;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_toReg0;
    reg [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_fromReg0;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_consumed0;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_toReg1;
    reg [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_fromReg1;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_consumed1;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_or0;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_backStall;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_V0;
    wire [0:0] SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_V1;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_wireValid;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_wireStall;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_StallValid;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_toReg0;
    reg [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_fromReg0;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_consumed0;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_toReg1;
    reg [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_fromReg1;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_consumed1;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_or0;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_backStall;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_V0;
    wire [0:0] SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_V1;
    wire [0:0] SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_wireValid;
    wire [0:0] SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_and0;
    wire [0:0] SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_backStall;
    wire [0:0] SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_V0;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_wireValid;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_wireStall;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_StallValid;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_toReg0;
    reg [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_fromReg0;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_consumed0;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_toReg1;
    reg [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_fromReg1;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_consumed1;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_or0;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_backStall;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_V0;
    wire [0:0] SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_V1;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_wireValid;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_wireStall;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_StallValid;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_toReg0;
    reg [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_fromReg0;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_consumed0;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_toReg1;
    reg [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_fromReg1;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_consumed1;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_or0;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_backStall;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_V0;
    wire [0:0] SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_V1;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_wireValid;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_wireStall;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_StallValid;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_toReg0;
    reg [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_fromReg0;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_consumed0;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_toReg1;
    reg [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_fromReg1;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_consumed1;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_or0;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_backStall;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_V0;
    wire [0:0] SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_V1;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_wireValid;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_wireStall;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_StallValid;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_toReg0;
    reg [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_fromReg0;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_consumed0;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_toReg1;
    reg [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_fromReg1;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_consumed1;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_or0;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_backStall;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_V0;
    wire [0:0] SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_V1;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_wireValid;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_wireStall;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_StallValid;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_toReg0;
    reg [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_fromReg0;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_consumed0;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_toReg1;
    reg [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_fromReg1;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_consumed1;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_or0;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_backStall;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_V0;
    wire [0:0] SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_V1;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_wireValid;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_wireStall;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_StallValid;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_toReg0;
    reg [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_fromReg0;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_consumed0;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_toReg1;
    reg [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_fromReg1;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_consumed1;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_or0;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_backStall;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_V0;
    wire [0:0] SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_V1;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_wireValid;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_wireStall;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_StallValid;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_toReg0;
    reg [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_fromReg0;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_consumed0;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_toReg1;
    reg [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_fromReg1;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_consumed1;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_or0;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_backStall;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_V0;
    wire [0:0] SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and8;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and9;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and10;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_V0;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // bubble_join_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(BITJOIN,633)
    assign bubble_join_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_q = redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_out;

    // bubble_select_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(BITSELECT,634)
    assign bubble_select_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b = $unsigned(bubble_join_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_q[0:0]);

    // bubble_join_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo(BITJOIN,636)
    assign bubble_join_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_q = redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_data_out;

    // bubble_select_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo(BITSELECT,637)
    assign bubble_select_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_b = $unsigned(bubble_join_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_q[0:0]);

    // bubble_join_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(BITJOIN,639)
    assign bubble_join_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_q = redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_out;

    // bubble_select_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(BITSELECT,640)
    assign bubble_select_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b = $unsigned(bubble_join_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_q[0:0]);

    // bubble_join_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo(BITJOIN,642)
    assign bubble_join_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_q = redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_data_out;

    // bubble_select_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo(BITSELECT,643)
    assign bubble_select_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b = $unsigned(bubble_join_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_q[0:0]);

    // bubble_join_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo(BITJOIN,645)
    assign bubble_join_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_q = redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_data_out;

    // bubble_select_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo(BITSELECT,646)
    assign bubble_select_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_b = $unsigned(bubble_join_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_q[0:0]);

    // bubble_join_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo(BITJOIN,648)
    assign bubble_join_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_q = redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_data_out;

    // bubble_select_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo(BITSELECT,649)
    assign bubble_select_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_b = $unsigned(bubble_join_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pipeline_keep_going_atax2(BITJOIN,541)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_atax2_q = i_llvm_fpga_pipeline_keep_going_atax2_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_atax2(BITSELECT,542)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_atax2_q[0:0]);

    // redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo(STALLFIFO,495)
    assign redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V5;
    assign redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in = SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_backStall;
    assign redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b;
    assign redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in_bitsignaltemp = redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in[0];
    assign redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in_bitsignaltemp = redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in[0];
    assign redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out[0] = redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out_bitsignaltemp;
    assign redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out[0] = redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo (
        .valid_in(redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .valid_out(redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo(BITJOIN,717)
    assign bubble_join_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_q = redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_data_out;

    // bubble_select_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo(BITSELECT,718)
    assign bubble_select_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_b = $unsigned(bubble_join_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85(STALLENABLE,855)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_wireValid = i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_valid_out;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop31_atax1(BITJOIN,569)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_q = i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop31_atax1(BITSELECT,570)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_q[3:0]);

    // i_first_cleanup_atax14_sel_x(BITSELECT,336)@2
    assign i_first_cleanup_atax14_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_b[0:0];

    // i_first_cleanup_xor_atax35(LOGICAL,32)@2
    assign i_first_cleanup_xor_atax35_q = i_first_cleanup_atax14_sel_x_b ^ VCC_q;

    // c_i32_091(CONSTANT,7)
    assign c_i32_091_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax4(BITJOIN,566)
    assign bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax4_q = i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4(BITSELECT,567)
    assign bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_334_pop22_atax4_q[31:0]);

    // i_idxprom70_atax17_sel_x(BITSELECT,344)@2
    assign i_idxprom70_atax17_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b[31:0]};

    // i_idxprom70_atax17_vt_select_31(BITSELECT,77)@2
    assign i_idxprom70_atax17_vt_select_31_b = i_idxprom70_atax17_sel_x_b[31:0];

    // i_idxprom70_atax17_vt_join(BITJOIN,76)@2
    assign i_idxprom70_atax17_vt_join_q = {c_i32_091_q, i_idxprom70_atax17_vt_select_31_b};

    // i_arrayidx7132_atax0_narrow_x(BITSELECT,280)@2
    assign i_arrayidx7132_atax0_narrow_x_b = i_idxprom70_atax17_vt_join_q[61:0];

    // i_arrayidx7132_atax0_shift_join_x(BITJOIN,281)@2
    assign i_arrayidx7132_atax0_shift_join_x_q = {i_arrayidx7132_atax0_narrow_x_b, i_arrayidx7132_atax38_vt_const_1_q};

    // c_atax_buff_y_out_pmem(CONSTANT,4)
    assign c_atax_buff_y_out_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx7132_atax0_add_x(ADD,278)@2
    assign i_arrayidx7132_atax0_add_x_a = {1'b0, c_atax_buff_y_out_pmem_q};
    assign i_arrayidx7132_atax0_add_x_b = {1'b0, i_arrayidx7132_atax0_shift_join_x_q};
    assign i_arrayidx7132_atax0_add_x_o = $unsigned(i_arrayidx7132_atax0_add_x_a) + $unsigned(i_arrayidx7132_atax0_add_x_b);
    assign i_arrayidx7132_atax0_add_x_q = i_arrayidx7132_atax0_add_x_o[64:0];

    // i_arrayidx7132_atax0_dupName_0_trunc_sel_x(BITSELECT,283)@2
    assign i_arrayidx7132_atax0_dupName_0_trunc_sel_x_b = i_arrayidx7132_atax0_add_x_q[63:0];

    // i_arrayidx7132_atax38_vt_select_63(BITSELECT,26)@2
    assign i_arrayidx7132_atax38_vt_select_63_b = i_arrayidx7132_atax0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx7132_atax38_vt_const_1(CONSTANT,24)
    assign i_arrayidx7132_atax38_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx7132_atax38_vt_join(BITJOIN,25)@2
    assign i_arrayidx7132_atax38_vt_join_q = {i_arrayidx7132_atax38_vt_select_63_b, i_arrayidx7132_atax38_vt_const_1_q};

    // bubble_join_redist51_i_first_cleanup_xor_atax35_q_39_fifo(BITJOIN,741)
    assign bubble_join_redist51_i_first_cleanup_xor_atax35_q_39_fifo_q = redist51_i_first_cleanup_xor_atax35_q_39_fifo_data_out;

    // bubble_select_redist51_i_first_cleanup_xor_atax35_q_39_fifo(BITSELECT,742)
    assign bubble_select_redist51_i_first_cleanup_xor_atax35_q_39_fifo_b = $unsigned(bubble_join_redist51_i_first_cleanup_xor_atax35_q_39_fifo_q[0:0]);

    // bubble_join_redist52_i_first_cleanup_xor_atax35_q_70_fifo(BITJOIN,744)
    assign bubble_join_redist52_i_first_cleanup_xor_atax35_q_70_fifo_q = redist52_i_first_cleanup_xor_atax35_q_70_fifo_data_out;

    // bubble_select_redist52_i_first_cleanup_xor_atax35_q_70_fifo(BITSELECT,745)
    assign bubble_select_redist52_i_first_cleanup_xor_atax35_q_70_fifo_b = $unsigned(bubble_join_redist52_i_first_cleanup_xor_atax35_q_70_fifo_q[0:0]);

    // bubble_join_redist53_i_first_cleanup_xor_atax35_q_101_fifo(BITJOIN,747)
    assign bubble_join_redist53_i_first_cleanup_xor_atax35_q_101_fifo_q = redist53_i_first_cleanup_xor_atax35_q_101_fifo_data_out;

    // bubble_select_redist53_i_first_cleanup_xor_atax35_q_101_fifo(BITSELECT,748)
    assign bubble_select_redist53_i_first_cleanup_xor_atax35_q_101_fifo_b = $unsigned(bubble_join_redist53_i_first_cleanup_xor_atax35_q_101_fifo_q[0:0]);

    // bubble_join_redist54_i_first_cleanup_xor_atax35_q_132_fifo(BITJOIN,750)
    assign bubble_join_redist54_i_first_cleanup_xor_atax35_q_132_fifo_q = redist54_i_first_cleanup_xor_atax35_q_132_fifo_data_out;

    // bubble_select_redist54_i_first_cleanup_xor_atax35_q_132_fifo(BITSELECT,751)
    assign bubble_select_redist54_i_first_cleanup_xor_atax35_q_132_fifo_b = $unsigned(bubble_join_redist54_i_first_cleanup_xor_atax35_q_132_fifo_q[0:0]);

    // bubble_join_redist55_i_first_cleanup_xor_atax35_q_163_fifo(BITJOIN,753)
    assign bubble_join_redist55_i_first_cleanup_xor_atax35_q_163_fifo_q = redist55_i_first_cleanup_xor_atax35_q_163_fifo_data_out;

    // bubble_select_redist55_i_first_cleanup_xor_atax35_q_163_fifo(BITSELECT,754)
    assign bubble_select_redist55_i_first_cleanup_xor_atax35_q_163_fifo_b = $unsigned(bubble_join_redist55_i_first_cleanup_xor_atax35_q_163_fifo_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6(STALLENABLE,821)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_consumed0 = (~ (SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_consumed1 = (~ (redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_wireValid = i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_valid_out;

    // redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo(STALLFIFO,454)
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V2;
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_in = SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_backStall;
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_c;
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_in_bitsignaltemp = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_in[0];
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_in_bitsignaltemp = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_in[0];
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_out[0] = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_out_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_out[0] = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(187),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo (
        .valid_in(redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_c),
        .valid_out(redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_194(CONSTANT,8)
    assign c_i32_194_q = $unsigned(32'b00000000000000000000000000000001);

    // redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo(STALLFIFO,481)
    assign redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V0;
    assign redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in = SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_backStall;
    assign redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b;
    assign redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in_bitsignaltemp = redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in[0];
    assign redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in_bitsignaltemp = redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in[0];
    assign redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out[0] = redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out_bitsignaltemp;
    assign redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out[0] = redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo (
        .valid_in(redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b),
        .valid_out(redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo(BITJOIN,675)
    assign bubble_join_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_q = redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_data_out;

    // bubble_select_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo(BITSELECT,676)
    assign bubble_select_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_b = $unsigned(bubble_join_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_q[31:0]);

    // SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo(STALLENABLE,1012)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg0 <= '0;
            SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg0 <= SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg0;
            // Successor 1
            SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg1 <= SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed0 = (~ (redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out) & SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid) | SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg0;
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed1 = (~ (SE_i_idxprom70_7_atax46_vt_join_backStall) & SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid) | SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg1;
    // Consuming
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_StallValid = SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_backStall & SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid;
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg0 = SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_StallValid & SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed0;
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_toReg1 = SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_StallValid & SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_or0 = SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed0;
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireStall = ~ (SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_consumed1 & SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_or0);
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_backStall = SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V0 = SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid & ~ (SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg0);
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V1 = SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid & ~ (SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_wireValid = redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_valid_out;

    // redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo(STALLFIFO,482)
    assign redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in = SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V0;
    assign redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in = SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_backStall;
    assign redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_data_in = bubble_select_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_b;
    assign redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in_bitsignaltemp = redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in[0];
    assign redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in_bitsignaltemp = redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in[0];
    assign redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out[0] = redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out_bitsignaltemp;
    assign redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out[0] = redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo (
        .valid_in(redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_b),
        .valid_out(redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo(BITJOIN,678)
    assign bubble_join_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_q = redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_data_out;

    // bubble_select_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo(BITSELECT,679)
    assign bubble_select_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_b = $unsigned(bubble_join_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_q[31:0]);

    // SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo(STALLENABLE,1014)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg0 <= '0;
            SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg0 <= SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg0;
            // Successor 1
            SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg1 <= SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed0 = (~ (redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_out) & SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid) | SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg0;
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed1 = (~ (SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_backStall) & SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid) | SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg1;
    // Consuming
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_StallValid = SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_backStall & SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid;
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg0 = SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_StallValid & SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed0;
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_toReg1 = SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_StallValid & SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_or0 = SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed0;
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireStall = ~ (SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_consumed1 & SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_or0);
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_backStall = SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V0 = SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid & ~ (SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg0);
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V1 = SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid & ~ (SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_wireValid = redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_valid_out;

    // redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo(STALLFIFO,483)
    assign redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_in = SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V0;
    assign redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_in = SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_backStall;
    assign redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_data_in = bubble_select_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_b;
    assign redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_in_bitsignaltemp = redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_in[0];
    assign redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_in_bitsignaltemp = redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_in[0];
    assign redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_out[0] = redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_out_bitsignaltemp;
    assign redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_out[0] = redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo (
        .valid_in(redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_b),
        .valid_out(redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo(BITJOIN,681)
    assign bubble_join_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_q = redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_data_out;

    // bubble_select_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo(BITSELECT,682)
    assign bubble_select_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_b = $unsigned(bubble_join_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_q[31:0]);

    // SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo(STALLENABLE,1016)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_fromReg0 <= '0;
            SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_fromReg0 <= SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_toReg0;
            // Successor 1
            SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_fromReg1 <= SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_consumed0 = (~ (redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_out) & SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_wireValid) | SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_fromReg0;
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_consumed1 = (~ (SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_backStall) & SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_wireValid) | SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_fromReg1;
    // Consuming
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_StallValid = SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_backStall & SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_wireValid;
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_toReg0 = SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_StallValid & SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_consumed0;
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_toReg1 = SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_StallValid & SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_or0 = SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_consumed0;
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_wireStall = ~ (SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_consumed1 & SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_or0);
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_backStall = SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_V0 = SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_wireValid & ~ (SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_fromReg0);
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_V1 = SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_wireValid & ~ (SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_wireValid = redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_valid_out;

    // redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo(STALLFIFO,484)
    assign redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_in = SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_V0;
    assign redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_in = SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_backStall;
    assign redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_data_in = bubble_select_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_b;
    assign redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_in_bitsignaltemp = redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_in[0];
    assign redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_in_bitsignaltemp = redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_in[0];
    assign redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_out[0] = redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_out_bitsignaltemp;
    assign redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_out[0] = redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo (
        .valid_in(redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_in_bitsignaltemp),
        .stall_in(redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_b),
        .valid_out(redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_out_bitsignaltemp),
        .stall_out(redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_stall_out_bitsignaltemp),
        .data_out(redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo(BITJOIN,684)
    assign bubble_join_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_q = redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_data_out;

    // bubble_select_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo(BITSELECT,685)
    assign bubble_select_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_b = $unsigned(bubble_join_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_q[31:0]);

    // SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo(STALLENABLE,1018)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_fromReg0 <= '0;
            SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_fromReg0 <= SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_toReg0;
            // Successor 1
            SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_fromReg1 <= SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_consumed0 = (~ (redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_out) & SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_wireValid) | SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_fromReg0;
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_consumed1 = (~ (SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_backStall) & SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_wireValid) | SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_fromReg1;
    // Consuming
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_StallValid = SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_backStall & SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_wireValid;
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_toReg0 = SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_StallValid & SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_consumed0;
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_toReg1 = SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_StallValid & SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_or0 = SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_consumed0;
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_wireStall = ~ (SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_consumed1 & SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_or0);
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_backStall = SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_V0 = SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_wireValid & ~ (SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_fromReg0);
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_V1 = SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_wireValid & ~ (SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_wireValid = redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_valid_out;

    // redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo(STALLFIFO,485)
    assign redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_in = SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_V0;
    assign redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_in = SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_backStall;
    assign redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_data_in = bubble_select_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_b;
    assign redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_in_bitsignaltemp = redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_in[0];
    assign redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_in_bitsignaltemp = redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_in[0];
    assign redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_out[0] = redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_out_bitsignaltemp;
    assign redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_out[0] = redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo (
        .valid_in(redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_in_bitsignaltemp),
        .stall_in(redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_b),
        .valid_out(redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_out_bitsignaltemp),
        .stall_out(redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_stall_out_bitsignaltemp),
        .data_out(redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo(BITJOIN,687)
    assign bubble_join_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_q = redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_data_out;

    // bubble_select_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo(BITSELECT,688)
    assign bubble_select_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_b = $unsigned(bubble_join_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_q[31:0]);

    // SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo(STALLENABLE,1022)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_fromReg0 <= '0;
            SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_fromReg0 <= SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_toReg0;
            // Successor 1
            SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_fromReg1 <= SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_consumed0 = (~ (SE_i_arrayidx73_1_atax0_add_x_backStall) & SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_wireValid) | SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_fromReg0;
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_consumed1 = (~ (SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_backStall) & SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_wireValid) | SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_fromReg1;
    // Consuming
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_StallValid = SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_backStall & SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_wireValid;
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_toReg0 = SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_StallValid & SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_consumed0;
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_toReg1 = SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_StallValid & SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_or0 = SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_consumed0;
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_wireStall = ~ (SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_consumed1 & SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_or0);
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_backStall = SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_V0 = SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_wireValid & ~ (SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_fromReg0);
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_V1 = SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_wireValid & ~ (SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_wireValid = redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_out;

    // SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo(STALLENABLE,1020)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_fromReg0 <= '0;
            SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_fromReg0 <= SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_toReg0;
            // Successor 1
            SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_fromReg1 <= SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_consumed0 = (~ (redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_out) & SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_wireValid) | SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_fromReg0;
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_consumed1 = (~ (SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_backStall) & SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_wireValid) | SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_fromReg1;
    // Consuming
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_StallValid = SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_backStall & SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_wireValid;
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_toReg0 = SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_StallValid & SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_consumed0;
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_toReg1 = SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_StallValid & SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_or0 = SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_consumed0;
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_wireStall = ~ (SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_consumed1 & SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_or0);
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_backStall = SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_V0 = SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_wireValid & ~ (SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_fromReg0);
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_V1 = SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_wireValid & ~ (SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_wireValid = redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_valid_out;

    // redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo(STALLFIFO,486)
    assign redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_in = SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_V0;
    assign redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_in = SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_backStall;
    assign redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_data_in = bubble_select_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_b;
    assign redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_in_bitsignaltemp = redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_in[0];
    assign redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_in_bitsignaltemp = redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_in[0];
    assign redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_out[0] = redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_out_bitsignaltemp;
    assign redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_out[0] = redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo (
        .valid_in(redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_in_bitsignaltemp),
        .stall_in(redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_b),
        .valid_out(redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_valid_out_bitsignaltemp),
        .stall_out(redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_stall_out_bitsignaltemp),
        .data_out(redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo(BITJOIN,690)
    assign bubble_join_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_q = redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_data_out;

    // bubble_select_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo(BITSELECT,691)
    assign bubble_select_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_b = $unsigned(bubble_join_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_q[31:0]);

    // i_inc75_atax18(LOGICAL,108)@165
    assign i_inc75_atax18_q = bubble_select_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_b | c_i32_194_q;

    // i_inc75_atax18_vt_select_31(BITSELECT,111)@165
    assign i_inc75_atax18_vt_select_31_b = i_inc75_atax18_q[31:1];

    // i_inc75_atax18_vt_join(BITJOIN,110)@165
    assign i_inc75_atax18_vt_join_q = {i_inc75_atax18_vt_select_31_b, VCC_q};

    // i_idxprom70_1_atax40_sel_x(BITSELECT,337)@165
    assign i_idxprom70_1_atax40_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_atax18_vt_join_q[31:0]};

    // i_idxprom70_1_atax40_vt_select_31(BITSELECT,38)@165
    assign i_idxprom70_1_atax40_vt_select_31_b = i_idxprom70_1_atax40_sel_x_b[31:1];

    // i_idxprom70_1_atax40_vt_join(BITJOIN,37)@165
    assign i_idxprom70_1_atax40_vt_join_q = {c_i32_091_q, i_idxprom70_1_atax40_vt_select_31_b, VCC_q};

    // i_arrayidx73_1_atax0_narrow_x(BITSELECT,286)@165
    assign i_arrayidx73_1_atax0_narrow_x_b = i_idxprom70_1_atax40_vt_join_q[61:0];

    // i_arrayidx73_1_atax0_shift_join_x(BITJOIN,287)@165
    assign i_arrayidx73_1_atax0_shift_join_x_q = {i_arrayidx73_1_atax0_narrow_x_b, i_arrayidx7132_atax38_vt_const_1_q};

    // SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1(STALLENABLE,1180)
    // Valid signal propagation
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_stall_out | ~ (SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_atax_B12_merge_reg_aunroll_x_1_wireValid = bubble_out_atax_B12_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x(BLACKBOX,346)@9
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

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x(BITJOIN,588)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x(BITSELECT,589)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_q[63:0]);

    // redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo(STALLFIFO,466)
    assign redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V2;
    assign redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_in = SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_backStall;
    assign redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_data_in = i_arrayidx7132_atax0_shift_join_x_q;
    assign redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_in_bitsignaltemp = redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_in[0];
    assign redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_in_bitsignaltemp = redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_in[0];
    assign redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_out[0] = redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_out_bitsignaltemp;
    assign redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_out[0] = redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo (
        .valid_in(redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx7132_atax0_shift_join_x_q),
        .valid_out(redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo(STALLENABLE,982)
    // Valid signal propagation
    assign SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_V0 = SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_backStall = coalesced_delay_0_fifo_stall_out | ~ (SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_and0 = redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_valid_out;
    assign SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_and1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V1 & SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_and0;
    assign SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_wireValid = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V1 & SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_and1;

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x(STALLENABLE,937)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed0 = (~ (SE_i_idxprom70_7_atax46_vt_join_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed1 = (~ (SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed2 = (~ (redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_StallValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_backStall & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_or0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_or1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_or1);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_backStall = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V2 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_wireValid = i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_valid_out;

    // redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo(STALLFIFO,460)
    assign redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V2;
    assign redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in = SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_backStall;
    assign redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_data_in = bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b;
    assign redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in_bitsignaltemp = redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in[0];
    assign redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in_bitsignaltemp = redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in[0];
    assign redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out[0] = redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out_bitsignaltemp;
    assign redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out[0] = redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo (
        .valid_in(redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b),
        .valid_out(redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo(BITJOIN,612)
    assign bubble_join_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_q = redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_data_out;

    // bubble_select_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo(BITSELECT,613)
    assign bubble_select_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_b = $unsigned(bubble_join_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_q[63:0]);

    // SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo(STALLENABLE,970)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg0 <= '0;
            SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg0 <= SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg0;
            // Successor 1
            SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg1 <= SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed0 = (~ (SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_backStall) & SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid) | SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg0;
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed1 = (~ (redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_out) & SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid) | SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_StallValid = SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_backStall & SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid;
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg0 = SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_StallValid & SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed0;
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_toReg1 = SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_StallValid & SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_or0 = SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed0;
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireStall = ~ (SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_consumed1 & SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_or0);
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_backStall = SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V0 = SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid & ~ (SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg0);
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V1 = SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid & ~ (SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_wireValid = redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_valid_out;

    // redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo(STALLFIFO,461)
    assign redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_in = SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V1;
    assign redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_in = SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_backStall;
    assign redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_data_in = bubble_select_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_b;
    assign redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_in_bitsignaltemp = redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_in[0];
    assign redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_in_bitsignaltemp = redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_in[0];
    assign redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_out[0] = redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_out_bitsignaltemp;
    assign redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_out[0] = redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo (
        .valid_in(redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_b),
        .valid_out(redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo(BITJOIN,615)
    assign bubble_join_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_q = redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_data_out;

    // bubble_select_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo(BITSELECT,616)
    assign bubble_select_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_b = $unsigned(bubble_join_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_q[63:0]);

    // SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo(STALLENABLE,972)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_fromReg0 <= '0;
            SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_fromReg0 <= SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_toReg0;
            // Successor 1
            SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_fromReg1 <= SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_consumed0 = (~ (SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_backStall) & SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_wireValid) | SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_fromReg0;
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_consumed1 = (~ (redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_out) & SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_wireValid) | SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_fromReg1;
    // Consuming
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_StallValid = SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_backStall & SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_wireValid;
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_toReg0 = SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_StallValid & SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_consumed0;
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_toReg1 = SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_StallValid & SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_or0 = SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_consumed0;
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_wireStall = ~ (SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_consumed1 & SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_or0);
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_backStall = SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_V0 = SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_wireValid & ~ (SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_fromReg0);
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_V1 = SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_wireValid & ~ (SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_wireValid = redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_valid_out;

    // redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo(STALLFIFO,462)
    assign redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_in = SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_V1;
    assign redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_in = SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_backStall;
    assign redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_data_in = bubble_select_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_b;
    assign redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_in_bitsignaltemp = redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_in[0];
    assign redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_in_bitsignaltemp = redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_in[0];
    assign redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_out[0] = redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_out_bitsignaltemp;
    assign redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_out[0] = redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo (
        .valid_in(redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_b),
        .valid_out(redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo(BITJOIN,618)
    assign bubble_join_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_q = redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_data_out;

    // bubble_select_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo(BITSELECT,619)
    assign bubble_select_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_b = $unsigned(bubble_join_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_q[63:0]);

    // SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo(STALLENABLE,974)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_fromReg0 <= '0;
            SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_fromReg0 <= SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_toReg0;
            // Successor 1
            SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_fromReg1 <= SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_consumed0 = (~ (SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_backStall) & SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_wireValid) | SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_fromReg0;
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_consumed1 = (~ (redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_out) & SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_wireValid) | SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_fromReg1;
    // Consuming
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_StallValid = SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_backStall & SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_wireValid;
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_toReg0 = SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_StallValid & SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_consumed0;
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_toReg1 = SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_StallValid & SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_or0 = SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_consumed0;
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_wireStall = ~ (SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_consumed1 & SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_or0);
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_backStall = SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_V0 = SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_wireValid & ~ (SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_fromReg0);
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_V1 = SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_wireValid & ~ (SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_wireValid = redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_valid_out;

    // redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo(STALLFIFO,463)
    assign redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_in = SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_V1;
    assign redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_in = SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_backStall;
    assign redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_data_in = bubble_select_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_b;
    assign redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_in_bitsignaltemp = redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_in[0];
    assign redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_in_bitsignaltemp = redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_in[0];
    assign redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_out[0] = redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_out_bitsignaltemp;
    assign redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_out[0] = redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo (
        .valid_in(redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_b),
        .valid_out(redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo(BITJOIN,621)
    assign bubble_join_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_q = redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_data_out;

    // bubble_select_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo(BITSELECT,622)
    assign bubble_select_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_b = $unsigned(bubble_join_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_q[63:0]);

    // SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo(STALLENABLE,978)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_fromReg0 <= '0;
            SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_fromReg0 <= SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_toReg0;
            // Successor 1
            SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_fromReg1 <= SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_consumed0 = (~ (SE_i_arrayidx73_1_atax0_add_x_backStall) & SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_fromReg0;
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_consumed1 = (~ (SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_backStall) & SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_fromReg1;
    // Consuming
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_StallValid = SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_backStall & SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_wireValid;
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_toReg0 = SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_StallValid & SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_consumed0;
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_toReg1 = SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_StallValid & SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_or0 = SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_consumed0;
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_wireStall = ~ (SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_consumed1 & SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_or0);
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_backStall = SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_V0 = SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_fromReg0);
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_V1 = SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_wireValid = redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_out;

    // SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo(STALLENABLE,976)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_fromReg0 <= '0;
            SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_fromReg0 <= SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_toReg0;
            // Successor 1
            SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_fromReg1 <= SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_consumed0 = (~ (SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_backStall) & SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_wireValid) | SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_fromReg0;
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_consumed1 = (~ (redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_out) & SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_wireValid) | SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_fromReg1;
    // Consuming
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_StallValid = SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_backStall & SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_wireValid;
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_toReg0 = SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_StallValid & SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_consumed0;
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_toReg1 = SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_StallValid & SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_or0 = SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_consumed0;
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_wireStall = ~ (SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_consumed1 & SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_or0);
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_backStall = SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_V0 = SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_wireValid & ~ (SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_fromReg0);
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_V1 = SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_wireValid & ~ (SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_wireValid = redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_valid_out;

    // redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo(STALLFIFO,464)
    assign redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_in = SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_V1;
    assign redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_in = SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_backStall;
    assign redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_data_in = bubble_select_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_b;
    assign redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_in_bitsignaltemp = redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_in[0];
    assign redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_in_bitsignaltemp = redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_in[0];
    assign redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_out[0] = redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_out_bitsignaltemp;
    assign redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_out[0] = redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo (
        .valid_in(redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_in_bitsignaltemp),
        .stall_in(redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_b),
        .valid_out(redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_valid_out_bitsignaltemp),
        .stall_out(redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_stall_out_bitsignaltemp),
        .data_out(redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo(BITJOIN,624)
    assign bubble_join_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_q = redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_data_out;

    // bubble_select_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo(BITSELECT,625)
    assign bubble_select_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_b = $unsigned(bubble_join_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_q[63:0]);

    // i_arrayidx73_1_atax0_add_x(ADD,284)@165
    assign i_arrayidx73_1_atax0_add_x_a = {1'b0, bubble_select_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_b};
    assign i_arrayidx73_1_atax0_add_x_b = {1'b0, i_arrayidx73_1_atax0_shift_join_x_q};
    assign i_arrayidx73_1_atax0_add_x_o = $unsigned(i_arrayidx73_1_atax0_add_x_a) + $unsigned(i_arrayidx73_1_atax0_add_x_b);
    assign i_arrayidx73_1_atax0_add_x_q = i_arrayidx73_1_atax0_add_x_o[64:0];

    // i_arrayidx73_1_atax0_dupName_0_trunc_sel_x(BITSELECT,289)@165
    assign i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_1_atax0_add_x_q[63:0];

    // SE_i_arrayidx73_1_atax0_add_x(STALLENABLE,896)
    // Valid signal propagation
    assign SE_i_arrayidx73_1_atax0_add_x_V0 = SE_i_arrayidx73_1_atax0_add_x_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx73_1_atax0_add_x_backStall = redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out | ~ (SE_i_arrayidx73_1_atax0_add_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx73_1_atax0_add_x_and0 = SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_V0;
    assign SE_i_arrayidx73_1_atax0_add_x_wireValid = SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_V0 & SE_i_arrayidx73_1_atax0_add_x_and0;

    // redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo(STALLFIFO,465)
    assign redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in = SE_i_arrayidx73_1_atax0_add_x_V0;
    assign redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in = SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_backStall;
    assign redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_data_in = i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b;
    assign redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in_bitsignaltemp = redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in[0];
    assign redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in_bitsignaltemp = redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in[0];
    assign redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out[0] = redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out_bitsignaltemp;
    assign redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out[0] = redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo (
        .valid_in(redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b),
        .valid_out(redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11(BITJOIN,563)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_q = i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11(BITSELECT,564)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_q[0:0]);

    // bubble_join_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo(BITJOIN,696)
    assign bubble_join_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_q = redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_data_out;

    // bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo(BITSELECT,697)
    assign bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_b = $unsigned(bubble_join_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_q[0:0]);

    // redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo(STALLFIFO,489)
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_in = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_V1;
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_in = SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_backStall;
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_data_in = bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_b;
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_in_bitsignaltemp = redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_in[0];
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_in_bitsignaltemp = redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_in[0];
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_out[0] = redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_out_bitsignaltemp;
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_out[0] = redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo (
        .valid_in(redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_in_bitsignaltemp),
        .stall_in(redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_b),
        .valid_out(redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_out_bitsignaltemp),
        .stall_out(redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_out_bitsignaltemp),
        .data_out(redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo(BITJOIN,702)
    assign bubble_join_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_q = redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_data_out;

    // bubble_select_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo(BITSELECT,703)
    assign bubble_select_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_b = $unsigned(bubble_join_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9(BITJOIN,557)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_q = i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9(BITSELECT,558)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_q[0:0]);

    // i_reduction_atax_2_atax30(LOGICAL,159)@103
    assign i_reduction_atax_2_atax30_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_b | bubble_select_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_b;

    // redist26_i_reduction_atax_2_atax30_q_62_fifo(STALLFIFO,478)
    assign redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_in = SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_V1;
    assign redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_in = SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_backStall;
    assign redist26_i_reduction_atax_2_atax30_q_62_fifo_data_in = i_reduction_atax_2_atax30_q;
    assign redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_in_bitsignaltemp = redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_in[0];
    assign redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_in_bitsignaltemp = redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_in[0];
    assign redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_out[0] = redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_out_bitsignaltemp;
    assign redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_out[0] = redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist26_i_reduction_atax_2_atax30_q_62_fifo (
        .valid_in(redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_atax_2_atax30_q),
        .valid_out(redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist26_i_reduction_atax_2_atax30_q_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8(BITJOIN,554)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_q = i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8(BITSELECT,555)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7(STALLENABLE,823)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_consumed0 = (~ (SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_consumed1 = (~ (redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_wireValid = i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_valid_out;

    // SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo(STALLENABLE,1034)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_fromReg0 <= '0;
            SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_fromReg0 <= SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_toReg0;
            // Successor 1
            SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_fromReg1 <= SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_consumed0 = (~ (SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_backStall) & SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_wireValid) | SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_fromReg0;
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_consumed1 = (~ (redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_out) & SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_wireValid) | SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_fromReg1;
    // Consuming
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_StallValid = SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_backStall & SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_wireValid;
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_toReg0 = SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_StallValid & SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_consumed0;
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_toReg1 = SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_StallValid & SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_or0 = SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_consumed0;
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_wireStall = ~ (SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_consumed1 & SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_or0);
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_backStall = SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_V0 = SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_wireValid & ~ (SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_fromReg0);
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_V1 = SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_wireValid & ~ (SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_and0 = redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_out;
    assign SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_V0 & SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_and0;

    // redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo(STALLFIFO,492)
    assign redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_V1;
    assign redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_in = SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_backStall;
    assign redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_b;
    assign redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_in_bitsignaltemp = redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_in[0];
    assign redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_in_bitsignaltemp = redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_in[0];
    assign redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_out[0] = redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_out_bitsignaltemp;
    assign redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_out[0] = redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo (
        .valid_in(redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_b),
        .valid_out(redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8(STALLENABLE,825)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_consumed0 = (~ (SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_consumed1 = (~ (redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_wireValid = i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_valid_out;

    // SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo(STALLENABLE,1032)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_fromReg0 <= '0;
            SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_fromReg0 <= SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_toReg0;
            // Successor 1
            SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_fromReg1 <= SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_consumed0 = (~ (SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_backStall) & SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_wireValid) | SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_fromReg0;
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_consumed1 = (~ (redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_out) & SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_wireValid) | SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_fromReg1;
    // Consuming
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_StallValid = SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_backStall & SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_wireValid;
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_toReg0 = SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_StallValid & SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_consumed0;
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_toReg1 = SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_StallValid & SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_or0 = SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_consumed0;
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_wireStall = ~ (SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_consumed1 & SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_or0);
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_backStall = SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_V0 = SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_wireValid & ~ (SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_fromReg0);
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_V1 = SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_wireValid & ~ (SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_and0 = redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_out;
    assign SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_V0 & SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_and0;

    // redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo(STALLFIFO,491)
    assign redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_V1;
    assign redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_in = SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_backStall;
    assign redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_b;
    assign redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_in_bitsignaltemp = redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_in[0];
    assign redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_in_bitsignaltemp = redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_in[0];
    assign redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_out[0] = redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_out_bitsignaltemp;
    assign redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_out[0] = redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo (
        .valid_in(redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_b),
        .valid_out(redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9(STALLENABLE,827)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_consumed0 = (~ (SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_consumed1 = (~ (redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_wireValid = i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10(STALLENABLE,829)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_consumed0 = (~ (SE_i_reduction_atax_8_atax31_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_consumed1 = (~ (redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_wireValid = i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_valid_out;

    // redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo(STALLFIFO,490)
    assign redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_V1;
    assign redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_in = SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_backStall;
    assign redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_b;
    assign redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_in_bitsignaltemp = redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_in[0];
    assign redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_in_bitsignaltemp = redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_in[0];
    assign redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_out[0] = redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_out_bitsignaltemp;
    assign redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_out[0] = redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo (
        .valid_in(redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_b),
        .valid_out(redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo(STALLENABLE,1030)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_fromReg0 <= '0;
            SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_fromReg0 <= SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_toReg0;
            // Successor 1
            SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_fromReg1 <= SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_consumed0 = (~ (SE_i_reduction_atax_4_atax50_backStall) & SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_wireValid) | SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_fromReg0;
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_consumed1 = (~ (redist26_i_reduction_atax_2_atax30_q_62_fifo_stall_out) & SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_wireValid) | SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_fromReg1;
    // Consuming
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_StallValid = SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_backStall & SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_wireValid;
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_toReg0 = SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_StallValid & SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_consumed0;
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_toReg1 = SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_StallValid & SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_or0 = SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_consumed0;
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_wireStall = ~ (SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_consumed1 & SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_or0);
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_backStall = SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_V0 = SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_wireValid & ~ (SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_fromReg0);
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_V1 = SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_wireValid & ~ (SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_and0 = redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_valid_out;
    assign SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_V0 & SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_and0;

    // SE_i_reduction_atax_4_atax50(STALLENABLE,880)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_atax_4_atax50_fromReg0 <= '0;
            SE_i_reduction_atax_4_atax50_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_atax_4_atax50_fromReg0 <= SE_i_reduction_atax_4_atax50_toReg0;
            // Successor 1
            SE_i_reduction_atax_4_atax50_fromReg1 <= SE_i_reduction_atax_4_atax50_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_atax_4_atax50_consumed0 = (~ (SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_backStall) & SE_i_reduction_atax_4_atax50_wireValid) | SE_i_reduction_atax_4_atax50_fromReg0;
    assign SE_i_reduction_atax_4_atax50_consumed1 = (~ (redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_out) & SE_i_reduction_atax_4_atax50_wireValid) | SE_i_reduction_atax_4_atax50_fromReg1;
    // Consuming
    assign SE_i_reduction_atax_4_atax50_StallValid = SE_i_reduction_atax_4_atax50_backStall & SE_i_reduction_atax_4_atax50_wireValid;
    assign SE_i_reduction_atax_4_atax50_toReg0 = SE_i_reduction_atax_4_atax50_StallValid & SE_i_reduction_atax_4_atax50_consumed0;
    assign SE_i_reduction_atax_4_atax50_toReg1 = SE_i_reduction_atax_4_atax50_StallValid & SE_i_reduction_atax_4_atax50_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_atax_4_atax50_or0 = SE_i_reduction_atax_4_atax50_consumed0;
    assign SE_i_reduction_atax_4_atax50_wireStall = ~ (SE_i_reduction_atax_4_atax50_consumed1 & SE_i_reduction_atax_4_atax50_or0);
    assign SE_i_reduction_atax_4_atax50_backStall = SE_i_reduction_atax_4_atax50_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_atax_4_atax50_V0 = SE_i_reduction_atax_4_atax50_wireValid & ~ (SE_i_reduction_atax_4_atax50_fromReg0);
    assign SE_i_reduction_atax_4_atax50_V1 = SE_i_reduction_atax_4_atax50_wireValid & ~ (SE_i_reduction_atax_4_atax50_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_atax_4_atax50_and0 = SE_out_redist38_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out_31_fifo_V0;
    assign SE_i_reduction_atax_4_atax50_wireValid = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_V0 & SE_i_reduction_atax_4_atax50_and0;

    // SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo(STALLENABLE,1026)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_fromReg0 <= '0;
            SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_fromReg0 <= SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_toReg0;
            // Successor 1
            SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_fromReg1 <= SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_consumed0 = (~ (SE_i_reduction_atax_4_atax50_backStall) & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_wireValid) | SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_fromReg0;
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_consumed1 = (~ (redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_stall_out) & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_wireValid) | SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_fromReg1;
    // Consuming
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_StallValid = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_backStall & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_wireValid;
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_toReg0 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_StallValid & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_consumed0;
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_toReg1 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_StallValid & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_or0 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_consumed0;
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_wireStall = ~ (SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_consumed1 & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_or0);
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_backStall = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_V0 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_wireValid & ~ (SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_fromReg0);
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_V1 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_wireValid & ~ (SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_wireValid = redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_out;

    // redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo(STALLFIFO,488)
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_in = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_V1;
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_in = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_backStall;
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_data_in = bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_b;
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_in_bitsignaltemp = redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_in[0];
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_in_bitsignaltemp = redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_in[0];
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_out[0] = redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_out_bitsignaltemp;
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_out[0] = redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo (
        .valid_in(redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_b),
        .valid_out(redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo(STALLENABLE,1024)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_fromReg0 <= '0;
            SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_fromReg0 <= SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_toReg0;
            // Successor 1
            SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_fromReg1 <= SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_consumed0 = (~ (SE_i_reduction_atax_8_atax31_backStall) & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_wireValid) | SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_fromReg0;
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_consumed1 = (~ (redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_stall_out) & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_wireValid) | SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_fromReg1;
    // Consuming
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_StallValid = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_backStall & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_wireValid;
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_toReg0 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_StallValid & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_consumed0;
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_toReg1 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_StallValid & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_or0 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_consumed0;
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_wireStall = ~ (SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_consumed1 & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_or0);
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_backStall = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_V0 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_wireValid & ~ (SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_fromReg0);
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_V1 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_wireValid & ~ (SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_wireValid = redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11(STALLENABLE,831)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_consumed0 = (~ (SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_consumed1 = (~ (redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_wireValid = i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_valid_out;

    // redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo(STALLFIFO,487)
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_V1;
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_in = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_backStall;
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_b;
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_in_bitsignaltemp = redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_in[0];
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_in_bitsignaltemp = redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_in[0];
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_out[0] = redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_out_bitsignaltemp;
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_out[0] = redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo (
        .valid_in(redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_b),
        .valid_out(redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo(BITJOIN,693)
    assign bubble_join_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_q = redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_data_out;

    // bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo(BITSELECT,694)
    assign bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_b = $unsigned(bubble_join_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10(BITJOIN,560)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_q = i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10(BITSELECT,561)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_q[0:0]);

    // i_reduction_atax_8_atax31(LOGICAL,165)@72
    assign i_reduction_atax_8_atax31_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_b | bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_b;

    // SE_i_reduction_atax_8_atax31(STALLENABLE,884)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_atax_8_atax31_fromReg0 <= '0;
            SE_i_reduction_atax_8_atax31_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_atax_8_atax31_fromReg0 <= SE_i_reduction_atax_8_atax31_toReg0;
            // Successor 1
            SE_i_reduction_atax_8_atax31_fromReg1 <= SE_i_reduction_atax_8_atax31_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_atax_8_atax31_consumed0 = (~ (SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_backStall) & SE_i_reduction_atax_8_atax31_wireValid) | SE_i_reduction_atax_8_atax31_fromReg0;
    assign SE_i_reduction_atax_8_atax31_consumed1 = (~ (redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_out) & SE_i_reduction_atax_8_atax31_wireValid) | SE_i_reduction_atax_8_atax31_fromReg1;
    // Consuming
    assign SE_i_reduction_atax_8_atax31_StallValid = SE_i_reduction_atax_8_atax31_backStall & SE_i_reduction_atax_8_atax31_wireValid;
    assign SE_i_reduction_atax_8_atax31_toReg0 = SE_i_reduction_atax_8_atax31_StallValid & SE_i_reduction_atax_8_atax31_consumed0;
    assign SE_i_reduction_atax_8_atax31_toReg1 = SE_i_reduction_atax_8_atax31_StallValid & SE_i_reduction_atax_8_atax31_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_atax_8_atax31_or0 = SE_i_reduction_atax_8_atax31_consumed0;
    assign SE_i_reduction_atax_8_atax31_wireStall = ~ (SE_i_reduction_atax_8_atax31_consumed1 & SE_i_reduction_atax_8_atax31_or0);
    assign SE_i_reduction_atax_8_atax31_backStall = SE_i_reduction_atax_8_atax31_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_atax_8_atax31_V0 = SE_i_reduction_atax_8_atax31_wireValid & ~ (SE_i_reduction_atax_8_atax31_fromReg0);
    assign SE_i_reduction_atax_8_atax31_V1 = SE_i_reduction_atax_8_atax31_wireValid & ~ (SE_i_reduction_atax_8_atax31_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_atax_8_atax31_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_V0;
    assign SE_i_reduction_atax_8_atax31_wireValid = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_31_fifo_V0 & SE_i_reduction_atax_8_atax31_and0;

    // redist22_i_reduction_atax_8_atax31_q_62_fifo(STALLFIFO,474)
    assign redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_in = SE_i_reduction_atax_8_atax31_V1;
    assign redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_in = SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_backStall;
    assign redist22_i_reduction_atax_8_atax31_q_62_fifo_data_in = i_reduction_atax_8_atax31_q;
    assign redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_in_bitsignaltemp = redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_in[0];
    assign redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_in_bitsignaltemp = redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_in[0];
    assign redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_out[0] = redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_out_bitsignaltemp;
    assign redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_out[0] = redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist22_i_reduction_atax_8_atax31_q_62_fifo (
        .valid_in(redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_atax_8_atax31_q),
        .valid_out(redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_reduction_atax_8_atax31_q_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_reduction_atax_8_atax31_q_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist22_i_reduction_atax_8_atax31_q_62_fifo(BITJOIN,654)
    assign bubble_join_redist22_i_reduction_atax_8_atax31_q_62_fifo_q = redist22_i_reduction_atax_8_atax31_q_62_fifo_data_out;

    // bubble_select_redist22_i_reduction_atax_8_atax31_q_62_fifo(BITSELECT,655)
    assign bubble_select_redist22_i_reduction_atax_8_atax31_q_62_fifo_b = $unsigned(bubble_join_redist22_i_reduction_atax_8_atax31_q_62_fifo_q[0:0]);

    // SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo(STALLENABLE,998)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_fromReg0 <= '0;
            SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_fromReg0 <= SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_toReg0;
            // Successor 1
            SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_fromReg1 <= SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_consumed0 = (~ (SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_backStall) & SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_wireValid) | SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_fromReg0;
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_consumed1 = (~ (redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_out) & SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_wireValid) | SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_fromReg1;
    // Consuming
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_StallValid = SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_backStall & SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_wireValid;
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_toReg0 = SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_StallValid & SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_consumed0;
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_toReg1 = SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_StallValid & SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_or0 = SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_consumed0;
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_wireStall = ~ (SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_consumed1 & SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_or0);
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_backStall = SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_V0 = SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_wireValid & ~ (SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_fromReg0);
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_V1 = SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_wireValid & ~ (SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_wireValid = redist22_i_reduction_atax_8_atax31_q_62_fifo_valid_out;

    // redist23_i_reduction_atax_8_atax31_q_124_fifo(STALLFIFO,475)
    assign redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_in = SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_V1;
    assign redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_in = SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_backStall;
    assign redist23_i_reduction_atax_8_atax31_q_124_fifo_data_in = bubble_select_redist22_i_reduction_atax_8_atax31_q_62_fifo_b;
    assign redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_in_bitsignaltemp = redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_in[0];
    assign redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_in_bitsignaltemp = redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_in[0];
    assign redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_out[0] = redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_out_bitsignaltemp;
    assign redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_out[0] = redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist23_i_reduction_atax_8_atax31_q_124_fifo (
        .valid_in(redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_in_bitsignaltemp),
        .stall_in(redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist22_i_reduction_atax_8_atax31_q_62_fifo_b),
        .valid_out(redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_out_bitsignaltemp),
        .stall_out(redist23_i_reduction_atax_8_atax31_q_124_fifo_stall_out_bitsignaltemp),
        .data_out(redist23_i_reduction_atax_8_atax31_q_124_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo(BITJOIN,705)
    assign bubble_join_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_q = redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_data_out;

    // bubble_select_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo(BITSELECT,706)
    assign bubble_select_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_b = $unsigned(bubble_join_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_q[0:0]);

    // i_reduction_atax_7_atax29(LOGICAL,164)@134
    assign i_reduction_atax_7_atax29_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_b | bubble_select_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_b;

    // redist24_i_reduction_atax_7_atax29_q_62_fifo(STALLFIFO,476)
    assign redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_in = SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_V1;
    assign redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_in = SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_backStall;
    assign redist24_i_reduction_atax_7_atax29_q_62_fifo_data_in = i_reduction_atax_7_atax29_q;
    assign redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_in_bitsignaltemp = redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_in[0];
    assign redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_in_bitsignaltemp = redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_in[0];
    assign redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_out[0] = redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_out_bitsignaltemp;
    assign redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_out[0] = redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist24_i_reduction_atax_7_atax29_q_62_fifo (
        .valid_in(redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_atax_7_atax29_q),
        .valid_out(redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_reduction_atax_7_atax29_q_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_reduction_atax_7_atax29_q_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7(BITJOIN,551)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_q = i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7(BITSELECT,552)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_q[0:0]);

    // redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo(STALLFIFO,493)
    assign redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_V1;
    assign redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_in = SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_backStall;
    assign redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_b;
    assign redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_in_bitsignaltemp = redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_in[0];
    assign redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_in_bitsignaltemp = redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_in[0];
    assign redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_out[0] = redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_out_bitsignaltemp;
    assign redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_out[0] = redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo (
        .valid_in(redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_b),
        .valid_out(redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo(STALLENABLE,1036)
    // Valid signal propagation
    assign SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_V0 = SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_backStall = i_llvm_fpga_mem_memdep_16_atax77_out_o_stall | ~ (SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and0 = redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_valid_out;
    assign SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and1 = redist24_i_reduction_atax_7_atax29_q_62_fifo_valid_out & SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and0;
    assign SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and2 = redist23_i_reduction_atax_8_atax31_q_124_fifo_valid_out & SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and1;
    assign SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and3 = redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_valid_out & SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and2;
    assign SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and4 = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_valid_out & SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and3;
    assign SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and5 = SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_V0 & SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and4;
    assign SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_wireValid = SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_V0 & SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_and5;

    // SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo(STALLENABLE,1066)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_fromReg0 <= '0;
            SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_fromReg0 <= SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_toReg0;
            // Successor 1
            SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_fromReg1 <= SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_consumed0 = (~ (SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_backStall) & SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_wireValid) | SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_fromReg0;
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_consumed1 = (~ (redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_out) & SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_wireValid) | SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_fromReg1;
    // Consuming
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_StallValid = SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_backStall & SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_wireValid;
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_toReg0 = SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_StallValid & SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_consumed0;
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_toReg1 = SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_StallValid & SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_or0 = SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_consumed0;
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_wireStall = ~ (SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_consumed1 & SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_or0);
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_backStall = SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_V0 = SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_wireValid & ~ (SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_fromReg0);
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_V1 = SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_wireValid & ~ (SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_wireValid = redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_out;

    // redist56_i_first_cleanup_xor_atax35_q_194_fifo(STALLFIFO,508)
    assign redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_in = SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_V1;
    assign redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_in = SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_backStall;
    assign redist56_i_first_cleanup_xor_atax35_q_194_fifo_data_in = bubble_select_redist55_i_first_cleanup_xor_atax35_q_163_fifo_b;
    assign redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_in_bitsignaltemp = redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_in[0];
    assign redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_in_bitsignaltemp = redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_in[0];
    assign redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_out[0] = redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_out_bitsignaltemp;
    assign redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_out[0] = redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist56_i_first_cleanup_xor_atax35_q_194_fifo (
        .valid_in(redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_in_bitsignaltemp),
        .stall_in(redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist55_i_first_cleanup_xor_atax35_q_163_fifo_b),
        .valid_out(redist56_i_first_cleanup_xor_atax35_q_194_fifo_valid_out_bitsignaltemp),
        .stall_out(redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_out_bitsignaltemp),
        .data_out(redist56_i_first_cleanup_xor_atax35_q_194_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo(BITJOIN,597)
    assign bubble_join_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_q = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_data_out;

    // bubble_select_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo(BITSELECT,598)
    assign bubble_select_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_b = $unsigned(bubble_join_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_q[31:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87(STALLENABLE,845)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_wireValid = i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_18_atax79(BITJOIN,517)
    assign bubble_join_i_llvm_fpga_mem_memdep_18_atax79_q = i_llvm_fpga_mem_memdep_18_atax79_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_18_atax79(BITSELECT,518)
    assign bubble_select_i_llvm_fpga_mem_memdep_18_atax79_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_18_atax79_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi19_push24_atax87(BLACKBOX,135)@196
    // in in_stall_in@20000000
    // out out_data_out@197
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@197
    atax_i_llvm_fpga_push_i1_memdep_phi19_push24_0 thei_llvm_fpga_push_i1_memdep_phi19_push24_atax87 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_18_atax79_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_feedback_stall_out_24),
        .in_keep_going(bubble_select_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87(STALLENABLE,844)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_backStall = i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_and0 = SE_out_i_llvm_fpga_mem_memdep_18_atax79_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_wireValid = SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_and0;

    // SE_out_i_llvm_fpga_mem_memdep_18_atax79(STALLENABLE,805)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_18_atax79_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_18_atax79_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_18_atax79_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_18_atax79_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_18_atax79_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_18_atax79_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_18_atax79_wireValid) | SE_out_i_llvm_fpga_mem_memdep_18_atax79_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_backStall) & SE_out_i_llvm_fpga_mem_memdep_18_atax79_wireValid) | SE_out_i_llvm_fpga_mem_memdep_18_atax79_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_StallValid = SE_out_i_llvm_fpga_mem_memdep_18_atax79_backStall & SE_out_i_llvm_fpga_mem_memdep_18_atax79_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_toReg0 = SE_out_i_llvm_fpga_mem_memdep_18_atax79_StallValid & SE_out_i_llvm_fpga_mem_memdep_18_atax79_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_toReg1 = SE_out_i_llvm_fpga_mem_memdep_18_atax79_StallValid & SE_out_i_llvm_fpga_mem_memdep_18_atax79_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_or0 = SE_out_i_llvm_fpga_mem_memdep_18_atax79_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_18_atax79_consumed1 & SE_out_i_llvm_fpga_mem_memdep_18_atax79_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_backStall = SE_out_i_llvm_fpga_mem_memdep_18_atax79_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_V0 = SE_out_i_llvm_fpga_mem_memdep_18_atax79_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_18_atax79_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_V1 = SE_out_i_llvm_fpga_mem_memdep_18_atax79_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_18_atax79_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_18_atax79_wireValid = i_llvm_fpga_mem_memdep_18_atax79_out_o_valid;

    // bubble_join_redist26_i_reduction_atax_2_atax30_q_62_fifo(BITJOIN,666)
    assign bubble_join_redist26_i_reduction_atax_2_atax30_q_62_fifo_q = redist26_i_reduction_atax_2_atax30_q_62_fifo_data_out;

    // bubble_select_redist26_i_reduction_atax_2_atax30_q_62_fifo(BITSELECT,667)
    assign bubble_select_redist26_i_reduction_atax_2_atax30_q_62_fifo_b = $unsigned(bubble_join_redist26_i_reduction_atax_2_atax30_q_62_fifo_q[0:0]);

    // bubble_join_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo(BITJOIN,708)
    assign bubble_join_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_q = redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_data_out;

    // bubble_select_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo(BITSELECT,709)
    assign bubble_select_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_b = $unsigned(bubble_join_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_q[0:0]);

    // i_reduction_atax_1_atax28(LOGICAL,158)@165
    assign i_reduction_atax_1_atax28_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_b | bubble_select_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_b;

    // i_reduction_atax_13_atax51(LOGICAL,155)@165
    assign i_reduction_atax_13_atax51_q = i_reduction_atax_1_atax28_q | bubble_select_redist26_i_reduction_atax_2_atax30_q_62_fifo_b;

    // bubble_join_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo(BITJOIN,699)
    assign bubble_join_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_q = redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_data_out;

    // bubble_select_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo(BITSELECT,700)
    assign bubble_select_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_b = $unsigned(bubble_join_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_q[0:0]);

    // i_reduction_atax_14_atax69(LOGICAL,156)@165
    assign i_reduction_atax_14_atax69_q = bubble_select_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_b | i_reduction_atax_13_atax51_q;

    // c_i32_295(CONSTANT,9)
    assign c_i32_295_q = $unsigned(32'b00000000000000000000000000000010);

    // i_inc75_1_atax19(LOGICAL,78)@165
    assign i_inc75_1_atax19_q = bubble_select_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_b | c_i32_295_q;

    // i_inc75_1_atax19_vt_select_0_merged_bit_select(BITSELECT,385)@165
    assign i_inc75_1_atax19_vt_select_0_merged_bit_select_b = i_inc75_1_atax19_q[0:0];
    assign i_inc75_1_atax19_vt_select_0_merged_bit_select_c = i_inc75_1_atax19_q[31:2];

    // i_inc75_1_atax19_vt_join(BITJOIN,80)@165
    assign i_inc75_1_atax19_vt_join_q = {i_inc75_1_atax19_vt_select_0_merged_bit_select_c, VCC_q, i_inc75_1_atax19_vt_select_0_merged_bit_select_b};

    // i_idxprom70_2_atax41_sel_x(BITSELECT,338)@165
    assign i_idxprom70_2_atax41_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_1_atax19_vt_join_q[31:0]};

    // i_idxprom70_2_atax41_vt_select_0_merged_bit_select(BITSELECT,389)@165
    assign i_idxprom70_2_atax41_vt_select_0_merged_bit_select_in = i_idxprom70_2_atax41_sel_x_b[31:0];
    assign i_idxprom70_2_atax41_vt_select_0_merged_bit_select_b = i_idxprom70_2_atax41_vt_select_0_merged_bit_select_in[0:0];
    assign i_idxprom70_2_atax41_vt_select_0_merged_bit_select_c = i_idxprom70_2_atax41_vt_select_0_merged_bit_select_in[31:2];

    // i_idxprom70_2_atax41_vt_join(BITJOIN,42)@165
    assign i_idxprom70_2_atax41_vt_join_q = {c_i32_091_q, i_idxprom70_2_atax41_vt_select_0_merged_bit_select_c, VCC_q, i_idxprom70_2_atax41_vt_select_0_merged_bit_select_b};

    // i_arrayidx73_2_atax0_narrow_x(BITSELECT,292)@165
    assign i_arrayidx73_2_atax0_narrow_x_b = i_idxprom70_2_atax41_vt_join_q[61:0];

    // i_arrayidx73_2_atax0_shift_join_x(BITJOIN,293)@165
    assign i_arrayidx73_2_atax0_shift_join_x_q = {i_arrayidx73_2_atax0_narrow_x_b, i_arrayidx7132_atax38_vt_const_1_q};

    // i_arrayidx73_2_atax0_add_x(ADD,290)@165
    assign i_arrayidx73_2_atax0_add_x_a = {1'b0, bubble_select_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_b};
    assign i_arrayidx73_2_atax0_add_x_b = {1'b0, i_arrayidx73_2_atax0_shift_join_x_q};
    assign i_arrayidx73_2_atax0_add_x_o = $unsigned(i_arrayidx73_2_atax0_add_x_a) + $unsigned(i_arrayidx73_2_atax0_add_x_b);
    assign i_arrayidx73_2_atax0_add_x_q = i_arrayidx73_2_atax0_add_x_o[64:0];

    // i_arrayidx73_2_atax0_dupName_0_trunc_sel_x(BITSELECT,295)@165
    assign i_arrayidx73_2_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_2_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_18_atax79(BLACKBOX,115)@165
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
    // out out_o_valid@196
    // out out_o_writeack@196
    atax_i_llvm_fpga_mem_memdep_18_0 thei_llvm_fpga_mem_memdep_18_atax79 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_2_atax0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_atax_14_atax69_q),
        .in_i_predicate(bubble_select_redist55_i_first_cleanup_xor_atax35_q_163_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_18_atax79_backStall),
        .in_i_valid(SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_V0),
        .in_i_writedata(bubble_select_redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_b),
        .in_memdep_18_atax_avm_readdata(in_memdep_18_atax_avm_readdata),
        .in_memdep_18_atax_avm_readdatavalid(in_memdep_18_atax_avm_readdatavalid),
        .in_memdep_18_atax_avm_waitrequest(in_memdep_18_atax_avm_waitrequest),
        .in_memdep_18_atax_avm_writeack(in_memdep_18_atax_avm_writeack),
        .out_lsu_memdep_18_o_active(i_llvm_fpga_mem_memdep_18_atax79_out_lsu_memdep_18_o_active),
        .out_memdep_18_atax_avm_address(i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_address),
        .out_memdep_18_atax_avm_burstcount(i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_burstcount),
        .out_memdep_18_atax_avm_byteenable(i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_byteenable),
        .out_memdep_18_atax_avm_enable(i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_enable),
        .out_memdep_18_atax_avm_read(i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_read),
        .out_memdep_18_atax_avm_write(i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_write),
        .out_memdep_18_atax_avm_writedata(i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_18_atax79_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_18_atax79_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_18_atax79_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo(STALLFIFO,455)
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V3;
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_in = SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_backStall;
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_d;
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_in_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_in[0];
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_in_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_in[0];
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_out[0] = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_out_bitsignaltemp;
    assign redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_out[0] = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(156),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo (
        .valid_in(redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_d),
        .valid_out(redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo(STALLENABLE,1028)
    // Valid signal propagation
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_V0 = SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_backStall = i_llvm_fpga_mem_memdep_18_atax79_out_o_stall | ~ (SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and0 = redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_valid_out;
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and1 = redist26_i_reduction_atax_2_atax30_q_62_fifo_valid_out & SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and0;
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and2 = redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_valid_out & SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and1;
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and3 = SE_out_redist34_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_163_fifo_V1 & SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and2;
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and4 = SE_out_redist11_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_155_fifo_V1 & SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and3;
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and5 = SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_V0 & SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and4;
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_wireValid = SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_V0 & SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_and5;

    // SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo(STALLENABLE,1064)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_fromReg0 <= '0;
            SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_fromReg0 <= SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_toReg0;
            // Successor 1
            SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_fromReg1 <= SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_consumed0 = (~ (SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_124_fifo_backStall) & SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_wireValid) | SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_fromReg0;
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_consumed1 = (~ (redist56_i_first_cleanup_xor_atax35_q_194_fifo_stall_out) & SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_wireValid) | SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_fromReg1;
    // Consuming
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_StallValid = SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_backStall & SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_wireValid;
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_toReg0 = SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_StallValid & SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_consumed0;
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_toReg1 = SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_StallValid & SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_or0 = SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_consumed0;
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_wireStall = ~ (SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_consumed1 & SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_or0);
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_backStall = SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_V0 = SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_wireValid & ~ (SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_fromReg0);
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_V1 = SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_wireValid & ~ (SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_wireValid = redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_out;

    // redist55_i_first_cleanup_xor_atax35_q_163_fifo(STALLFIFO,507)
    assign redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_in = SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_V1;
    assign redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_in = SE_out_redist55_i_first_cleanup_xor_atax35_q_163_fifo_backStall;
    assign redist55_i_first_cleanup_xor_atax35_q_163_fifo_data_in = bubble_select_redist54_i_first_cleanup_xor_atax35_q_132_fifo_b;
    assign redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_in_bitsignaltemp = redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_in[0];
    assign redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_in_bitsignaltemp = redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_in[0];
    assign redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_out[0] = redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_out_bitsignaltemp;
    assign redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_out[0] = redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist55_i_first_cleanup_xor_atax35_q_163_fifo (
        .valid_in(redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_in_bitsignaltemp),
        .stall_in(redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist54_i_first_cleanup_xor_atax35_q_132_fifo_b),
        .valid_out(redist55_i_first_cleanup_xor_atax35_q_163_fifo_valid_out_bitsignaltemp),
        .stall_out(redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_out_bitsignaltemp),
        .data_out(redist55_i_first_cleanup_xor_atax35_q_163_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo(BITJOIN,600)
    assign bubble_join_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_q = redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_data_out;

    // bubble_select_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo(BITSELECT,601)
    assign bubble_select_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_b = $unsigned(bubble_join_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_q[31:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81(STALLENABLE,847)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_wireValid = i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_20_atax72(BITJOIN,521)
    assign bubble_join_i_llvm_fpga_mem_memdep_20_atax72_q = i_llvm_fpga_mem_memdep_20_atax72_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_20_atax72(BITSELECT,522)
    assign bubble_select_i_llvm_fpga_mem_memdep_20_atax72_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_20_atax72_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi21_push25_atax81(BLACKBOX,136)@165
    // in in_stall_in@20000000
    // out out_data_out@166
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@166
    atax_i_llvm_fpga_push_i1_memdep_phi21_push25_0 thei_llvm_fpga_push_i1_memdep_phi21_push25_atax81 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_20_atax72_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_feedback_stall_out_25),
        .in_keep_going(bubble_select_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81(STALLENABLE,846)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_backStall = i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_and0 = SE_out_i_llvm_fpga_mem_memdep_20_atax72_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_wireValid = SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_and0;

    // SE_out_i_llvm_fpga_mem_memdep_20_atax72(STALLENABLE,807)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_20_atax72_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_20_atax72_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_20_atax72_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_20_atax72_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_20_atax72_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_20_atax72_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_20_atax72_wireValid) | SE_out_i_llvm_fpga_mem_memdep_20_atax72_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_backStall) & SE_out_i_llvm_fpga_mem_memdep_20_atax72_wireValid) | SE_out_i_llvm_fpga_mem_memdep_20_atax72_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_StallValid = SE_out_i_llvm_fpga_mem_memdep_20_atax72_backStall & SE_out_i_llvm_fpga_mem_memdep_20_atax72_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_toReg0 = SE_out_i_llvm_fpga_mem_memdep_20_atax72_StallValid & SE_out_i_llvm_fpga_mem_memdep_20_atax72_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_toReg1 = SE_out_i_llvm_fpga_mem_memdep_20_atax72_StallValid & SE_out_i_llvm_fpga_mem_memdep_20_atax72_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_or0 = SE_out_i_llvm_fpga_mem_memdep_20_atax72_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_20_atax72_consumed1 & SE_out_i_llvm_fpga_mem_memdep_20_atax72_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_backStall = SE_out_i_llvm_fpga_mem_memdep_20_atax72_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_V0 = SE_out_i_llvm_fpga_mem_memdep_20_atax72_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_20_atax72_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_V1 = SE_out_i_llvm_fpga_mem_memdep_20_atax72_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_20_atax72_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_20_atax72_wireValid = i_llvm_fpga_mem_memdep_20_atax72_out_o_valid;

    // i_reduction_atax_17_atax52(LOGICAL,157)@134
    assign i_reduction_atax_17_atax52_q = i_reduction_atax_7_atax29_q | bubble_select_redist22_i_reduction_atax_8_atax31_q_62_fifo_b;

    // c_i32_396(CONSTANT,10)
    assign c_i32_396_q = $unsigned(32'b00000000000000000000000000000011);

    // i_inc75_2_atax20(LOGICAL,83)@134
    assign i_inc75_2_atax20_q = bubble_select_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_b | c_i32_396_q;

    // i_inc75_2_atax20_vt_select_31(BITSELECT,86)@134
    assign i_inc75_2_atax20_vt_select_31_b = i_inc75_2_atax20_q[31:2];

    // i_inc75_2_atax20_vt_join(BITJOIN,85)@134
    assign i_inc75_2_atax20_vt_join_q = {i_inc75_2_atax20_vt_select_31_b, i_idxprom70_3_atax42_vt_const_1_q};

    // i_idxprom70_3_atax42_sel_x(BITSELECT,339)@134
    assign i_idxprom70_3_atax42_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_2_atax20_vt_join_q[31:0]};

    // i_idxprom70_3_atax42_vt_select_31(BITSELECT,49)@134
    assign i_idxprom70_3_atax42_vt_select_31_b = i_idxprom70_3_atax42_sel_x_b[31:2];

    // i_idxprom70_3_atax42_vt_const_1(CONSTANT,46)
    assign i_idxprom70_3_atax42_vt_const_1_q = $unsigned(2'b11);

    // i_idxprom70_3_atax42_vt_join(BITJOIN,48)@134
    assign i_idxprom70_3_atax42_vt_join_q = {c_i32_091_q, i_idxprom70_3_atax42_vt_select_31_b, i_idxprom70_3_atax42_vt_const_1_q};

    // i_arrayidx73_3_atax0_narrow_x(BITSELECT,298)@134
    assign i_arrayidx73_3_atax0_narrow_x_b = i_idxprom70_3_atax42_vt_join_q[61:0];

    // i_arrayidx73_3_atax0_shift_join_x(BITJOIN,299)@134
    assign i_arrayidx73_3_atax0_shift_join_x_q = {i_arrayidx73_3_atax0_narrow_x_b, i_arrayidx7132_atax38_vt_const_1_q};

    // i_arrayidx73_3_atax0_add_x(ADD,296)@134
    assign i_arrayidx73_3_atax0_add_x_a = {1'b0, bubble_select_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_b};
    assign i_arrayidx73_3_atax0_add_x_b = {1'b0, i_arrayidx73_3_atax0_shift_join_x_q};
    assign i_arrayidx73_3_atax0_add_x_o = $unsigned(i_arrayidx73_3_atax0_add_x_a) + $unsigned(i_arrayidx73_3_atax0_add_x_b);
    assign i_arrayidx73_3_atax0_add_x_q = i_arrayidx73_3_atax0_add_x_o[64:0];

    // i_arrayidx73_3_atax0_dupName_0_trunc_sel_x(BITSELECT,301)@134
    assign i_arrayidx73_3_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_3_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_20_atax72(BLACKBOX,116)@134
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
    // out out_o_valid@165
    // out out_o_writeack@165
    atax_i_llvm_fpga_mem_memdep_20_0 thei_llvm_fpga_mem_memdep_20_atax72 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_3_atax0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_atax_17_atax52_q),
        .in_i_predicate(bubble_select_redist54_i_first_cleanup_xor_atax35_q_132_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_20_atax72_backStall),
        .in_i_valid(SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_V0),
        .in_i_writedata(bubble_select_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_b),
        .in_memdep_20_atax_avm_readdata(in_memdep_20_atax_avm_readdata),
        .in_memdep_20_atax_avm_readdatavalid(in_memdep_20_atax_avm_readdatavalid),
        .in_memdep_20_atax_avm_waitrequest(in_memdep_20_atax_avm_waitrequest),
        .in_memdep_20_atax_avm_writeack(in_memdep_20_atax_avm_writeack),
        .out_lsu_memdep_20_o_active(i_llvm_fpga_mem_memdep_20_atax72_out_lsu_memdep_20_o_active),
        .out_memdep_20_atax_avm_address(i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_address),
        .out_memdep_20_atax_avm_burstcount(i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_burstcount),
        .out_memdep_20_atax_avm_byteenable(i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_byteenable),
        .out_memdep_20_atax_avm_enable(i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_enable),
        .out_memdep_20_atax_avm_read(i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_read),
        .out_memdep_20_atax_avm_write(i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_write),
        .out_memdep_20_atax_avm_writedata(i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_20_atax72_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_20_atax72_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_20_atax72_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo(STALLFIFO,456)
    assign redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V4;
    assign redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_in = SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_backStall;
    assign redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_e;
    assign redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_in_bitsignaltemp = redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_in[0];
    assign redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_in_bitsignaltemp = redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_in[0];
    assign redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_out[0] = redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_out_bitsignaltemp;
    assign redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_out[0] = redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(125),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo (
        .valid_in(redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_e),
        .valid_out(redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo(STALLENABLE,962)
    // Valid signal propagation
    assign SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_V0 = SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_backStall = i_llvm_fpga_mem_memdep_20_atax72_out_o_stall | ~ (SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and0 = redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_valid_out;
    assign SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and1 = SE_out_redist33_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_132_fifo_V1 & SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and0;
    assign SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and2 = SE_out_redist10_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_124_fifo_V0 & SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and1;
    assign SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and3 = SE_out_redist39_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out_31_fifo_V0 & SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and2;
    assign SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and4 = SE_out_redist22_i_reduction_atax_8_atax31_q_62_fifo_V0 & SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and3;
    assign SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_wireValid = SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_V0 & SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_and4;

    // SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo(STALLENABLE,1062)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_fromReg0 <= '0;
            SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_fromReg0 <= SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_toReg0;
            // Successor 1
            SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_fromReg1 <= SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_consumed0 = (~ (SE_out_redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_backStall) & SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_wireValid) | SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_fromReg0;
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_consumed1 = (~ (redist55_i_first_cleanup_xor_atax35_q_163_fifo_stall_out) & SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_wireValid) | SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_fromReg1;
    // Consuming
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_StallValid = SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_backStall & SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_wireValid;
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_toReg0 = SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_StallValid & SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_consumed0;
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_toReg1 = SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_StallValid & SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_or0 = SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_consumed0;
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_wireStall = ~ (SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_consumed1 & SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_or0);
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_backStall = SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_V0 = SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_wireValid & ~ (SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_fromReg0);
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_V1 = SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_wireValid & ~ (SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_wireValid = redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_out;

    // redist54_i_first_cleanup_xor_atax35_q_132_fifo(STALLFIFO,506)
    assign redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_in = SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_V1;
    assign redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_in = SE_out_redist54_i_first_cleanup_xor_atax35_q_132_fifo_backStall;
    assign redist54_i_first_cleanup_xor_atax35_q_132_fifo_data_in = bubble_select_redist53_i_first_cleanup_xor_atax35_q_101_fifo_b;
    assign redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_in_bitsignaltemp = redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_in[0];
    assign redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_in_bitsignaltemp = redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_in[0];
    assign redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_out[0] = redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_out_bitsignaltemp;
    assign redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_out[0] = redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist54_i_first_cleanup_xor_atax35_q_132_fifo (
        .valid_in(redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_in_bitsignaltemp),
        .stall_in(redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist53_i_first_cleanup_xor_atax35_q_101_fifo_b),
        .valid_out(redist54_i_first_cleanup_xor_atax35_q_132_fifo_valid_out_bitsignaltemp),
        .stall_out(redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_out_bitsignaltemp),
        .data_out(redist54_i_first_cleanup_xor_atax35_q_132_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo(BITJOIN,603)
    assign bubble_join_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_q = redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_data_out;

    // bubble_select_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo(BITSELECT,604)
    assign bubble_select_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_b = $unsigned(bubble_join_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_q[31:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82(STALLENABLE,849)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_wireValid = i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_23_atax73(BITJOIN,525)
    assign bubble_join_i_llvm_fpga_mem_memdep_23_atax73_q = i_llvm_fpga_mem_memdep_23_atax73_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_23_atax73(BITSELECT,526)
    assign bubble_select_i_llvm_fpga_mem_memdep_23_atax73_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_23_atax73_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi24_push26_atax82(BLACKBOX,137)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    atax_i_llvm_fpga_push_i1_memdep_phi24_push26_0 thei_llvm_fpga_push_i1_memdep_phi24_push26_atax82 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_23_atax73_b),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_feedback_stall_out_26),
        .in_keep_going(bubble_select_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_V0),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82(STALLENABLE,848)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_backStall = i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_and0 = SE_out_i_llvm_fpga_mem_memdep_23_atax73_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_wireValid = SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_and0;

    // SE_out_i_llvm_fpga_mem_memdep_23_atax73(STALLENABLE,809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_23_atax73_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_23_atax73_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_23_atax73_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_23_atax73_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_23_atax73_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_23_atax73_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_23_atax73_wireValid) | SE_out_i_llvm_fpga_mem_memdep_23_atax73_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_backStall) & SE_out_i_llvm_fpga_mem_memdep_23_atax73_wireValid) | SE_out_i_llvm_fpga_mem_memdep_23_atax73_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_StallValid = SE_out_i_llvm_fpga_mem_memdep_23_atax73_backStall & SE_out_i_llvm_fpga_mem_memdep_23_atax73_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_toReg0 = SE_out_i_llvm_fpga_mem_memdep_23_atax73_StallValid & SE_out_i_llvm_fpga_mem_memdep_23_atax73_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_toReg1 = SE_out_i_llvm_fpga_mem_memdep_23_atax73_StallValid & SE_out_i_llvm_fpga_mem_memdep_23_atax73_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_or0 = SE_out_i_llvm_fpga_mem_memdep_23_atax73_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_23_atax73_consumed1 & SE_out_i_llvm_fpga_mem_memdep_23_atax73_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_backStall = SE_out_i_llvm_fpga_mem_memdep_23_atax73_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_V0 = SE_out_i_llvm_fpga_mem_memdep_23_atax73_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_23_atax73_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_V1 = SE_out_i_llvm_fpga_mem_memdep_23_atax73_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_23_atax73_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_23_atax73_wireValid = i_llvm_fpga_mem_memdep_23_atax73_out_o_valid;

    // i_reduction_atax_4_atax50(LOGICAL,161)@103
    assign i_reduction_atax_4_atax50_q = bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out_62_fifo_b | i_reduction_atax_2_atax30_q;

    // c_i32_497(CONSTANT,11)
    assign c_i32_497_q = $unsigned(32'b00000000000000000000000000000100);

    // i_inc75_3_atax21(LOGICAL,87)@103
    assign i_inc75_3_atax21_q = bubble_select_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_b | c_i32_497_q;

    // i_inc75_3_atax21_vt_select_1_merged_bit_select(BITSELECT,386)@103
    assign i_inc75_3_atax21_vt_select_1_merged_bit_select_b = i_inc75_3_atax21_q[1:0];
    assign i_inc75_3_atax21_vt_select_1_merged_bit_select_c = i_inc75_3_atax21_q[31:3];

    // i_inc75_3_atax21_vt_join(BITJOIN,89)@103
    assign i_inc75_3_atax21_vt_join_q = {i_inc75_3_atax21_vt_select_1_merged_bit_select_c, VCC_q, i_inc75_3_atax21_vt_select_1_merged_bit_select_b};

    // i_idxprom70_4_atax43_sel_x(BITSELECT,340)@103
    assign i_idxprom70_4_atax43_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_3_atax21_vt_join_q[31:0]};

    // i_idxprom70_4_atax43_vt_select_1_merged_bit_select(BITSELECT,390)@103
    assign i_idxprom70_4_atax43_vt_select_1_merged_bit_select_in = i_idxprom70_4_atax43_sel_x_b[31:0];
    assign i_idxprom70_4_atax43_vt_select_1_merged_bit_select_b = i_idxprom70_4_atax43_vt_select_1_merged_bit_select_in[1:0];
    assign i_idxprom70_4_atax43_vt_select_1_merged_bit_select_c = i_idxprom70_4_atax43_vt_select_1_merged_bit_select_in[31:3];

    // i_idxprom70_4_atax43_vt_join(BITJOIN,53)@103
    assign i_idxprom70_4_atax43_vt_join_q = {c_i32_091_q, i_idxprom70_4_atax43_vt_select_1_merged_bit_select_c, VCC_q, i_idxprom70_4_atax43_vt_select_1_merged_bit_select_b};

    // i_arrayidx73_4_atax0_narrow_x(BITSELECT,304)@103
    assign i_arrayidx73_4_atax0_narrow_x_b = i_idxprom70_4_atax43_vt_join_q[61:0];

    // i_arrayidx73_4_atax0_shift_join_x(BITJOIN,305)@103
    assign i_arrayidx73_4_atax0_shift_join_x_q = {i_arrayidx73_4_atax0_narrow_x_b, i_arrayidx7132_atax38_vt_const_1_q};

    // i_arrayidx73_4_atax0_add_x(ADD,302)@103
    assign i_arrayidx73_4_atax0_add_x_a = {1'b0, bubble_select_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_b};
    assign i_arrayidx73_4_atax0_add_x_b = {1'b0, i_arrayidx73_4_atax0_shift_join_x_q};
    assign i_arrayidx73_4_atax0_add_x_o = $unsigned(i_arrayidx73_4_atax0_add_x_a) + $unsigned(i_arrayidx73_4_atax0_add_x_b);
    assign i_arrayidx73_4_atax0_add_x_q = i_arrayidx73_4_atax0_add_x_o[64:0];

    // i_arrayidx73_4_atax0_dupName_0_trunc_sel_x(BITSELECT,307)@103
    assign i_arrayidx73_4_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_4_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_23_atax73(BLACKBOX,117)@103
    // in in_i_stall@20000000
    // out out_lsu_memdep_23_o_active@20000000
    // out out_memdep_23_atax_avm_address@20000000
    // out out_memdep_23_atax_avm_burstcount@20000000
    // out out_memdep_23_atax_avm_byteenable@20000000
    // out out_memdep_23_atax_avm_enable@20000000
    // out out_memdep_23_atax_avm_read@20000000
    // out out_memdep_23_atax_avm_write@20000000
    // out out_memdep_23_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_o_writeack@134
    atax_i_llvm_fpga_mem_memdep_23_0 thei_llvm_fpga_mem_memdep_23_atax73 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_4_atax0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_atax_4_atax50_q),
        .in_i_predicate(bubble_select_redist53_i_first_cleanup_xor_atax35_q_101_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_23_atax73_backStall),
        .in_i_valid(SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_V0),
        .in_i_writedata(bubble_select_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_b),
        .in_memdep_23_atax_avm_readdata(in_memdep_23_atax_avm_readdata),
        .in_memdep_23_atax_avm_readdatavalid(in_memdep_23_atax_avm_readdatavalid),
        .in_memdep_23_atax_avm_waitrequest(in_memdep_23_atax_avm_waitrequest),
        .in_memdep_23_atax_avm_writeack(in_memdep_23_atax_avm_writeack),
        .out_lsu_memdep_23_o_active(i_llvm_fpga_mem_memdep_23_atax73_out_lsu_memdep_23_o_active),
        .out_memdep_23_atax_avm_address(i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_address),
        .out_memdep_23_atax_avm_burstcount(i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_burstcount),
        .out_memdep_23_atax_avm_byteenable(i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_byteenable),
        .out_memdep_23_atax_avm_enable(i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_enable),
        .out_memdep_23_atax_avm_read(i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_read),
        .out_memdep_23_atax_avm_write(i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_write),
        .out_memdep_23_atax_avm_writedata(i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_23_atax73_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_23_atax73_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_23_atax73_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo(STALLFIFO,457)
    assign redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V5;
    assign redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_in = SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_backStall;
    assign redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_f;
    assign redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_in_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_in[0];
    assign redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_in_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_in[0];
    assign redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_out[0] = redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_out_bitsignaltemp;
    assign redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_out[0] = redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo (
        .valid_in(redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_f),
        .valid_out(redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo(STALLENABLE,964)
    // Valid signal propagation
    assign SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_V0 = SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_backStall = i_llvm_fpga_mem_memdep_23_atax73_out_o_stall | ~ (SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and0 = redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_valid_out;
    assign SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and1 = SE_out_redist32_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_101_fifo_V1 & SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and0;
    assign SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and2 = SE_out_redist9_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_93_fifo_V0 & SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and1;
    assign SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and3 = SE_i_reduction_atax_4_atax50_V0 & SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and2;
    assign SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_wireValid = SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_V0 & SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_and3;

    // SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo(STALLENABLE,1060)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_fromReg0 <= '0;
            SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_fromReg0 <= SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_toReg0;
            // Successor 1
            SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_fromReg1 <= SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_consumed0 = (~ (SE_out_redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_backStall) & SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_wireValid) | SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_fromReg0;
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_consumed1 = (~ (redist54_i_first_cleanup_xor_atax35_q_132_fifo_stall_out) & SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_wireValid) | SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_fromReg1;
    // Consuming
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_StallValid = SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_backStall & SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_wireValid;
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_toReg0 = SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_StallValid & SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_consumed0;
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_toReg1 = SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_StallValid & SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_or0 = SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_consumed0;
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_wireStall = ~ (SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_consumed1 & SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_or0);
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_backStall = SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_V0 = SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_wireValid & ~ (SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_fromReg0);
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_V1 = SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_wireValid & ~ (SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_wireValid = redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_out;

    // redist53_i_first_cleanup_xor_atax35_q_101_fifo(STALLFIFO,505)
    assign redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_in = SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_V1;
    assign redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_in = SE_out_redist53_i_first_cleanup_xor_atax35_q_101_fifo_backStall;
    assign redist53_i_first_cleanup_xor_atax35_q_101_fifo_data_in = bubble_select_redist52_i_first_cleanup_xor_atax35_q_70_fifo_b;
    assign redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_in_bitsignaltemp = redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_in[0];
    assign redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_in_bitsignaltemp = redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_in[0];
    assign redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_out[0] = redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_out_bitsignaltemp;
    assign redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_out[0] = redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist53_i_first_cleanup_xor_atax35_q_101_fifo (
        .valid_in(redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_in_bitsignaltemp),
        .stall_in(redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist52_i_first_cleanup_xor_atax35_q_70_fifo_b),
        .valid_out(redist53_i_first_cleanup_xor_atax35_q_101_fifo_valid_out_bitsignaltemp),
        .stall_out(redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_out_bitsignaltemp),
        .data_out(redist53_i_first_cleanup_xor_atax35_q_101_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo(BITJOIN,606)
    assign bubble_join_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_q = redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_data_out;

    // bubble_select_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo(BITSELECT,607)
    assign bubble_select_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_b = $unsigned(bubble_join_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_q[31:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83(STALLENABLE,851)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_wireValid = i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_27_atax74(BITJOIN,529)
    assign bubble_join_i_llvm_fpga_mem_memdep_27_atax74_q = i_llvm_fpga_mem_memdep_27_atax74_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_27_atax74(BITSELECT,530)
    assign bubble_select_i_llvm_fpga_mem_memdep_27_atax74_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_27_atax74_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi28_push27_atax83(BLACKBOX,138)@103
    // in in_stall_in@20000000
    // out out_data_out@104
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@104
    atax_i_llvm_fpga_push_i1_memdep_phi28_push27_0 thei_llvm_fpga_push_i1_memdep_phi28_push27_atax83 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_27_atax74_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_feedback_stall_out_27),
        .in_keep_going(bubble_select_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83(STALLENABLE,850)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_backStall = i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_and0 = SE_out_i_llvm_fpga_mem_memdep_27_atax74_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_wireValid = SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_and0;

    // SE_out_i_llvm_fpga_mem_memdep_27_atax74(STALLENABLE,811)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_27_atax74_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_27_atax74_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_27_atax74_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_27_atax74_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_27_atax74_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_27_atax74_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_27_atax74_wireValid) | SE_out_i_llvm_fpga_mem_memdep_27_atax74_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_backStall) & SE_out_i_llvm_fpga_mem_memdep_27_atax74_wireValid) | SE_out_i_llvm_fpga_mem_memdep_27_atax74_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_StallValid = SE_out_i_llvm_fpga_mem_memdep_27_atax74_backStall & SE_out_i_llvm_fpga_mem_memdep_27_atax74_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_toReg0 = SE_out_i_llvm_fpga_mem_memdep_27_atax74_StallValid & SE_out_i_llvm_fpga_mem_memdep_27_atax74_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_toReg1 = SE_out_i_llvm_fpga_mem_memdep_27_atax74_StallValid & SE_out_i_llvm_fpga_mem_memdep_27_atax74_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_or0 = SE_out_i_llvm_fpga_mem_memdep_27_atax74_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_27_atax74_consumed1 & SE_out_i_llvm_fpga_mem_memdep_27_atax74_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_backStall = SE_out_i_llvm_fpga_mem_memdep_27_atax74_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_V0 = SE_out_i_llvm_fpga_mem_memdep_27_atax74_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_27_atax74_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_V1 = SE_out_i_llvm_fpga_mem_memdep_27_atax74_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_27_atax74_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_27_atax74_wireValid = i_llvm_fpga_mem_memdep_27_atax74_out_o_valid;

    // c_i32_598(CONSTANT,12)
    assign c_i32_598_q = $unsigned(32'b00000000000000000000000000000101);

    // i_inc75_4_atax22(LOGICAL,92)@72
    assign i_inc75_4_atax22_q = bubble_select_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_b | c_i32_598_q;

    // i_inc75_4_atax22_vt_select_1_merged_bit_select(BITSELECT,387)@72
    assign i_inc75_4_atax22_vt_select_1_merged_bit_select_b = i_inc75_4_atax22_q[1:1];
    assign i_inc75_4_atax22_vt_select_1_merged_bit_select_c = i_inc75_4_atax22_q[31:3];

    // i_inc75_4_atax22_vt_join(BITJOIN,95)@72
    assign i_inc75_4_atax22_vt_join_q = {i_inc75_4_atax22_vt_select_1_merged_bit_select_c, VCC_q, i_inc75_4_atax22_vt_select_1_merged_bit_select_b, VCC_q};

    // i_idxprom70_5_atax44_sel_x(BITSELECT,341)@72
    assign i_idxprom70_5_atax44_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_4_atax22_vt_join_q[31:0]};

    // i_idxprom70_5_atax44_vt_select_1_merged_bit_select(BITSELECT,391)@72
    assign i_idxprom70_5_atax44_vt_select_1_merged_bit_select_in = i_idxprom70_5_atax44_sel_x_b[31:0];
    assign i_idxprom70_5_atax44_vt_select_1_merged_bit_select_b = i_idxprom70_5_atax44_vt_select_1_merged_bit_select_in[1:1];
    assign i_idxprom70_5_atax44_vt_select_1_merged_bit_select_c = i_idxprom70_5_atax44_vt_select_1_merged_bit_select_in[31:3];

    // i_idxprom70_5_atax44_vt_join(BITJOIN,60)@72
    assign i_idxprom70_5_atax44_vt_join_q = {c_i32_091_q, i_idxprom70_5_atax44_vt_select_1_merged_bit_select_c, VCC_q, i_idxprom70_5_atax44_vt_select_1_merged_bit_select_b, VCC_q};

    // i_arrayidx73_5_atax0_narrow_x(BITSELECT,310)@72
    assign i_arrayidx73_5_atax0_narrow_x_b = i_idxprom70_5_atax44_vt_join_q[61:0];

    // i_arrayidx73_5_atax0_shift_join_x(BITJOIN,311)@72
    assign i_arrayidx73_5_atax0_shift_join_x_q = {i_arrayidx73_5_atax0_narrow_x_b, i_arrayidx7132_atax38_vt_const_1_q};

    // i_arrayidx73_5_atax0_add_x(ADD,308)@72
    assign i_arrayidx73_5_atax0_add_x_a = {1'b0, bubble_select_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_b};
    assign i_arrayidx73_5_atax0_add_x_b = {1'b0, i_arrayidx73_5_atax0_shift_join_x_q};
    assign i_arrayidx73_5_atax0_add_x_o = $unsigned(i_arrayidx73_5_atax0_add_x_a) + $unsigned(i_arrayidx73_5_atax0_add_x_b);
    assign i_arrayidx73_5_atax0_add_x_q = i_arrayidx73_5_atax0_add_x_o[64:0];

    // i_arrayidx73_5_atax0_dupName_0_trunc_sel_x(BITSELECT,313)@72
    assign i_arrayidx73_5_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_5_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_27_atax74(BLACKBOX,118)@72
    // in in_i_stall@20000000
    // out out_lsu_memdep_27_o_active@20000000
    // out out_memdep_27_atax_avm_address@20000000
    // out out_memdep_27_atax_avm_burstcount@20000000
    // out out_memdep_27_atax_avm_byteenable@20000000
    // out out_memdep_27_atax_avm_enable@20000000
    // out out_memdep_27_atax_avm_read@20000000
    // out out_memdep_27_atax_avm_write@20000000
    // out out_memdep_27_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@103
    // out out_o_writeack@103
    atax_i_llvm_fpga_mem_memdep_27_0 thei_llvm_fpga_mem_memdep_27_atax74 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_5_atax0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_atax_8_atax31_q),
        .in_i_predicate(bubble_select_redist52_i_first_cleanup_xor_atax35_q_70_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_27_atax74_backStall),
        .in_i_valid(SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_V0),
        .in_i_writedata(bubble_select_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_b),
        .in_memdep_27_atax_avm_readdata(in_memdep_27_atax_avm_readdata),
        .in_memdep_27_atax_avm_readdatavalid(in_memdep_27_atax_avm_readdatavalid),
        .in_memdep_27_atax_avm_waitrequest(in_memdep_27_atax_avm_waitrequest),
        .in_memdep_27_atax_avm_writeack(in_memdep_27_atax_avm_writeack),
        .out_lsu_memdep_27_o_active(i_llvm_fpga_mem_memdep_27_atax74_out_lsu_memdep_27_o_active),
        .out_memdep_27_atax_avm_address(i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_address),
        .out_memdep_27_atax_avm_burstcount(i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_burstcount),
        .out_memdep_27_atax_avm_byteenable(i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_byteenable),
        .out_memdep_27_atax_avm_enable(i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_enable),
        .out_memdep_27_atax_avm_read(i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_read),
        .out_memdep_27_atax_avm_write(i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_write),
        .out_memdep_27_atax_avm_writedata(i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_27_atax74_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_27_atax74_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_27_atax74_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo(STALLFIFO,458)
    assign redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V6;
    assign redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_in = SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_backStall;
    assign redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_g;
    assign redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_in_bitsignaltemp = redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_in[0];
    assign redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_in_bitsignaltemp = redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_in[0];
    assign redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_out[0] = redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_out_bitsignaltemp;
    assign redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_out[0] = redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo (
        .valid_in(redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_g),
        .valid_out(redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo(STALLENABLE,966)
    // Valid signal propagation
    assign SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_V0 = SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_backStall = i_llvm_fpga_mem_memdep_27_atax74_out_o_stall | ~ (SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and0 = redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_valid_out;
    assign SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and1 = SE_out_redist31_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_70_fifo_V1 & SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and0;
    assign SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and2 = SE_out_redist8_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_62_fifo_V0 & SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and1;
    assign SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and3 = SE_i_reduction_atax_8_atax31_V0 & SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and2;
    assign SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_wireValid = SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_V0 & SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_and3;

    // SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo(STALLENABLE,1058)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_fromReg0 <= '0;
            SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_fromReg0 <= SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_toReg0;
            // Successor 1
            SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_fromReg1 <= SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_consumed0 = (~ (SE_out_redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_backStall) & SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_wireValid) | SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_fromReg0;
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_consumed1 = (~ (redist53_i_first_cleanup_xor_atax35_q_101_fifo_stall_out) & SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_wireValid) | SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_fromReg1;
    // Consuming
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_StallValid = SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_backStall & SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_wireValid;
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_toReg0 = SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_StallValid & SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_consumed0;
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_toReg1 = SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_StallValid & SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_or0 = SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_consumed0;
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_wireStall = ~ (SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_consumed1 & SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_or0);
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_backStall = SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_V0 = SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_wireValid & ~ (SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_fromReg0);
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_V1 = SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_wireValid & ~ (SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_wireValid = redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_out;

    // redist52_i_first_cleanup_xor_atax35_q_70_fifo(STALLFIFO,504)
    assign redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_in = SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_V1;
    assign redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_in = SE_out_redist52_i_first_cleanup_xor_atax35_q_70_fifo_backStall;
    assign redist52_i_first_cleanup_xor_atax35_q_70_fifo_data_in = bubble_select_redist51_i_first_cleanup_xor_atax35_q_39_fifo_b;
    assign redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_in_bitsignaltemp = redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_in[0];
    assign redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_in_bitsignaltemp = redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_in[0];
    assign redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_out[0] = redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_out_bitsignaltemp;
    assign redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_out[0] = redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist52_i_first_cleanup_xor_atax35_q_70_fifo (
        .valid_in(redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist51_i_first_cleanup_xor_atax35_q_39_fifo_b),
        .valid_out(redist52_i_first_cleanup_xor_atax35_q_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist52_i_first_cleanup_xor_atax35_q_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo(BITJOIN,609)
    assign bubble_join_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_q = redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_data_out;

    // bubble_select_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo(BITSELECT,610)
    assign bubble_select_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_b = $unsigned(bubble_join_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_q[31:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84(STALLENABLE,853)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_wireValid = i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_32_atax75(BITJOIN,533)
    assign bubble_join_i_llvm_fpga_mem_memdep_32_atax75_q = i_llvm_fpga_mem_memdep_32_atax75_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_32_atax75(BITSELECT,534)
    assign bubble_select_i_llvm_fpga_mem_memdep_32_atax75_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_32_atax75_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi33_push28_atax84(BLACKBOX,139)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    atax_i_llvm_fpga_push_i1_memdep_phi33_push28_0 thei_llvm_fpga_push_i1_memdep_phi33_push28_atax84 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_32_atax75_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_feedback_stall_out_28),
        .in_keep_going(bubble_select_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_V0),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_feedback_valid_out_28),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84(STALLENABLE,852)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_backStall = i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_and0 = SE_out_i_llvm_fpga_mem_memdep_32_atax75_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_wireValid = SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_and0;

    // SE_out_i_llvm_fpga_mem_memdep_32_atax75(STALLENABLE,813)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_32_atax75_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_32_atax75_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_32_atax75_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_32_atax75_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_32_atax75_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_32_atax75_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_32_atax75_wireValid) | SE_out_i_llvm_fpga_mem_memdep_32_atax75_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_backStall) & SE_out_i_llvm_fpga_mem_memdep_32_atax75_wireValid) | SE_out_i_llvm_fpga_mem_memdep_32_atax75_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_StallValid = SE_out_i_llvm_fpga_mem_memdep_32_atax75_backStall & SE_out_i_llvm_fpga_mem_memdep_32_atax75_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_toReg0 = SE_out_i_llvm_fpga_mem_memdep_32_atax75_StallValid & SE_out_i_llvm_fpga_mem_memdep_32_atax75_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_toReg1 = SE_out_i_llvm_fpga_mem_memdep_32_atax75_StallValid & SE_out_i_llvm_fpga_mem_memdep_32_atax75_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_or0 = SE_out_i_llvm_fpga_mem_memdep_32_atax75_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_32_atax75_consumed1 & SE_out_i_llvm_fpga_mem_memdep_32_atax75_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_backStall = SE_out_i_llvm_fpga_mem_memdep_32_atax75_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_V0 = SE_out_i_llvm_fpga_mem_memdep_32_atax75_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_32_atax75_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_V1 = SE_out_i_llvm_fpga_mem_memdep_32_atax75_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_32_atax75_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_32_atax75_wireValid = i_llvm_fpga_mem_memdep_32_atax75_out_o_valid;

    // c_i32_699(CONSTANT,13)
    assign c_i32_699_q = $unsigned(32'b00000000000000000000000000000110);

    // i_inc75_5_atax23(LOGICAL,98)@41
    assign i_inc75_5_atax23_q = bubble_select_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_b | c_i32_699_q;

    // i_inc75_5_atax23_vt_select_0_merged_bit_select(BITSELECT,388)@41
    assign i_inc75_5_atax23_vt_select_0_merged_bit_select_b = i_inc75_5_atax23_q[0:0];
    assign i_inc75_5_atax23_vt_select_0_merged_bit_select_c = i_inc75_5_atax23_q[31:3];

    // i_inc75_5_atax23_vt_join(BITJOIN,100)@41
    assign i_inc75_5_atax23_vt_join_q = {i_inc75_5_atax23_vt_select_0_merged_bit_select_c, i_idxprom70_3_atax42_vt_const_1_q, i_inc75_5_atax23_vt_select_0_merged_bit_select_b};

    // i_idxprom70_6_atax45_sel_x(BITSELECT,342)@41
    assign i_idxprom70_6_atax45_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_5_atax23_vt_join_q[31:0]};

    // i_idxprom70_6_atax45_vt_select_0_merged_bit_select(BITSELECT,392)@41
    assign i_idxprom70_6_atax45_vt_select_0_merged_bit_select_in = i_idxprom70_6_atax45_sel_x_b[31:0];
    assign i_idxprom70_6_atax45_vt_select_0_merged_bit_select_b = i_idxprom70_6_atax45_vt_select_0_merged_bit_select_in[0:0];
    assign i_idxprom70_6_atax45_vt_select_0_merged_bit_select_c = i_idxprom70_6_atax45_vt_select_0_merged_bit_select_in[31:3];

    // i_idxprom70_6_atax45_vt_join(BITJOIN,66)@41
    assign i_idxprom70_6_atax45_vt_join_q = {c_i32_091_q, i_idxprom70_6_atax45_vt_select_0_merged_bit_select_c, i_idxprom70_3_atax42_vt_const_1_q, i_idxprom70_6_atax45_vt_select_0_merged_bit_select_b};

    // i_arrayidx73_6_atax0_narrow_x(BITSELECT,316)@41
    assign i_arrayidx73_6_atax0_narrow_x_b = i_idxprom70_6_atax45_vt_join_q[61:0];

    // i_arrayidx73_6_atax0_shift_join_x(BITJOIN,317)@41
    assign i_arrayidx73_6_atax0_shift_join_x_q = {i_arrayidx73_6_atax0_narrow_x_b, i_arrayidx7132_atax38_vt_const_1_q};

    // i_arrayidx73_6_atax0_add_x(ADD,314)@41
    assign i_arrayidx73_6_atax0_add_x_a = {1'b0, bubble_select_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_b};
    assign i_arrayidx73_6_atax0_add_x_b = {1'b0, i_arrayidx73_6_atax0_shift_join_x_q};
    assign i_arrayidx73_6_atax0_add_x_o = $unsigned(i_arrayidx73_6_atax0_add_x_a) + $unsigned(i_arrayidx73_6_atax0_add_x_b);
    assign i_arrayidx73_6_atax0_add_x_q = i_arrayidx73_6_atax0_add_x_o[64:0];

    // i_arrayidx73_6_atax0_dupName_0_trunc_sel_x(BITSELECT,319)@41
    assign i_arrayidx73_6_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_6_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_32_atax75(BLACKBOX,119)@41
    // in in_i_stall@20000000
    // out out_lsu_memdep_32_o_active@20000000
    // out out_memdep_32_atax_avm_address@20000000
    // out out_memdep_32_atax_avm_burstcount@20000000
    // out out_memdep_32_atax_avm_byteenable@20000000
    // out out_memdep_32_atax_avm_enable@20000000
    // out out_memdep_32_atax_avm_read@20000000
    // out out_memdep_32_atax_avm_write@20000000
    // out out_memdep_32_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@72
    // out out_o_writeack@72
    atax_i_llvm_fpga_mem_memdep_32_0 thei_llvm_fpga_mem_memdep_32_atax75 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_6_atax0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_b),
        .in_i_predicate(bubble_select_redist51_i_first_cleanup_xor_atax35_q_39_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_32_atax75_backStall),
        .in_i_valid(SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_V0),
        .in_i_writedata(bubble_select_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_b),
        .in_memdep_32_atax_avm_readdata(in_memdep_32_atax_avm_readdata),
        .in_memdep_32_atax_avm_readdatavalid(in_memdep_32_atax_avm_readdatavalid),
        .in_memdep_32_atax_avm_waitrequest(in_memdep_32_atax_avm_waitrequest),
        .in_memdep_32_atax_avm_writeack(in_memdep_32_atax_avm_writeack),
        .out_lsu_memdep_32_o_active(i_llvm_fpga_mem_memdep_32_atax75_out_lsu_memdep_32_o_active),
        .out_memdep_32_atax_avm_address(i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_address),
        .out_memdep_32_atax_avm_burstcount(i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_burstcount),
        .out_memdep_32_atax_avm_byteenable(i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_byteenable),
        .out_memdep_32_atax_avm_enable(i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_enable),
        .out_memdep_32_atax_avm_read(i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_read),
        .out_memdep_32_atax_avm_write(i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_write),
        .out_memdep_32_atax_avm_writedata(i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_32_atax75_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_32_atax75_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_32_atax75_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo(STALLFIFO,459)
    assign redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V7;
    assign redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_in = SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_backStall;
    assign redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_h;
    assign redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_in_bitsignaltemp = redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_in[0];
    assign redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_in_bitsignaltemp = redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_in[0];
    assign redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_out[0] = redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_out_bitsignaltemp;
    assign redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_out[0] = redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo (
        .valid_in(redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_h),
        .valid_out(redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo(STALLENABLE,968)
    // Valid signal propagation
    assign SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_V0 = SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_backStall = i_llvm_fpga_mem_memdep_32_atax75_out_o_stall | ~ (SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and0 = redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_valid_out;
    assign SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and1 = SE_out_redist30_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_39_fifo_V1 & SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and0;
    assign SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and2 = SE_out_redist7_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_out_dest_data_out_0_0_2_tpl_31_fifo_V0 & SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and1;
    assign SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_V0 & SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and2;
    assign SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_wireValid = SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_V0 & SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_and3;

    // SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo(STALLENABLE,1056)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_fromReg0 <= '0;
            SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_fromReg0 <= SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_toReg0;
            // Successor 1
            SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_fromReg1 <= SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_consumed0 = (~ (SE_out_redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_backStall) & SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_wireValid) | SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_fromReg0;
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_consumed1 = (~ (redist52_i_first_cleanup_xor_atax35_q_70_fifo_stall_out) & SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_wireValid) | SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_fromReg1;
    // Consuming
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_StallValid = SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_backStall & SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_wireValid;
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_toReg0 = SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_StallValid & SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_consumed0;
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_toReg1 = SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_StallValid & SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_or0 = SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_consumed0;
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_wireStall = ~ (SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_consumed1 & SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_or0);
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_backStall = SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_V0 = SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_wireValid & ~ (SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_fromReg0);
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_V1 = SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_wireValid & ~ (SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_wireValid = redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_out;

    // redist51_i_first_cleanup_xor_atax35_q_39_fifo(STALLFIFO,503)
    assign redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_in = SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_V1;
    assign redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_in = SE_out_redist51_i_first_cleanup_xor_atax35_q_39_fifo_backStall;
    assign redist51_i_first_cleanup_xor_atax35_q_39_fifo_data_in = bubble_select_redist50_i_first_cleanup_xor_atax35_q_8_fifo_b;
    assign redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_in_bitsignaltemp = redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_in[0];
    assign redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_in_bitsignaltemp = redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_in[0];
    assign redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_out[0] = redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_out_bitsignaltemp;
    assign redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_out[0] = redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist51_i_first_cleanup_xor_atax35_q_39_fifo (
        .valid_in(redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist50_i_first_cleanup_xor_atax35_q_8_fifo_b),
        .valid_out(redist51_i_first_cleanup_xor_atax35_q_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist51_i_first_cleanup_xor_atax35_q_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo(STALLENABLE,1054)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_fromReg0 <= '0;
            SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_fromReg0 <= SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_toReg0;
            // Successor 1
            SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_fromReg1 <= SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_consumed0 = (~ (SE_i_idxprom70_7_atax46_vt_join_backStall) & SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_wireValid) | SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_fromReg0;
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_consumed1 = (~ (redist51_i_first_cleanup_xor_atax35_q_39_fifo_stall_out) & SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_wireValid) | SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_fromReg1;
    // Consuming
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_StallValid = SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_backStall & SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_wireValid;
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_toReg0 = SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_StallValid & SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_consumed0;
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_toReg1 = SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_StallValid & SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_or0 = SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_consumed0;
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_wireStall = ~ (SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_consumed1 & SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_or0);
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_backStall = SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_V0 = SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_wireValid & ~ (SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_fromReg0);
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_V1 = SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_wireValid & ~ (SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_wireValid = redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_out;

    // redist50_i_first_cleanup_xor_atax35_q_8_fifo(STALLFIFO,502)
    assign redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V4;
    assign redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_in = SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_backStall;
    assign redist50_i_first_cleanup_xor_atax35_q_8_fifo_data_in = i_first_cleanup_xor_atax35_q;
    assign redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_in_bitsignaltemp = redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_in[0];
    assign redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_in_bitsignaltemp = redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_in[0];
    assign redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_out[0] = redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_out_bitsignaltemp;
    assign redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_out[0] = redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist50_i_first_cleanup_xor_atax35_q_8_fifo (
        .valid_in(redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_atax35_q),
        .valid_out(redist50_i_first_cleanup_xor_atax35_q_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist50_i_first_cleanup_xor_atax35_q_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist28_i_masked_atax71_q_256_fifo(STALLENABLE,1009)
    // Valid signal propagation
    assign SE_in_redist28_i_masked_atax71_q_256_fifo_V0 = SE_in_redist28_i_masked_atax71_q_256_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist28_i_masked_atax71_q_256_fifo_backStall = redist28_i_masked_atax71_q_256_fifo_stall_out | ~ (SE_in_redist28_i_masked_atax71_q_256_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist28_i_masked_atax71_q_256_fifo_wireValid = SE_i_masked_atax71_V0;

    // SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55(STALLENABLE,863)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_wireValid = i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_valid_out;

    // c_i4_1103(CONSTANT,16)
    assign c_i4_1103_q = $unsigned(4'b1111);

    // bubble_join_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12(BITJOIN,572)
    assign bubble_join_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_q = i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12(BITSELECT,573)
    assign bubble_select_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_q[3:0]);

    // i_fpga_indvars_iv_next59_atax34(ADD,33)@2
    assign i_fpga_indvars_iv_next59_atax34_a = {1'b0, bubble_select_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_b};
    assign i_fpga_indvars_iv_next59_atax34_b = {1'b0, c_i4_1103_q};
    assign i_fpga_indvars_iv_next59_atax34_o = $unsigned(i_fpga_indvars_iv_next59_atax34_a) + $unsigned(i_fpga_indvars_iv_next59_atax34_b);
    assign i_fpga_indvars_iv_next59_atax34_q = i_fpga_indvars_iv_next59_atax34_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next59_atax34_sel_x(BITSELECT,249)@2
    assign bgTrunc_i_fpga_indvars_iv_next59_atax34_sel_x_b = i_fpga_indvars_iv_next59_atax34_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55(BLACKBOX,144)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_0 thei_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next59_atax34_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55(STALLENABLE,862)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_V0 = SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_backStall = i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_and0 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V3;
    assign SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V4 & SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_and0;

    // SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12(STALLENABLE,837)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid) | SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_backStall) & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid) | SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed2 = (~ (SE_i_masked_atax71_backStall) & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid) | SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed3 = (~ (SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_backStall) & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid) | SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_StallValid = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_backStall & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg0 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_StallValid & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg1 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_StallValid & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg2 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_StallValid & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_toReg3 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_StallValid & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_or0 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_or1 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed1 & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_or0;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_or2 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed2 & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_or1;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_consumed3 & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_or2);
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_backStall = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V0 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V1 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V2 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V3 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_wireValid = i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_valid_out;

    // SE_i_masked_atax71(STALLENABLE,866)
    // Valid signal propagation
    assign SE_i_masked_atax71_V0 = SE_i_masked_atax71_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_atax71_s_tv_0 = SE_in_redist28_i_masked_atax71_q_256_fifo_backStall & SE_i_masked_atax71_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_atax71_backEN = ~ (SE_i_masked_atax71_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_atax71_and0 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V2 & SE_i_masked_atax71_backEN;
    assign SE_i_masked_atax71_v_s_0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V2 & SE_i_masked_atax71_and0;
    // Backward Stall generation
    assign SE_i_masked_atax71_backStall = ~ (SE_i_masked_atax71_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_atax71_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_atax71_backEN == 1'b0)
            begin
                SE_i_masked_atax71_R_v_0 <= SE_i_masked_atax71_R_v_0 & SE_i_masked_atax71_s_tv_0;
            end
            else
            begin
                SE_i_masked_atax71_R_v_0 <= SE_i_masked_atax71_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_notexitcond_atax54(STALLENABLE,856)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_atax54_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_consumed1 = (~ (SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_wireValid = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_and0;

    // SE_out_i_llvm_fpga_push_i4_cleanups_push31_atax88(STALLENABLE,861)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push31_atax88_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push31_atax88_wireValid = i_llvm_fpga_push_i4_cleanups_push31_atax88_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid373_i_cleanups_shl_atax0_shift_x(BITSELECT,372)@2
    assign leftShiftStage0Idx1Rng1_uid373_i_cleanups_shl_atax0_shift_x_in = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid373_i_cleanups_shl_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid373_i_cleanups_shl_atax0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid374_i_cleanups_shl_atax0_shift_x(BITJOIN,373)@2
    assign leftShiftStage0Idx1_uid374_i_cleanups_shl_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid373_i_cleanups_shl_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x(MUX,375)@2
    assign leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_b or leftShiftStage0Idx1_uid374_i_cleanups_shl_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_b;
            1'b1 : leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_q = leftShiftStage0Idx1_uid374_i_cleanups_shl_atax0_shift_x_q;
            default : leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_atax15_vt_select_3(BITSELECT,29)@2
    assign i_cleanups_shl_atax15_vt_select_3_b = leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_q[3:1];

    // i_cleanups_shl_atax15_vt_join(BITJOIN,28)@2
    assign i_cleanups_shl_atax15_vt_join_q = {i_cleanups_shl_atax15_vt_select_3_b, GND_q};

    // i_exitcond60_atax32_cmp_nsign(LOGICAL,368)@2
    assign i_exitcond60_atax32_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_b[3:3]));

    // i_notcmp_atax53(LOGICAL,151)@2
    assign i_notcmp_atax53_q = i_exitcond60_atax32_cmp_nsign_q ^ VCC_q;

    // i_or_atax70(LOGICAL,152)@2
    assign i_or_atax70_q = i_notcmp_atax53_q | i_first_cleanup_xor_atax35_q;

    // i_next_cleanups_atax80(MUX,147)@2
    assign i_next_cleanups_atax80_s = i_or_atax70_q;
    always @(i_next_cleanups_atax80_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_b or i_cleanups_shl_atax15_vt_join_q)
    begin
        unique case (i_next_cleanups_atax80_s)
            1'b0 : i_next_cleanups_atax80_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_b;
            1'b1 : i_next_cleanups_atax80_q = i_cleanups_shl_atax15_vt_join_q;
            default : i_next_cleanups_atax80_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push31_atax88(BLACKBOX,143)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i4_cleanups_push31_0 thei_llvm_fpga_push_i4_cleanups_push31_atax88 (
        .in_data_in(i_next_cleanups_atax80_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_feedback_stall_out_31),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push31_atax88_backStall),
        .in_valid_in(SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i4_cleanups_push31_atax88_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i4_cleanups_push31_atax88_out_feedback_valid_out_31),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push31_atax88_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push31_atax88_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x(STALLENABLE,943)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_V0 = SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_backStall = i_llvm_fpga_push_i4_cleanups_push31_atax88_out_stall_out | ~ (SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_V1;
    assign SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_and1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V0 & SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_and0;
    assign SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V3 & SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_and1;

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1(STALLENABLE,835)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg4 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed0 = (~ (SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed2 = (~ (SE_i_masked_atax71_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed3 = (~ (SE_i_arrayidx7132_atax38_vt_select_63_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed4 = (~ (redist50_i_first_cleanup_xor_atax35_q_8_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_toReg4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_consumed4 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_or3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_wireValid = i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_i_334_push22_atax47(STALLENABLE,859)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_334_push22_atax47_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_334_push22_atax47_wireValid = i_llvm_fpga_push_i32_i_334_push22_atax47_out_valid_out;

    // c_i32_8101(CONSTANT,15)
    assign c_i32_8101_q = $unsigned(32'b00000000000000000000000000001000);

    // i_inc75_7_atax25(ADD,107)@2
    assign i_inc75_7_atax25_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_i_334_pop22_atax4_b};
    assign i_inc75_7_atax25_b = {1'b0, c_i32_8101_q};
    assign i_inc75_7_atax25_o = $unsigned(i_inc75_7_atax25_a) + $unsigned(i_inc75_7_atax25_b);
    assign i_inc75_7_atax25_q = i_inc75_7_atax25_o[32:0];

    // bgTrunc_i_inc75_7_atax25_sel_x(BITSELECT,250)@2
    assign bgTrunc_i_inc75_7_atax25_sel_x_b = i_inc75_7_atax25_q[31:0];

    // i_llvm_fpga_push_i32_i_334_push22_atax47(BLACKBOX,142)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i32_i_334_push22_0 thei_llvm_fpga_push_i32_i_334_push22_atax47 (
        .in_data_in(bgTrunc_i_inc75_7_atax25_sel_x_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_feedback_stall_out_22),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_334_push22_atax47_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_i_334_push22_atax47_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_i_334_push22_atax47_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i32_i_334_push22_atax47_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_334_push22_atax47_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47(STALLENABLE,858)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_V0 = SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_backStall = i_llvm_fpga_push_i32_i_334_push22_atax47_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_and0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V1;
    assign SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V2 & SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_and0;

    // SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4(STALLENABLE,833)
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
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed0 = (~ (redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_backStall) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed2 = (~ (redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_consumed3 = (~ (SE_i_arrayidx7132_atax38_vt_select_63_backStall) & SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_fromReg3;
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

    // SE_i_arrayidx7132_atax38_vt_select_63(STALLENABLE,765)
    // Valid signal propagation
    assign SE_i_arrayidx7132_atax38_vt_select_63_V0 = SE_i_arrayidx7132_atax38_vt_select_63_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx7132_atax38_vt_select_63_backStall = i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_o_stall | ~ (SE_i_arrayidx7132_atax38_vt_select_63_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx7132_atax38_vt_select_63_and0 = SE_out_i_llvm_fpga_pop_i32_i_334_pop22_atax4_V3;
    assign SE_i_arrayidx7132_atax38_vt_select_63_wireValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_V3 & SE_i_arrayidx7132_atax38_vt_select_63_and0;

    // SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x(STALLENABLE,939)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg5 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg6 <= '0;
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg6 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg6;
            // Successor 7
            SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg7 <= SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg7;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed0 = (~ (SE_i_idxprom70_7_atax46_vt_join_backStall) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed1 = (~ (SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_backStall) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed2 = (~ (redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed3 = (~ (redist2_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl_155_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed4 = (~ (redist3_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl_124_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed5 = (~ (redist4_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl_93_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg5;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed6 = (~ (redist5_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl_62_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg6;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed7 = (~ (redist6_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl_31_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg7;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed5;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg6 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed6;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_toReg7 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed7;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or5 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or4;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or6 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed6 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or5;
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_consumed7 & SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_or6);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg5);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V6 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg6);
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V7 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_fromReg7);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_wireValid = i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x(BLACKBOX,351)@2
    // in in_i_stall@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_c0_exit255_0_tpl@10
    // out out_c0_exit255_1_tpl@10
    // out out_c0_exit255_2_tpl@10
    // out out_c0_exit255_3_tpl@10
    // out out_c0_exit255_4_tpl@10
    // out out_c0_exit255_5_tpl@10
    // out out_c0_exit255_6_tpl@10
    // out out_c0_exit255_7_tpl@10
    // out out_c0_exit255_8_tpl@10
    atax_i_sfc_s_c0_in_for_body69_s_c0_enter24413_atax58 thei_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_backStall),
        .in_i_valid(SE_i_arrayidx7132_atax38_vt_select_63_V0),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack),
        .in_c0_eni2243_0_tpl(GND_q),
        .in_c0_eni2243_1_tpl(i_arrayidx7132_atax38_vt_join_q),
        .in_c0_eni2243_2_tpl(i_first_cleanup_xor_atax35_q),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_o_valid),
        .out_c0_exit255_0_tpl(),
        .out_c0_exit255_1_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_1_tpl),
        .out_c0_exit255_2_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl),
        .out_c0_exit255_3_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl),
        .out_c0_exit255_4_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl),
        .out_c0_exit255_5_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl),
        .out_c0_exit255_6_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl),
        .out_c0_exit255_7_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl),
        .out_c0_exit255_8_tpl(i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x(BITJOIN,591)
    assign bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_q = {i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_8_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_7_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_6_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_5_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_4_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_3_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl, i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x(BITSELECT,592)
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_q[127:96]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_q[191:160]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_q[223:192]);
    assign bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_q[255:224]);

    // SE_i_idxprom70_7_atax46_vt_join(STALLENABLE,778)
    // Valid signal propagation
    assign SE_i_idxprom70_7_atax46_vt_join_V0 = SE_i_idxprom70_7_atax46_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_idxprom70_7_atax46_vt_join_backStall = i_llvm_fpga_mem_memdep_39_atax76_out_o_stall | ~ (SE_i_idxprom70_7_atax46_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_idxprom70_7_atax46_vt_join_and0 = SE_out_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_V1;
    assign SE_i_idxprom70_7_atax46_vt_join_and1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_V0 & SE_i_idxprom70_7_atax46_vt_join_and0;
    assign SE_i_idxprom70_7_atax46_vt_join_and2 = SE_out_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_V0 & SE_i_idxprom70_7_atax46_vt_join_and1;
    assign SE_i_idxprom70_7_atax46_vt_join_wireValid = SE_out_redist50_i_first_cleanup_xor_atax35_q_8_fifo_V0 & SE_i_idxprom70_7_atax46_vt_join_and2;

    // bubble_join_redist50_i_first_cleanup_xor_atax35_q_8_fifo(BITJOIN,738)
    assign bubble_join_redist50_i_first_cleanup_xor_atax35_q_8_fifo_q = redist50_i_first_cleanup_xor_atax35_q_8_fifo_data_out;

    // bubble_select_redist50_i_first_cleanup_xor_atax35_q_8_fifo(BITSELECT,739)
    assign bubble_select_redist50_i_first_cleanup_xor_atax35_q_8_fifo_b = $unsigned(bubble_join_redist50_i_first_cleanup_xor_atax35_q_8_fifo_q[0:0]);

    // c_i32_7100(CONSTANT,14)
    assign c_i32_7100_q = $unsigned(32'b00000000000000000000000000000111);

    // i_inc75_6_atax24(LOGICAL,103)@10
    assign i_inc75_6_atax24_q = bubble_select_redist29_i_llvm_fpga_pop_i32_i_334_pop22_atax4_out_data_out_8_fifo_b | c_i32_7100_q;

    // i_inc75_6_atax24_vt_select_31(BITSELECT,106)@10
    assign i_inc75_6_atax24_vt_select_31_b = i_inc75_6_atax24_q[31:3];

    // i_inc75_6_atax24_vt_join(BITJOIN,105)@10
    assign i_inc75_6_atax24_vt_join_q = {i_inc75_6_atax24_vt_select_31_b, i_idxprom70_7_atax46_vt_const_2_q};

    // i_idxprom70_7_atax46_sel_x(BITSELECT,343)@10
    assign i_idxprom70_7_atax46_sel_x_b = {32'b00000000000000000000000000000000, i_inc75_6_atax24_vt_join_q[31:0]};

    // i_idxprom70_7_atax46_vt_select_31(BITSELECT,73)@10
    assign i_idxprom70_7_atax46_vt_select_31_b = i_idxprom70_7_atax46_sel_x_b[31:3];

    // i_idxprom70_7_atax46_vt_const_2(CONSTANT,70)
    assign i_idxprom70_7_atax46_vt_const_2_q = $unsigned(3'b111);

    // i_idxprom70_7_atax46_vt_join(BITJOIN,72)@10
    assign i_idxprom70_7_atax46_vt_join_q = {c_i32_091_q, i_idxprom70_7_atax46_vt_select_31_b, i_idxprom70_7_atax46_vt_const_2_q};

    // i_arrayidx73_7_atax0_narrow_x(BITSELECT,322)@10
    assign i_arrayidx73_7_atax0_narrow_x_b = i_idxprom70_7_atax46_vt_join_q[61:0];

    // i_arrayidx73_7_atax0_shift_join_x(BITJOIN,323)@10
    assign i_arrayidx73_7_atax0_shift_join_x_q = {i_arrayidx73_7_atax0_narrow_x_b, i_arrayidx7132_atax38_vt_const_1_q};

    // i_arrayidx73_7_atax0_add_x(ADD,320)@10
    assign i_arrayidx73_7_atax0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b};
    assign i_arrayidx73_7_atax0_add_x_b = {1'b0, i_arrayidx73_7_atax0_shift_join_x_q};
    assign i_arrayidx73_7_atax0_add_x_o = $unsigned(i_arrayidx73_7_atax0_add_x_a) + $unsigned(i_arrayidx73_7_atax0_add_x_b);
    assign i_arrayidx73_7_atax0_add_x_q = i_arrayidx73_7_atax0_add_x_o[64:0];

    // i_arrayidx73_7_atax0_dupName_0_trunc_sel_x(BITSELECT,325)@10
    assign i_arrayidx73_7_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_7_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_39_atax76(BLACKBOX,120)@10
    // in in_i_stall@20000000
    // out out_lsu_memdep_39_o_active@20000000
    // out out_memdep_39_atax_avm_address@20000000
    // out out_memdep_39_atax_avm_burstcount@20000000
    // out out_memdep_39_atax_avm_byteenable@20000000
    // out out_memdep_39_atax_avm_enable@20000000
    // out out_memdep_39_atax_avm_read@20000000
    // out out_memdep_39_atax_avm_write@20000000
    // out out_memdep_39_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_o_writeack@41
    atax_i_llvm_fpga_mem_memdep_39_0 thei_llvm_fpga_mem_memdep_39_atax76 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_7_atax0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(bubble_select_redist50_i_first_cleanup_xor_atax35_q_8_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_39_atax76_backStall),
        .in_i_valid(SE_i_idxprom70_7_atax46_vt_join_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_i),
        .in_memdep_39_atax_avm_readdata(in_memdep_39_atax_avm_readdata),
        .in_memdep_39_atax_avm_readdatavalid(in_memdep_39_atax_avm_readdatavalid),
        .in_memdep_39_atax_avm_waitrequest(in_memdep_39_atax_avm_waitrequest),
        .in_memdep_39_atax_avm_writeack(in_memdep_39_atax_avm_writeack),
        .out_lsu_memdep_39_o_active(i_llvm_fpga_mem_memdep_39_atax76_out_lsu_memdep_39_o_active),
        .out_memdep_39_atax_avm_address(i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_address),
        .out_memdep_39_atax_avm_burstcount(i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_burstcount),
        .out_memdep_39_atax_avm_byteenable(i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_byteenable),
        .out_memdep_39_atax_avm_enable(i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_enable),
        .out_memdep_39_atax_avm_read(i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_read),
        .out_memdep_39_atax_avm_write(i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_write),
        .out_memdep_39_atax_avm_writedata(i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_39_atax76_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_39_atax76_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_39_atax76_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_39_atax76(BITJOIN,537)
    assign bubble_join_i_llvm_fpga_mem_memdep_39_atax76_q = i_llvm_fpga_mem_memdep_39_atax76_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_39_atax76(BITSELECT,538)
    assign bubble_select_i_llvm_fpga_mem_memdep_39_atax76_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_39_atax76_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi40_push29_atax85(BLACKBOX,140)@41
    // in in_stall_in@20000000
    // out out_data_out@42
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@42
    atax_i_llvm_fpga_push_i1_memdep_phi40_push29_0 thei_llvm_fpga_push_i1_memdep_phi40_push29_atax85 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_39_atax76_b),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_feedback_stall_out_29),
        .in_keep_going(bubble_select_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_V0),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_feedback_valid_out_29),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_39_atax76(STALLENABLE,815)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_39_atax76_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_39_atax76_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_39_atax76_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_39_atax76_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_39_atax76_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_39_atax76_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_39_atax76_wireValid) | SE_out_i_llvm_fpga_mem_memdep_39_atax76_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_backStall) & SE_out_i_llvm_fpga_mem_memdep_39_atax76_wireValid) | SE_out_i_llvm_fpga_mem_memdep_39_atax76_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_StallValid = SE_out_i_llvm_fpga_mem_memdep_39_atax76_backStall & SE_out_i_llvm_fpga_mem_memdep_39_atax76_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_toReg0 = SE_out_i_llvm_fpga_mem_memdep_39_atax76_StallValid & SE_out_i_llvm_fpga_mem_memdep_39_atax76_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_toReg1 = SE_out_i_llvm_fpga_mem_memdep_39_atax76_StallValid & SE_out_i_llvm_fpga_mem_memdep_39_atax76_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_or0 = SE_out_i_llvm_fpga_mem_memdep_39_atax76_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_39_atax76_consumed1 & SE_out_i_llvm_fpga_mem_memdep_39_atax76_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_backStall = SE_out_i_llvm_fpga_mem_memdep_39_atax76_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_V0 = SE_out_i_llvm_fpga_mem_memdep_39_atax76_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_39_atax76_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_V1 = SE_out_i_llvm_fpga_mem_memdep_39_atax76_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_39_atax76_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_39_atax76_wireValid = i_llvm_fpga_mem_memdep_39_atax76_out_o_valid;

    // SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85(STALLENABLE,854)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_backStall = i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_and0 = SE_out_i_llvm_fpga_mem_memdep_39_atax76_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_wireValid = SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_and0;

    // SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo(STALLENABLE,1040)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg0 <= '0;
            SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg0 <= SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg0;
            // Successor 1
            SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg1 <= SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_backStall) & SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid) | SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg0;
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed1 = (~ (redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out) & SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid) | SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg1;
    // Consuming
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_StallValid = SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_backStall & SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid;
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg0 = SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_StallValid & SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed0;
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_toReg1 = SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_StallValid & SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_or0 = SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed0;
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireStall = ~ (SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_consumed1 & SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_or0);
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_backStall = SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V0 = SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid & ~ (SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg0);
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V1 = SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid & ~ (SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_wireValid = redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_valid_out;

    // redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo(STALLFIFO,496)
    assign redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in = SE_out_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_V1;
    assign redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in = SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_backStall;
    assign redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_data_in = bubble_select_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_b;
    assign redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in_bitsignaltemp = redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in[0];
    assign redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in_bitsignaltemp = redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in[0];
    assign redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out[0] = redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out_bitsignaltemp;
    assign redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out[0] = redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo (
        .valid_in(redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_b),
        .valid_out(redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo(BITJOIN,720)
    assign bubble_join_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_q = redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_data_out;

    // bubble_select_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo(BITSELECT,721)
    assign bubble_select_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_b = $unsigned(bubble_join_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_q[0:0]);

    // SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo(STALLENABLE,1042)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg0 <= '0;
            SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg0 <= SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg0;
            // Successor 1
            SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg1 <= SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_backStall) & SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid) | SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg0;
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed1 = (~ (redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out) & SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid) | SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg1;
    // Consuming
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_StallValid = SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_backStall & SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid;
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg0 = SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_StallValid & SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed0;
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_toReg1 = SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_StallValid & SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_or0 = SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed0;
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireStall = ~ (SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_consumed1 & SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_or0);
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_backStall = SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V0 = SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid & ~ (SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg0);
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V1 = SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid & ~ (SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_wireValid = redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_valid_out;

    // redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo(STALLFIFO,497)
    assign redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in = SE_out_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_V1;
    assign redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in = SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_backStall;
    assign redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_data_in = bubble_select_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_b;
    assign redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in_bitsignaltemp = redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in[0];
    assign redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in_bitsignaltemp = redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in[0];
    assign redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out[0] = redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out_bitsignaltemp;
    assign redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out[0] = redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo (
        .valid_in(redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_in_bitsignaltemp),
        .stall_in(redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist44_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_70_fifo_b),
        .valid_out(redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out_bitsignaltemp),
        .stall_out(redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_stall_out_bitsignaltemp),
        .data_out(redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo(BITJOIN,723)
    assign bubble_join_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_q = redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_data_out;

    // bubble_select_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo(BITSELECT,724)
    assign bubble_select_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_b = $unsigned(bubble_join_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_q[0:0]);

    // SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo(STALLENABLE,1044)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_fromReg0 <= '0;
            SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_fromReg0 <= SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_toReg0;
            // Successor 1
            SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_fromReg1 <= SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_backStall) & SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid) | SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_fromReg0;
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_consumed1 = (~ (redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_out) & SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid) | SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_fromReg1;
    // Consuming
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_StallValid = SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_backStall & SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid;
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_toReg0 = SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_StallValid & SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_consumed0;
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_toReg1 = SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_StallValid & SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_or0 = SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_consumed0;
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireStall = ~ (SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_consumed1 & SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_or0);
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_backStall = SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_V0 = SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid & ~ (SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_fromReg0);
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_V1 = SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid & ~ (SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_wireValid = redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_valid_out;

    // redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo(STALLFIFO,498)
    assign redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_in = SE_out_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_V1;
    assign redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_in = SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_backStall;
    assign redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_data_in = bubble_select_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_b;
    assign redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_in_bitsignaltemp = redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_in[0];
    assign redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_in_bitsignaltemp = redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_in[0];
    assign redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_out[0] = redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_out_bitsignaltemp;
    assign redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_out[0] = redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo (
        .valid_in(redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_in_bitsignaltemp),
        .stall_in(redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist45_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_101_fifo_b),
        .valid_out(redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_out_bitsignaltemp),
        .stall_out(redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_stall_out_bitsignaltemp),
        .data_out(redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo(BITJOIN,726)
    assign bubble_join_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_q = redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_data_out;

    // bubble_select_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo(BITSELECT,727)
    assign bubble_select_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_b = $unsigned(bubble_join_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_q[0:0]);

    // SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo(STALLENABLE,1046)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_fromReg0 <= '0;
            SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_fromReg0 <= SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_toReg0;
            // Successor 1
            SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_fromReg1 <= SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_backStall) & SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_wireValid) | SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_fromReg0;
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_consumed1 = (~ (redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_out) & SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_wireValid) | SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_fromReg1;
    // Consuming
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_StallValid = SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_backStall & SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_wireValid;
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_toReg0 = SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_StallValid & SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_consumed0;
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_toReg1 = SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_StallValid & SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_or0 = SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_consumed0;
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_wireStall = ~ (SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_consumed1 & SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_or0);
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_backStall = SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_V0 = SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_wireValid & ~ (SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_fromReg0);
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_V1 = SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_wireValid & ~ (SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_wireValid = redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_valid_out;

    // redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo(STALLFIFO,499)
    assign redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_in = SE_out_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_V1;
    assign redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_in = SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_backStall;
    assign redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_data_in = bubble_select_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_b;
    assign redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_in_bitsignaltemp = redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_in[0];
    assign redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_in_bitsignaltemp = redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_in[0];
    assign redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_out[0] = redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_out_bitsignaltemp;
    assign redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_out[0] = redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo (
        .valid_in(redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_in_bitsignaltemp),
        .stall_in(redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist46_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_132_fifo_b),
        .valid_out(redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_out_bitsignaltemp),
        .stall_out(redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_stall_out_bitsignaltemp),
        .data_out(redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo(BITJOIN,729)
    assign bubble_join_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_q = redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_data_out;

    // bubble_select_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo(BITSELECT,730)
    assign bubble_select_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_b = $unsigned(bubble_join_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_q[0:0]);

    // SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo(STALLENABLE,1048)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_fromReg0 <= '0;
            SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_fromReg0 <= SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_toReg0;
            // Successor 1
            SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_fromReg1 <= SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_backStall) & SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_wireValid) | SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_fromReg0;
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_consumed1 = (~ (redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_out) & SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_wireValid) | SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_fromReg1;
    // Consuming
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_StallValid = SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_backStall & SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_wireValid;
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_toReg0 = SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_StallValid & SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_consumed0;
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_toReg1 = SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_StallValid & SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_or0 = SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_consumed0;
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_wireStall = ~ (SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_consumed1 & SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_or0);
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_backStall = SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_V0 = SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_wireValid & ~ (SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_fromReg0);
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_V1 = SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_wireValid & ~ (SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_wireValid = redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_valid_out;

    // redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo(STALLFIFO,500)
    assign redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_in = SE_out_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_V1;
    assign redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_in = SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_backStall;
    assign redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_data_in = bubble_select_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_b;
    assign redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_in_bitsignaltemp = redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_in[0];
    assign redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_in_bitsignaltemp = redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_in[0];
    assign redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_out[0] = redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_out_bitsignaltemp;
    assign redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_out[0] = redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo (
        .valid_in(redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_in_bitsignaltemp),
        .stall_in(redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist47_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_163_fifo_b),
        .valid_out(redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_out_bitsignaltemp),
        .stall_out(redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_stall_out_bitsignaltemp),
        .data_out(redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo(BITJOIN,732)
    assign bubble_join_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_q = redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_data_out;

    // bubble_select_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo(BITSELECT,733)
    assign bubble_select_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_b = $unsigned(bubble_join_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_q[0:0]);

    // SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo(STALLENABLE,1050)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_fromReg0 <= '0;
            SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_fromReg0 <= SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_toReg0;
            // Successor 1
            SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_fromReg1 <= SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_backStall) & SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_wireValid) | SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_fromReg0;
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_consumed1 = (~ (redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_out) & SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_wireValid) | SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_fromReg1;
    // Consuming
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_StallValid = SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_backStall & SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_wireValid;
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_toReg0 = SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_StallValid & SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_consumed0;
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_toReg1 = SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_StallValid & SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_or0 = SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_consumed0;
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_wireStall = ~ (SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_consumed1 & SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_or0);
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_backStall = SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_V0 = SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_wireValid & ~ (SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_fromReg0);
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_V1 = SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_wireValid & ~ (SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_wireValid = redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_valid_out;

    // redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo(STALLFIFO,501)
    assign redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_in = SE_out_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_V1;
    assign redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_in = SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_backStall;
    assign redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_data_in = bubble_select_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_b;
    assign redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_in_bitsignaltemp = redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_in[0];
    assign redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_in_bitsignaltemp = redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_in[0];
    assign redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_out[0] = redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_out_bitsignaltemp;
    assign redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_out[0] = redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo (
        .valid_in(redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_in_bitsignaltemp),
        .stall_in(redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist48_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_194_fifo_b),
        .valid_out(redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_out_bitsignaltemp),
        .stall_out(redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_stall_out_bitsignaltemp),
        .data_out(redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo(STALLENABLE,1052)
    // Valid signal propagation
    assign SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_V0 = SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_stall_out | ~ (SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_and0 = redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_valid_out;
    assign SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_16_atax77_V1 & SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_and0;

    // bubble_join_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo(BITJOIN,594)
    assign bubble_join_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_q = redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_data_out;

    // bubble_select_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo(BITSELECT,595)
    assign bubble_select_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_b = $unsigned(bubble_join_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_q[31:0]);

    // bubble_join_redist56_i_first_cleanup_xor_atax35_q_194_fifo(BITJOIN,756)
    assign bubble_join_redist56_i_first_cleanup_xor_atax35_q_194_fifo_q = redist56_i_first_cleanup_xor_atax35_q_194_fifo_data_out;

    // bubble_select_redist56_i_first_cleanup_xor_atax35_q_194_fifo(BITSELECT,757)
    assign bubble_select_redist56_i_first_cleanup_xor_atax35_q_194_fifo_b = $unsigned(bubble_join_redist56_i_first_cleanup_xor_atax35_q_194_fifo_q[0:0]);

    // bubble_join_redist24_i_reduction_atax_7_atax29_q_62_fifo(BITJOIN,660)
    assign bubble_join_redist24_i_reduction_atax_7_atax29_q_62_fifo_q = redist24_i_reduction_atax_7_atax29_q_62_fifo_data_out;

    // bubble_select_redist24_i_reduction_atax_7_atax29_q_62_fifo(BITSELECT,661)
    assign bubble_select_redist24_i_reduction_atax_7_atax29_q_62_fifo_b = $unsigned(bubble_join_redist24_i_reduction_atax_7_atax29_q_62_fifo_q[0:0]);

    // bubble_join_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo(BITJOIN,711)
    assign bubble_join_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_q = redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_data_out;

    // bubble_select_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo(BITSELECT,712)
    assign bubble_select_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_b = $unsigned(bubble_join_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6(BITJOIN,548)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_q = i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6(BITSELECT,549)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_q[0:0]);

    // i_reduction_atax_6_atax27(LOGICAL,163)@196
    assign i_reduction_atax_6_atax27_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_b | bubble_select_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_b;

    // i_reduction_atax_9_atax49(LOGICAL,166)@196
    assign i_reduction_atax_9_atax49_q = i_reduction_atax_6_atax27_q | bubble_select_redist24_i_reduction_atax_7_atax29_q_62_fifo_b;

    // bubble_join_redist23_i_reduction_atax_8_atax31_q_124_fifo(BITJOIN,657)
    assign bubble_join_redist23_i_reduction_atax_8_atax31_q_124_fifo_q = redist23_i_reduction_atax_8_atax31_q_124_fifo_data_out;

    // bubble_select_redist23_i_reduction_atax_8_atax31_q_124_fifo(BITSELECT,658)
    assign bubble_select_redist23_i_reduction_atax_8_atax31_q_124_fifo_b = $unsigned(bubble_join_redist23_i_reduction_atax_8_atax31_q_124_fifo_q[0:0]);

    // i_reduction_atax_10_atax67(LOGICAL,154)@196
    assign i_reduction_atax_10_atax67_q = bubble_select_redist23_i_reduction_atax_8_atax31_q_124_fifo_b | i_reduction_atax_9_atax49_q;

    // bubble_join_redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo(BITJOIN,627)
    assign bubble_join_redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_q = redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_data_out;

    // bubble_select_redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo(BITSELECT,628)
    assign bubble_select_redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_b = $unsigned(bubble_join_redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_16_atax77(BLACKBOX,114)@196
    // in in_i_stall@20000000
    // out out_lsu_memdep_16_o_active@20000000
    // out out_memdep_16_atax_avm_address@20000000
    // out out_memdep_16_atax_avm_burstcount@20000000
    // out out_memdep_16_atax_avm_byteenable@20000000
    // out out_memdep_16_atax_avm_enable@20000000
    // out out_memdep_16_atax_avm_read@20000000
    // out out_memdep_16_atax_avm_write@20000000
    // out out_memdep_16_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@227
    // out out_o_writeack@227
    atax_i_llvm_fpga_mem_memdep_16_0 thei_llvm_fpga_mem_memdep_16_atax77 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist13_i_arrayidx73_1_atax0_dupName_0_trunc_sel_x_b_31_fifo_b),
        .in_i_dependence(i_reduction_atax_10_atax67_q),
        .in_i_predicate(bubble_select_redist56_i_first_cleanup_xor_atax35_q_194_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_16_atax77_backStall),
        .in_i_valid(SE_out_redist41_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out_31_fifo_V0),
        .in_i_writedata(bubble_select_redist1_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_c0_exit255_2_tpl_186_fifo_b),
        .in_memdep_16_atax_avm_readdata(in_memdep_16_atax_avm_readdata),
        .in_memdep_16_atax_avm_readdatavalid(in_memdep_16_atax_avm_readdatavalid),
        .in_memdep_16_atax_avm_waitrequest(in_memdep_16_atax_avm_waitrequest),
        .in_memdep_16_atax_avm_writeack(in_memdep_16_atax_avm_writeack),
        .out_lsu_memdep_16_o_active(i_llvm_fpga_mem_memdep_16_atax77_out_lsu_memdep_16_o_active),
        .out_memdep_16_atax_avm_address(i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_address),
        .out_memdep_16_atax_avm_burstcount(i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_burstcount),
        .out_memdep_16_atax_avm_byteenable(i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_byteenable),
        .out_memdep_16_atax_avm_enable(i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_enable),
        .out_memdep_16_atax_avm_read(i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_read),
        .out_memdep_16_atax_avm_write(i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_write),
        .out_memdep_16_atax_avm_writedata(i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_16_atax77_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_16_atax77_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_16_atax77_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_16_atax77(STALLENABLE,803)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_16_atax77_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_16_atax77_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_16_atax77_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_16_atax77_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_16_atax77_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_16_atax77_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_16_atax77_wireValid) | SE_out_i_llvm_fpga_mem_memdep_16_atax77_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_consumed1 = (~ (SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_16_atax77_wireValid) | SE_out_i_llvm_fpga_mem_memdep_16_atax77_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_StallValid = SE_out_i_llvm_fpga_mem_memdep_16_atax77_backStall & SE_out_i_llvm_fpga_mem_memdep_16_atax77_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_toReg0 = SE_out_i_llvm_fpga_mem_memdep_16_atax77_StallValid & SE_out_i_llvm_fpga_mem_memdep_16_atax77_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_toReg1 = SE_out_i_llvm_fpga_mem_memdep_16_atax77_StallValid & SE_out_i_llvm_fpga_mem_memdep_16_atax77_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_or0 = SE_out_i_llvm_fpga_mem_memdep_16_atax77_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_16_atax77_consumed1 & SE_out_i_llvm_fpga_mem_memdep_16_atax77_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_backStall = SE_out_i_llvm_fpga_mem_memdep_16_atax77_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_V0 = SE_out_i_llvm_fpga_mem_memdep_16_atax77_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_16_atax77_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_V1 = SE_out_i_llvm_fpga_mem_memdep_16_atax77_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_16_atax77_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_16_atax77_wireValid = i_llvm_fpga_mem_memdep_16_atax77_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg(STALLFIFO,1417)
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_16_atax77_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_atax71(LOGICAL,146)@2 + 1
    assign i_masked_atax71_qi = i_notcmp_atax53_q & i_first_cleanup_atax14_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_atax71_delay ( .xin(i_masked_atax71_qi), .xout(i_masked_atax71_q), .ena(SE_i_masked_atax71_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist28_i_masked_atax71_q_256_fifo(STALLFIFO,480)
    assign redist28_i_masked_atax71_q_256_fifo_valid_in = SE_in_redist28_i_masked_atax71_q_256_fifo_V0;
    assign redist28_i_masked_atax71_q_256_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign redist28_i_masked_atax71_q_256_fifo_data_in = i_masked_atax71_q;
    assign redist28_i_masked_atax71_q_256_fifo_valid_in_bitsignaltemp = redist28_i_masked_atax71_q_256_fifo_valid_in[0];
    assign redist28_i_masked_atax71_q_256_fifo_stall_in_bitsignaltemp = redist28_i_masked_atax71_q_256_fifo_stall_in[0];
    assign redist28_i_masked_atax71_q_256_fifo_valid_out[0] = redist28_i_masked_atax71_q_256_fifo_valid_out_bitsignaltemp;
    assign redist28_i_masked_atax71_q_256_fifo_stall_out[0] = redist28_i_masked_atax71_q_256_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(256),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist28_i_masked_atax71_q_256_fifo (
        .valid_in(redist28_i_masked_atax71_q_256_fifo_valid_in_bitsignaltemp),
        .stall_in(redist28_i_masked_atax71_q_256_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_atax71_q),
        .valid_out(redist28_i_masked_atax71_q_256_fifo_valid_out_bitsignaltemp),
        .stall_out(redist28_i_masked_atax71_q_256_fifo_stall_out_bitsignaltemp),
        .data_out(redist28_i_masked_atax71_q_256_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg(STALLFIFO,1418)
    assign bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_18_atax79_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg(STALLFIFO,1419)
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_20_atax72_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg(STALLFIFO,1420)
    assign bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_23_atax73_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(125),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg(STALLFIFO,1421)
    assign bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_27_atax74_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(156),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg(STALLFIFO,1422)
    assign bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_32_atax75_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(187),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg(STALLFIFO,1423)
    assign bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_39_atax76_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(218),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg(STALLFIFO,1424)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(257),
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

    // bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg(STALLFIFO,1425)
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(257),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i4_initerations_push30_atax36(STALLENABLE,865)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push30_atax36_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push30_atax36_wireValid = i_llvm_fpga_push_i4_initerations_push30_atax36_out_valid_out;

    // rightShiftStage0Idx1Rng1_uid380_i_next_initerations_atax0_shift_x(BITSELECT,379)@2
    assign rightShiftStage0Idx1Rng1_uid380_i_next_initerations_atax0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop30_atax3_b[3:1];

    // rightShiftStage0Idx1_uid382_i_next_initerations_atax0_shift_x(BITJOIN,381)@2
    assign rightShiftStage0Idx1_uid382_i_next_initerations_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid380_i_next_initerations_atax0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop30_atax3(BITJOIN,576)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop30_atax3_q = i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop30_atax3(BITSELECT,577)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop30_atax3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop30_atax3_q[3:0]);

    // rightShiftStage0_uid384_i_next_initerations_atax0_shift_x(MUX,383)@2
    assign rightShiftStage0_uid384_i_next_initerations_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid384_i_next_initerations_atax0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop30_atax3_b or rightShiftStage0Idx1_uid382_i_next_initerations_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid384_i_next_initerations_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid384_i_next_initerations_atax0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop30_atax3_b;
            1'b1 : rightShiftStage0_uid384_i_next_initerations_atax0_shift_x_q = rightShiftStage0Idx1_uid382_i_next_initerations_atax0_shift_x_q;
            default : rightShiftStage0_uid384_i_next_initerations_atax0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_atax16_vt_select_2(BITSELECT,150)@2
    assign i_next_initerations_atax16_vt_select_2_b = rightShiftStage0_uid384_i_next_initerations_atax0_shift_x_q[2:0];

    // i_next_initerations_atax16_vt_join(BITJOIN,149)@2
    assign i_next_initerations_atax16_vt_join_q = {GND_q, i_next_initerations_atax16_vt_select_2_b};

    // i_llvm_fpga_push_i4_initerations_push30_atax36(BLACKBOX,145)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i4_initerations_push30_0 thei_llvm_fpga_push_i4_initerations_push30_atax36 (
        .in_data_in(i_next_initerations_atax16_vt_join_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_feedback_stall_out_30),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push30_atax36_backStall),
        .in_valid_in(SE_i_next_initerations_atax16_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i4_initerations_push30_atax36_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i4_initerations_push30_atax36_out_feedback_valid_out_30),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push30_atax36_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push30_atax36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_next_initerations_atax16_vt_join(STALLENABLE,868)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_atax16_vt_join_fromReg0 <= '0;
            SE_i_next_initerations_atax16_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_atax16_vt_join_fromReg0 <= SE_i_next_initerations_atax16_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations_atax16_vt_join_fromReg1 <= SE_i_next_initerations_atax16_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_atax16_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_atax56_out_stall_out) & SE_i_next_initerations_atax16_vt_join_wireValid) | SE_i_next_initerations_atax16_vt_join_fromReg0;
    assign SE_i_next_initerations_atax16_vt_join_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push30_atax36_out_stall_out) & SE_i_next_initerations_atax16_vt_join_wireValid) | SE_i_next_initerations_atax16_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations_atax16_vt_join_StallValid = SE_i_next_initerations_atax16_vt_join_backStall & SE_i_next_initerations_atax16_vt_join_wireValid;
    assign SE_i_next_initerations_atax16_vt_join_toReg0 = SE_i_next_initerations_atax16_vt_join_StallValid & SE_i_next_initerations_atax16_vt_join_consumed0;
    assign SE_i_next_initerations_atax16_vt_join_toReg1 = SE_i_next_initerations_atax16_vt_join_StallValid & SE_i_next_initerations_atax16_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_atax16_vt_join_or0 = SE_i_next_initerations_atax16_vt_join_consumed0;
    assign SE_i_next_initerations_atax16_vt_join_wireStall = ~ (SE_i_next_initerations_atax16_vt_join_consumed1 & SE_i_next_initerations_atax16_vt_join_or0);
    assign SE_i_next_initerations_atax16_vt_join_backStall = SE_i_next_initerations_atax16_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_atax16_vt_join_V0 = SE_i_next_initerations_atax16_vt_join_wireValid & ~ (SE_i_next_initerations_atax16_vt_join_fromReg0);
    assign SE_i_next_initerations_atax16_vt_join_V1 = SE_i_next_initerations_atax16_vt_join_wireValid & ~ (SE_i_next_initerations_atax16_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_atax16_vt_join_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_V1;
    assign SE_i_next_initerations_atax16_vt_join_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax2_V1 & SE_i_next_initerations_atax16_vt_join_and0;

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3(STALLENABLE,839)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_consumed1 = (~ (SE_i_next_initerations_atax16_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_wireValid = i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_valid_out;

    // bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg(STALLFIFO,1426)
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(257),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1(STALLENABLE,1168)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and0 = bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and1 = bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and2 = bubble_out_i_llvm_fpga_pipeline_keep_going_atax2_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and3 = bubble_out_i_llvm_fpga_mem_memdep_39_atax76_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and4 = bubble_out_i_llvm_fpga_mem_memdep_32_atax75_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and5 = bubble_out_i_llvm_fpga_mem_memdep_27_atax74_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and6 = bubble_out_i_llvm_fpga_mem_memdep_23_atax73_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and7 = bubble_out_i_llvm_fpga_mem_memdep_20_atax72_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and8 = bubble_out_i_llvm_fpga_mem_memdep_18_atax79_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and7;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and9 = redist28_i_masked_atax71_q_256_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and8;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and10 = bubble_out_i_llvm_fpga_mem_memdep_16_atax77_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and9;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_wireValid = i_llvm_fpga_mem_memdep_15_atax78_out_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_and10;

    // bubble_join_redist57_i_first_cleanup_xor_atax35_q_225_fifo(BITJOIN,759)
    assign bubble_join_redist57_i_first_cleanup_xor_atax35_q_225_fifo_q = redist57_i_first_cleanup_xor_atax35_q_225_fifo_data_out;

    // bubble_select_redist57_i_first_cleanup_xor_atax35_q_225_fifo(BITSELECT,760)
    assign bubble_select_redist57_i_first_cleanup_xor_atax35_q_225_fifo_b = $unsigned(bubble_join_redist57_i_first_cleanup_xor_atax35_q_225_fifo_q[0:0]);

    // bubble_join_redist25_i_reduction_atax_4_atax50_q_124_fifo(BITJOIN,663)
    assign bubble_join_redist25_i_reduction_atax_4_atax50_q_124_fifo_q = redist25_i_reduction_atax_4_atax50_q_124_fifo_data_out;

    // bubble_select_redist25_i_reduction_atax_4_atax50_q_124_fifo(BITSELECT,664)
    assign bubble_select_redist25_i_reduction_atax_4_atax50_q_124_fifo_b = $unsigned(bubble_join_redist25_i_reduction_atax_4_atax50_q_124_fifo_q[0:0]);

    // bubble_join_redist27_i_reduction_atax_1_atax28_q_62_fifo(BITJOIN,669)
    assign bubble_join_redist27_i_reduction_atax_1_atax28_q_62_fifo_q = redist27_i_reduction_atax_1_atax28_q_62_fifo_data_out;

    // bubble_select_redist27_i_reduction_atax_1_atax28_q_62_fifo(BITSELECT,670)
    assign bubble_select_redist27_i_reduction_atax_1_atax28_q_62_fifo_b = $unsigned(bubble_join_redist27_i_reduction_atax_1_atax28_q_62_fifo_q[0:0]);

    // bubble_join_redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo(BITJOIN,714)
    assign bubble_join_redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_q = redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_data_out;

    // bubble_select_redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo(BITSELECT,715)
    assign bubble_select_redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_b = $unsigned(bubble_join_redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5(BITJOIN,545)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_q = i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5(BITSELECT,546)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_q[0:0]);

    // i_reduction_atax_0_atax26(LOGICAL,153)@227
    assign i_reduction_atax_0_atax26_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_b | bubble_select_redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_b;

    // i_reduction_atax_3_atax48(LOGICAL,160)@227
    assign i_reduction_atax_3_atax48_q = i_reduction_atax_0_atax26_q | bubble_select_redist27_i_reduction_atax_1_atax28_q_62_fifo_b;

    // i_reduction_atax_5_atax68(LOGICAL,162)@227
    assign i_reduction_atax_5_atax68_q = i_reduction_atax_3_atax48_q | bubble_select_redist25_i_reduction_atax_4_atax50_q_124_fifo_b;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,762)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,763)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[95:0]);

    // sel_for_coalesced_delay_0(BITSELECT,453)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[95:64]);

    // i_llvm_fpga_mem_memdep_15_atax78(BLACKBOX,113)@227
    // in in_i_stall@20000000
    // out out_lsu_memdep_15_o_active@20000000
    // out out_memdep_15_atax_avm_address@20000000
    // out out_memdep_15_atax_avm_burstcount@20000000
    // out out_memdep_15_atax_avm_byteenable@20000000
    // out out_memdep_15_atax_avm_enable@20000000
    // out out_memdep_15_atax_avm_read@20000000
    // out out_memdep_15_atax_avm_write@20000000
    // out out_memdep_15_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@258
    // out out_o_writeack@258
    atax_i_llvm_fpga_mem_memdep_15_0 thei_llvm_fpga_mem_memdep_15_atax78 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_dependence(i_reduction_atax_5_atax68_q),
        .in_i_predicate(bubble_select_redist57_i_first_cleanup_xor_atax35_q_225_fifo_b),
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_i_writedata(sel_for_coalesced_delay_0_c),
        .in_memdep_15_atax_avm_readdata(in_memdep_15_atax_avm_readdata),
        .in_memdep_15_atax_avm_readdatavalid(in_memdep_15_atax_avm_readdatavalid),
        .in_memdep_15_atax_avm_waitrequest(in_memdep_15_atax_avm_waitrequest),
        .in_memdep_15_atax_avm_writeack(in_memdep_15_atax_avm_writeack),
        .out_lsu_memdep_15_o_active(i_llvm_fpga_mem_memdep_15_atax78_out_lsu_memdep_15_o_active),
        .out_memdep_15_atax_avm_address(i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_address),
        .out_memdep_15_atax_avm_burstcount(i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_burstcount),
        .out_memdep_15_atax_avm_byteenable(i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_byteenable),
        .out_memdep_15_atax_avm_enable(i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_enable),
        .out_memdep_15_atax_avm_read(i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_read),
        .out_memdep_15_atax_avm_write(i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_write),
        .out_memdep_15_atax_avm_writedata(i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_15_atax78_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_15_atax78_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_reduction_atax_4_atax50_q_124_fifo(STALLFIFO,477)
    assign redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_in = SE_i_reduction_atax_4_atax50_V1;
    assign redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist25_i_reduction_atax_4_atax50_q_124_fifo_data_in = i_reduction_atax_4_atax50_q;
    assign redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_in_bitsignaltemp = redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_in[0];
    assign redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_in_bitsignaltemp = redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_in[0];
    assign redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_out[0] = redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_out_bitsignaltemp;
    assign redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_out[0] = redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(125),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist25_i_reduction_atax_4_atax50_q_124_fifo (
        .valid_in(redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_in_bitsignaltemp),
        .stall_in(redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_atax_4_atax50_q),
        .valid_out(redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_out_bitsignaltemp),
        .stall_out(redist25_i_reduction_atax_4_atax50_q_124_fifo_stall_out_bitsignaltemp),
        .data_out(redist25_i_reduction_atax_4_atax50_q_124_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_reduction_atax_1_atax28_q_62_fifo(STALLFIFO,479)
    assign redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_in = SE_out_redist40_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out_31_fifo_V1;
    assign redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist27_i_reduction_atax_1_atax28_q_62_fifo_data_in = i_reduction_atax_1_atax28_q;
    assign redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_in_bitsignaltemp = redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_in[0];
    assign redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_in_bitsignaltemp = redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_in[0];
    assign redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_out[0] = redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_out_bitsignaltemp;
    assign redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_out[0] = redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist27_i_reduction_atax_1_atax28_q_62_fifo (
        .valid_in(redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_atax_1_atax28_q),
        .valid_out(redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist27_i_reduction_atax_1_atax28_q_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist27_i_reduction_atax_1_atax28_q_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo(STALLFIFO,494)
    assign redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_V1;
    assign redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_b;
    assign redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_in_bitsignaltemp = redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_in[0];
    assign redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_in_bitsignaltemp = redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_in[0];
    assign redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_out[0] = redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_out_bitsignaltemp;
    assign redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_out[0] = redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo (
        .valid_in(redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_b),
        .valid_out(redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist57_i_first_cleanup_xor_atax35_q_225_fifo(STALLFIFO,509)
    assign redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_in = SE_out_redist56_i_first_cleanup_xor_atax35_q_194_fifo_V1;
    assign redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist57_i_first_cleanup_xor_atax35_q_225_fifo_data_in = bubble_select_redist56_i_first_cleanup_xor_atax35_q_194_fifo_b;
    assign redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_in_bitsignaltemp = redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_in[0];
    assign redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_in_bitsignaltemp = redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_in[0];
    assign redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_out[0] = redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_out_bitsignaltemp;
    assign redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_out[0] = redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist57_i_first_cleanup_xor_atax35_q_225_fifo (
        .valid_in(redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_in_bitsignaltemp),
        .stall_in(redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist56_i_first_cleanup_xor_atax35_q_194_fifo_b),
        .valid_out(redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_out_bitsignaltemp),
        .stall_out(redist57_i_first_cleanup_xor_atax35_q_225_fifo_stall_out_bitsignaltemp),
        .data_out(redist57_i_first_cleanup_xor_atax35_q_225_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo(BITJOIN,630)
    assign bubble_join_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_q = redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_data_out;

    // bubble_select_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo(BITSELECT,631)
    assign bubble_select_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_b = $unsigned(bubble_join_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_q[63:0]);

    // i_arrayidx73_atax0_add_x(ADD,326)@10
    assign i_arrayidx73_atax0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z4ataxpa64_fpfs1_inputss_unnamed_atax20_atax0_aunroll_x_b};
    assign i_arrayidx73_atax0_add_x_b = {1'b0, bubble_select_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_b};
    assign i_arrayidx73_atax0_add_x_o = $unsigned(i_arrayidx73_atax0_add_x_a) + $unsigned(i_arrayidx73_atax0_add_x_b);
    assign i_arrayidx73_atax0_add_x_q = i_arrayidx73_atax0_add_x_o[64:0];

    // i_arrayidx73_atax0_dupName_0_trunc_sel_x(BITSELECT,331)@10
    assign i_arrayidx73_atax0_dupName_0_trunc_sel_x_b = i_arrayidx73_atax0_add_x_q[63:0];

    // join_for_coalesced_delay_0(BITJOIN,452)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_b, i_arrayidx73_atax0_dupName_0_trunc_sel_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,510)
    assign coalesced_delay_0_fifo_valid_in = SE_out_redist14_i_arrayidx7132_atax0_shift_join_x_q_8_fifo_V0;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(218),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(96),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,1070)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_memdep_15_atax78_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = redist57_i_first_cleanup_xor_atax35_q_225_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_and2 = redist42_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out_31_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and1;
    assign SE_out_coalesced_delay_0_fifo_and3 = redist27_i_reduction_atax_1_atax28_q_62_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and2;
    assign SE_out_coalesced_delay_0_fifo_and4 = redist25_i_reduction_atax_4_atax50_q_124_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and3;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_valid_out & SE_out_coalesced_delay_0_fifo_and4;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax86(STALLENABLE,843)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_wireValid = i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_valid_out;

    // bubble_join_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo(BITJOIN,735)
    assign bubble_join_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_q = redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_data_out;

    // bubble_select_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo(BITSELECT,736)
    assign bubble_select_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_b = $unsigned(bubble_join_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_16_atax77(BITJOIN,513)
    assign bubble_join_i_llvm_fpga_mem_memdep_16_atax77_q = i_llvm_fpga_mem_memdep_16_atax77_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_16_atax77(BITSELECT,514)
    assign bubble_select_i_llvm_fpga_mem_memdep_16_atax77_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_16_atax77_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi17_push23_atax86(BLACKBOX,134)@227
    // in in_stall_in@20000000
    // out out_data_out@228
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@228
    atax_i_llvm_fpga_push_i1_memdep_phi17_push23_0 thei_llvm_fpga_push_i1_memdep_phi17_push23_atax86 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_16_atax77_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_feedback_stall_out_23),
        .in_keep_going(bubble_select_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_backStall),
        .in_valid_in(SE_out_redist49_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_225_fifo_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo(BITJOIN,651)
    assign bubble_join_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_q = redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_data_out;

    // bubble_select_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo(BITSELECT,652)
    assign bubble_select_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_b = $unsigned(bubble_join_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5(BLACKBOX,122)@226
    // in in_stall_in@20000000
    // out out_data_out@227
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@227
    atax_i_llvm_fpga_pop_i1_memdep_phi17_pop23_0 thei_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_b),
        .in_feedback_in_23(i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_memdep_phi17_push23_atax86_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_coalesced_delay_0_fifo_backStall),
        .in_valid_in(SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo(STALLENABLE,996)
    // Valid signal propagation
    assign SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_V0 = SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_backStall = i_llvm_fpga_pop_i1_memdep_phi17_pop23_atax5_out_stall_out | ~ (SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_wireValid = redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_out;

    // redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo(STALLFIFO,473)
    assign redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_in = SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_V1;
    assign redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_in = SE_out_redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_backStall;
    assign redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_data_in = bubble_select_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_b;
    assign redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_in_bitsignaltemp = redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_in[0];
    assign redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_in_bitsignaltemp = redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_in[0];
    assign redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_out[0] = redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_out_bitsignaltemp;
    assign redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_out[0] = redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo (
        .valid_in(redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_b),
        .valid_out(redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6(BLACKBOX,123)@195
    // in in_stall_in@20000000
    // out out_data_out@196
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@196
    atax_i_llvm_fpga_pop_i1_memdep_phi19_pop24_0 thei_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_b),
        .in_feedback_in_24(i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_memdep_phi19_push24_atax87_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_backStall),
        .in_valid_in(SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo(STALLENABLE,994)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_fromReg0 <= '0;
            SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_fromReg0 <= SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_toReg0;
            // Successor 1
            SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_fromReg1 <= SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi19_pop24_atax6_out_stall_out) & SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_wireValid) | SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_fromReg0;
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_consumed1 = (~ (redist21_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_225_fifo_stall_out) & SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_wireValid) | SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_fromReg1;
    // Consuming
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_StallValid = SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_backStall & SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_wireValid;
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_toReg0 = SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_StallValid & SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_consumed0;
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_toReg1 = SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_StallValid & SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_or0 = SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_consumed0;
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_wireStall = ~ (SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_consumed1 & SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_or0);
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_backStall = SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_V0 = SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_wireValid & ~ (SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_fromReg0);
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_V1 = SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_wireValid & ~ (SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_wireValid = redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_out;

    // redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo(STALLFIFO,472)
    assign redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_in = SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_V1;
    assign redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_in = SE_out_redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_backStall;
    assign redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_data_in = bubble_select_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_b;
    assign redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_in_bitsignaltemp = redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_in[0];
    assign redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_in_bitsignaltemp = redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_in[0];
    assign redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_out[0] = redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_out_bitsignaltemp;
    assign redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_out[0] = redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo (
        .valid_in(redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_in_bitsignaltemp),
        .stall_in(redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_b),
        .valid_out(redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_valid_out_bitsignaltemp),
        .stall_out(redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_out_bitsignaltemp),
        .data_out(redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7(BLACKBOX,124)@164
    // in in_stall_in@20000000
    // out out_data_out@165
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@165
    atax_i_llvm_fpga_pop_i1_memdep_phi21_pop25_0 thei_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_b),
        .in_feedback_in_25(i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_memdep_phi21_push25_atax81_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_backStall),
        .in_valid_in(SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo(STALLENABLE,992)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_fromReg0 <= '0;
            SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_fromReg0 <= SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_toReg0;
            // Successor 1
            SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_fromReg1 <= SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi21_pop25_atax7_out_stall_out) & SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_wireValid) | SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_fromReg0;
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_consumed1 = (~ (redist20_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_194_fifo_stall_out) & SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_wireValid) | SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_fromReg1;
    // Consuming
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_StallValid = SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_backStall & SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_wireValid;
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_toReg0 = SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_StallValid & SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_consumed0;
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_toReg1 = SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_StallValid & SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_or0 = SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_consumed0;
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_wireStall = ~ (SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_consumed1 & SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_or0);
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_backStall = SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_V0 = SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_wireValid & ~ (SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_fromReg0);
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_V1 = SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_wireValid & ~ (SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_wireValid = redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_out;

    // redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo(STALLFIFO,471)
    assign redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_in = SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_V1;
    assign redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_in = SE_out_redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_backStall;
    assign redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_data_in = bubble_select_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b;
    assign redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_in_bitsignaltemp = redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_in[0];
    assign redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_in_bitsignaltemp = redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_in[0];
    assign redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_out[0] = redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_out_bitsignaltemp;
    assign redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_out[0] = redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo (
        .valid_in(redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b),
        .valid_out(redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8(BLACKBOX,125)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    atax_i_llvm_fpga_pop_i1_memdep_phi24_pop26_0 thei_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_b),
        .in_feedback_in_26(i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_memdep_phi24_push26_atax82_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_backStall),
        .in_valid_in(SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo(STALLENABLE,990)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_fromReg0 <= '0;
            SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_fromReg0 <= SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_toReg0;
            // Successor 1
            SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_fromReg1 <= SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi24_pop26_atax8_out_stall_out) & SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_wireValid) | SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_fromReg0;
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_consumed1 = (~ (redist19_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_163_fifo_stall_out) & SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_wireValid) | SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_fromReg1;
    // Consuming
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_StallValid = SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_backStall & SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_wireValid;
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_toReg0 = SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_StallValid & SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_consumed0;
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_toReg1 = SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_StallValid & SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_or0 = SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_consumed0;
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_wireStall = ~ (SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_consumed1 & SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_or0);
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_backStall = SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_V0 = SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_wireValid & ~ (SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_fromReg0);
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_V1 = SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_wireValid & ~ (SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_wireValid = redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out;

    // redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo(STALLFIFO,470)
    assign redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in = SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V1;
    assign redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in = SE_out_redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_backStall;
    assign redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_data_in = bubble_select_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b;
    assign redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in_bitsignaltemp = redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in[0];
    assign redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in_bitsignaltemp = redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in[0];
    assign redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out[0] = redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out_bitsignaltemp;
    assign redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out[0] = redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo (
        .valid_in(redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b),
        .valid_out(redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9(BLACKBOX,126)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    atax_i_llvm_fpga_pop_i1_memdep_phi28_pop27_0 thei_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b),
        .in_feedback_in_27(i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_memdep_phi28_push27_atax83_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_backStall),
        .in_valid_in(SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(STALLENABLE,988)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg0 <= '0;
            SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg0 <= SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg0;
            // Successor 1
            SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg1 <= SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi28_pop27_atax9_out_stall_out) & SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid) | SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg0;
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed1 = (~ (redist18_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_132_fifo_stall_out) & SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid) | SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg1;
    // Consuming
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_StallValid = SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall & SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid;
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg0 = SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_StallValid & SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed0;
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg1 = SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_StallValid & SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_or0 = SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed0;
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireStall = ~ (SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed1 & SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_or0);
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall = SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V0 = SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid & ~ (SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg0);
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V1 = SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid & ~ (SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid = redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out;

    // redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(STALLFIFO,469)
    assign redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in = SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V1;
    assign redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in = SE_out_redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall;
    assign redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_in = bubble_select_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_b;
    assign redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in_bitsignaltemp = redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in[0];
    assign redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in_bitsignaltemp = redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in[0];
    assign redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out[0] = redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out_bitsignaltemp;
    assign redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out[0] = redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo (
        .valid_in(redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_b),
        .valid_out(redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10(BLACKBOX,127)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    atax_i_llvm_fpga_pop_i1_memdep_phi33_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_b),
        .in_feedback_in_28(i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_memdep_phi33_push28_atax84_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_backStall),
        .in_valid_in(SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo(STALLENABLE,986)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg0 <= '0;
            SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg0 <= SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg0;
            // Successor 1
            SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg1 <= SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi33_pop28_atax10_out_stall_out) & SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid) | SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg0;
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed1 = (~ (redist17_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out) & SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid) | SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg1;
    // Consuming
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_StallValid = SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_backStall & SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid;
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg0 = SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_StallValid & SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed0;
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_toReg1 = SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_StallValid & SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_or0 = SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed0;
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireStall = ~ (SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_consumed1 & SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_or0);
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_backStall = SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V0 = SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid & ~ (SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg0);
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_V1 = SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid & ~ (SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_wireValid = redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out;

    // redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo(STALLFIFO,468)
    assign redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in = SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V1;
    assign redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in = SE_out_redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_backStall;
    assign redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_data_in = bubble_select_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b;
    assign redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in_bitsignaltemp = redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in[0];
    assign redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in_bitsignaltemp = redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in[0];
    assign redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out[0] = redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out_bitsignaltemp;
    assign redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out[0] = redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo (
        .valid_in(redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b),
        .valid_out(redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11(BLACKBOX,128)@40
    // in in_stall_in@20000000
    // out out_data_out@41
    // out out_feedback_stall_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@41
    atax_i_llvm_fpga_pop_i1_memdep_phi40_pop29_0 thei_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_b),
        .in_feedback_in_29(i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_memdep_phi40_push29_atax85_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_backStall),
        .in_valid_in(SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_feedback_stall_out_29),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(STALLENABLE,984)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg0 <= '0;
            SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg0 <= SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg0;
            // Successor 1
            SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg1 <= SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi40_pop29_atax11_out_stall_out) & SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid) | SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg0;
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed1 = (~ (redist16_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_70_fifo_stall_out) & SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid) | SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg1;
    // Consuming
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_StallValid = SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall & SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid;
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg0 = SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_StallValid & SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed0;
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_toReg1 = SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_StallValid & SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_or0 = SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed0;
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireStall = ~ (SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_consumed1 & SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_or0);
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall = SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V0 = SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid & ~ (SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg0);
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_V1 = SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid & ~ (SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_wireValid = redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out;

    // redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo(STALLFIFO,467)
    assign redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in = SE_out_atax_B12_merge_reg_aunroll_x_V6;
    assign redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in = SE_out_redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_backStall;
    assign redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_in = bubble_select_atax_B12_merge_reg_aunroll_x_b;
    assign redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in_bitsignaltemp = redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in[0];
    assign redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in_bitsignaltemp = redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in[0];
    assign redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out[0] = redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out_bitsignaltemp;
    assign redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out[0] = redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(40),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo (
        .valid_in(redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .valid_out(redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_789(CONSTANT,19)
    assign c_i4_789_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_initerations_pop30_atax3(BLACKBOX,132)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i4_initerations_pop30_0 thei_llvm_fpga_pop_i4_initerations_pop30_atax3 (
        .in_data_in(c_i4_789_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_30(i_llvm_fpga_push_i4_initerations_push30_atax36_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i4_initerations_push30_atax36_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_feedback_stall_out_30),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_692(CONSTANT,18)
    assign c_i4_692_q = $unsigned(4'b0110);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12(BLACKBOX,131)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_0 thei_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12 (
        .in_data_in(c_i4_692_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_21(i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_cleanups_pop31_atax1(BLACKBOX,130)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i4_cleanups_pop31_0 thei_llvm_fpga_pop_i4_cleanups_pop31_atax1 (
        .in_data_in(c_i4_789_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_31(i_llvm_fpga_push_i4_cleanups_push31_atax88_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i4_cleanups_push31_atax88_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop31_atax1_backStall),
        .in_valid_in(SE_out_atax_B12_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_feedback_stall_out_31),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_334_pop22_atax4(BLACKBOX,129)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i32_i_334_pop22_0 thei_llvm_fpga_pop_i32_i_334_pop22_atax4 (
        .in_data_in(c_i32_091_q),
        .in_dir(bubble_select_atax_B12_merge_reg_aunroll_x_b),
        .in_feedback_in_22(i_llvm_fpga_push_i32_i_334_push22_atax47_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_i_334_push22_atax47_out_feedback_valid_out_22),
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

    // bubble_out_atax_B12_merge_reg_aunroll_x_1_reg(STALLFIFO,1427)
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

    // bubble_join_stall_entry(BITJOIN,580)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,581)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,886)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B12_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B12_merge_reg_aunroll_x(BLACKBOX,248)@0
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

    // SE_out_atax_B12_merge_reg_aunroll_x(STALLENABLE,889)
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
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i4_cleanups_pop31_atax1_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg3;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i4_fpga_indvars_iv58_pop21_atax12_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg4;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_i4_initerations_pop30_atax3_out_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg5;
    assign SE_out_atax_B12_merge_reg_aunroll_x_consumed6 = (~ (redist15_atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl_39_fifo_stall_out) & SE_out_atax_B12_merge_reg_aunroll_x_wireValid) | SE_out_atax_B12_merge_reg_aunroll_x_fromReg6;
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

    // SE_out_i_llvm_fpga_pipeline_keep_going_atax2(STALLENABLE,817)
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
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed1 = (~ (SE_i_next_initerations_atax16_vt_join_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed2 = (~ (SE_in_i_llvm_fpga_push_i32_i_334_push22_atax47_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed3 = (~ (SE_leftShiftStage0_uid376_i_cleanups_shl_atax0_shift_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed4 = (~ (SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv58_push21_atax55_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax2_consumed5 = (~ (redist43_i_llvm_fpga_pipeline_keep_going_atax2_out_data_out_39_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_atax2_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax2_fromReg5;
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

    // SE_out_i_llvm_fpga_push_i1_notexitcond_atax54(STALLENABLE,857)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_atax54_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_atax54_wireValid = i_llvm_fpga_push_i1_notexitcond_atax54_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_atax54(BLACKBOX,141)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_atax54 (
        .in_data_in(i_exitcond60_atax32_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_atax2_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_atax14_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_atax54_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_atax54_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_atax54_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_atax54_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_atax54_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_atax54_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_atax56(STALLENABLE,841)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_atax56_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_atax56_wireValid = i_llvm_fpga_push_i1_lastiniteration_atax56_out_valid_out;

    // i_last_initeration_atax37_sel_x(BITSELECT,345)@2
    assign i_last_initeration_atax37_sel_x_b = i_next_initerations_atax16_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_atax56(BLACKBOX,133)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    atax_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_atax56 (
        .in_data_in(i_last_initeration_atax37_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_atax2_out_initeration_stall_out),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax2_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_atax56_backStall),
        .in_valid_in(SE_i_next_initerations_atax16_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_atax56_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_atax56_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_atax56_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_atax56_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B12_merge_reg_aunroll_x(BITJOIN,584)
    assign bubble_join_atax_B12_merge_reg_aunroll_x_q = atax_B12_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_atax_B12_merge_reg_aunroll_x(BITSELECT,585)
    assign bubble_select_atax_B12_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B12_merge_reg_aunroll_x_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_atax2(BLACKBOX,121)@1
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
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_atax56_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_atax56_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_atax54_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_atax54_out_feedback_valid_out_3),
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

    // ext_sig_sync_out(GPOUT,23)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_atax2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_atax2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,241)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_atax2_out_pipeline_valid_out;

    // sync_out(GPOUT,246)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,253)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address = i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable = i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read = i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write = i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata = i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable = i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount = i_sfc_s_c0_in_for_body69_ataxs_c0_enter24413_atax58_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount;

    // bubble_join_redist28_i_masked_atax71_q_256_fifo(BITJOIN,672)
    assign bubble_join_redist28_i_masked_atax71_q_256_fifo_q = redist28_i_masked_atax71_q_256_fifo_data_out;

    // bubble_select_redist28_i_masked_atax71_q_256_fifo(BITSELECT,673)
    assign bubble_select_redist28_i_masked_atax71_q_256_fifo_b = $unsigned(bubble_join_redist28_i_masked_atax71_q_256_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,254)@258
    assign out_masked = bubble_select_redist28_i_masked_atax71_q_256_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop30_atax3_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,256)
    assign out_memdep_20_atax_avm_address = i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_address;
    assign out_memdep_20_atax_avm_enable = i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_enable;
    assign out_memdep_20_atax_avm_read = i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_read;
    assign out_memdep_20_atax_avm_write = i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_write;
    assign out_memdep_20_atax_avm_writedata = i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_writedata;
    assign out_memdep_20_atax_avm_byteenable = i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_byteenable;
    assign out_memdep_20_atax_avm_burstcount = i_llvm_fpga_mem_memdep_20_atax72_out_memdep_20_atax_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,258)
    assign out_lsu_memdep_20_o_active = i_llvm_fpga_mem_memdep_20_atax72_out_lsu_memdep_20_o_active;

    // dupName_3_ext_sig_sync_out_x(GPOUT,260)
    assign out_memdep_23_atax_avm_address = i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_address;
    assign out_memdep_23_atax_avm_enable = i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_enable;
    assign out_memdep_23_atax_avm_read = i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_read;
    assign out_memdep_23_atax_avm_write = i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_write;
    assign out_memdep_23_atax_avm_writedata = i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_writedata;
    assign out_memdep_23_atax_avm_byteenable = i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_byteenable;
    assign out_memdep_23_atax_avm_burstcount = i_llvm_fpga_mem_memdep_23_atax73_out_memdep_23_atax_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,262)
    assign out_lsu_memdep_23_o_active = i_llvm_fpga_mem_memdep_23_atax73_out_lsu_memdep_23_o_active;

    // dupName_5_ext_sig_sync_out_x(GPOUT,264)
    assign out_memdep_27_atax_avm_address = i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_address;
    assign out_memdep_27_atax_avm_enable = i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_enable;
    assign out_memdep_27_atax_avm_read = i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_read;
    assign out_memdep_27_atax_avm_write = i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_write;
    assign out_memdep_27_atax_avm_writedata = i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_writedata;
    assign out_memdep_27_atax_avm_byteenable = i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_byteenable;
    assign out_memdep_27_atax_avm_burstcount = i_llvm_fpga_mem_memdep_27_atax74_out_memdep_27_atax_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,266)
    assign out_lsu_memdep_27_o_active = i_llvm_fpga_mem_memdep_27_atax74_out_lsu_memdep_27_o_active;

    // dupName_7_ext_sig_sync_out_x(GPOUT,268)
    assign out_memdep_32_atax_avm_address = i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_address;
    assign out_memdep_32_atax_avm_enable = i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_enable;
    assign out_memdep_32_atax_avm_read = i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_read;
    assign out_memdep_32_atax_avm_write = i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_write;
    assign out_memdep_32_atax_avm_writedata = i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_writedata;
    assign out_memdep_32_atax_avm_byteenable = i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_byteenable;
    assign out_memdep_32_atax_avm_burstcount = i_llvm_fpga_mem_memdep_32_atax75_out_memdep_32_atax_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,269)
    assign out_lsu_memdep_32_o_active = i_llvm_fpga_mem_memdep_32_atax75_out_lsu_memdep_32_o_active;

    // dupName_9_ext_sig_sync_out_x(GPOUT,270)
    assign out_memdep_39_atax_avm_address = i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_address;
    assign out_memdep_39_atax_avm_enable = i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_enable;
    assign out_memdep_39_atax_avm_read = i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_read;
    assign out_memdep_39_atax_avm_write = i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_write;
    assign out_memdep_39_atax_avm_writedata = i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_writedata;
    assign out_memdep_39_atax_avm_byteenable = i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_byteenable;
    assign out_memdep_39_atax_avm_burstcount = i_llvm_fpga_mem_memdep_39_atax76_out_memdep_39_atax_avm_burstcount;

    // dupName_10_ext_sig_sync_out_x(GPOUT,271)
    assign out_lsu_memdep_39_o_active = i_llvm_fpga_mem_memdep_39_atax76_out_lsu_memdep_39_o_active;

    // dupName_11_ext_sig_sync_out_x(GPOUT,272)
    assign out_memdep_16_atax_avm_address = i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_address;
    assign out_memdep_16_atax_avm_enable = i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_enable;
    assign out_memdep_16_atax_avm_read = i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_read;
    assign out_memdep_16_atax_avm_write = i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_write;
    assign out_memdep_16_atax_avm_writedata = i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_writedata;
    assign out_memdep_16_atax_avm_byteenable = i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_byteenable;
    assign out_memdep_16_atax_avm_burstcount = i_llvm_fpga_mem_memdep_16_atax77_out_memdep_16_atax_avm_burstcount;

    // dupName_12_ext_sig_sync_out_x(GPOUT,273)
    assign out_lsu_memdep_16_o_active = i_llvm_fpga_mem_memdep_16_atax77_out_lsu_memdep_16_o_active;

    // dupName_13_ext_sig_sync_out_x(GPOUT,274)
    assign out_memdep_15_atax_avm_address = i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_address;
    assign out_memdep_15_atax_avm_enable = i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_enable;
    assign out_memdep_15_atax_avm_read = i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_read;
    assign out_memdep_15_atax_avm_write = i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_write;
    assign out_memdep_15_atax_avm_writedata = i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_writedata;
    assign out_memdep_15_atax_avm_byteenable = i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_byteenable;
    assign out_memdep_15_atax_avm_burstcount = i_llvm_fpga_mem_memdep_15_atax78_out_memdep_15_atax_avm_burstcount;

    // dupName_14_ext_sig_sync_out_x(GPOUT,275)
    assign out_lsu_memdep_15_o_active = i_llvm_fpga_mem_memdep_15_atax78_out_lsu_memdep_15_o_active;

    // dupName_15_ext_sig_sync_out_x(GPOUT,276)
    assign out_memdep_18_atax_avm_address = i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_address;
    assign out_memdep_18_atax_avm_enable = i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_enable;
    assign out_memdep_18_atax_avm_read = i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_read;
    assign out_memdep_18_atax_avm_write = i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_write;
    assign out_memdep_18_atax_avm_writedata = i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_writedata;
    assign out_memdep_18_atax_avm_byteenable = i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_byteenable;
    assign out_memdep_18_atax_avm_burstcount = i_llvm_fpga_mem_memdep_18_atax79_out_memdep_18_atax_avm_burstcount;

    // dupName_16_ext_sig_sync_out_x(GPOUT,277)
    assign out_lsu_memdep_18_o_active = i_llvm_fpga_mem_memdep_18_atax79_out_lsu_memdep_18_o_active;

endmodule
