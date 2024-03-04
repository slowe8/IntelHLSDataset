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

// SystemVerilog created from atax_bb_B4_stall_region
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B4_stall_region (
    input wire [63:0] in_unnamed_atax9_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax9_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax9_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax9_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax9_atax_avm_address,
    output wire [0:0] out_unnamed_atax9_atax_avm_enable,
    output wire [0:0] out_unnamed_atax9_atax_avm_read,
    output wire [0:0] out_unnamed_atax9_atax_avm_write,
    output wire [63:0] out_unnamed_atax9_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax9_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax9_atax_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [63:0] in_idxprom73,
    input wire [0:0] in_notcmp4674,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_4_atax_avm_readdata,
    input wire [0:0] in_memdep_4_atax_avm_writeack,
    input wire [0:0] in_memdep_4_atax_avm_waitrequest,
    input wire [0:0] in_memdep_4_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_4_atax_avm_address,
    output wire [0:0] out_memdep_4_atax_avm_enable,
    output wire [0:0] out_memdep_4_atax_avm_read,
    output wire [0:0] out_memdep_4_atax_avm_write,
    output wire [31:0] out_memdep_4_atax_avm_writedata,
    output wire [3:0] out_memdep_4_atax_avm_byteenable,
    output wire [0:0] out_memdep_4_atax_avm_burstcount,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe4115,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out;
    wire [31:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_address;
    wire [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_enable;
    wire [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_read;
    wire [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_write;
    wire [31:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_writedata;
    wire [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_valid;
    wire [2:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_valid;
    wire redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall;
    wire redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_bitsignaltemp;
    wire [63:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_data;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_empty;
    wire redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_empty_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_almost_empty;
    wire redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid;
    wire redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_stall;
    wire redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_stall_bitsignaltemp;
    wire [63:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty;
    wire redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty;
    wire redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_i_empty;
    wire coalesced_delay_0_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_almost_empty;
    wire coalesced_delay_0_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_o_empty;
    wire coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_almost_empty;
    wire coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_b;
    wire [64:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [130:0] bubble_join_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_f;
    wire [63:0] bubble_join_redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_q;
    wire [63:0] bubble_select_redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_b;
    wire [2:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [2:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V3;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V6;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V4;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V7;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V5;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V8;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V1;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V2;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_temp_back_stall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V1;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V2;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_fast_read;
    wire can_fast_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_slow_read;
    wire can_slow_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result;
    wire no_space_for_result_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    wire forced_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty_reg0_q;
    reg [31:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata_reg1_q;
    reg [31:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [63:0] stall_entry_o4_reg1_q;
    reg [63:0] stall_entry_o4_reg0_q;
    reg [0:0] stall_entry_o5_reg1_q;
    reg [0:0] stall_entry_o5_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_reg0_q;
    reg [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_reg1_q;
    reg [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid_reg1_q;
    reg [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid_reg0_q;
    reg [63:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data_reg1_q;
    reg [63:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data_reg0_q;
    reg [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_reg1_q;
    reg [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_reg0_q;
    reg [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_reg1_q;
    reg [0:0] redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg0_q;
    reg [2:0] coalesced_delay_0_fifo_o_data_reg1_q;
    reg [2:0] coalesced_delay_0_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_reg0(REG,157)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_backStall);
        end
    end

    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_reg1(REG,158)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_reg1_q <= $unsigned(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_reg0_q);
        end
    end

    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo(STALLFIFO,34)
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V0;
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall = redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_reg1_q;
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_data = bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_d;
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V3;
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V6;
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_valid_bitsignaltemp = redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_valid[0];
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_bitsignaltemp = redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall[0];
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid[0] = redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_stall[0] = redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_stall_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty[0] = redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty[0] = redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(49),
        .WIDTH(64),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo (
        .i_valid(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_valid_bitsignaltemp),
        .i_stall(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_d),
        .o_valid(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid_bitsignaltemp),
        .o_stall(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_stall_bitsignaltemp),
        .o_data(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data),
        .o_empty(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_reg0(REG,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_reg0_q <= $unsigned(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty);
        end
    end

    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_reg1(REG,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_reg1_q <= $unsigned(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty_reg0(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty);
        end
    end

    // i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty_reg1(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty_reg0_q);
        end
    end

    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_reg0(REG,164)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_reg0_q <= $unsigned(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty);
        end
    end

    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_reg1(REG,163)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_reg1_q <= $unsigned(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty_reg0(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty);
        end
    end

    // i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty_reg1(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty_reg0_q);
        end
    end

    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data_reg0(REG,162)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data_reg0_q <= $unsigned(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data);
        end
    end

    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data_reg1(REG,161)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data_reg1_q <= $unsigned(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo(BITJOIN,48)
    assign bubble_join_redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_q = redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_data_reg1_q;

    // bubble_select_redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo(BITSELECT,49)
    assign bubble_select_redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_b = $unsigned(bubble_join_redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_q[63:0]);

    // i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata_reg0(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata);
        end
    end

    // i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata_reg1(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5(BITJOIN,37)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5_q = i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata_reg1_q;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5(BITSELECT,38)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax9_atax5_q[31:0]);

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg0(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg1(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg2(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg3(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg4(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg5(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg6(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg5_q);
        end
    end

    // i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out_reg0(REG,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out_reg1(REG,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // join_for_coalesced_delay_0(BITJOIN,32)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_b};

    // coalesced_delay_0_fifo_i_stall_reg0(REG,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // coalesced_delay_0_fifo_i_stall_reg1(REG,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg1_q <= $unsigned(coalesced_delay_0_fifo_i_stall_reg0_q);
        end
    end

    // coalesced_delay_0_fifo(STALLFIFO,35)
    assign coalesced_delay_0_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V1;
    assign coalesced_delay_0_fifo_i_stall = coalesced_delay_0_fifo_i_stall_reg1_q;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V4;
    assign coalesced_delay_0_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V7;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_empty[0] = coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_almost_empty[0] = coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(82),
        .WIDTH(3),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .o_empty(coalesced_delay_0_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_fifo_o_almost_empty_reg0(REG,176)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty);
        end
    end

    // coalesced_delay_0_fifo_o_almost_empty_reg1(REG,175)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out_reg0(REG,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out_reg1(REG,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg0(REG,174)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_empty);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg1(REG,173)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_empty_reg0_q);
        end
    end

    // i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_valid_reg0(REG,156)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_valid_reg1(REG,155)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg0(REG,170)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_valid);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg1(REG,169)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_valid_reg0_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0(STALLENABLE,94)
    // Sync
    assign merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall = in_stall_in;
    assign merged_in_SE_sel_for_coalesced_delay_0_can_fast_read = ~ ((coalesced_delay_0_fifo_o_almost_empty_reg1_q | i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_can_slow_read = ~ ((coalesced_delay_0_fifo_o_empty_reg1_q | i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_backStall = ~ (merged_in_SE_sel_for_coalesced_delay_0_forced_read);
    assign merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result = merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    assign merged_in_SE_sel_for_coalesced_delay_0_V0 = merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    assign merged_in_SE_sel_for_coalesced_delay_0_V1 = $unsigned(1'b0);
    assign merged_in_SE_sel_for_coalesced_delay_0_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp_dup_name_0 = merged_in_SE_sel_for_coalesced_delay_0_can_fast_read[0];
    assign can_slow_read_bitsignaltemp_dup_name_0 = merged_in_SE_sel_for_coalesced_delay_0_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp_dup_name_0 = merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result[0];
    assign merged_in_SE_sel_for_coalesced_delay_0_forced_read[0] = forced_read_bitsignaltemp_dup_name_0;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_sel_for_coalesced_delay_0 (
        .can_fast_read(can_fast_read_bitsignaltemp_dup_name_0),
        .can_slow_read(can_slow_read_bitsignaltemp_dup_name_0),
        .no_space_for_result(no_space_for_result_bitsignaltemp_dup_name_0),
        .forced_read(forced_read_bitsignaltemp_dup_name_0),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_in_i_stall_reg0(REG,149)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_in_i_stall_reg1(REG,150)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x(BLACKBOX,26)@68
    // in in_i_stall@20000000
    // out out_almost_empty_out@101
    // out out_empty_out@101
    // out out_memdep_4_atax_avm_address@20000000
    // out out_memdep_4_atax_avm_burstcount@20000000
    // out out_memdep_4_atax_avm_byteenable@20000000
    // out out_memdep_4_atax_avm_enable@20000000
    // out out_memdep_4_atax_avm_read@20000000
    // out out_memdep_4_atax_avm_write@20000000
    // out out_memdep_4_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@101
    // out out_c1_exit121_0_tpl@101
    atax_i_sfc_s_c1_in_for_body13_s_c1_enter118_atax7 thei_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V2),
        .in_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V1),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0_sync_valid_reg6_q),
        .in_memdep_4_atax_avm_readdata(in_memdep_4_atax_avm_readdata),
        .in_memdep_4_atax_avm_readdatavalid(in_memdep_4_atax_avm_readdatavalid),
        .in_memdep_4_atax_avm_waitrequest(in_memdep_4_atax_avm_waitrequest),
        .in_memdep_4_atax_avm_writeack(in_memdep_4_atax_avm_writeack),
        .in_c1_eni2117_0_tpl(GND_q),
        .in_c1_eni2117_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_b),
        .in_c1_eni2117_2_tpl(bubble_select_redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_b),
        .out_almost_empty_out(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_empty_out),
        .out_memdep_4_atax_avm_address(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_address),
        .out_memdep_4_atax_avm_burstcount(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_burstcount),
        .out_memdep_4_atax_avm_byteenable(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_byteenable),
        .out_memdep_4_atax_avm_enable(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_enable),
        .out_memdep_4_atax_avm_read(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_read),
        .out_memdep_4_atax_avm_write(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_write),
        .out_memdep_4_atax_avm_writedata(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_writedata),
        .out_o_stall(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_valid),
        .out_c1_exit121_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid_reg0(REG,160)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid_reg0_q <= $unsigned(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid);
        end
    end

    // redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid_reg1(REG,159)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid_reg1_q <= $unsigned(redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_valid_reg0_q);
        end
    end

    // i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid_reg0(REG,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid);
        end
    end

    // i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid_reg1(REG,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5(STALLENABLE,93)
    // Sync
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_temp_back_stall = i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_can_fast_read = ~ ((i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty_reg1_q | redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_almost_empty_reg1_q));
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_can_slow_read = ~ ((i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty_reg1_q | redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_empty_reg1_q));
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_backStall = ~ (merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_forced_read);
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_no_space_for_result = merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_temp_back_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V0 = merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_forced_read;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V1 = $unsigned(1'b0);
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_no_space_for_result[0];
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5 (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax9_atax5_in_i_stall_reg0(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_atax9_atax5_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_unnamed_atax9_atax5_backStall);
        end
    end

    // i_llvm_fpga_mem_unnamed_atax9_atax5_in_i_stall_reg1(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_atax9_atax5_in_i_stall_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_atax9_atax5_in_i_stall_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // stall_entry_o5_reg0(REG,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_notcmp4674);
        end
    end

    // stall_entry_o5_reg1(REG,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg1_q <= $unsigned(stall_entry_o5_reg0_q);
        end
    end

    // stall_entry_o4_reg0(REG,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_idxprom73);
        end
    end

    // stall_entry_o4_reg1(REG,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg1_q <= $unsigned(stall_entry_o4_reg0_q);
        end
    end

    // bubble_join_stall_entry(BITJOIN,40)
    assign bubble_join_stall_entry_q = {stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,41)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_in_i_stall_reg0(REG,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_in_i_stall_reg1(REG,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,91)
    assign merged_in_SE_bubble_join_stall_entry_backStall = i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x(BLACKBOX,25)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@37
    // out out_empty_out@37
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_profile_loop_o_valid@37
    // out out_c0_exit111_0_tpl@37
    // out out_c0_exit111_1_tpl@37
    // out out_c0_exit111_2_tpl@37
    // out out_c0_exit111_3_tpl@37
    // out out_c0_exit111_4_tpl@37
    // out out_c0_exit111_5_tpl@37
    atax_i_sfc_s_c0_in_for_body13_s_c0_enter10515_atax3 thei_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(GND_q),
        .in_c0_eni3_2_tpl(bubble_select_stall_entry_b),
        .in_c0_eni3_3_tpl(bubble_select_stall_entry_c),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit111_0_tpl(),
        .out_c0_exit111_1_tpl(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl),
        .out_c0_exit111_2_tpl(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl),
        .out_c0_exit111_3_tpl(),
        .out_c0_exit111_4_tpl(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl),
        .out_c0_exit111_5_tpl(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl_reg0(REG,148)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl_reg1(REG,147)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl_reg0(REG,146)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl_reg1(REG,145)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_reg0(REG,144)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_reg1(REG,143)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl_reg0(REG,142)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl_reg1(REG,141)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid_reg0(REG,140)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid_reg1(REG,139)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x(BITJOIN,44)
    assign bubble_join_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_q = {i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_5_tpl_reg1_q, i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_4_tpl_reg1_q, i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_reg1_q, i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_1_tpl_reg1_q, i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_profile_loop_o_valid_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x(BITSELECT,45)
    assign bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_q[129:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_q[130:130]);

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out_reg0(REG,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out_reg1(REG,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out_reg0(REG,136)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out_reg1(REG,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid_reg0(REG,138)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid_reg1(REG,137)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x(STALLENABLE,92)
    // Desync
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_temp_back_stall = redist1_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_c0_exit111_2_tpl_31_fifo_o_stall | coalesced_delay_0_fifo_o_stall | i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_backStall = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V0 = i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V3 = i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V6 = i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_out_almost_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V1 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V4 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V3;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V7 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V6;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V2 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V5 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V3;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V8 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V6;

    // i_llvm_fpga_mem_unnamed_atax9_atax5(BLACKBOX,8)@37
    // in in_i_stall@20000000
    // out out_o_almost_empty@68
    // out out_o_empty@68
    // out out_o_readdata@68
    // out out_o_stall@20000000
    // out out_o_valid@68
    // out out_unnamed_atax9_atax_avm_address@20000000
    // out out_unnamed_atax9_atax_avm_burstcount@20000000
    // out out_unnamed_atax9_atax_avm_byteenable@20000000
    // out out_unnamed_atax9_atax_avm_enable@20000000
    // out out_unnamed_atax9_atax_avm_read@20000000
    // out out_unnamed_atax9_atax_avm_write@20000000
    // out out_unnamed_atax9_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_9_atax0 thei_llvm_fpga_mem_unnamed_atax9_atax5 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V8),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V5),
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_c),
        .in_i_predicate(GND_q),
        .in_i_stall(i_llvm_fpga_mem_unnamed_atax9_atax5_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body13_ataxs_c0_enter10515_atax3_aunroll_x_V2),
        .in_unnamed_atax9_atax_avm_readdata(in_unnamed_atax9_atax_avm_readdata),
        .in_unnamed_atax9_atax_avm_readdatavalid(in_unnamed_atax9_atax_avm_readdatavalid),
        .in_unnamed_atax9_atax_avm_waitrequest(in_unnamed_atax9_atax_avm_waitrequest),
        .in_unnamed_atax9_atax_avm_writeack(in_unnamed_atax9_atax_avm_writeack),
        .out_o_almost_empty(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_empty),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax9_atax5_out_o_valid),
        .out_unnamed_atax9_atax_avm_address(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_address),
        .out_unnamed_atax9_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_burstcount),
        .out_unnamed_atax9_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_byteenable),
        .out_unnamed_atax9_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_enable),
        .out_unnamed_atax9_atax_avm_read(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_read),
        .out_unnamed_atax9_atax_avm_write(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_write),
        .out_unnamed_atax9_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_atax9_atax_avm_address = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_address;
    assign out_unnamed_atax9_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_enable;
    assign out_unnamed_atax9_atax_avm_read = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_read;
    assign out_unnamed_atax9_atax_avm_write = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_write;
    assign out_unnamed_atax9_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_writedata;
    assign out_unnamed_atax9_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_byteenable;
    assign out_unnamed_atax9_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax9_atax5_out_unnamed_atax9_atax_avm_burstcount;

    // stall_entry_frontStall_reg0(REG,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_bubble_join_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,20)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_ext_sig_sync_out_x(GPOUT,23)
    assign out_memdep_4_atax_avm_address = i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_address;
    assign out_memdep_4_atax_avm_enable = i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_enable;
    assign out_memdep_4_atax_avm_read = i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_read;
    assign out_memdep_4_atax_avm_write = i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_write;
    assign out_memdep_4_atax_avm_writedata = i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_writedata;
    assign out_memdep_4_atax_avm_byteenable = i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_byteenable;
    assign out_memdep_4_atax_avm_burstcount = i_sfc_s_c1_in_for_body13_ataxs_c1_enter118_atax7_aunroll_x_out_memdep_4_atax_avm_burstcount;

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q);
        end
    end

    // coalesced_delay_0_fifo_o_data_reg0(REG,172)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_data);
        end
    end

    // coalesced_delay_0_fifo_o_data_reg1(REG,171)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,51)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,52)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[2:0]);

    // sel_for_coalesced_delay_0(BITSELECT,33)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);

    // dupName_0_sync_out_x(GPOUT,24)@101
    assign out_almost_empty_out = merged_in_SE_sel_for_coalesced_delay_0_V2;
    assign out_c0_exe4115 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_d;
    assign out_empty_out = merged_in_SE_sel_for_coalesced_delay_0_V1;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_0_b;
    assign out_valid_out = merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;

    // rst_sync(RESETSYNC,177)
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
