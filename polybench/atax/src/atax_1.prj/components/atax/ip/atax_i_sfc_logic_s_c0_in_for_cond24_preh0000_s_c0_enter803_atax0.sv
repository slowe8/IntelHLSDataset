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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond24_preheader_ataxs_c0_enter803_atax0
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_cond24_preh0000_s_c0_enter803_atax0 (
    input wire [31:0] in_arrayidx28_promoted1_atax_avm_readdata,
    input wire [0:0] in_arrayidx28_promoted1_atax_avm_writeack,
    input wire [0:0] in_arrayidx28_promoted1_atax_avm_waitrequest,
    input wire [0:0] in_arrayidx28_promoted1_atax_avm_readdatavalid,
    output wire [31:0] out_arrayidx28_promoted1_atax_avm_address,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_enable,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_read,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_write,
    output wire [31:0] out_arrayidx28_promoted1_atax_avm_writedata,
    output wire [3:0] out_arrayidx28_promoted1_atax_avm_byteenable,
    output wire [0:0] out_arrayidx28_promoted1_atax_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    output wire [0:0] out_unnamed_atax17_0_tpl,
    input wire [0:0] in_c0_eni179_0_tpl,
    input wire [0:0] in_c0_eni179_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_tmp1_pmem_q;
    wire [31:0] c_i32_023_q;
    wire [1:0] i_arrayidx285_atax7_vt_const_1_q;
    wire [63:0] i_arrayidx285_atax7_vt_join_q;
    wire [61:0] i_arrayidx285_atax7_vt_select_63_b;
    wire [0:0] i_i_138_replace_phi_atax5_s;
    reg [31:0] i_i_138_replace_phi_atax5_q;
    wire [0:0] i_i_236_replace_phi_atax3_s;
    reg [31:0] i_i_236_replace_phi_atax3_q;
    wire [63:0] i_idxprom27_atax6_vt_join_q;
    wire [31:0] i_idxprom27_atax6_vt_select_31_b;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_inc4131_atax4_out_dest_data_out_12_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_inc6532_atax2_out_dest_data_out_13_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_atax16_atax13_out_intel_reserved_ffwd_10_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_atax12_atax9_out_intel_reserved_ffwd_6_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_atax13_atax10_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_atax14_atax11_out_intel_reserved_ffwd_8_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p67f32_unnamed_atax15_atax12_out_intel_reserved_ffwd_9_0;
    wire [31:0] i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_o_readdata;
    wire [8:0] i_arrayidx285_atax0_add_x_a;
    wire [8:0] i_arrayidx285_atax0_add_x_b;
    logic [8:0] i_arrayidx285_atax0_add_x_o;
    wire [8:0] i_arrayidx285_atax0_add_x_q;
    wire [63:0] i_arrayidx285_atax0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx285_atax0_narrow_x_b;
    wire [7:0] i_arrayidx285_atax0_shift_join_x_q;
    wire [7:0] i_arrayidx285_atax0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx285_atax0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom27_atax6_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [55:0] i_arrayidx285_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx285_atax0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together27_aunroll_x_in_c0_eni179_1_tpl_1_q;
    reg [0:0] redist1_sync_together27_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist1_sync_together27_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist1_sync_together27_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist1_sync_together27_aunroll_x_in_i_valid_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg3(REG,58)@1 + 1
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

    // c_atax_tmp1_pmem(CONSTANT,2)
    assign c_atax_tmp1_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx285_atax0_upper_bits_x_merged_bit_select(BITSELECT,65)@2
    assign i_arrayidx285_atax0_upper_bits_x_merged_bit_select_b = c_atax_tmp1_pmem_q[63:8];
    assign i_arrayidx285_atax0_upper_bits_x_merged_bit_select_c = c_atax_tmp1_pmem_q[7:0];

    // c_i32_023(CONSTANT,11)
    assign c_i32_023_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,57)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_inc4131_atax4(BLACKBOX,23)@2
    atax_i_llvm_fpga_ffwd_dest_i32_inc4131_0 thei_llvm_fpga_ffwd_dest_i32_inc4131_atax4 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i32_inc4131_atax4_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together27_aunroll_x_in_c0_eni179_1_tpl_1(DELAY,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni179_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni179_1_tpl_1_q <= $unsigned(in_c0_eni179_1_tpl);
        end
    end

    // i_i_138_replace_phi_atax5(MUX,17)@2
    assign i_i_138_replace_phi_atax5_s = redist0_sync_together27_aunroll_x_in_c0_eni179_1_tpl_1_q;
    always @(i_i_138_replace_phi_atax5_s or i_llvm_fpga_ffwd_dest_i32_inc4131_atax4_out_dest_data_out_12_0 or c_i32_023_q)
    begin
        unique case (i_i_138_replace_phi_atax5_s)
            1'b0 : i_i_138_replace_phi_atax5_q = i_llvm_fpga_ffwd_dest_i32_inc4131_atax4_out_dest_data_out_12_0;
            1'b1 : i_i_138_replace_phi_atax5_q = c_i32_023_q;
            default : i_i_138_replace_phi_atax5_q = 32'b0;
        endcase
    end

    // i_idxprom27_atax6_sel_x(BITSELECT,52)@2
    assign i_idxprom27_atax6_sel_x_b = {32'b00000000000000000000000000000000, i_i_138_replace_phi_atax5_q[31:0]};

    // i_idxprom27_atax6_vt_select_31(BITSELECT,22)@2
    assign i_idxprom27_atax6_vt_select_31_b = i_idxprom27_atax6_sel_x_b[31:0];

    // i_idxprom27_atax6_vt_join(BITJOIN,21)@2
    assign i_idxprom27_atax6_vt_join_q = {c_i32_023_q, i_idxprom27_atax6_vt_select_31_b};

    // i_arrayidx285_atax0_dupName_0_trunc_sel_x(BITSELECT,50)@2
    assign i_arrayidx285_atax0_dupName_0_trunc_sel_x_b = i_idxprom27_atax6_vt_join_q[7:0];

    // i_arrayidx285_atax0_narrow_x(BITSELECT,43)@2
    assign i_arrayidx285_atax0_narrow_x_b = i_arrayidx285_atax0_dupName_0_trunc_sel_x_b[5:0];

    // i_arrayidx285_atax0_shift_join_x(BITJOIN,44)@2
    assign i_arrayidx285_atax0_shift_join_x_q = {i_arrayidx285_atax0_narrow_x_b, i_arrayidx285_atax7_vt_const_1_q};

    // i_arrayidx285_atax0_add_x(ADD,40)@2
    assign i_arrayidx285_atax0_add_x_a = {1'b0, i_arrayidx285_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx285_atax0_add_x_b = {1'b0, i_arrayidx285_atax0_shift_join_x_q};
    assign i_arrayidx285_atax0_add_x_o = $unsigned(i_arrayidx285_atax0_add_x_a) + $unsigned(i_arrayidx285_atax0_add_x_b);
    assign i_arrayidx285_atax0_add_x_q = i_arrayidx285_atax0_add_x_o[8:0];

    // i_arrayidx285_atax0_dupName_2_trunc_sel_x(BITSELECT,51)@2
    assign i_arrayidx285_atax0_dupName_2_trunc_sel_x_b = i_arrayidx285_atax0_add_x_q[7:0];

    // i_arrayidx285_atax0_append_upper_bits_x(BITJOIN,41)@2
    assign i_arrayidx285_atax0_append_upper_bits_x_q = {i_arrayidx285_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx285_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx285_atax7_vt_select_63(BITSELECT,16)@2
    assign i_arrayidx285_atax7_vt_select_63_b = i_arrayidx285_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx285_atax7_vt_const_1(CONSTANT,14)
    assign i_arrayidx285_atax7_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx285_atax7_vt_join(BITJOIN,15)@2
    assign i_arrayidx285_atax7_vt_join_q = {i_arrayidx285_atax7_vt_select_63_b, i_arrayidx285_atax7_vt_const_1_q};

    // i_llvm_fpga_mem_arrayidx28_promoted1_atax8(BLACKBOX,30)@2
    // in in_i_stall@20000000
    // out out_arrayidx28_promoted1_atax_avm_address@20000000
    // out out_arrayidx28_promoted1_atax_avm_burstcount@20000000
    // out out_arrayidx28_promoted1_atax_avm_byteenable@20000000
    // out out_arrayidx28_promoted1_atax_avm_enable@20000000
    // out out_arrayidx28_promoted1_atax_avm_read@20000000
    // out out_arrayidx28_promoted1_atax_avm_write@20000000
    // out out_arrayidx28_promoted1_atax_avm_writedata@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    atax_i_llvm_fpga_mem_arrayidx28_promoted1_0 thei_llvm_fpga_mem_arrayidx28_promoted1_atax8 (
        .in_arrayidx28_promoted1_atax_avm_readdata(in_arrayidx28_promoted1_atax_avm_readdata),
        .in_arrayidx28_promoted1_atax_avm_readdatavalid(in_arrayidx28_promoted1_atax_avm_readdatavalid),
        .in_arrayidx28_promoted1_atax_avm_waitrequest(in_arrayidx28_promoted1_atax_avm_waitrequest),
        .in_arrayidx28_promoted1_atax_avm_writeack(in_arrayidx28_promoted1_atax_avm_writeack),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx285_atax7_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .out_arrayidx28_promoted1_atax_avm_address(i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_address),
        .out_arrayidx28_promoted1_atax_avm_burstcount(i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_burstcount),
        .out_arrayidx28_promoted1_atax_avm_byteenable(i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_byteenable),
        .out_arrayidx28_promoted1_atax_avm_enable(i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_enable),
        .out_arrayidx28_promoted1_atax_avm_read(i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_read),
        .out_arrayidx28_promoted1_atax_avm_write(i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_write),
        .out_arrayidx28_promoted1_atax_avm_writedata(i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,13)
    assign out_arrayidx28_promoted1_atax_avm_address = i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_address;
    assign out_arrayidx28_promoted1_atax_avm_enable = i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_enable;
    assign out_arrayidx28_promoted1_atax_avm_read = i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_read;
    assign out_arrayidx28_promoted1_atax_avm_write = i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_write;
    assign out_arrayidx28_promoted1_atax_avm_writedata = i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_writedata;
    assign out_arrayidx28_promoted1_atax_avm_byteenable = i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_byteenable;
    assign out_arrayidx28_promoted1_atax_avm_burstcount = i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_arrayidx28_promoted1_atax_avm_burstcount;

    // redist1_sync_together27_aunroll_x_in_i_valid_4(DELAY,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together27_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist1_sync_together27_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist1_sync_together27_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist1_sync_together27_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist1_sync_together27_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together27_aunroll_x_in_i_valid_4_delay_1 <= redist1_sync_together27_aunroll_x_in_i_valid_4_delay_0;
            redist1_sync_together27_aunroll_x_in_i_valid_4_delay_2 <= redist1_sync_together27_aunroll_x_in_i_valid_4_delay_1;
            redist1_sync_together27_aunroll_x_in_i_valid_4_q <= redist1_sync_together27_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg8(REG,63)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together27_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_atax16_atax13(BLACKBOX,25)@6
    // out out_intel_reserved_ffwd_10_0@20000000
    atax_i_llvm_fpga_ffwd_source_f32_unnamed_16_atax0 thei_llvm_fpga_ffwd_source_f32_unnamed_atax16_atax13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(i_llvm_fpga_mem_arrayidx28_promoted1_atax8_out_o_readdata),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_f32_unnamed_atax16_atax13_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,34)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_f32_unnamed_atax16_atax13_out_intel_reserved_ffwd_10_0;

    // valid_fanout_reg4(REG,59)@1 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_atax12_atax9(BLACKBOX,26)@2
    // out out_intel_reserved_ffwd_6_0@20000000
    atax_i_llvm_fpga_ffwd_source_i32_unnamed_12_atax0 thei_llvm_fpga_ffwd_source_i32_unnamed_atax12_atax9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(i_i_138_replace_phi_atax5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_atax12_atax9_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_atax12_atax9_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg5(REG,60)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg1(REG,56)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_inc6532_atax2(BLACKBOX,24)@2
    atax_i_llvm_fpga_ffwd_dest_i32_inc6532_0 thei_llvm_fpga_ffwd_dest_i32_inc6532_atax2 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i32_inc6532_atax2_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_i_236_replace_phi_atax3(MUX,18)@2
    assign i_i_236_replace_phi_atax3_s = redist0_sync_together27_aunroll_x_in_c0_eni179_1_tpl_1_q;
    always @(i_i_236_replace_phi_atax3_s or i_llvm_fpga_ffwd_dest_i32_inc6532_atax2_out_dest_data_out_13_0 or c_i32_023_q)
    begin
        unique case (i_i_236_replace_phi_atax3_s)
            1'b0 : i_i_236_replace_phi_atax3_q = i_llvm_fpga_ffwd_dest_i32_inc6532_atax2_out_dest_data_out_13_0;
            1'b1 : i_i_236_replace_phi_atax3_q = c_i32_023_q;
            default : i_i_236_replace_phi_atax3_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_atax13_atax10(BLACKBOX,27)@2
    // out out_intel_reserved_ffwd_7_0@20000000
    atax_i_llvm_fpga_ffwd_source_i32_unnamed_13_atax0 thei_llvm_fpga_ffwd_source_i32_unnamed_atax13_atax10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_i_236_replace_phi_atax3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_atax13_atax10_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_atax13_atax10_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg6(REG,61)@1 + 1
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

    // i_llvm_fpga_ffwd_source_i64_unnamed_atax14_atax11(BLACKBOX,28)@2
    // out out_intel_reserved_ffwd_8_0@20000000
    atax_i_llvm_fpga_ffwd_source_i64_unnamed_14_atax0 thei_llvm_fpga_ffwd_source_i64_unnamed_atax14_atax11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_idxprom27_atax6_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i64_unnamed_atax14_atax11_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i64_unnamed_atax14_atax11_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg7(REG,62)@1 + 1
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

    // i_llvm_fpga_ffwd_source_p67f32_unnamed_atax15_atax12(BLACKBOX,29)@2
    // out out_intel_reserved_ffwd_9_0@20000000
    atax_i_llvm_fpga_ffwd_source_p67f32_unnamed_15_atax0 thei_llvm_fpga_ffwd_source_p67f32_unnamed_atax15_atax12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(i_arrayidx285_atax7_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_p67f32_unnamed_atax15_atax12_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_p67f32_unnamed_atax15_atax12_out_intel_reserved_ffwd_9_0;

    // valid_fanout_reg0(REG,55)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together27_aunroll_x_in_i_valid_4_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,53)@6
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;
    assign out_unnamed_atax17_0_tpl = GND_q;

endmodule
