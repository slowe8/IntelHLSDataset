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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_cond28_preh0000_c0_enter12313_atax0
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_cond28_preh0000_c0_enter12313_atax0 (
    input wire [31:0] in_arrayidx32_promoted1_atax_avm_readdata,
    input wire [0:0] in_arrayidx32_promoted1_atax_avm_writeack,
    input wire [0:0] in_arrayidx32_promoted1_atax_avm_waitrequest,
    input wire [0:0] in_arrayidx32_promoted1_atax_avm_readdatavalid,
    output wire [31:0] out_arrayidx32_promoted1_atax_avm_address,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_enable,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_read,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_write,
    output wire [31:0] out_arrayidx32_promoted1_atax_avm_writedata,
    output wire [3:0] out_arrayidx32_promoted1_atax_avm_byteenable,
    output wire [0:0] out_arrayidx32_promoted1_atax_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_atax_B6_current_iter_isspec,
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [63:0] out_c0_exi6_1_tpl,
    output wire [63:0] out_c0_exi6_2_tpl,
    output wire [31:0] out_c0_exi6_3_tpl,
    output wire [0:0] out_c0_exi6_4_tpl,
    output wire [0:0] out_c0_exi6_5_tpl,
    output wire [0:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1122_0_tpl,
    input wire [0:0] in_c0_eni1122_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_tmp1_pmem_q;
    wire [31:0] c_i32_043_q;
    wire [31:0] c_i32_147_q;
    wire [6:0] c_i7_146_q;
    wire [6:0] c_i7_6244_q;
    wire [1:0] i_arrayidx325_atax11_vt_const_1_q;
    wire [63:0] i_arrayidx325_atax11_vt_join_q;
    wire [61:0] i_arrayidx325_atax11_vt_select_63_b;
    wire [0:0] i_atax_b6_current_iter_isspec_atax5_q;
    wire [0:0] i_atax_b6_next_iter_isreal_atax7_q;
    wire [7:0] i_fpga_indvars_iv_next18_atax18_a;
    wire [7:0] i_fpga_indvars_iv_next18_atax18_b;
    logic [7:0] i_fpga_indvars_iv_next18_atax18_o;
    wire [7:0] i_fpga_indvars_iv_next18_atax18_q;
    wire [63:0] i_idxprom31_atax10_vt_join_q;
    wire [31:0] i_idxprom31_atax10_vt_select_31_b;
    wire [32:0] i_inc45_atax20_a;
    wire [32:0] i_inc45_atax20_b;
    logic [32:0] i_inc45_atax20_o;
    wire [32:0] i_inc45_atax20_q;
    wire [0:0] i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond39_atax17_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond39_atax17_out_feedback_valid_out_9;
    wire [0:0] i_notcmp36_atax16_q;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next18_atax18_sel_x_b;
    wire [31:0] bgTrunc_i_inc45_atax20_sel_x_b;
    wire [8:0] i_arrayidx325_atax0_add_x_a;
    wire [8:0] i_arrayidx325_atax0_add_x_b;
    logic [8:0] i_arrayidx325_atax0_add_x_o;
    wire [8:0] i_arrayidx325_atax0_add_x_q;
    wire [63:0] i_arrayidx325_atax0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx325_atax0_narrow_x_b;
    wire [7:0] i_arrayidx325_atax0_shift_join_x_q;
    wire [7:0] i_arrayidx325_atax0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx325_atax0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom31_atax10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x_s;
    reg [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_valid;
    wire i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_stall;
    wire i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_o_data;
    wire [6:0] i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    wire [0:0] i_exitcond19_atax14_cmp_nsign_q;
    wire [55:0] i_arrayidx325_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx325_atax0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond19_atax14_cmp_nsign_q_4_q;
    reg [0:0] redist0_i_exitcond19_atax14_cmp_nsign_q_4_delay_0;
    reg [0:0] redist0_i_exitcond19_atax14_cmp_nsign_q_4_delay_1;
    reg [0:0] redist0_i_exitcond19_atax14_cmp_nsign_q_4_delay_2;
    reg [0:0] redist1_valid_fanout_reg0_q_4_q;
    reg [0:0] redist1_valid_fanout_reg0_q_4_delay_0;
    reg [0:0] redist1_valid_fanout_reg0_q_4_delay_1;
    reg [0:0] redist1_valid_fanout_reg0_q_4_delay_2;
    reg [0:0] redist2_sync_together55_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist2_sync_together55_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist3_sync_together55_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist4_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    reg [0:0] redist4_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_q;
    reg [0:0] redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_delay_0;
    reg [0:0] redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_delay_1;
    reg [0:0] redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_delay_2;
    reg [0:0] redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_q;
    reg [0:0] redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_delay_0;
    reg [0:0] redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_delay_1;
    reg [0:0] redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_delay_2;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_q;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_delay_0;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_delay_1;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_delay_2;
    reg [63:0] redist8_i_idxprom31_atax10_vt_join_q_4_q;
    reg [63:0] redist8_i_idxprom31_atax10_vt_join_q_4_delay_0;
    reg [63:0] redist8_i_idxprom31_atax10_vt_join_q_4_delay_1;
    reg [0:0] redist9_i_atax_b6_current_iter_isspec_atax5_q_4_q;
    reg [0:0] redist9_i_atax_b6_current_iter_isspec_atax5_q_4_delay_0;
    reg [0:0] redist9_i_atax_b6_current_iter_isspec_atax5_q_4_delay_1;
    reg [0:0] redist9_i_atax_b6_current_iter_isspec_atax5_q_4_delay_2;
    reg [63:0] redist10_i_arrayidx325_atax11_vt_join_q_4_q;
    reg [63:0] redist10_i_arrayidx325_atax11_vt_join_q_4_delay_0;
    reg [63:0] redist10_i_arrayidx325_atax11_vt_join_q_4_delay_1;
    reg [63:0] redist8_i_idxprom31_atax10_vt_join_q_4_inputreg0_q;
    reg [63:0] redist10_i_arrayidx325_atax11_vt_join_q_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together55_aunroll_x_in_i_valid_2(DELAY,116)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together55_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist2_sync_together55_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together55_aunroll_x_in_i_valid_2_q <= redist2_sync_together55_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist3_sync_together55_aunroll_x_in_i_valid_3(DELAY,117)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together55_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist3_sync_together55_aunroll_x_in_i_valid_3_q <= $unsigned(redist2_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg6(REG,99)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together55_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_c_i7_03_x(CONSTANT,77)
    assign i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,95)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together55_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg8(REG,101)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist3_sync_together55_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i7_6244(CONSTANT,29)
    assign c_i7_6244_q = $unsigned(7'b0111110);

    // c_i7_146(CONSTANT,28)
    assign c_i7_146_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next18_atax18(ADD,38)@4
    assign i_fpga_indvars_iv_next18_atax18_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x_q};
    assign i_fpga_indvars_iv_next18_atax18_b = {1'b0, c_i7_146_q};
    assign i_fpga_indvars_iv_next18_atax18_o = $unsigned(i_fpga_indvars_iv_next18_atax18_a) + $unsigned(i_fpga_indvars_iv_next18_atax18_b);
    assign i_fpga_indvars_iv_next18_atax18_q = i_fpga_indvars_iv_next18_atax18_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next18_atax18_sel_x(BITSELECT,54)@4
    assign bgTrunc_i_fpga_indvars_iv_next18_atax18_sel_x_b = i_fpga_indvars_iv_next18_atax18_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_element_extension2_x(BITJOIN,87)@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_element_extension2_x_q = {GND_q, bgTrunc_i_fpga_indvars_iv_next18_atax18_sel_x_b};

    // valid_fanout_reg10(REG,103)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,102)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist2_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x(FIFODELAY,88)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_stall = ~ (valid_fanout_reg10_q & i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_valid = valid_fanout_reg9_q & redist4_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_data = i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x (
        .i_valid(i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,90)@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax1_x_o_data[6:0];

    // i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x(MUX,75)@4
    assign i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x_s = redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x_s or i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_adapt_scalar_trunc4_sel_x_b or c_i7_6244_q)
    begin
        unique case (i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x_q = i_llvm_fpga_push_i7_fpga_indvars_iv17_push18_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x_q = c_i7_6244_q;
            default : i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x_q = 7'b0;
        endcase
    end

    // i_exitcond19_atax14_cmp_nsign(LOGICAL,112)@4
    assign i_exitcond19_atax14_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv17_pop18_atax13_mux_x_q[6:6]));

    // i_llvm_fpga_push_i1_notexitcond39_atax17(BLACKBOX,48)@4
    // in in_empty_in@20000000
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    atax_i_llvm_fpga_push_i1_notexitcond39_0 thei_llvm_fpga_push_i1_notexitcond39_atax17 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond19_atax14_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going38_atax6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond39_atax17_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond39_atax17_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2(BLACKBOX,44)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_dummy_thread_b6_dummy_atax0 thei_llvm_fpga_dummy_thread_atax_b6_dummy_atax2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4(DELAY,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out);
            redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_delay_1 <= redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_delay_0;
            redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_delay_2 <= redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_delay_1;
            redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_q <= redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going38_atax6(BLACKBOX,47)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going38_0 thei_llvm_fpga_pipeline_keep_going38_atax6 (
        .in_data_in(redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_q),
        .in_dummy_in(redist7_i_llvm_fpga_dummy_thread_atax_b6_dummy_atax2_out_dummy_out_4_q),
        .in_forked_in(redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond39_atax17_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond39_atax17_out_feedback_valid_out_9),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_atax_b6_next_iter_isreal_atax7(LOGICAL,36)@4
    assign i_atax_b6_next_iter_isreal_atax7_q = i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x_q & i_llvm_fpga_pipeline_keep_going38_atax6_out_data_out;

    // i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_element_extension2_x(BITJOIN,78)@4
    assign i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_c_i7_03_x_q, i_atax_b6_next_iter_isreal_atax7_q};

    // i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x(LOGICAL,80)@1
    assign i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,97)@0 + 1
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

    // redist4_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q_2(DELAY,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q);
            redist4_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q_2_q <= redist4_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,96)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist2_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x(FIFODELAY,79)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_valid = valid_fanout_reg3_q & redist4_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_data = i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,81)@4
    assign i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax1_x_o_data[0:0];

    // i_llvm_fpga_forked_atax_b6_forked_atax3(BLACKBOX,45)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_forked_b6_forked_atax0 thei_llvm_fpga_forked_atax_b6_forked_atax3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4(DELAY,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out);
            redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_delay_1 <= redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_delay_0;
            redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_delay_2 <= redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_delay_1;
            redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_q <= redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x(MUX,73)@4
    assign i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x_s = redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x_s or i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x_q = i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x_q = 1'b0;
        endcase
    end

    // i_atax_b6_current_iter_isspec_atax5(LOGICAL,35)@4
    assign i_atax_b6_current_iter_isspec_atax5_q = i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b6_current_iter_isreal_atax4_mux_x_q ^ VCC_q;

    // c_atax_tmp1_pmem(CONSTANT,4)
    assign c_atax_tmp1_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx325_atax0_upper_bits_x_merged_bit_select(BITSELECT,113)@4
    assign i_arrayidx325_atax0_upper_bits_x_merged_bit_select_b = c_atax_tmp1_pmem_q[63:8];
    assign i_arrayidx325_atax0_upper_bits_x_merged_bit_select_c = c_atax_tmp1_pmem_q[7:0];

    // c_i32_043(CONSTANT,26)
    assign c_i32_043_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_147(CONSTANT,27)
    assign c_i32_147_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc45_atax20(ADD,43)@4
    assign i_inc45_atax20_a = {1'b0, i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x_q};
    assign i_inc45_atax20_b = {1'b0, c_i32_147_q};
    assign i_inc45_atax20_o = $unsigned(i_inc45_atax20_a) + $unsigned(i_inc45_atax20_b);
    assign i_inc45_atax20_q = i_inc45_atax20_o[32:0];

    // bgTrunc_i_inc45_atax20_sel_x(BITSELECT,55)@4
    assign bgTrunc_i_inc45_atax20_sel_x_b = i_inc45_atax20_q[31:0];

    // valid_fanout_reg12(REG,105)@0 + 1
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

    // valid_fanout_reg11(REG,104)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist2_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x(FIFODELAY,82)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_stall = ~ (valid_fanout_reg12_q & i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_valid = valid_fanout_reg11_q & redist4_i_llvm_fpga_push_i1_atax_b6_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_data = bgTrunc_i_inc45_atax20_sel_x_b;
    assign i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x (
        .i_valid(i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc45_atax20_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x(MUX,74)@4
    assign i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x_s = redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x_s or i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_o_data or c_i32_043_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x_q = i_llvm_fpga_push_i32_i_138_push19_atax0_i_llvm_fpga_push_i32_i_138_push19_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x_q = c_i32_043_q;
            default : i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom31_atax10_sel_x(BITSELECT,72)@4
    assign i_idxprom31_atax10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_138_pop19_atax0_i_llvm_fpga_pop_i32_i_138_pop19_atax9_mux_x_q[31:0]};

    // i_idxprom31_atax10_vt_select_31(BITSELECT,42)@4
    assign i_idxprom31_atax10_vt_select_31_b = i_idxprom31_atax10_sel_x_b[31:0];

    // i_idxprom31_atax10_vt_join(BITJOIN,41)@4
    assign i_idxprom31_atax10_vt_join_q = {c_i32_043_q, i_idxprom31_atax10_vt_select_31_b};

    // i_arrayidx325_atax0_dupName_0_trunc_sel_x(BITSELECT,70)@4
    assign i_arrayidx325_atax0_dupName_0_trunc_sel_x_b = i_idxprom31_atax10_vt_join_q[7:0];

    // i_arrayidx325_atax0_narrow_x(BITSELECT,63)@4
    assign i_arrayidx325_atax0_narrow_x_b = i_arrayidx325_atax0_dupName_0_trunc_sel_x_b[5:0];

    // i_arrayidx325_atax0_shift_join_x(BITJOIN,64)@4
    assign i_arrayidx325_atax0_shift_join_x_q = {i_arrayidx325_atax0_narrow_x_b, i_arrayidx325_atax11_vt_const_1_q};

    // i_arrayidx325_atax0_add_x(ADD,60)@4
    assign i_arrayidx325_atax0_add_x_a = {1'b0, i_arrayidx325_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx325_atax0_add_x_b = {1'b0, i_arrayidx325_atax0_shift_join_x_q};
    assign i_arrayidx325_atax0_add_x_o = $unsigned(i_arrayidx325_atax0_add_x_a) + $unsigned(i_arrayidx325_atax0_add_x_b);
    assign i_arrayidx325_atax0_add_x_q = i_arrayidx325_atax0_add_x_o[8:0];

    // i_arrayidx325_atax0_dupName_2_trunc_sel_x(BITSELECT,71)@4
    assign i_arrayidx325_atax0_dupName_2_trunc_sel_x_b = i_arrayidx325_atax0_add_x_q[7:0];

    // i_arrayidx325_atax0_append_upper_bits_x(BITJOIN,61)@4
    assign i_arrayidx325_atax0_append_upper_bits_x_q = {i_arrayidx325_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx325_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx325_atax11_vt_select_63(BITSELECT,34)@4
    assign i_arrayidx325_atax11_vt_select_63_b = i_arrayidx325_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx325_atax11_vt_const_1(CONSTANT,32)
    assign i_arrayidx325_atax11_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx325_atax11_vt_join(BITJOIN,33)@4
    assign i_arrayidx325_atax11_vt_join_q = {i_arrayidx325_atax11_vt_select_63_b, i_arrayidx325_atax11_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_arrayidx32_promoted1_atax12(BLACKBOX,46)@4
    // out out_arrayidx32_promoted1_atax_avm_address@20000000
    // out out_arrayidx32_promoted1_atax_avm_burstcount@20000000
    // out out_arrayidx32_promoted1_atax_avm_byteenable@20000000
    // out out_arrayidx32_promoted1_atax_avm_enable@20000000
    // out out_arrayidx32_promoted1_atax_avm_read@20000000
    // out out_arrayidx32_promoted1_atax_avm_write@20000000
    // out out_arrayidx32_promoted1_atax_avm_writedata@20000000
    // out out_o_almost_empty@8
    // out out_o_empty@8
    // out out_o_readdata@8
    // out out_o_stall@8
    // out out_o_valid@8
    atax_i_llvm_fpga_mem_arrayidx32_promoted1_0 thei_llvm_fpga_mem_arrayidx32_promoted1_atax12 (
        .in_almost_empty_in(GND_q),
        .in_arrayidx32_promoted1_atax_avm_readdata(in_arrayidx32_promoted1_atax_avm_readdata),
        .in_arrayidx32_promoted1_atax_avm_readdatavalid(in_arrayidx32_promoted1_atax_avm_readdatavalid),
        .in_arrayidx32_promoted1_atax_avm_waitrequest(in_arrayidx32_promoted1_atax_avm_waitrequest),
        .in_arrayidx32_promoted1_atax_avm_writeack(in_arrayidx32_promoted1_atax_avm_writeack),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx325_atax11_vt_join_q),
        .in_i_predicate(i_atax_b6_current_iter_isspec_atax5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .out_arrayidx32_promoted1_atax_avm_address(i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_address),
        .out_arrayidx32_promoted1_atax_avm_burstcount(i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_burstcount),
        .out_arrayidx32_promoted1_atax_avm_byteenable(i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_byteenable),
        .out_arrayidx32_promoted1_atax_avm_enable(i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_enable),
        .out_arrayidx32_promoted1_atax_avm_read(i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_read),
        .out_arrayidx32_promoted1_atax_avm_write(i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_write),
        .out_arrayidx32_promoted1_atax_avm_writedata(i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,31)
    assign out_arrayidx32_promoted1_atax_avm_address = i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_address;
    assign out_arrayidx32_promoted1_atax_avm_enable = i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_enable;
    assign out_arrayidx32_promoted1_atax_avm_read = i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_read;
    assign out_arrayidx32_promoted1_atax_avm_write = i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_write;
    assign out_arrayidx32_promoted1_atax_avm_writedata = i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_writedata;
    assign out_arrayidx32_promoted1_atax_avm_byteenable = i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_byteenable;
    assign out_arrayidx32_promoted1_atax_avm_burstcount = i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_arrayidx32_promoted1_atax_avm_burstcount;

    // regfree_osync(GPOUT,52)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going38_atax6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,57)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,58)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,59)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going38_atax6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,93)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together55_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist1_valid_fanout_reg0_q_4(DELAY,115)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_valid_fanout_reg0_q_4_delay_0 <= '0;
        end
        else
        begin
            redist1_valid_fanout_reg0_q_4_delay_0 <= $unsigned(valid_fanout_reg0_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_valid_fanout_reg0_q_4_delay_1 <= redist1_valid_fanout_reg0_q_4_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_valid_fanout_reg0_q_4_delay_2 <= '0;
        end
        else
        begin
            redist1_valid_fanout_reg0_q_4_delay_2 <= redist1_valid_fanout_reg0_q_4_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_valid_fanout_reg0_q_4_q <= redist1_valid_fanout_reg0_q_4_delay_2;
        end
    end

    // redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8(DELAY,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_delay_0 <= $unsigned(redist5_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_4_q);
            redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_delay_1 <= redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_delay_0;
            redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_delay_2 <= redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_delay_1;
            redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_q <= redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_delay_2;
        end
    end

    // i_notcmp36_atax16(LOGICAL,49)@8
    assign i_notcmp36_atax16_q = redist0_i_exitcond19_atax14_cmp_nsign_q_4_q ^ VCC_q;

    // redist0_i_exitcond19_atax14_cmp_nsign_q_4(DELAY,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond19_atax14_cmp_nsign_q_4_delay_0 <= $unsigned(i_exitcond19_atax14_cmp_nsign_q);
            redist0_i_exitcond19_atax14_cmp_nsign_q_4_delay_1 <= redist0_i_exitcond19_atax14_cmp_nsign_q_4_delay_0;
            redist0_i_exitcond19_atax14_cmp_nsign_q_4_delay_2 <= redist0_i_exitcond19_atax14_cmp_nsign_q_4_delay_1;
            redist0_i_exitcond19_atax14_cmp_nsign_q_4_q <= redist0_i_exitcond19_atax14_cmp_nsign_q_4_delay_2;
        end
    end

    // redist10_i_arrayidx325_atax11_vt_join_q_4_inputreg0(DELAY,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_arrayidx325_atax11_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx325_atax11_vt_join_q);
        end
    end

    // redist10_i_arrayidx325_atax11_vt_join_q_4(DELAY,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_arrayidx325_atax11_vt_join_q_4_delay_0 <= $unsigned(redist10_i_arrayidx325_atax11_vt_join_q_4_inputreg0_q);
            redist10_i_arrayidx325_atax11_vt_join_q_4_delay_1 <= redist10_i_arrayidx325_atax11_vt_join_q_4_delay_0;
            redist10_i_arrayidx325_atax11_vt_join_q_4_q <= redist10_i_arrayidx325_atax11_vt_join_q_4_delay_1;
        end
    end

    // redist8_i_idxprom31_atax10_vt_join_q_4_inputreg0(DELAY,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_idxprom31_atax10_vt_join_q_4_inputreg0_q <= $unsigned(i_idxprom31_atax10_vt_join_q);
        end
    end

    // redist8_i_idxprom31_atax10_vt_join_q_4(DELAY,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_idxprom31_atax10_vt_join_q_4_delay_0 <= $unsigned(redist8_i_idxprom31_atax10_vt_join_q_4_inputreg0_q);
            redist8_i_idxprom31_atax10_vt_join_q_4_delay_1 <= redist8_i_idxprom31_atax10_vt_join_q_4_delay_0;
            redist8_i_idxprom31_atax10_vt_join_q_4_q <= redist8_i_idxprom31_atax10_vt_join_q_4_delay_1;
        end
    end

    // redist9_i_atax_b6_current_iter_isspec_atax5_q_4(DELAY,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_atax_b6_current_iter_isspec_atax5_q_4_delay_0 <= $unsigned(i_atax_b6_current_iter_isspec_atax5_q);
            redist9_i_atax_b6_current_iter_isspec_atax5_q_4_delay_1 <= redist9_i_atax_b6_current_iter_isspec_atax5_q_4_delay_0;
            redist9_i_atax_b6_current_iter_isspec_atax5_q_4_delay_2 <= redist9_i_atax_b6_current_iter_isspec_atax5_q_4_delay_1;
            redist9_i_atax_b6_current_iter_isspec_atax5_q_4_q <= redist9_i_atax_b6_current_iter_isspec_atax5_q_4_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,91)@8
    assign out_atax_B6_current_iter_isspec = redist9_i_atax_b6_current_iter_isspec_atax5_q_4_q;
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = redist8_i_idxprom31_atax10_vt_join_q_4_q;
    assign out_c0_exi6_2_tpl = redist10_i_arrayidx325_atax11_vt_join_q_4_q;
    assign out_c0_exi6_3_tpl = i_llvm_fpga_mem_arrayidx32_promoted1_atax12_out_o_readdata;
    assign out_c0_exi6_4_tpl = redist0_i_exitcond19_atax14_cmp_nsign_q_4_q;
    assign out_c0_exi6_5_tpl = i_notcmp36_atax16_q;
    assign out_c0_exi6_6_tpl = redist6_i_llvm_fpga_forked_atax_b6_forked_atax3_out_buffer_out_8_q;
    assign out_o_valid = redist1_valid_fanout_reg0_q_4_q;

endmodule
