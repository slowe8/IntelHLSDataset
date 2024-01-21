// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 23.4 (Release Build #31.1)
// 
// Legal Notice: Copyright 2022 Intel Corporation.  All rights reserved.
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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body26_ataxs_c0_enter846_atax0
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body26_s_c0_enter846_atax0 (
    input wire [31:0] in_unnamed_atax18_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax18_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax18_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax18_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax18_atax_avm_address,
    output wire [0:0] out_unnamed_atax18_atax_avm_enable,
    output wire [0:0] out_unnamed_atax18_atax_avm_read,
    output wire [0:0] out_unnamed_atax18_atax_avm_write,
    output wire [31:0] out_unnamed_atax18_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax18_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax18_atax_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    input wire [31:0] in_unnamed_atax19_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax19_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax19_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax19_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax19_atax_avm_address,
    output wire [0:0] out_unnamed_atax19_atax_avm_enable,
    output wire [0:0] out_unnamed_atax19_atax_avm_read,
    output wire [0:0] out_unnamed_atax19_atax_avm_write,
    output wire [31:0] out_unnamed_atax19_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax19_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax19_atax_avm_burstcount,
    output wire [0:0] out_c0_exi186_0_tpl,
    output wire [31:0] out_c0_exi186_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [31:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_A_pmem_q;
    wire [63:0] c_atax_buff_x_pmem_q;
    wire [0:0] i_add41_replace_phi_atax3_s;
    reg [31:0] i_add41_replace_phi_atax3_q;
    wire [1:0] i_arrayidx326_atax6_vt_const_1_q;
    wire [63:0] i_arrayidx326_atax6_vt_join_q;
    wire [61:0] i_arrayidx326_atax6_vt_select_63_b;
    wire [63:0] i_arrayidx347_atax8_vt_join_q;
    wire [61:0] i_arrayidx347_atax8_vt_select_63_b;
    wire [31:0] i_idxprom31_atax4_vt_const_63_q;
    wire [63:0] i_idxprom31_atax4_vt_join_q;
    wire [31:0] i_idxprom31_atax4_vt_select_31_b;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_arrayidx28_promoted127_atax2_out_dest_data_out_10_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_idxprom2724_atax5_out_dest_data_out_8_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_atax20_atax11_out_intel_reserved_ffwd_11_0;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_atax10_out_primWireOut;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax18_atax7_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax19_atax9_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_writedata;
    wire [14:0] i_arrayidx326_atax0_add_x_a;
    wire [14:0] i_arrayidx326_atax0_add_x_b;
    logic [14:0] i_arrayidx326_atax0_add_x_o;
    wire [14:0] i_arrayidx326_atax0_add_x_q;
    wire [63:0] i_arrayidx326_atax0_append_upper_bits_x_q;
    wire [7:0] i_arrayidx326_atax0_c_i8_01_x_q;
    wire [5:0] i_arrayidx326_atax0_narrow_x_b;
    wire [13:0] i_arrayidx326_atax0_shift_join_x_q;
    wire [14:0] i_arrayidx326_atax0_dupName_0_add_x_a;
    wire [14:0] i_arrayidx326_atax0_dupName_0_add_x_b;
    logic [14:0] i_arrayidx326_atax0_dupName_0_add_x_o;
    wire [14:0] i_arrayidx326_atax0_dupName_0_add_x_q;
    wire [11:0] i_arrayidx326_atax0_dupName_0_narrow_x_b;
    wire [13:0] i_arrayidx326_atax0_dupName_0_shift_join_x_q;
    wire [13:0] i_arrayidx326_atax0_dupName_0_trunc_sel_x_b;
    wire [13:0] i_arrayidx326_atax0_dupName_2_trunc_sel_x_b;
    wire [13:0] i_arrayidx326_atax0_dupName_3_trunc_sel_x_b;
    wire [13:0] i_arrayidx326_atax0_dupName_5_trunc_sel_x_b;
    wire [8:0] i_arrayidx347_atax0_add_x_a;
    wire [8:0] i_arrayidx347_atax0_add_x_b;
    logic [8:0] i_arrayidx347_atax0_add_x_o;
    wire [8:0] i_arrayidx347_atax0_add_x_q;
    wire [63:0] i_arrayidx347_atax0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx347_atax0_narrow_x_b;
    wire [7:0] i_arrayidx347_atax0_shift_join_x_q;
    wire [7:0] i_arrayidx347_atax0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx347_atax0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom31_atax4_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [49:0] i_arrayidx326_atax0_upper_bits_x_merged_bit_select_b;
    wire [13:0] i_arrayidx326_atax0_upper_bits_x_merged_bit_select_c;
    wire [55:0] i_arrayidx347_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx347_atax0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together23_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [31:0] redist1_sync_together23_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist2_sync_together23_aunroll_x_in_i_valid_8_q;
    reg [5:0] redist3_i_arrayidx347_atax0_narrow_x_b_1_q;
    reg [11:0] redist4_i_arrayidx326_atax0_dupName_0_narrow_x_b_1_q;
    wire redist5_i_add41_replace_phi_atax3_q_4_mem_reset0;
    wire [31:0] redist5_i_add41_replace_phi_atax3_q_4_mem_ia;
    wire [0:0] redist5_i_add41_replace_phi_atax3_q_4_mem_aa;
    wire [0:0] redist5_i_add41_replace_phi_atax3_q_4_mem_ab;
    wire [31:0] redist5_i_add41_replace_phi_atax3_q_4_mem_iq;
    wire [31:0] redist5_i_add41_replace_phi_atax3_q_4_mem_q;
    wire [0:0] redist5_i_add41_replace_phi_atax3_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist5_i_add41_replace_phi_atax3_q_4_rdcnt_i;
    reg [0:0] redist5_i_add41_replace_phi_atax3_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist5_i_add41_replace_phi_atax3_q_4_cmpReg_q;
    wire [0:0] redist5_i_add41_replace_phi_atax3_q_4_notEnable_q;
    wire [0:0] redist5_i_add41_replace_phi_atax3_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist5_i_add41_replace_phi_atax3_q_4_sticky_ena_q;
    wire [0:0] redist5_i_add41_replace_phi_atax3_q_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg3(REG,73)@1 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_atax_buff_A_pmem(CONSTANT,2)
    assign c_atax_buff_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx326_atax0_upper_bits_x_merged_bit_select(BITSELECT,77)@2
    assign i_arrayidx326_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_A_pmem_q[63:14];
    assign i_arrayidx326_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_A_pmem_q[13:0];

    // i_idxprom31_atax4_vt_const_63(CONSTANT,19)
    assign i_idxprom31_atax4_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_idxprom31_atax4_sel_x(BITSELECT,67)@1
    assign i_idxprom31_atax4_sel_x_b = {32'b00000000000000000000000000000000, in_c0_eni3_3_tpl[31:0]};

    // i_idxprom31_atax4_vt_select_31(BITSELECT,21)@1
    assign i_idxprom31_atax4_vt_select_31_b = i_idxprom31_atax4_sel_x_b[31:0];

    // i_idxprom31_atax4_vt_join(BITJOIN,20)@1
    assign i_idxprom31_atax4_vt_join_q = {i_idxprom31_atax4_vt_const_63_q, i_idxprom31_atax4_vt_select_31_b};

    // i_arrayidx326_atax0_dupName_3_trunc_sel_x(BITSELECT,53)@1
    assign i_arrayidx326_atax0_dupName_3_trunc_sel_x_b = i_idxprom31_atax4_vt_join_q[13:0];

    // i_arrayidx326_atax0_dupName_0_narrow_x(BITSELECT,44)@1
    assign i_arrayidx326_atax0_dupName_0_narrow_x_b = i_arrayidx326_atax0_dupName_3_trunc_sel_x_b[11:0];

    // redist4_i_arrayidx326_atax0_dupName_0_narrow_x_b_1(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx326_atax0_dupName_0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist4_i_arrayidx326_atax0_dupName_0_narrow_x_b_1_q <= $unsigned(i_arrayidx326_atax0_dupName_0_narrow_x_b);
        end
    end

    // i_arrayidx326_atax0_dupName_0_shift_join_x(BITJOIN,45)@2
    assign i_arrayidx326_atax0_dupName_0_shift_join_x_q = {redist4_i_arrayidx326_atax0_dupName_0_narrow_x_b_1_q, i_arrayidx326_atax6_vt_const_1_q};

    // valid_fanout_reg2(REG,72)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_idxprom2724_atax5(BLACKBOX,23)@2
    atax_i_llvm_fpga_ffwd_dest_i64_idxprom2724_0 thei_llvm_fpga_ffwd_dest_i64_idxprom2724_atax5 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i64_idxprom2724_atax5_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx326_atax0_dupName_0_trunc_sel_x(BITSELECT,51)@2
    assign i_arrayidx326_atax0_dupName_0_trunc_sel_x_b = i_llvm_fpga_ffwd_dest_i64_idxprom2724_atax5_out_dest_data_out_8_0[13:0];

    // i_arrayidx326_atax0_narrow_x(BITSELECT,39)@2
    assign i_arrayidx326_atax0_narrow_x_b = i_arrayidx326_atax0_dupName_0_trunc_sel_x_b[5:0];

    // i_arrayidx326_atax0_c_i8_01_x(CONSTANT,38)
    assign i_arrayidx326_atax0_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_arrayidx326_atax0_shift_join_x(BITJOIN,40)@2
    assign i_arrayidx326_atax0_shift_join_x_q = {i_arrayidx326_atax0_narrow_x_b, i_arrayidx326_atax0_c_i8_01_x_q};

    // i_arrayidx326_atax0_add_x(ADD,35)@2
    assign i_arrayidx326_atax0_add_x_a = {1'b0, i_arrayidx326_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx326_atax0_add_x_b = {1'b0, i_arrayidx326_atax0_shift_join_x_q};
    assign i_arrayidx326_atax0_add_x_o = $unsigned(i_arrayidx326_atax0_add_x_a) + $unsigned(i_arrayidx326_atax0_add_x_b);
    assign i_arrayidx326_atax0_add_x_q = i_arrayidx326_atax0_add_x_o[14:0];

    // i_arrayidx326_atax0_dupName_2_trunc_sel_x(BITSELECT,52)@2
    assign i_arrayidx326_atax0_dupName_2_trunc_sel_x_b = i_arrayidx326_atax0_add_x_q[13:0];

    // i_arrayidx326_atax0_dupName_0_add_x(ADD,43)@2
    assign i_arrayidx326_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx326_atax0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx326_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx326_atax0_dupName_0_shift_join_x_q};
    assign i_arrayidx326_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx326_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx326_atax0_dupName_0_add_x_b);
    assign i_arrayidx326_atax0_dupName_0_add_x_q = i_arrayidx326_atax0_dupName_0_add_x_o[14:0];

    // i_arrayidx326_atax0_dupName_5_trunc_sel_x(BITSELECT,54)@2
    assign i_arrayidx326_atax0_dupName_5_trunc_sel_x_b = i_arrayidx326_atax0_dupName_0_add_x_q[13:0];

    // i_arrayidx326_atax0_append_upper_bits_x(BITJOIN,36)@2
    assign i_arrayidx326_atax0_append_upper_bits_x_q = {i_arrayidx326_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx326_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx326_atax6_vt_select_63(BITSELECT,14)@2
    assign i_arrayidx326_atax6_vt_select_63_b = i_arrayidx326_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx326_atax6_vt_const_1(CONSTANT,12)
    assign i_arrayidx326_atax6_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx326_atax6_vt_join(BITJOIN,13)@2
    assign i_arrayidx326_atax6_vt_join_q = {i_arrayidx326_atax6_vt_select_63_b, i_arrayidx326_atax6_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax18_atax7(BLACKBOX,26)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_atax18_atax_avm_address@20000000
    // out out_unnamed_atax18_atax_avm_burstcount@20000000
    // out out_unnamed_atax18_atax_avm_byteenable@20000000
    // out out_unnamed_atax18_atax_avm_enable@20000000
    // out out_unnamed_atax18_atax_avm_read@20000000
    // out out_unnamed_atax18_atax_avm_write@20000000
    // out out_unnamed_atax18_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_18_atax0 thei_llvm_fpga_mem_unnamed_atax18_atax7 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx326_atax6_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_atax18_atax_avm_readdata(in_unnamed_atax18_atax_avm_readdata),
        .in_unnamed_atax18_atax_avm_readdatavalid(in_unnamed_atax18_atax_avm_readdatavalid),
        .in_unnamed_atax18_atax_avm_waitrequest(in_unnamed_atax18_atax_avm_waitrequest),
        .in_unnamed_atax18_atax_avm_writeack(in_unnamed_atax18_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax18_atax7_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax18_atax_avm_address(i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_address),
        .out_unnamed_atax18_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_burstcount),
        .out_unnamed_atax18_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_byteenable),
        .out_unnamed_atax18_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_enable),
        .out_unnamed_atax18_atax_avm_read(i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_read),
        .out_unnamed_atax18_atax_avm_write(i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_write),
        .out_unnamed_atax18_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,10)
    assign out_unnamed_atax18_atax_avm_address = i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_address;
    assign out_unnamed_atax18_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_enable;
    assign out_unnamed_atax18_atax_avm_read = i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_read;
    assign out_unnamed_atax18_atax_avm_write = i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_write;
    assign out_unnamed_atax18_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_writedata;
    assign out_unnamed_atax18_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_byteenable;
    assign out_unnamed_atax18_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax18_atax7_out_unnamed_atax18_atax_avm_burstcount;

    // redist2_sync_together23_aunroll_x_in_i_valid_8(DELAY,81)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together23_aunroll_x_in_i_valid_8 ( .xin(in_i_valid), .xout(redist2_sync_together23_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,75)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together23_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist5_i_add41_replace_phi_atax3_q_4_notEnable(LOGICAL,89)
    assign redist5_i_add41_replace_phi_atax3_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_i_add41_replace_phi_atax3_q_4_nor(LOGICAL,90)
    assign redist5_i_add41_replace_phi_atax3_q_4_nor_q = ~ (redist5_i_add41_replace_phi_atax3_q_4_notEnable_q | redist5_i_add41_replace_phi_atax3_q_4_sticky_ena_q);

    // redist5_i_add41_replace_phi_atax3_q_4_cmpReg(REG,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_add41_replace_phi_atax3_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_i_add41_replace_phi_atax3_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist5_i_add41_replace_phi_atax3_q_4_sticky_ena(REG,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_add41_replace_phi_atax3_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_i_add41_replace_phi_atax3_q_4_nor_q == 1'b1)
        begin
            redist5_i_add41_replace_phi_atax3_q_4_sticky_ena_q <= $unsigned(redist5_i_add41_replace_phi_atax3_q_4_cmpReg_q);
        end
    end

    // redist5_i_add41_replace_phi_atax3_q_4_enaAnd(LOGICAL,92)
    assign redist5_i_add41_replace_phi_atax3_q_4_enaAnd_q = redist5_i_add41_replace_phi_atax3_q_4_sticky_ena_q & VCC_q;

    // redist5_i_add41_replace_phi_atax3_q_4_rdcnt(COUNTER,86)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_add41_replace_phi_atax3_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist5_i_add41_replace_phi_atax3_q_4_rdcnt_i <= $unsigned(redist5_i_add41_replace_phi_atax3_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist5_i_add41_replace_phi_atax3_q_4_rdcnt_q = redist5_i_add41_replace_phi_atax3_q_4_rdcnt_i[0:0];

    // valid_fanout_reg1(REG,71)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_arrayidx28_promoted127_atax2(BLACKBOX,22)@2
    atax_i_llvm_fpga_ffwd_dest_f32_arrayidx28_promoted127_0 thei_llvm_fpga_ffwd_dest_f32_arrayidx28_promoted127_atax2 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_f32_arrayidx28_promoted127_atax2_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together23_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together23_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together23_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // redist0_sync_together23_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together23_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together23_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // i_add41_replace_phi_atax3(MUX,11)@2 + 1
    assign i_add41_replace_phi_atax3_s = redist0_sync_together23_aunroll_x_in_c0_eni3_1_tpl_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add41_replace_phi_atax3_q <= 32'b0;
        end
        else
        begin
            unique case (i_add41_replace_phi_atax3_s)
                1'b0 : i_add41_replace_phi_atax3_q <= redist1_sync_together23_aunroll_x_in_c0_eni3_2_tpl_1_q;
                1'b1 : i_add41_replace_phi_atax3_q <= i_llvm_fpga_ffwd_dest_f32_arrayidx28_promoted127_atax2_out_dest_data_out_10_0;
                default : i_add41_replace_phi_atax3_q <= 32'b0;
            endcase
        end
    end

    // redist5_i_add41_replace_phi_atax3_q_4_wraddr(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_add41_replace_phi_atax3_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist5_i_add41_replace_phi_atax3_q_4_wraddr_q <= $unsigned(redist5_i_add41_replace_phi_atax3_q_4_rdcnt_q);
        end
    end

    // redist5_i_add41_replace_phi_atax3_q_4_mem(DUALMEM,85)
    assign redist5_i_add41_replace_phi_atax3_q_4_mem_ia = $unsigned(i_add41_replace_phi_atax3_q);
    assign redist5_i_add41_replace_phi_atax3_q_4_mem_aa = redist5_i_add41_replace_phi_atax3_q_4_wraddr_q;
    assign redist5_i_add41_replace_phi_atax3_q_4_mem_ab = redist5_i_add41_replace_phi_atax3_q_4_rdcnt_q;
    assign redist5_i_add41_replace_phi_atax3_q_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist5_i_add41_replace_phi_atax3_q_4_mem_dmem (
        .clocken1(redist5_i_add41_replace_phi_atax3_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_i_add41_replace_phi_atax3_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist5_i_add41_replace_phi_atax3_q_4_mem_aa),
        .data_a(redist5_i_add41_replace_phi_atax3_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_i_add41_replace_phi_atax3_q_4_mem_ab),
        .q_b(redist5_i_add41_replace_phi_atax3_q_4_mem_iq),
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
    assign redist5_i_add41_replace_phi_atax3_q_4_mem_q = redist5_i_add41_replace_phi_atax3_q_4_mem_iq[31:0];

    // valid_fanout_reg4(REG,74)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // c_atax_buff_x_pmem(CONSTANT,3)
    assign c_atax_buff_x_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx347_atax0_upper_bits_x_merged_bit_select(BITSELECT,78)@2
    assign i_arrayidx347_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_x_pmem_q[63:8];
    assign i_arrayidx347_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_x_pmem_q[7:0];

    // i_arrayidx347_atax0_dupName_0_trunc_sel_x(BITSELECT,65)@1
    assign i_arrayidx347_atax0_dupName_0_trunc_sel_x_b = i_idxprom31_atax4_vt_join_q[7:0];

    // i_arrayidx347_atax0_narrow_x(BITSELECT,58)@1
    assign i_arrayidx347_atax0_narrow_x_b = i_arrayidx347_atax0_dupName_0_trunc_sel_x_b[5:0];

    // redist3_i_arrayidx347_atax0_narrow_x_b_1(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx347_atax0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist3_i_arrayidx347_atax0_narrow_x_b_1_q <= $unsigned(i_arrayidx347_atax0_narrow_x_b);
        end
    end

    // i_arrayidx347_atax0_shift_join_x(BITJOIN,59)@2
    assign i_arrayidx347_atax0_shift_join_x_q = {redist3_i_arrayidx347_atax0_narrow_x_b_1_q, i_arrayidx326_atax6_vt_const_1_q};

    // i_arrayidx347_atax0_add_x(ADD,55)@2
    assign i_arrayidx347_atax0_add_x_a = {1'b0, i_arrayidx347_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx347_atax0_add_x_b = {1'b0, i_arrayidx347_atax0_shift_join_x_q};
    assign i_arrayidx347_atax0_add_x_o = $unsigned(i_arrayidx347_atax0_add_x_a) + $unsigned(i_arrayidx347_atax0_add_x_b);
    assign i_arrayidx347_atax0_add_x_q = i_arrayidx347_atax0_add_x_o[8:0];

    // i_arrayidx347_atax0_dupName_2_trunc_sel_x(BITSELECT,66)@2
    assign i_arrayidx347_atax0_dupName_2_trunc_sel_x_b = i_arrayidx347_atax0_add_x_q[7:0];

    // i_arrayidx347_atax0_append_upper_bits_x(BITJOIN,56)@2
    assign i_arrayidx347_atax0_append_upper_bits_x_q = {i_arrayidx347_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx347_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx347_atax8_vt_select_63(BITSELECT,17)@2
    assign i_arrayidx347_atax8_vt_select_63_b = i_arrayidx347_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx347_atax8_vt_join(BITJOIN,16)@2
    assign i_arrayidx347_atax8_vt_join_q = {i_arrayidx347_atax8_vt_select_63_b, i_arrayidx326_atax6_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax19_atax9(BLACKBOX,27)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_atax19_atax_avm_address@20000000
    // out out_unnamed_atax19_atax_avm_burstcount@20000000
    // out out_unnamed_atax19_atax_avm_byteenable@20000000
    // out out_unnamed_atax19_atax_avm_enable@20000000
    // out out_unnamed_atax19_atax_avm_read@20000000
    // out out_unnamed_atax19_atax_avm_write@20000000
    // out out_unnamed_atax19_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_19_atax0 thei_llvm_fpga_mem_unnamed_atax19_atax9 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx347_atax8_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_atax19_atax_avm_readdata(in_unnamed_atax19_atax_avm_readdata),
        .in_unnamed_atax19_atax_avm_readdatavalid(in_unnamed_atax19_atax_avm_readdatavalid),
        .in_unnamed_atax19_atax_avm_waitrequest(in_unnamed_atax19_atax_avm_waitrequest),
        .in_unnamed_atax19_atax_avm_writeack(in_unnamed_atax19_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax19_atax9_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax19_atax_avm_address(i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_address),
        .out_unnamed_atax19_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_burstcount),
        .out_unnamed_atax19_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_byteenable),
        .out_unnamed_atax19_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_enable),
        .out_unnamed_atax19_atax_avm_read(i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_read),
        .out_unnamed_atax19_atax_avm_write(i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_write),
        .out_unnamed_atax19_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add_atax10(BLACKBOX,25)@6
    // out out_primWireOut@10
    atax_flt_i_sfc_logic_s_c0_in_for_body26_0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_atax10 (
        .in_0(i_llvm_fpga_mem_unnamed_atax18_atax7_out_o_readdata),
        .in_1(i_llvm_fpga_mem_unnamed_atax19_atax9_out_o_readdata),
        .in_2(redist5_i_add41_replace_phi_atax3_q_4_mem_q),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_atax10_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_f32_unnamed_atax20_atax11(BLACKBOX,24)@10
    // out out_intel_reserved_ffwd_11_0@20000000
    atax_i_llvm_fpga_ffwd_source_f32_unnamed_20_atax0 thei_llvm_fpga_ffwd_source_f32_unnamed_atax20_atax11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(i_llvm_fpga_fp_multadd_mult_add_atax10_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_f32_unnamed_atax20_atax11_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,31)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_f32_unnamed_atax20_atax11_out_intel_reserved_ffwd_11_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,34)
    assign out_unnamed_atax19_atax_avm_address = i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_address;
    assign out_unnamed_atax19_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_enable;
    assign out_unnamed_atax19_atax_avm_read = i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_read;
    assign out_unnamed_atax19_atax_avm_write = i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_write;
    assign out_unnamed_atax19_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_writedata;
    assign out_unnamed_atax19_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_byteenable;
    assign out_unnamed_atax19_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax19_atax9_out_unnamed_atax19_atax_avm_burstcount;

    // valid_fanout_reg0(REG,70)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together23_aunroll_x_in_i_valid_8_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,68)@10
    assign out_c0_exi186_0_tpl = GND_q;
    assign out_c0_exi186_1_tpl = i_llvm_fpga_fp_multadd_mult_add_atax10_out_primWireOut;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
