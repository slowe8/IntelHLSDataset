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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_ataxs_c0_enter712_atax0
// Created for function/kernel atax
// SystemVerilog created on Sun Jan 21 01:17:51 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body_s_c0_enter712_atax0 (
    input wire [63:0] in_unnamed_atax6_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax6_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax6_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax6_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax6_atax_avm_address,
    output wire [0:0] out_unnamed_atax6_atax_avm_enable,
    output wire [0:0] out_unnamed_atax6_atax_avm_read,
    output wire [0:0] out_unnamed_atax6_atax_avm_write,
    output wire [63:0] out_unnamed_atax6_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax6_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax6_atax_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
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
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    output wire [0:0] out_unnamed_atax9_0_tpl,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_buff_x_pmem_q;
    wire [63:0] c_atax_buff_y_out_pmem_q;
    wire [63:0] c_atax_tmp1_pmem_q;
    wire [31:0] c_float_0_000000e_0026_q;
    wire [31:0] c_i32_025_q;
    wire [1:0] i_arrayidx21_atax8_vt_const_1_q;
    wire [63:0] i_arrayidx21_atax8_vt_join_q;
    wire [61:0] i_arrayidx21_atax8_vt_select_63_b;
    wire [63:0] i_arrayidx42_atax10_vt_join_q;
    wire [61:0] i_arrayidx42_atax10_vt_select_63_b;
    wire [63:0] i_arrayidx63_atax12_vt_join_q;
    wire [61:0] i_arrayidx63_atax12_vt_select_63_b;
    wire [0:0] i_i_040_replace_phi_atax3_s;
    reg [31:0] i_i_040_replace_phi_atax3_q;
    wire [63:0] i_idxprom_atax4_vt_join_q;
    wire [31:0] i_idxprom_atax4_vt_select_31_b;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_inc1920_atax2_out_dest_data_out_5_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_x4315_atax5_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_atax7_atax14_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_atax8_atax15_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax6_atax7_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_writedata;
    wire [8:0] i_arrayidx21_atax0_add_x_a;
    wire [8:0] i_arrayidx21_atax0_add_x_b;
    logic [8:0] i_arrayidx21_atax0_add_x_o;
    wire [8:0] i_arrayidx21_atax0_add_x_q;
    wire [63:0] i_arrayidx21_atax0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx21_atax0_narrow_x_b;
    wire [7:0] i_arrayidx21_atax0_shift_join_x_q;
    wire [7:0] i_arrayidx21_atax0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx21_atax0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx42_atax0_add_x_a;
    wire [8:0] i_arrayidx42_atax0_add_x_b;
    logic [8:0] i_arrayidx42_atax0_add_x_o;
    wire [8:0] i_arrayidx42_atax0_add_x_q;
    wire [63:0] i_arrayidx42_atax0_append_upper_bits_x_q;
    wire [7:0] i_arrayidx42_atax0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx63_atax0_add_x_a;
    wire [8:0] i_arrayidx63_atax0_add_x_b;
    logic [8:0] i_arrayidx63_atax0_add_x_o;
    wire [8:0] i_arrayidx63_atax0_add_x_q;
    wire [63:0] i_arrayidx63_atax0_append_upper_bits_x_q;
    wire [7:0] i_arrayidx63_atax0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx_atax0_add_x_a;
    wire [64:0] i_arrayidx_atax0_add_x_b;
    logic [64:0] i_arrayidx_atax0_add_x_o;
    wire [64:0] i_arrayidx_atax0_add_x_q;
    wire [61:0] i_arrayidx_atax0_narrow_x_b;
    wire [63:0] i_arrayidx_atax0_shift_join_x_q;
    wire [63:0] i_arrayidx_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom_atax4_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [55:0] i_arrayidx21_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx21_atax0_upper_bits_x_merged_bit_select_c;
    wire [55:0] i_arrayidx42_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx42_atax0_upper_bits_x_merged_bit_select_c;
    wire [55:0] i_arrayidx63_atax0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx63_atax0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together30_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together30_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist1_sync_together30_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist1_sync_together30_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist1_sync_together30_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist1_sync_together30_aunroll_x_in_i_valid_5_delay_3;
    reg [0:0] redist2_sync_together30_aunroll_x_in_i_valid_6_q;
    reg [5:0] redist3_i_arrayidx21_atax0_narrow_x_b_5_q;
    reg [5:0] redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_0;
    reg [5:0] redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_1;
    reg [5:0] redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_2;
    reg [5:0] redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_3;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg3(REG,99)@1 + 1
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

    // c_i32_025(CONSTANT,14)
    assign c_i32_025_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg1(REG,97)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_inc1920_atax2(BLACKBOX,31)@2
    atax_i_llvm_fpga_ffwd_dest_i32_inc1920_0 thei_llvm_fpga_ffwd_dest_i32_inc1920_atax2 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_inc1920_atax2_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together30_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together30_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together30_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // i_i_040_replace_phi_atax3(MUX,26)@2
    assign i_i_040_replace_phi_atax3_s = redist0_sync_together30_aunroll_x_in_c0_eni1_1_tpl_1_q;
    always @(i_i_040_replace_phi_atax3_s or i_llvm_fpga_ffwd_dest_i32_inc1920_atax2_out_dest_data_out_5_0 or c_i32_025_q)
    begin
        unique case (i_i_040_replace_phi_atax3_s)
            1'b0 : i_i_040_replace_phi_atax3_q = i_llvm_fpga_ffwd_dest_i32_inc1920_atax2_out_dest_data_out_5_0;
            1'b1 : i_i_040_replace_phi_atax3_q = c_i32_025_q;
            default : i_i_040_replace_phi_atax3_q = 32'b0;
        endcase
    end

    // i_idxprom_atax4_sel_x(BITSELECT,93)@2
    assign i_idxprom_atax4_sel_x_b = {32'b00000000000000000000000000000000, i_i_040_replace_phi_atax3_q[31:0]};

    // i_idxprom_atax4_vt_select_31(BITSELECT,30)@2
    assign i_idxprom_atax4_vt_select_31_b = i_idxprom_atax4_sel_x_b[31:0];

    // i_idxprom_atax4_vt_join(BITJOIN,29)@2
    assign i_idxprom_atax4_vt_join_q = {c_i32_025_q, i_idxprom_atax4_vt_select_31_b};

    // i_arrayidx_atax0_narrow_x(BITSELECT,89)@2
    assign i_arrayidx_atax0_narrow_x_b = i_idxprom_atax4_vt_join_q[61:0];

    // i_arrayidx21_atax8_vt_const_1(CONSTANT,17)
    assign i_arrayidx21_atax8_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx_atax0_shift_join_x(BITJOIN,90)@2
    assign i_arrayidx_atax0_shift_join_x_q = {i_arrayidx_atax0_narrow_x_b, i_arrayidx21_atax8_vt_const_1_q};

    // valid_fanout_reg2(REG,98)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_p1024f32_x4315_atax5(BLACKBOX,32)@2
    atax_i_llvm_fpga_ffwd_dest_p1024f32_x4315_0 thei_llvm_fpga_ffwd_dest_p1024f32_x4315_atax5 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024f32_x4315_atax5_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_atax0_add_x(ADD,87)@2
    assign i_arrayidx_atax0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024f32_x4315_atax5_out_dest_data_out_1_0};
    assign i_arrayidx_atax0_add_x_b = {1'b0, i_arrayidx_atax0_shift_join_x_q};
    assign i_arrayidx_atax0_add_x_o = $unsigned(i_arrayidx_atax0_add_x_a) + $unsigned(i_arrayidx_atax0_add_x_b);
    assign i_arrayidx_atax0_add_x_q = i_arrayidx_atax0_add_x_o[64:0];

    // i_arrayidx_atax0_dupName_0_trunc_sel_x(BITSELECT,92)@2
    assign i_arrayidx_atax0_dupName_0_trunc_sel_x_b = i_arrayidx_atax0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_atax6_atax7(BLACKBOX,38)@2
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_atax6_atax_avm_address@20000000
    // out out_unnamed_atax6_atax_avm_burstcount@20000000
    // out out_unnamed_atax6_atax_avm_byteenable@20000000
    // out out_unnamed_atax6_atax_avm_enable@20000000
    // out out_unnamed_atax6_atax_avm_read@20000000
    // out out_unnamed_atax6_atax_avm_write@20000000
    // out out_unnamed_atax6_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_6_atax0 thei_llvm_fpga_mem_unnamed_atax6_atax7 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx_atax0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_atax6_atax_avm_readdata(in_unnamed_atax6_atax_avm_readdata),
        .in_unnamed_atax6_atax_avm_readdatavalid(in_unnamed_atax6_atax_avm_readdatavalid),
        .in_unnamed_atax6_atax_avm_waitrequest(in_unnamed_atax6_atax_avm_waitrequest),
        .in_unnamed_atax6_atax_avm_writeack(in_unnamed_atax6_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax6_atax7_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax6_atax_avm_address(i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_address),
        .out_unnamed_atax6_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_burstcount),
        .out_unnamed_atax6_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_byteenable),
        .out_unnamed_atax6_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_enable),
        .out_unnamed_atax6_atax_avm_read(i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_read),
        .out_unnamed_atax6_atax_avm_write(i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_write),
        .out_unnamed_atax6_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,16)
    assign out_unnamed_atax6_atax_avm_address = i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_address;
    assign out_unnamed_atax6_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_enable;
    assign out_unnamed_atax6_atax_avm_read = i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_read;
    assign out_unnamed_atax6_atax_avm_write = i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_write;
    assign out_unnamed_atax6_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_writedata;
    assign out_unnamed_atax6_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_byteenable;
    assign out_unnamed_atax6_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax6_atax7_out_unnamed_atax6_atax_avm_burstcount;

    // valid_fanout_reg7(REG,103)@1 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_atax7_atax14(BLACKBOX,33)@2
    // out out_intel_reserved_ffwd_3_0@20000000
    atax_i_llvm_fpga_ffwd_source_i32_unnamed_7_atax0 thei_llvm_fpga_ffwd_source_i32_unnamed_atax7_atax14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_i_040_replace_phi_atax3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_atax7_atax14_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,42)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_atax7_atax14_out_intel_reserved_ffwd_3_0;

    // redist1_sync_together30_aunroll_x_in_i_valid_5(DELAY,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together30_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist1_sync_together30_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist1_sync_together30_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist1_sync_together30_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist1_sync_together30_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist1_sync_together30_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together30_aunroll_x_in_i_valid_5_delay_1 <= redist1_sync_together30_aunroll_x_in_i_valid_5_delay_0;
            redist1_sync_together30_aunroll_x_in_i_valid_5_delay_2 <= redist1_sync_together30_aunroll_x_in_i_valid_5_delay_1;
            redist1_sync_together30_aunroll_x_in_i_valid_5_delay_3 <= redist1_sync_together30_aunroll_x_in_i_valid_5_delay_2;
            redist1_sync_together30_aunroll_x_in_i_valid_5_q <= redist1_sync_together30_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg4(REG,100)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together30_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_atax_buff_x_pmem(CONSTANT,2)
    assign c_atax_buff_x_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx21_atax0_upper_bits_x_merged_bit_select(BITSELECT,106)@7
    assign i_arrayidx21_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_x_pmem_q[63:8];
    assign i_arrayidx21_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_x_pmem_q[7:0];

    // i_arrayidx21_atax0_dupName_0_trunc_sel_x(BITSELECT,61)@2
    assign i_arrayidx21_atax0_dupName_0_trunc_sel_x_b = i_idxprom_atax4_vt_join_q[7:0];

    // i_arrayidx21_atax0_narrow_x(BITSELECT,54)@2
    assign i_arrayidx21_atax0_narrow_x_b = i_arrayidx21_atax0_dupName_0_trunc_sel_x_b[5:0];

    // redist3_i_arrayidx21_atax0_narrow_x_b_5(DELAY,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_0 <= '0;
            redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_1 <= '0;
            redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_2 <= '0;
            redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_3 <= '0;
            redist3_i_arrayidx21_atax0_narrow_x_b_5_q <= '0;
        end
        else
        begin
            redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_0 <= $unsigned(i_arrayidx21_atax0_narrow_x_b);
            redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_1 <= redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_0;
            redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_2 <= redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_1;
            redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_3 <= redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_2;
            redist3_i_arrayidx21_atax0_narrow_x_b_5_q <= redist3_i_arrayidx21_atax0_narrow_x_b_5_delay_3;
        end
    end

    // i_arrayidx21_atax0_shift_join_x(BITJOIN,55)@7
    assign i_arrayidx21_atax0_shift_join_x_q = {redist3_i_arrayidx21_atax0_narrow_x_b_5_q, i_arrayidx21_atax8_vt_const_1_q};

    // i_arrayidx21_atax0_add_x(ADD,51)@7
    assign i_arrayidx21_atax0_add_x_a = {1'b0, i_arrayidx21_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx21_atax0_add_x_b = {1'b0, i_arrayidx21_atax0_shift_join_x_q};
    assign i_arrayidx21_atax0_add_x_o = $unsigned(i_arrayidx21_atax0_add_x_a) + $unsigned(i_arrayidx21_atax0_add_x_b);
    assign i_arrayidx21_atax0_add_x_q = i_arrayidx21_atax0_add_x_o[8:0];

    // i_arrayidx21_atax0_dupName_2_trunc_sel_x(BITSELECT,62)@7
    assign i_arrayidx21_atax0_dupName_2_trunc_sel_x_b = i_arrayidx21_atax0_add_x_q[7:0];

    // i_arrayidx21_atax0_append_upper_bits_x(BITJOIN,52)@7
    assign i_arrayidx21_atax0_append_upper_bits_x_q = {i_arrayidx21_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx21_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx21_atax8_vt_select_63(BITSELECT,19)@7
    assign i_arrayidx21_atax8_vt_select_63_b = i_arrayidx21_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx21_atax8_vt_join(BITJOIN,18)@7
    assign i_arrayidx21_atax8_vt_join_q = {i_arrayidx21_atax8_vt_select_63_b, i_arrayidx21_atax8_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_atax9(BLACKBOX,37)@7
    // out out_memdep_atax_avm_address@20000000
    // out out_memdep_atax_avm_burstcount@20000000
    // out out_memdep_atax_avm_byteenable@20000000
    // out out_memdep_atax_avm_enable@20000000
    // out out_memdep_atax_avm_read@20000000
    // out out_memdep_atax_avm_write@20000000
    // out out_memdep_atax_avm_writedata@20000000
    // out out_o_stall@8
    // out out_o_valid@8
    // out out_o_writeack@8
    atax_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_atax9 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx21_atax8_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_i_writedata(i_llvm_fpga_mem_unnamed_atax6_atax7_out_o_readdata),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .out_memdep_atax_avm_address(i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,45)
    assign out_memdep_atax_avm_address = i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_address;
    assign out_memdep_atax_avm_enable = i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_enable;
    assign out_memdep_atax_avm_read = i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_read;
    assign out_memdep_atax_avm_write = i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_write;
    assign out_memdep_atax_avm_writedata = i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_writedata;
    assign out_memdep_atax_avm_byteenable = i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_byteenable;
    assign out_memdep_atax_avm_burstcount = i_llvm_fpga_mem_memdep_atax9_out_memdep_atax_avm_burstcount;

    // valid_fanout_reg8(REG,104)@1 + 1
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

    // i_llvm_fpga_ffwd_source_i64_unnamed_atax8_atax15(BLACKBOX,34)@2
    // out out_intel_reserved_ffwd_4_0@20000000
    atax_i_llvm_fpga_ffwd_source_i64_unnamed_8_atax0 thei_llvm_fpga_ffwd_source_i64_unnamed_atax8_atax15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_idxprom_atax4_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i64_unnamed_atax8_atax15_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i64_unnamed_atax8_atax15_out_intel_reserved_ffwd_4_0;

    // c_float_0_000000e_0026(FLOATCONSTANT,5)
    assign c_float_0_000000e_0026_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg5(REG,101)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together30_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_atax_buff_y_out_pmem(CONSTANT,3)
    assign c_atax_buff_y_out_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx42_atax0_upper_bits_x_merged_bit_select(BITSELECT,107)@7
    assign i_arrayidx42_atax0_upper_bits_x_merged_bit_select_b = c_atax_buff_y_out_pmem_q[63:8];
    assign i_arrayidx42_atax0_upper_bits_x_merged_bit_select_c = c_atax_buff_y_out_pmem_q[7:0];

    // i_arrayidx42_atax0_add_x(ADD,63)@7
    assign i_arrayidx42_atax0_add_x_a = {1'b0, i_arrayidx42_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx42_atax0_add_x_b = {1'b0, i_arrayidx21_atax0_shift_join_x_q};
    assign i_arrayidx42_atax0_add_x_o = $unsigned(i_arrayidx42_atax0_add_x_a) + $unsigned(i_arrayidx42_atax0_add_x_b);
    assign i_arrayidx42_atax0_add_x_q = i_arrayidx42_atax0_add_x_o[8:0];

    // i_arrayidx42_atax0_dupName_2_trunc_sel_x(BITSELECT,74)@7
    assign i_arrayidx42_atax0_dupName_2_trunc_sel_x_b = i_arrayidx42_atax0_add_x_q[7:0];

    // i_arrayidx42_atax0_append_upper_bits_x(BITJOIN,64)@7
    assign i_arrayidx42_atax0_append_upper_bits_x_q = {i_arrayidx42_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx42_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx42_atax10_vt_select_63(BITSELECT,22)@7
    assign i_arrayidx42_atax10_vt_select_63_b = i_arrayidx42_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx42_atax10_vt_join(BITJOIN,21)@7
    assign i_arrayidx42_atax10_vt_join_q = {i_arrayidx42_atax10_vt_select_63_b, i_arrayidx21_atax8_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_2_atax11(BLACKBOX,35)@7
    // out out_memdep_2_atax_avm_address@20000000
    // out out_memdep_2_atax_avm_burstcount@20000000
    // out out_memdep_2_atax_avm_byteenable@20000000
    // out out_memdep_2_atax_avm_enable@20000000
    // out out_memdep_2_atax_avm_read@20000000
    // out out_memdep_2_atax_avm_write@20000000
    // out out_memdep_2_atax_avm_writedata@20000000
    // out out_o_stall@8
    // out out_o_valid@8
    // out out_o_writeack@8
    atax_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_atax11 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx42_atax10_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(c_float_0_000000e_0026_q),
        .in_memdep_2_atax_avm_readdata(in_memdep_2_atax_avm_readdata),
        .in_memdep_2_atax_avm_readdatavalid(in_memdep_2_atax_avm_readdatavalid),
        .in_memdep_2_atax_avm_waitrequest(in_memdep_2_atax_avm_waitrequest),
        .in_memdep_2_atax_avm_writeack(in_memdep_2_atax_avm_writeack),
        .out_memdep_2_atax_avm_address(i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_address),
        .out_memdep_2_atax_avm_burstcount(i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_burstcount),
        .out_memdep_2_atax_avm_byteenable(i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_byteenable),
        .out_memdep_2_atax_avm_enable(i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_enable),
        .out_memdep_2_atax_avm_read(i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_read),
        .out_memdep_2_atax_avm_write(i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_write),
        .out_memdep_2_atax_avm_writedata(i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,48)
    assign out_memdep_2_atax_avm_address = i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_address;
    assign out_memdep_2_atax_avm_enable = i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_enable;
    assign out_memdep_2_atax_avm_read = i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_read;
    assign out_memdep_2_atax_avm_write = i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_write;
    assign out_memdep_2_atax_avm_writedata = i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_writedata;
    assign out_memdep_2_atax_avm_byteenable = i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_byteenable;
    assign out_memdep_2_atax_avm_burstcount = i_llvm_fpga_mem_memdep_2_atax11_out_memdep_2_atax_avm_burstcount;

    // valid_fanout_reg6(REG,102)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together30_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_atax_tmp1_pmem(CONSTANT,4)
    assign c_atax_tmp1_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx63_atax0_upper_bits_x_merged_bit_select(BITSELECT,108)@7
    assign i_arrayidx63_atax0_upper_bits_x_merged_bit_select_b = c_atax_tmp1_pmem_q[63:8];
    assign i_arrayidx63_atax0_upper_bits_x_merged_bit_select_c = c_atax_tmp1_pmem_q[7:0];

    // i_arrayidx63_atax0_add_x(ADD,75)@7
    assign i_arrayidx63_atax0_add_x_a = {1'b0, i_arrayidx63_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx63_atax0_add_x_b = {1'b0, i_arrayidx21_atax0_shift_join_x_q};
    assign i_arrayidx63_atax0_add_x_o = $unsigned(i_arrayidx63_atax0_add_x_a) + $unsigned(i_arrayidx63_atax0_add_x_b);
    assign i_arrayidx63_atax0_add_x_q = i_arrayidx63_atax0_add_x_o[8:0];

    // i_arrayidx63_atax0_dupName_2_trunc_sel_x(BITSELECT,86)@7
    assign i_arrayidx63_atax0_dupName_2_trunc_sel_x_b = i_arrayidx63_atax0_add_x_q[7:0];

    // i_arrayidx63_atax0_append_upper_bits_x(BITJOIN,76)@7
    assign i_arrayidx63_atax0_append_upper_bits_x_q = {i_arrayidx63_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx63_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx63_atax12_vt_select_63(BITSELECT,25)@7
    assign i_arrayidx63_atax12_vt_select_63_b = i_arrayidx63_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx63_atax12_vt_join(BITJOIN,24)@7
    assign i_arrayidx63_atax12_vt_join_q = {i_arrayidx63_atax12_vt_select_63_b, i_arrayidx21_atax8_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_3_atax13(BLACKBOX,36)@7
    // out out_memdep_3_atax_avm_address@20000000
    // out out_memdep_3_atax_avm_burstcount@20000000
    // out out_memdep_3_atax_avm_byteenable@20000000
    // out out_memdep_3_atax_avm_enable@20000000
    // out out_memdep_3_atax_avm_read@20000000
    // out out_memdep_3_atax_avm_write@20000000
    // out out_memdep_3_atax_avm_writedata@20000000
    // out out_o_stall@8
    // out out_o_valid@8
    // out out_o_writeack@8
    atax_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_atax13 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx63_atax12_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(c_float_0_000000e_0026_q),
        .in_memdep_3_atax_avm_readdata(in_memdep_3_atax_avm_readdata),
        .in_memdep_3_atax_avm_readdatavalid(in_memdep_3_atax_avm_readdatavalid),
        .in_memdep_3_atax_avm_waitrequest(in_memdep_3_atax_avm_waitrequest),
        .in_memdep_3_atax_avm_writeack(in_memdep_3_atax_avm_writeack),
        .out_memdep_3_atax_avm_address(i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_address),
        .out_memdep_3_atax_avm_burstcount(i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_burstcount),
        .out_memdep_3_atax_avm_byteenable(i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_byteenable),
        .out_memdep_3_atax_avm_enable(i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_enable),
        .out_memdep_3_atax_avm_read(i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_read),
        .out_memdep_3_atax_avm_write(i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_write),
        .out_memdep_3_atax_avm_writedata(i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,50)
    assign out_memdep_3_atax_avm_address = i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_address;
    assign out_memdep_3_atax_avm_enable = i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_enable;
    assign out_memdep_3_atax_avm_read = i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_read;
    assign out_memdep_3_atax_avm_write = i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_write;
    assign out_memdep_3_atax_avm_writedata = i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_writedata;
    assign out_memdep_3_atax_avm_byteenable = i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_byteenable;
    assign out_memdep_3_atax_avm_burstcount = i_llvm_fpga_mem_memdep_3_atax13_out_memdep_3_atax_avm_burstcount;

    // redist2_sync_together30_aunroll_x_in_i_valid_6(DELAY,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together30_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist2_sync_together30_aunroll_x_in_i_valid_6_q <= $unsigned(redist1_sync_together30_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg0(REG,96)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together30_aunroll_x_in_i_valid_6_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,94)@8
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;
    assign out_unnamed_atax9_0_tpl = GND_q;

endmodule
