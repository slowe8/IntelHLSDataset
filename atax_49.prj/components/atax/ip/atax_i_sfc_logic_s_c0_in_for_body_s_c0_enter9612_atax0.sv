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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body_s_c0_enter9612_atax0
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body_s_c0_enter9612_atax0 (
    input wire [31:0] in_memdep_2_atax_avm_readdata,
    input wire [0:0] in_memdep_2_atax_avm_writeack,
    input wire [0:0] in_memdep_2_atax_avm_waitrequest,
    input wire [0:0] in_memdep_2_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_2_atax_avm_address,
    output wire [0:0] out_memdep_2_atax_avm_enable,
    output wire [0:0] out_memdep_2_atax_avm_read,
    output wire [0:0] out_memdep_2_atax_avm_write,
    output wire [31:0] out_memdep_2_atax_avm_writedata,
    output wire [3:0] out_memdep_2_atax_avm_byteenable,
    output wire [0:0] out_memdep_2_atax_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_memdep_3_atax_avm_readdata,
    input wire [0:0] in_memdep_3_atax_avm_writeack,
    input wire [0:0] in_memdep_3_atax_avm_waitrequest,
    input wire [0:0] in_memdep_3_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_3_atax_avm_address,
    output wire [0:0] out_memdep_3_atax_avm_enable,
    output wire [0:0] out_memdep_3_atax_avm_read,
    output wire [0:0] out_memdep_3_atax_avm_write,
    output wire [31:0] out_memdep_3_atax_avm_writedata,
    output wire [3:0] out_memdep_3_atax_avm_byteenable,
    output wire [0:0] out_memdep_3_atax_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_atax_B3_current_iter_isspec,
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [63:0] out_c0_exi4_1_tpl,
    output wire [63:0] out_c0_exi4_2_tpl,
    output wire [0:0] out_c0_exi4_3_tpl,
    output wire [0:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_y_out_pmem_q;
    wire [63:0] c_atax_tmp1_pmem_q;
    wire [31:0] c_float_0_000000e_0051_q;
    wire [31:0] c_i32_050_q;
    wire [31:0] c_i32_155_q;
    wire [6:0] c_i7_154_q;
    wire [6:0] c_i7_6252_q;
    wire [1:0] i_arrayidx103_atax15_vt_const_1_q;
    wire [63:0] i_arrayidx103_atax15_vt_join_q;
    wire [61:0] i_arrayidx103_atax15_vt_select_63_b;
    wire [63:0] i_arrayidx82_atax13_vt_join_q;
    wire [61:0] i_arrayidx82_atax13_vt_select_63_b;
    wire [0:0] i_atax_b3_current_iter_isspec_atax5_q;
    wire [0:0] i_atax_b3_next_iter_isreal_atax7_q;
    wire [7:0] i_fpga_indvars_iv_next9_atax22_a;
    wire [7:0] i_fpga_indvars_iv_next9_atax22_b;
    logic [7:0] i_fpga_indvars_iv_next9_atax22_o;
    wire [7:0] i_fpga_indvars_iv_next9_atax22_q;
    wire [63:0] i_idxprom_atax10_vt_join_q;
    wire [31:0] i_idxprom_atax10_vt_select_31_b;
    wire [32:0] i_inc23_atax24_a;
    wire [32:0] i_inc23_atax24_b;
    logic [32:0] i_inc23_atax24_o;
    wire [32:0] i_inc23_atax24_q;
    wire [0:0] i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_x4324_atax11_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_atax6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_atax6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond49_atax21_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond49_atax21_out_feedback_valid_out_13;
    wire [0:0] i_notcmp46_atax20_q;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next9_atax22_sel_x_b;
    wire [31:0] bgTrunc_i_inc23_atax24_sel_x_b;
    wire [8:0] i_arrayidx103_atax0_add_x_a;
    wire [8:0] i_arrayidx103_atax0_add_x_b;
    logic [8:0] i_arrayidx103_atax0_add_x_o;
    wire [8:0] i_arrayidx103_atax0_add_x_q;
    wire [63:0] i_arrayidx103_atax0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx103_atax0_narrow_x_b;
    wire [7:0] i_arrayidx103_atax0_shift_join_x_q;
    wire [7:0] i_arrayidx103_atax0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx103_atax0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx82_atax0_add_x_a;
    wire [8:0] i_arrayidx82_atax0_add_x_b;
    logic [8:0] i_arrayidx82_atax0_add_x_o;
    wire [8:0] i_arrayidx82_atax0_add_x_q;
    wire [63:0] i_arrayidx82_atax0_append_upper_bits_x_q;
    wire [7:0] i_arrayidx82_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx_atax0_add_x_a;
    wire [64:0] i_arrayidx_atax0_add_x_b;
    logic [64:0] i_arrayidx_atax0_add_x_o;
    wire [64:0] i_arrayidx_atax0_add_x_q;
    wire [61:0] i_arrayidx_atax0_narrow_x_b;
    wire [63:0] i_arrayidx_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom_atax10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x_s;
    reg [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_valid;
    wire i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_stall;
    wire i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_o_data;
    wire [6:0] i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    wire [0:0] i_exitcond10_atax18_cmp_nsign_q;
    wire [55:0] i_arrayidx82_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx82_atax0_upper_bits_x_merged_bit_select_c;
    wire [55:0] i_arrayidx103_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx103_atax0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond10_atax18_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together63_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist1_sync_together63_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist2_sync_together63_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together63_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist4_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    reg [0:0] redist4_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q;
    reg [0:0] redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_0;
    reg [0:0] redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_1;
    reg [0:0] redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_2;
    reg [0:0] redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_q;
    reg [0:0] redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_0;
    reg [0:0] redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_1;
    reg [0:0] redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_2;
    reg [63:0] redist7_i_idxprom_atax10_vt_join_q_1_q;
    reg [0:0] redist8_i_atax_b3_current_iter_isspec_atax5_q_1_q;


    // c_float_0_000000e_0051(FLOATCONSTANT,6)
    assign c_float_0_000000e_0051_q = $unsigned(32'b00000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together63_aunroll_x_in_i_valid_2(DELAY,149)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together63_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together63_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together63_aunroll_x_in_i_valid_2_q <= redist1_sync_together63_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist2_sync_together63_aunroll_x_in_i_valid_3(DELAY,150)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together63_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together63_aunroll_x_in_i_valid_3_q <= $unsigned(redist1_sync_together63_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg7(REG,131)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist2_sync_together63_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_c_i7_03_x(CONSTANT,108)
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,126)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together63_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg10(REG,134)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist2_sync_together63_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i7_6252(CONSTANT,34)
    assign c_i7_6252_q = $unsigned(7'b0111110);

    // c_i7_154(CONSTANT,33)
    assign c_i7_154_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next9_atax22(ADD,46)@4
    assign i_fpga_indvars_iv_next9_atax22_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x_q};
    assign i_fpga_indvars_iv_next9_atax22_b = {1'b0, c_i7_154_q};
    assign i_fpga_indvars_iv_next9_atax22_o = $unsigned(i_fpga_indvars_iv_next9_atax22_a) + $unsigned(i_fpga_indvars_iv_next9_atax22_b);
    assign i_fpga_indvars_iv_next9_atax22_q = i_fpga_indvars_iv_next9_atax22_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next9_atax22_sel_x(BITSELECT,65)@4
    assign bgTrunc_i_fpga_indvars_iv_next9_atax22_sel_x_b = i_fpga_indvars_iv_next9_atax22_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_element_extension2_x(BITJOIN,118)@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_element_extension2_x_q = {GND_q, bgTrunc_i_fpga_indvars_iv_next9_atax22_sel_x_b};

    // valid_fanout_reg12(REG,136)@0 + 1
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

    // valid_fanout_reg11(REG,135)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist1_sync_together63_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x(FIFODELAY,119)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_stall = ~ (valid_fanout_reg12_q & i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_valid = valid_fanout_reg11_q & redist4_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_data = i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x (
        .i_valid(i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,121)@4
    assign i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax1_x_o_data[6:0];

    // i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x(MUX,106)@4
    assign i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x_s = redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x_s or i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_adapt_scalar_trunc4_sel_x_b or c_i7_6252_q)
    begin
        unique case (i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x_q = i_llvm_fpga_push_i7_fpga_indvars_iv8_push16_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x_q = c_i7_6252_q;
            default : i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x_q = 7'b0;
        endcase
    end

    // i_exitcond10_atax18_cmp_nsign(LOGICAL,145)@4
    assign i_exitcond10_atax18_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax0_i_llvm_fpga_pop_i7_fpga_indvars_iv8_pop16_atax17_mux_x_q[6:6]));

    // i_llvm_fpga_push_i1_notexitcond49_atax21(BLACKBOX,58)@4
    // in in_empty_in@20000000
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    atax_i_llvm_fpga_push_i1_notexitcond49_0 thei_llvm_fpga_push_i1_notexitcond49_atax21 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond10_atax18_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pipeline_keep_going48_atax6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_notexitcond49_atax21_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_notexitcond49_atax21_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2(BLACKBOX,52)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_dummy_thread_b3_dummy_atax0 thei_llvm_fpga_dummy_thread_atax_b3_dummy_atax2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4(DELAY,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out);
            redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_1 <= redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_0;
            redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_2 <= redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_1;
            redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_q <= redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going48_atax6(BLACKBOX,57)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going48_0 thei_llvm_fpga_pipeline_keep_going48_atax6 (
        .in_data_in(redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q),
        .in_dummy_in(redist6_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_q),
        .in_forked_in(redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond49_atax21_out_feedback_out_13),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond49_atax21_out_feedback_valid_out_13),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going48_atax6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going48_atax6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going48_atax6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going48_atax6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going48_atax6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going48_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_atax_b3_next_iter_isreal_atax7(LOGICAL,44)@4
    assign i_atax_b3_next_iter_isreal_atax7_q = i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q & i_llvm_fpga_pipeline_keep_going48_atax6_out_data_out;

    // i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_element_extension2_x(BITJOIN,109)@4
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_c_i7_03_x_q, i_atax_b3_next_iter_isreal_atax7_q};

    // i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x(LOGICAL,111)@1
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,128)@0 + 1
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

    // redist4_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2(DELAY,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q);
            redist4_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q <= redist4_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,127)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together63_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x(FIFODELAY,110)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid = valid_fanout_reg3_q & redist4_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_data = i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,112)@4
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_o_data[0:0];

    // i_llvm_fpga_forked_atax_b3_forked_atax3(BLACKBOX,54)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_forked_b3_forked_atax0 thei_llvm_fpga_forked_atax_b3_forked_atax3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4(DELAY,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out);
            redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_1 <= redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_0;
            redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_2 <= redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_1;
            redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q <= redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x(MUX,104)@4
    assign i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_s = redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_s or i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q = i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q = 1'b0;
        endcase
    end

    // i_atax_b3_current_iter_isspec_atax5(LOGICAL,43)@4
    assign i_atax_b3_current_iter_isspec_atax5_q = i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q ^ VCC_q;

    // c_atax_buff_y_out_pmem(CONSTANT,4)
    assign c_atax_buff_y_out_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx82_atax0_upper_bits_x_merged_bit_select(BITSELECT,146)@4
    assign i_arrayidx82_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_y_out_pmem_q[63:8];
    assign i_arrayidx82_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_y_out_pmem_q[7:0];

    // c_i32_050(CONSTANT,31)
    assign c_i32_050_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_155(CONSTANT,32)
    assign c_i32_155_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc23_atax24(ADD,51)@4
    assign i_inc23_atax24_a = {1'b0, i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x_q};
    assign i_inc23_atax24_b = {1'b0, c_i32_155_q};
    assign i_inc23_atax24_o = $unsigned(i_inc23_atax24_a) + $unsigned(i_inc23_atax24_b);
    assign i_inc23_atax24_q = i_inc23_atax24_o[32:0];

    // bgTrunc_i_inc23_atax24_sel_x(BITSELECT,66)@4
    assign bgTrunc_i_inc23_atax24_sel_x_b = i_inc23_atax24_q[31:0];

    // valid_fanout_reg14(REG,138)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,137)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist1_sync_together63_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x(FIFODELAY,113)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_valid = valid_fanout_reg13_q & redist4_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_data = bgTrunc_i_inc23_atax24_sel_x_b;
    assign i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x (
        .i_valid(i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc23_atax24_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x(MUX,105)@4
    assign i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x_s = redist5_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x_s or i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_o_data or c_i32_050_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x_q = i_llvm_fpga_push_i32_i_040_push17_atax0_i_llvm_fpga_push_i32_i_040_push17_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x_q = c_i32_050_q;
            default : i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_atax10_sel_x(BITSELECT,103)@4
    assign i_idxprom_atax10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_040_pop17_atax0_i_llvm_fpga_pop_i32_i_040_pop17_atax9_mux_x_q[31:0]};

    // i_idxprom_atax10_vt_select_31(BITSELECT,50)@4
    assign i_idxprom_atax10_vt_select_31_b = i_idxprom_atax10_sel_x_b[31:0];

    // i_idxprom_atax10_vt_join(BITJOIN,49)@4
    assign i_idxprom_atax10_vt_join_q = {c_i32_050_q, i_idxprom_atax10_vt_select_31_b};

    // i_arrayidx103_atax0_dupName_0_trunc_sel_x(BITSELECT,83)@4
    assign i_arrayidx103_atax0_dupName_0_trunc_sel_x_b = i_idxprom_atax10_vt_join_q[7:0];

    // i_arrayidx103_atax0_narrow_x(BITSELECT,76)@4
    assign i_arrayidx103_atax0_narrow_x_b = i_arrayidx103_atax0_dupName_0_trunc_sel_x_b[5:0];

    // i_arrayidx103_atax0_shift_join_x(BITJOIN,77)@4
    assign i_arrayidx103_atax0_shift_join_x_q = {i_arrayidx103_atax0_narrow_x_b, i_arrayidx103_atax15_vt_const_1_q};

    // i_arrayidx82_atax0_add_x(ADD,85)@4
    assign i_arrayidx82_atax0_add_x_a = {1'b0, i_arrayidx82_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx82_atax0_add_x_b = {1'b0, i_arrayidx103_atax0_shift_join_x_q};
    assign i_arrayidx82_atax0_add_x_o = $unsigned(i_arrayidx82_atax0_add_x_a) + $unsigned(i_arrayidx82_atax0_add_x_b);
    assign i_arrayidx82_atax0_add_x_q = i_arrayidx82_atax0_add_x_o[8:0];

    // i_arrayidx82_atax0_dupName_2_trunc_sel_x(BITSELECT,96)@4
    assign i_arrayidx82_atax0_dupName_2_trunc_sel_x_b = i_arrayidx82_atax0_add_x_q[7:0];

    // i_arrayidx82_atax0_append_upper_bits_x(BITJOIN,86)@4
    assign i_arrayidx82_atax0_append_upper_bits_x_q = {i_arrayidx82_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx82_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx82_atax13_vt_select_63(BITSELECT,42)@4
    assign i_arrayidx82_atax13_vt_select_63_b = i_arrayidx82_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx103_atax15_vt_const_1(CONSTANT,37)
    assign i_arrayidx103_atax15_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx82_atax13_vt_join(BITJOIN,41)@4
    assign i_arrayidx82_atax13_vt_join_q = {i_arrayidx82_atax13_vt_select_63_b, i_arrayidx103_atax15_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memdep_2_atax14(BLACKBOX,55)@4
    // out out_memdep_2_atax_avm_address@20000000
    // out out_memdep_2_atax_avm_burstcount@20000000
    // out out_memdep_2_atax_avm_byteenable@20000000
    // out out_memdep_2_atax_avm_enable@20000000
    // out out_memdep_2_atax_avm_read@20000000
    // out out_memdep_2_atax_avm_write@20000000
    // out out_memdep_2_atax_avm_writedata@20000000
    // out out_o_almost_empty@5
    // out out_o_empty@5
    // out out_o_stall@5
    // out out_o_valid@5
    // out out_o_writeack@5
    atax_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_atax14 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx82_atax13_vt_join_q),
        .in_i_predicate(i_atax_b3_current_iter_isspec_atax5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_i_writedata(c_float_0_000000e_0051_q),
        .in_memdep_2_atax_avm_readdata(in_memdep_2_atax_avm_readdata),
        .in_memdep_2_atax_avm_readdatavalid(in_memdep_2_atax_avm_readdatavalid),
        .in_memdep_2_atax_avm_waitrequest(in_memdep_2_atax_avm_waitrequest),
        .in_memdep_2_atax_avm_writeack(in_memdep_2_atax_avm_writeack),
        .out_memdep_2_atax_avm_address(i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_address),
        .out_memdep_2_atax_avm_burstcount(i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_burstcount),
        .out_memdep_2_atax_avm_byteenable(i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_byteenable),
        .out_memdep_2_atax_avm_enable(i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_enable),
        .out_memdep_2_atax_avm_read(i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_read),
        .out_memdep_2_atax_avm_write(i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_write),
        .out_memdep_2_atax_avm_writedata(i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,36)
    assign out_memdep_2_atax_avm_address = i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_address;
    assign out_memdep_2_atax_avm_enable = i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_enable;
    assign out_memdep_2_atax_avm_read = i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_read;
    assign out_memdep_2_atax_avm_write = i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_write;
    assign out_memdep_2_atax_avm_writedata = i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_writedata;
    assign out_memdep_2_atax_avm_byteenable = i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_byteenable;
    assign out_memdep_2_atax_avm_burstcount = i_llvm_fpga_mem_memdep_2_atax14_out_memdep_2_atax_avm_burstcount;

    // regfree_osync(GPOUT,63)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going48_atax6_out_exiting_valid_out;

    // valid_fanout_reg8(REG,132)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together63_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_atax_tmp1_pmem(CONSTANT,5)
    assign c_atax_tmp1_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx103_atax0_upper_bits_x_merged_bit_select(BITSELECT,147)@4
    assign i_arrayidx103_atax0_upper_bits_x_merged_bit_select_b = c_atax_tmp1_pmem_q[63:8];
    assign i_arrayidx103_atax0_upper_bits_x_merged_bit_select_c = c_atax_tmp1_pmem_q[7:0];

    // i_arrayidx103_atax0_add_x(ADD,73)@4
    assign i_arrayidx103_atax0_add_x_a = {1'b0, i_arrayidx103_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx103_atax0_add_x_b = {1'b0, i_arrayidx103_atax0_shift_join_x_q};
    assign i_arrayidx103_atax0_add_x_o = $unsigned(i_arrayidx103_atax0_add_x_a) + $unsigned(i_arrayidx103_atax0_add_x_b);
    assign i_arrayidx103_atax0_add_x_q = i_arrayidx103_atax0_add_x_o[8:0];

    // i_arrayidx103_atax0_dupName_2_trunc_sel_x(BITSELECT,84)@4
    assign i_arrayidx103_atax0_dupName_2_trunc_sel_x_b = i_arrayidx103_atax0_add_x_q[7:0];

    // i_arrayidx103_atax0_append_upper_bits_x(BITJOIN,74)@4
    assign i_arrayidx103_atax0_append_upper_bits_x_q = {i_arrayidx103_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx103_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx103_atax15_vt_select_63(BITSELECT,39)@4
    assign i_arrayidx103_atax15_vt_select_63_b = i_arrayidx103_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx103_atax15_vt_join(BITJOIN,38)@4
    assign i_arrayidx103_atax15_vt_join_q = {i_arrayidx103_atax15_vt_select_63_b, i_arrayidx103_atax15_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_3_atax16(BLACKBOX,56)@4
    // out out_memdep_3_atax_avm_address@20000000
    // out out_memdep_3_atax_avm_burstcount@20000000
    // out out_memdep_3_atax_avm_byteenable@20000000
    // out out_memdep_3_atax_avm_enable@20000000
    // out out_memdep_3_atax_avm_read@20000000
    // out out_memdep_3_atax_avm_write@20000000
    // out out_memdep_3_atax_avm_writedata@20000000
    // out out_o_almost_empty@5
    // out out_o_empty@5
    // out out_o_stall@5
    // out out_o_valid@5
    // out out_o_writeack@5
    atax_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_atax16 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx103_atax15_vt_join_q),
        .in_i_predicate(i_atax_b3_current_iter_isspec_atax5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_i_writedata(c_float_0_000000e_0051_q),
        .in_memdep_3_atax_avm_readdata(in_memdep_3_atax_avm_readdata),
        .in_memdep_3_atax_avm_readdatavalid(in_memdep_3_atax_avm_readdatavalid),
        .in_memdep_3_atax_avm_waitrequest(in_memdep_3_atax_avm_waitrequest),
        .in_memdep_3_atax_avm_writeack(in_memdep_3_atax_avm_writeack),
        .out_memdep_3_atax_avm_address(i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_address),
        .out_memdep_3_atax_avm_burstcount(i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_burstcount),
        .out_memdep_3_atax_avm_byteenable(i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_byteenable),
        .out_memdep_3_atax_avm_enable(i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_enable),
        .out_memdep_3_atax_avm_read(i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_read),
        .out_memdep_3_atax_avm_write(i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_write),
        .out_memdep_3_atax_avm_writedata(i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,69)
    assign out_memdep_3_atax_avm_address = i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_address;
    assign out_memdep_3_atax_avm_enable = i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_enable;
    assign out_memdep_3_atax_avm_read = i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_read;
    assign out_memdep_3_atax_avm_write = i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_write;
    assign out_memdep_3_atax_avm_writedata = i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_writedata;
    assign out_memdep_3_atax_avm_byteenable = i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_byteenable;
    assign out_memdep_3_atax_avm_burstcount = i_llvm_fpga_mem_memdep_3_atax16_out_memdep_3_atax_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,70)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going48_atax6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,71)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going48_atax6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,72)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going48_atax6_out_pipeline_valid_out;

    // redist3_sync_together63_aunroll_x_in_i_valid_4(DELAY,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together63_aunroll_x_in_i_valid_4_q <= $unsigned(redist2_sync_together63_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,124)@4 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together63_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_notcmp46_atax20(LOGICAL,59)@5
    assign i_notcmp46_atax20_q = redist0_i_exitcond10_atax18_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond10_atax18_cmp_nsign_q_1(DELAY,148)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond10_atax18_cmp_nsign_q_1_q <= $unsigned(i_exitcond10_atax18_cmp_nsign_q);
        end
    end

    // i_arrayidx_atax0_narrow_x(BITSELECT,99)@5
    assign i_arrayidx_atax0_narrow_x_b = redist7_i_idxprom_atax10_vt_join_q_1_q[61:0];

    // i_arrayidx_atax0_shift_join_x(BITJOIN,100)@5
    assign i_arrayidx_atax0_shift_join_x_q = {i_arrayidx_atax0_narrow_x_b, i_arrayidx103_atax15_vt_const_1_q};

    // valid_fanout_reg6(REG,130)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together63_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024f32_x4324_atax11(BLACKBOX,53)@5
    atax_i_llvm_fpga_ffwd_dest_p1024f32_x4324_0 thei_llvm_fpga_ffwd_dest_p1024f32_x4324_atax11 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024f32_x4324_atax11_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_atax0_add_x(ADD,97)@5
    assign i_arrayidx_atax0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024f32_x4324_atax11_out_dest_data_out_1_0};
    assign i_arrayidx_atax0_add_x_b = {1'b0, i_arrayidx_atax0_shift_join_x_q};
    assign i_arrayidx_atax0_add_x_o = $unsigned(i_arrayidx_atax0_add_x_a) + $unsigned(i_arrayidx_atax0_add_x_b);
    assign i_arrayidx_atax0_add_x_q = i_arrayidx_atax0_add_x_o[64:0];

    // i_arrayidx_atax0_dupName_0_trunc_sel_x(BITSELECT,102)@5
    assign i_arrayidx_atax0_dupName_0_trunc_sel_x_b = i_arrayidx_atax0_add_x_q[63:0];

    // redist7_i_idxprom_atax10_vt_join_q_1(DELAY,155)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_idxprom_atax10_vt_join_q_1_q <= $unsigned(i_idxprom_atax10_vt_join_q);
        end
    end

    // redist8_i_atax_b3_current_iter_isspec_atax5_q_1(DELAY,156)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_atax_b3_current_iter_isspec_atax5_q_1_q <= $unsigned(i_atax_b3_current_iter_isspec_atax5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,122)@5
    assign out_atax_B3_current_iter_isspec = redist8_i_atax_b3_current_iter_isspec_atax5_q_1_q;
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = redist7_i_idxprom_atax10_vt_join_q_1_q;
    assign out_c0_exi4_2_tpl = i_arrayidx_atax0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi4_3_tpl = redist0_i_exitcond10_atax18_cmp_nsign_q_1_q;
    assign out_c0_exi4_4_tpl = i_notcmp46_atax20_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
