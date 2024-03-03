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

// SystemVerilog created from atax_bb_B8_stall_region
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B8_stall_region (
    input wire [31:0] in_memdep_5_atax_avm_readdata,
    input wire [0:0] in_memdep_5_atax_avm_writeack,
    input wire [0:0] in_memdep_5_atax_avm_waitrequest,
    input wire [0:0] in_memdep_5_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_5_atax_avm_address,
    output wire [0:0] out_memdep_5_atax_avm_enable,
    output wire [0:0] out_memdep_5_atax_avm_read,
    output wire [0:0] out_memdep_5_atax_avm_write,
    output wire [31:0] out_memdep_5_atax_avm_writedata,
    output wire [3:0] out_memdep_5_atax_avm_byteenable,
    output wire [0:0] out_memdep_5_atax_avm_burstcount,
    input wire [0:0] in_feedback_almost_empty_in_20,
    input wire [0:0] in_feedback_data_in_20,
    input wire [0:0] in_feedback_empty_in_20,
    output wire [0:0] out_feedback_stall_out_20,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [63:0] in_c0_exe11502,
    input wire [31:0] in_c0_exe21513,
    input wire [0:0] in_c0_exe51544,
    input wire [63:0] in_c0_exe61555,
    input wire [0:0] in_c0_exe76,
    input wire [0:0] in_c0_exe87,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [63:0] out_c0_exe11502,
    output wire [31:0] out_c0_exe21513,
    output wire [0:0] out_c0_exe76,
    output wire [0:0] out_c0_exe87,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_memdep_phi_pop20,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out;
    wire [31:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_valid;
    wire [97:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] redist2_stall_entry_o6_16_fifo_i_valid;
    wire redist2_stall_entry_o6_16_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o6_16_fifo_i_stall;
    wire redist2_stall_entry_o6_16_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o6_16_fifo_i_data;
    wire [0:0] redist2_stall_entry_o6_16_fifo_i_empty;
    wire redist2_stall_entry_o6_16_fifo_i_empty_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o6_16_fifo_i_almost_empty;
    wire redist2_stall_entry_o6_16_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o6_16_fifo_o_valid;
    wire redist2_stall_entry_o6_16_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o6_16_fifo_o_stall;
    wire redist2_stall_entry_o6_16_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o6_16_fifo_o_data;
    wire [0:0] redist2_stall_entry_o6_16_fifo_o_empty;
    wire redist2_stall_entry_o6_16_fifo_o_empty_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o6_16_fifo_o_almost_empty;
    wire redist2_stall_entry_o6_16_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [97:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_i_empty;
    wire coalesced_delay_0_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_almost_empty;
    wire coalesced_delay_0_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [97:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_o_empty;
    wire coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_almost_empty;
    wire coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_b;
    wire [162:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_join_redist2_stall_entry_o6_16_fifo_q;
    wire [0:0] bubble_select_redist2_stall_entry_o6_16_fifo_b;
    wire [97:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [97:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] bubble_out_stall_entry_1_reg_i_valid;
    wire bubble_out_stall_entry_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_i_stall;
    wire bubble_out_stall_entry_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_i_empty;
    wire bubble_out_stall_entry_1_reg_i_empty_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_o_valid;
    wire bubble_out_stall_entry_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_o_stall;
    wire bubble_out_stall_entry_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_o_empty;
    wire bubble_out_stall_entry_1_reg_o_empty_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_o_almost_empty;
    wire bubble_out_stall_entry_1_reg_o_almost_empty_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V4;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V8;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V5;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V9;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V6;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V10;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V3;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V7;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V11;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V1;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V2;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    wire [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_backStall;
    wire [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0;
    wire [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V1;
    wire [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V2;
    wire [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_can_fast_read;
    wire can_fast_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_can_slow_read;
    wire can_slow_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_no_space_for_result;
    wire no_space_for_result_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_forced_read;
    wire forced_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_temp_back_stall;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg2_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out_reg0_q;
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
    reg [31:0] stall_entry_o5_reg1_q;
    reg [31:0] stall_entry_o5_reg0_q;
    reg [0:0] stall_entry_o6_reg1_q;
    reg [0:0] stall_entry_o6_reg0_q;
    reg [63:0] stall_entry_o7_reg1_q;
    reg [63:0] stall_entry_o7_reg0_q;
    reg [0:0] stall_entry_o8_reg1_q;
    reg [0:0] stall_entry_o8_reg0_q;
    reg [0:0] stall_entry_o9_reg1_q;
    reg [0:0] stall_entry_o9_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] redist2_stall_entry_o6_16_fifo_i_stall_reg0_q;
    reg [0:0] redist2_stall_entry_o6_16_fifo_i_stall_reg1_q;
    reg [0:0] redist2_stall_entry_o6_16_fifo_o_valid_reg1_q;
    reg [0:0] redist2_stall_entry_o6_16_fifo_o_valid_reg0_q;
    reg [0:0] redist2_stall_entry_o6_16_fifo_o_data_reg1_q;
    reg [0:0] redist2_stall_entry_o6_16_fifo_o_data_reg0_q;
    reg [0:0] redist2_stall_entry_o6_16_fifo_o_empty_reg1_q;
    reg [0:0] redist2_stall_entry_o6_16_fifo_o_empty_reg0_q;
    reg [0:0] redist2_stall_entry_o6_16_fifo_o_almost_empty_reg1_q;
    reg [0:0] redist2_stall_entry_o6_16_fifo_o_almost_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg0_q;
    reg [97:0] coalesced_delay_0_fifo_o_data_reg1_q;
    reg [97:0] coalesced_delay_0_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg0_q;
    reg [0:0] bubble_out_stall_entry_1_reg_i_stall_reg0_q;
    reg [0:0] bubble_out_stall_entry_1_reg_i_stall_reg1_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_valid_reg1_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_valid_reg0_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_empty_reg1_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_empty_reg0_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_almost_empty_reg1_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // stall_entry_o9_reg0(REG,136)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg0_q <= $unsigned(in_c0_exe87);
        end
    end

    // stall_entry_o9_reg1(REG,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg1_q <= $unsigned(stall_entry_o9_reg0_q);
        end
    end

    // stall_entry_o8_reg0(REG,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg0_q <= $unsigned(in_c0_exe76);
        end
    end

    // stall_entry_o8_reg1(REG,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg1_q <= $unsigned(stall_entry_o8_reg0_q);
        end
    end

    // stall_entry_o7_reg0(REG,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg0_q <= $unsigned(in_c0_exe61555);
        end
    end

    // stall_entry_o7_reg1(REG,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg1_q <= $unsigned(stall_entry_o7_reg0_q);
        end
    end

    // stall_entry_o6_reg0(REG,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= $unsigned(in_c0_exe51544);
        end
    end

    // stall_entry_o6_reg1(REG,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg1_q <= $unsigned(stall_entry_o6_reg0_q);
        end
    end

    // stall_entry_o5_reg0(REG,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_c0_exe21513);
        end
    end

    // stall_entry_o5_reg1(REG,127)
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

    // stall_entry_o4_reg0(REG,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_c0_exe11502);
        end
    end

    // stall_entry_o4_reg1(REG,125)
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

    // bubble_join_stall_entry(BITJOIN,39)
    assign bubble_join_stall_entry_q = {stall_entry_o9_reg1_q, stall_entry_o8_reg1_q, stall_entry_o7_reg1_q, stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,40)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:96]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[160:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:161]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[162:162]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg0(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0);
        end
    end

    // merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg1(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg2(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg3(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg4(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg5(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg6(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg5_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg0(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg1(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg2(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg2_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg1_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_reg0(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_sync_balance_reg2_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_reg1(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_reg0_q);
        end
    end

    // redist2_stall_entry_o6_16_fifo_i_stall_reg0(REG,145)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_stall_entry_o6_16_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_backStall);
        end
    end

    // redist2_stall_entry_o6_16_fifo_i_stall_reg1(REG,146)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_stall_entry_o6_16_fifo_i_stall_reg1_q <= $unsigned(redist2_stall_entry_o6_16_fifo_i_stall_reg0_q);
        end
    end

    // redist2_stall_entry_o6_16_fifo(STALLFIFO,32)
    assign redist2_stall_entry_o6_16_fifo_i_valid = merged_in_SE_bubble_join_stall_entry_V1;
    assign redist2_stall_entry_o6_16_fifo_i_stall = redist2_stall_entry_o6_16_fifo_i_stall_reg1_q;
    assign redist2_stall_entry_o6_16_fifo_i_data = bubble_select_stall_entry_d;
    assign redist2_stall_entry_o6_16_fifo_i_empty = merged_in_SE_bubble_join_stall_entry_V5;
    assign redist2_stall_entry_o6_16_fifo_i_almost_empty = merged_in_SE_bubble_join_stall_entry_V9;
    assign redist2_stall_entry_o6_16_fifo_i_valid_bitsignaltemp = redist2_stall_entry_o6_16_fifo_i_valid[0];
    assign redist2_stall_entry_o6_16_fifo_i_stall_bitsignaltemp = redist2_stall_entry_o6_16_fifo_i_stall[0];
    assign redist2_stall_entry_o6_16_fifo_o_valid[0] = redist2_stall_entry_o6_16_fifo_o_valid_bitsignaltemp;
    assign redist2_stall_entry_o6_16_fifo_o_stall[0] = redist2_stall_entry_o6_16_fifo_o_stall_bitsignaltemp;
    assign redist2_stall_entry_o6_16_fifo_o_empty[0] = redist2_stall_entry_o6_16_fifo_o_empty_bitsignaltemp;
    assign redist2_stall_entry_o6_16_fifo_o_almost_empty[0] = redist2_stall_entry_o6_16_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(34),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(4),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist2_stall_entry_o6_16_fifo (
        .i_valid(redist2_stall_entry_o6_16_fifo_i_valid_bitsignaltemp),
        .i_stall(redist2_stall_entry_o6_16_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_stall_entry_d),
        .o_valid(redist2_stall_entry_o6_16_fifo_o_valid_bitsignaltemp),
        .o_stall(redist2_stall_entry_o6_16_fifo_o_stall_bitsignaltemp),
        .o_data(redist2_stall_entry_o6_16_fifo_o_data),
        .o_empty(redist2_stall_entry_o6_16_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(redist2_stall_entry_o6_16_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_stall_entry_o6_16_fifo_o_data_reg0(REG,150)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_stall_entry_o6_16_fifo_o_data_reg0_q <= $unsigned(redist2_stall_entry_o6_16_fifo_o_data);
        end
    end

    // redist2_stall_entry_o6_16_fifo_o_data_reg1(REG,149)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_stall_entry_o6_16_fifo_o_data_reg1_q <= $unsigned(redist2_stall_entry_o6_16_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_redist2_stall_entry_o6_16_fifo(BITJOIN,45)
    assign bubble_join_redist2_stall_entry_o6_16_fifo_q = redist2_stall_entry_o6_16_fifo_o_data_reg1_q;

    // bubble_select_redist2_stall_entry_o6_16_fifo(BITSELECT,46)
    assign bubble_select_redist2_stall_entry_o6_16_fifo_b = $unsigned(bubble_join_redist2_stall_entry_o6_16_fifo_q[0:0]);

    // bubble_out_stall_entry_1_reg_i_stall_reg0(REG,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_i_stall_reg0_q <= $unsigned(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_backStall);
        end
    end

    // bubble_out_stall_entry_1_reg_i_stall_reg1(REG,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_i_stall_reg1_q <= $unsigned(bubble_out_stall_entry_1_reg_i_stall_reg0_q);
        end
    end

    // bubble_out_stall_entry_1_reg(STALLFIFO,86)
    assign bubble_out_stall_entry_1_reg_i_valid = merged_in_SE_bubble_join_stall_entry_V3;
    assign bubble_out_stall_entry_1_reg_i_stall = bubble_out_stall_entry_1_reg_i_stall_reg1_q;
    assign bubble_out_stall_entry_1_reg_i_empty = merged_in_SE_bubble_join_stall_entry_V7;
    assign bubble_out_stall_entry_1_reg_i_valid_bitsignaltemp = bubble_out_stall_entry_1_reg_i_valid[0];
    assign bubble_out_stall_entry_1_reg_i_stall_bitsignaltemp = bubble_out_stall_entry_1_reg_i_stall[0];
    assign bubble_out_stall_entry_1_reg_o_valid[0] = bubble_out_stall_entry_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_o_stall[0] = bubble_out_stall_entry_1_reg_o_stall_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_o_empty[0] = bubble_out_stall_entry_1_reg_o_empty_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_o_almost_empty[0] = bubble_out_stall_entry_1_reg_o_almost_empty_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(34),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(4),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thebubble_out_stall_entry_1_reg (
        .i_valid(bubble_out_stall_entry_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_stall_entry_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_stall_entry_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_stall_entry_1_reg_o_stall_bitsignaltemp),
        .o_empty(bubble_out_stall_entry_1_reg_o_empty_bitsignaltemp),
        .o_almost_empty(bubble_out_stall_entry_1_reg_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_1_reg_o_almost_empty_reg0(REG,172)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_almost_empty_reg0_q <= $unsigned(bubble_out_stall_entry_1_reg_o_almost_empty);
        end
    end

    // bubble_out_stall_entry_1_reg_o_almost_empty_reg1(REG,171)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_almost_empty_reg1_q <= $unsigned(bubble_out_stall_entry_1_reg_o_almost_empty_reg0_q);
        end
    end

    // redist2_stall_entry_o6_16_fifo_o_almost_empty_reg0(REG,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_stall_entry_o6_16_fifo_o_almost_empty_reg0_q <= $unsigned(redist2_stall_entry_o6_16_fifo_o_almost_empty);
        end
    end

    // redist2_stall_entry_o6_16_fifo_o_almost_empty_reg1(REG,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_stall_entry_o6_16_fifo_o_almost_empty_reg1_q <= $unsigned(redist2_stall_entry_o6_16_fifo_o_almost_empty_reg0_q);
        end
    end

    // bubble_out_stall_entry_1_reg_o_empty_reg0(REG,170)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_empty_reg0_q <= $unsigned(bubble_out_stall_entry_1_reg_o_empty);
        end
    end

    // bubble_out_stall_entry_1_reg_o_empty_reg1(REG,169)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_empty_reg1_q <= $unsigned(bubble_out_stall_entry_1_reg_o_empty_reg0_q);
        end
    end

    // redist2_stall_entry_o6_16_fifo_o_empty_reg0(REG,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_stall_entry_o6_16_fifo_o_empty_reg0_q <= $unsigned(redist2_stall_entry_o6_16_fifo_o_empty);
        end
    end

    // redist2_stall_entry_o6_16_fifo_o_empty_reg1(REG,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_stall_entry_o6_16_fifo_o_empty_reg1_q <= $unsigned(redist2_stall_entry_o6_16_fifo_o_empty_reg0_q);
        end
    end

    // bubble_out_stall_entry_1_reg_o_valid_reg0(REG,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_valid_reg0_q <= $unsigned(bubble_out_stall_entry_1_reg_o_valid);
        end
    end

    // bubble_out_stall_entry_1_reg_o_valid_reg1(REG,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_valid_reg1_q <= $unsigned(bubble_out_stall_entry_1_reg_o_valid_reg0_q);
        end
    end

    // redist2_stall_entry_o6_16_fifo_o_valid_reg0(REG,148)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_stall_entry_o6_16_fifo_o_valid_reg0_q <= $unsigned(redist2_stall_entry_o6_16_fifo_o_valid);
        end
    end

    // redist2_stall_entry_o6_16_fifo_o_valid_reg1(REG,147)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_stall_entry_o6_16_fifo_o_valid_reg1_q <= $unsigned(redist2_stall_entry_o6_16_fifo_o_valid_reg0_q);
        end
    end

    // merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0(STALLENABLE,89)
    // Sync
    assign merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_temp_back_stall = i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_stall_out;
    assign merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_can_fast_read = ~ ((redist2_stall_entry_o6_16_fifo_o_almost_empty_reg1_q | bubble_out_stall_entry_1_reg_o_almost_empty_reg1_q));
    assign merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_can_slow_read = ~ ((redist2_stall_entry_o6_16_fifo_o_empty_reg1_q | bubble_out_stall_entry_1_reg_o_empty_reg1_q));
    assign merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_backStall = ~ (merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_forced_read);
    assign merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_no_space_for_result = merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_temp_back_stall;
    assign merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0 = merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_forced_read;
    assign merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V1 = $unsigned(1'b0);
    assign merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp_dup_name_0 = merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_can_fast_read[0];
    assign can_slow_read_bitsignaltemp_dup_name_0 = merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp_dup_name_0 = merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_no_space_for_result[0];
    assign merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_forced_read[0] = forced_read_bitsignaltemp_dup_name_0;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0 (
        .can_fast_read(can_fast_read_bitsignaltemp_dup_name_0),
        .can_slow_read(can_slow_read_bitsignaltemp_dup_name_0),
        .no_space_for_result(no_space_for_result_bitsignaltemp_dup_name_0),
        .forced_read(forced_read_bitsignaltemp_dup_name_0),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0(BLACKBOX,11)@16
    // in in_stall_in@20000000
    // out out_almost_empty_out@33
    // out out_data_out@33
    // out out_empty_out@33
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@33
    atax_i_llvm_fpga_pop_i1_memdep_phi_pop20_0 thei_llvm_fpga_pop_i1_memdep_phi_pop20_atax0 (
        .in_almost_empty_in(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V2),
        .in_data_in(GND_q),
        .in_dir_in(bubble_select_redist2_stall_entry_o6_16_fifo_b),
        .in_empty_in(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V1),
        .in_feedback_almost_empty_in_20(in_feedback_almost_empty_in_20),
        .in_feedback_data_in_20(in_feedback_data_in_20),
        .in_feedback_empty_in_20(in_feedback_empty_in_20),
        .in_stall_in(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_in_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_V0_sync_valid_reg6_q),
        .out_almost_empty_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out_reg0(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out_reg1(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out_reg0(REG,140)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out_reg1(REG,139)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // join_for_coalesced_delay_0(BITJOIN,30)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_g, bubble_select_stall_entry_f, bubble_select_stall_entry_c, bubble_select_stall_entry_b};

    // coalesced_delay_0_fifo_i_stall_reg0(REG,155)
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

    // coalesced_delay_0_fifo_i_stall_reg1(REG,156)
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

    // coalesced_delay_0_fifo(STALLFIFO,33)
    assign coalesced_delay_0_fifo_i_valid = merged_in_SE_bubble_join_stall_entry_V2;
    assign coalesced_delay_0_fifo_i_stall = coalesced_delay_0_fifo_i_stall_reg1_q;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_empty = merged_in_SE_bubble_join_stall_entry_V6;
    assign coalesced_delay_0_fifo_i_almost_empty = merged_in_SE_bubble_join_stall_entry_V10;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_empty[0] = coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_almost_empty[0] = coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(51),
        .WIDTH(98),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(4),
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

    // coalesced_delay_0_fifo_o_almost_empty_reg0(REG,164)
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

    // coalesced_delay_0_fifo_o_almost_empty_reg1(REG,163)
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

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out_reg0(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out_reg1(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out_reg0(REG,142)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out_reg1(REG,141)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg0(REG,162)
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

    // coalesced_delay_0_fifo_o_empty_reg1(REG,161)
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

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out_reg0(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out_reg1(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_valid_reg0(REG,144)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_valid_reg1(REG,143)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg0(REG,158)
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

    // coalesced_delay_0_fifo_o_valid_reg1(REG,157)
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

    // merged_in_SE_sel_for_coalesced_delay_0(STALLENABLE,88)
    // Sync
    assign merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall = in_stall_in;
    assign merged_in_SE_sel_for_coalesced_delay_0_can_fast_read = ~ ((coalesced_delay_0_fifo_o_almost_empty_reg1_q | i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out_reg1_q | i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_almost_empty_out_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_can_slow_read = ~ ((coalesced_delay_0_fifo_o_empty_reg1_q | i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out_reg1_q | i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_empty_out_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_backStall = ~ (merged_in_SE_sel_for_coalesced_delay_0_forced_read);
    assign merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result = merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    assign merged_in_SE_sel_for_coalesced_delay_0_V0 = merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    assign merged_in_SE_sel_for_coalesced_delay_0_V1 = $unsigned(1'b0);
    assign merged_in_SE_sel_for_coalesced_delay_0_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result[0];
    assign merged_in_SE_sel_for_coalesced_delay_0_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_sel_for_coalesced_delay_0 (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_in_i_stall_reg0(REG,137)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_in_i_stall_reg1(REG,138)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,124)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,123)
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

    // stall_entry_frontEmpty_reg0(REG,122)
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

    // stall_entry_frontEmpty_reg1(REG,121)
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

    // stall_entry_frontValid_reg0(REG,120)
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

    // stall_entry_frontValid_reg1(REG,119)
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

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,87)
    // Desync
    assign merged_in_SE_bubble_join_stall_entry_temp_back_stall = i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_stall | redist2_stall_entry_o6_16_fifo_o_stall | coalesced_delay_0_fifo_o_stall | bubble_out_stall_entry_1_reg_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_backStall = merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V4 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V8 = stall_entry_frontAlmostEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = merged_in_SE_bubble_join_stall_entry_V0;
    assign merged_in_SE_bubble_join_stall_entry_V5 = merged_in_SE_bubble_join_stall_entry_V4;
    assign merged_in_SE_bubble_join_stall_entry_V9 = merged_in_SE_bubble_join_stall_entry_V8;
    assign merged_in_SE_bubble_join_stall_entry_V2 = merged_in_SE_bubble_join_stall_entry_V0;
    assign merged_in_SE_bubble_join_stall_entry_V6 = merged_in_SE_bubble_join_stall_entry_V4;
    assign merged_in_SE_bubble_join_stall_entry_V10 = merged_in_SE_bubble_join_stall_entry_V8;
    assign merged_in_SE_bubble_join_stall_entry_V3 = merged_in_SE_bubble_join_stall_entry_V0;
    assign merged_in_SE_bubble_join_stall_entry_V7 = merged_in_SE_bubble_join_stall_entry_V4;
    assign merged_in_SE_bubble_join_stall_entry_V11 = merged_in_SE_bubble_join_stall_entry_V8;

    // i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x(BLACKBOX,23)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@33
    // out out_empty_out@33
    // out out_memdep_5_atax_avm_address@20000000
    // out out_memdep_5_atax_avm_burstcount@20000000
    // out out_memdep_5_atax_avm_byteenable@20000000
    // out out_memdep_5_atax_avm_enable@20000000
    // out out_memdep_5_atax_avm_read@20000000
    // out out_memdep_5_atax_avm_write@20000000
    // out out_memdep_5_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_c0_exit161_0_tpl@33
    atax_i_sfc_s_c0_in_for_inc44_s_c0_enter158_atax3 thei_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V8),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V4),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_memdep_5_atax_avm_readdata(in_memdep_5_atax_avm_readdata),
        .in_memdep_5_atax_avm_readdatavalid(in_memdep_5_atax_avm_readdatavalid),
        .in_memdep_5_atax_avm_waitrequest(in_memdep_5_atax_avm_waitrequest),
        .in_memdep_5_atax_avm_writeack(in_memdep_5_atax_avm_writeack),
        .in_c0_eni2157_0_tpl(GND_q),
        .in_c0_eni2157_1_tpl(bubble_select_stall_entry_c),
        .in_c0_eni2157_2_tpl(bubble_select_stall_entry_e),
        .out_almost_empty_out(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_empty_out),
        .out_memdep_5_atax_avm_address(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_address),
        .out_memdep_5_atax_avm_burstcount(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_burstcount),
        .out_memdep_5_atax_avm_byteenable(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_byteenable),
        .out_memdep_5_atax_avm_enable(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_enable),
        .out_memdep_5_atax_avm_read(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_read),
        .out_memdep_5_atax_avm_write(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_write),
        .out_memdep_5_atax_avm_writedata(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_o_valid),
        .out_c0_exit161_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_memdep_5_atax_avm_address = i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_address;
    assign out_memdep_5_atax_avm_enable = i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_enable;
    assign out_memdep_5_atax_avm_read = i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_read;
    assign out_memdep_5_atax_avm_write = i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_write;
    assign out_memdep_5_atax_avm_writedata = i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_writedata;
    assign out_memdep_5_atax_avm_byteenable = i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_byteenable;
    assign out_memdep_5_atax_avm_burstcount = i_sfc_s_c0_in_for_inc44_ataxs_c0_enter158_atax3_aunroll_x_out_memdep_5_atax_avm_burstcount;

    // feedback_stall_out_20_sync(GPOUT,10)
    assign out_feedback_stall_out_20 = i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_feedback_stall_out_20;

    // stall_entry_frontStall_reg0(REG,117)
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

    // stall_entry_frontStall_reg1(REG,118)
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

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0(REG,99)
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

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1(REG,98)
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

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2(REG,97)
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

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3(REG,96)
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

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4(REG,95)
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

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5(REG,94)
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

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6(REG,93)
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

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out_reg0(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out_reg1(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0(BITJOIN,35)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_q = i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0(BITSELECT,36)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_q[0:0]);

    // coalesced_delay_0_fifo_o_data_reg0(REG,160)
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

    // coalesced_delay_0_fifo_o_data_reg1(REG,159)
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

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,48)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,49)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[97:0]);

    // sel_for_coalesced_delay_0(BITSELECT,31)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[96:96]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[97:97]);

    // dupName_0_sync_out_x(GPOUT,22)@33
    assign out_almost_empty_out = merged_in_SE_sel_for_coalesced_delay_0_V2;
    assign out_c0_exe11502 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe21513 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe76 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe87 = sel_for_coalesced_delay_0_e;
    assign out_empty_out = merged_in_SE_sel_for_coalesced_delay_0_V1;
    assign out_memdep_phi_pop20 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_b;
    assign out_valid_out = merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;

    // rst_sync(RESETSYNC,173)
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
