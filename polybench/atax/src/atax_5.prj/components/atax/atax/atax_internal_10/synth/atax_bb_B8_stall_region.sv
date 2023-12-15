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

// SystemVerilog created from atax_bb_B8_stall_region
// SystemVerilog created on Wed Dec 13 00:46:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B8_stall_region (
    input wire [31:0] in_memdep_14220_atax_avm_readdata,
    input wire [0:0] in_memdep_14220_atax_avm_writeack,
    input wire [0:0] in_memdep_14220_atax_avm_waitrequest,
    input wire [0:0] in_memdep_14220_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_14220_atax_avm_address,
    output wire [0:0] out_memdep_14220_atax_avm_enable,
    output wire [0:0] out_memdep_14220_atax_avm_read,
    output wire [0:0] out_memdep_14220_atax_avm_write,
    output wire [31:0] out_memdep_14220_atax_avm_writedata,
    output wire [3:0] out_memdep_14220_atax_avm_byteenable,
    output wire [0:0] out_memdep_14220_atax_avm_burstcount,
    input wire [0:0] in_feedback_in_20,
    output wire [0:0] out_feedback_stall_out_20,
    input wire [0:0] in_feedback_valid_in_20,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe21712,
    input wire [31:0] in_c0_exe31723,
    input wire [0:0] in_c0_exe51744,
    input wire [63:0] in_c0_exe61755,
    input wire [0:0] in_c0_exe71766,
    input wire [0:0] in_c0_exe81777,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_atax14_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax14_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax14_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax14_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax14_atax_avm_address,
    output wire [0:0] out_unnamed_atax14_atax_avm_enable,
    output wire [0:0] out_unnamed_atax14_atax_avm_read,
    output wire [0:0] out_unnamed_atax14_atax_avm_write,
    output wire [31:0] out_unnamed_atax14_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax14_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax14_atax_avm_burstcount,
    output wire [31:0] out_c0_exe1185,
    output wire [63:0] out_c0_exe21712,
    output wire [0:0] out_c0_exe71766,
    output wire [0:0] out_c0_exe81777,
    output wire [0:0] out_memdep_phi_pop20,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_c0_exit184_1_tpl;
    wire [65:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] redist1_stall_entry_o6_9_fifo_valid_in;
    wire redist1_stall_entry_o6_9_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_stall_entry_o6_9_fifo_stall_in;
    wire redist1_stall_entry_o6_9_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist1_stall_entry_o6_9_fifo_data_in;
    wire [0:0] redist1_stall_entry_o6_9_fifo_valid_out;
    wire redist1_stall_entry_o6_9_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_stall_entry_o6_9_fifo_stall_out;
    wire redist1_stall_entry_o6_9_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist1_stall_entry_o6_9_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [65:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [65:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_b;
    wire [162:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_b;
    wire [0:0] bubble_join_redist1_stall_entry_o6_9_fifo_q;
    wire [0:0] bubble_select_redist1_stall_entry_o6_9_fifo_b;
    wire [65:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [65:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_out_redist1_stall_entry_o6_9_fifo_wireValid;
    wire [0:0] SE_out_redist1_stall_entry_o6_9_fifo_and0;
    wire [0:0] SE_out_redist1_stall_entry_o6_9_fifo_backStall;
    wire [0:0] SE_out_redist1_stall_entry_o6_9_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] bubble_out_stall_entry_1_reg_valid_in;
    wire bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_stall_in;
    wire bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_valid_out;
    wire bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_stall_out;
    wire bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;


    // bubble_join_stall_entry(BITJOIN,39)
    assign bubble_join_stall_entry_q = {in_c0_exe81777, in_c0_exe71766, in_c0_exe61755, in_c0_exe51744, in_c0_exe31723, in_c0_exe21712};

    // bubble_select_stall_entry(BITSELECT,40)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:96]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[160:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:161]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[162:162]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_0(BITJOIN,30)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_g, bubble_select_stall_entry_f, bubble_select_stall_entry_b};

    // coalesced_delay_0_fifo(STALLFIFO,33)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_V3;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(11),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(66),
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

    // bubble_join_redist1_stall_entry_o6_9_fifo(BITJOIN,48)
    assign bubble_join_redist1_stall_entry_o6_9_fifo_q = redist1_stall_entry_o6_9_fifo_data_out;

    // bubble_select_redist1_stall_entry_o6_9_fifo(BITSELECT,49)
    assign bubble_select_redist1_stall_entry_o6_9_fifo_b = $unsigned(bubble_join_redist1_stall_entry_o6_9_fifo_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0(BLACKBOX,10)@9
    // in in_stall_in@20000000
    // out out_data_out@10
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@10
    atax_i_llvm_fpga_pop_i1_memdep_phi_pop20_0 thei_llvm_fpga_pop_i1_memdep_phi_pop20_atax0 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist1_stall_entry_o6_9_fifo_b),
        .in_feedback_in_20(in_feedback_in_20),
        .in_feedback_valid_in_20(in_feedback_valid_in_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_coalesced_delay_0_fifo_backStall),
        .in_valid_in(SE_out_redist1_stall_entry_o6_9_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_stall_entry_o6_9_fifo(STALLENABLE,62)
    // Valid signal propagation
    assign SE_out_redist1_stall_entry_o6_9_fifo_V0 = SE_out_redist1_stall_entry_o6_9_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist1_stall_entry_o6_9_fifo_backStall = i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_stall_out | ~ (SE_out_redist1_stall_entry_o6_9_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist1_stall_entry_o6_9_fifo_and0 = redist1_stall_entry_o6_9_fifo_valid_out;
    assign SE_out_redist1_stall_entry_o6_9_fifo_wireValid = bubble_out_stall_entry_1_reg_valid_out & SE_out_redist1_stall_entry_o6_9_fifo_and0;

    // redist1_stall_entry_o6_9_fifo(STALLFIFO,32)
    assign redist1_stall_entry_o6_9_fifo_valid_in = SE_stall_entry_V2;
    assign redist1_stall_entry_o6_9_fifo_stall_in = SE_out_redist1_stall_entry_o6_9_fifo_backStall;
    assign redist1_stall_entry_o6_9_fifo_data_in = bubble_select_stall_entry_d;
    assign redist1_stall_entry_o6_9_fifo_valid_in_bitsignaltemp = redist1_stall_entry_o6_9_fifo_valid_in[0];
    assign redist1_stall_entry_o6_9_fifo_stall_in_bitsignaltemp = redist1_stall_entry_o6_9_fifo_stall_in[0];
    assign redist1_stall_entry_o6_9_fifo_valid_out[0] = redist1_stall_entry_o6_9_fifo_valid_out_bitsignaltemp;
    assign redist1_stall_entry_o6_9_fifo_stall_out[0] = redist1_stall_entry_o6_9_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(10),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist1_stall_entry_o6_9_fifo (
        .valid_in(redist1_stall_entry_o6_9_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_stall_entry_o6_9_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_d),
        .valid_out(redist1_stall_entry_o6_9_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_stall_entry_o6_9_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_stall_entry_o6_9_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_1_reg(STALLFIFO,93)
    assign bubble_out_stall_entry_1_reg_valid_in = SE_stall_entry_V0;
    assign bubble_out_stall_entry_1_reg_stall_in = SE_out_redist1_stall_entry_o6_9_fifo_backStall;
    assign bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_1_reg_valid_in[0];
    assign bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_1_reg_stall_in[0];
    assign bubble_out_stall_entry_1_reg_valid_out[0] = bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_stall_out[0] = bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(10),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_1_reg (
        .valid_in(bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (bubble_out_stall_entry_1_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (redist1_stall_entry_o6_9_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (coalesced_delay_0_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed3 & SE_stall_entry_or2);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,64)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_valid_out & SE_out_coalesced_delay_0_fifo_and1;

    // i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x(BLACKBOX,24)@0
    // in in_i_stall@20000000
    // out out_memdep_14220_atax_avm_address@20000000
    // out out_memdep_14220_atax_avm_burstcount@20000000
    // out out_memdep_14220_atax_avm_byteenable@20000000
    // out out_memdep_14220_atax_avm_enable@20000000
    // out out_memdep_14220_atax_avm_read@20000000
    // out out_memdep_14220_atax_avm_write@20000000
    // out out_memdep_14220_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_unnamed_atax14_atax_avm_address@20000000
    // out out_unnamed_atax14_atax_avm_burstcount@20000000
    // out out_unnamed_atax14_atax_avm_byteenable@20000000
    // out out_unnamed_atax14_atax_avm_enable@20000000
    // out out_unnamed_atax14_atax_avm_read@20000000
    // out out_unnamed_atax14_atax_avm_write@20000000
    // out out_unnamed_atax14_atax_avm_writedata@20000000
    // out out_c0_exit184_0_tpl@10
    // out out_c0_exit184_1_tpl@10
    atax_i_sfc_s_c0_in_for_inc40_s_c0_enter180_atax3 thei_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_memdep_14220_atax_avm_readdata(in_memdep_14220_atax_avm_readdata),
        .in_memdep_14220_atax_avm_readdatavalid(in_memdep_14220_atax_avm_readdatavalid),
        .in_memdep_14220_atax_avm_waitrequest(in_memdep_14220_atax_avm_waitrequest),
        .in_memdep_14220_atax_avm_writeack(in_memdep_14220_atax_avm_writeack),
        .in_unnamed_atax14_atax_avm_readdata(in_unnamed_atax14_atax_avm_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(in_unnamed_atax14_atax_avm_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(in_unnamed_atax14_atax_avm_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(in_unnamed_atax14_atax_avm_writeack),
        .in_c0_eni2179_0_tpl(GND_q),
        .in_c0_eni2179_1_tpl(bubble_select_stall_entry_c),
        .in_c0_eni2179_2_tpl(bubble_select_stall_entry_e),
        .out_memdep_14220_atax_avm_address(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_address),
        .out_memdep_14220_atax_avm_burstcount(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_burstcount),
        .out_memdep_14220_atax_avm_byteenable(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_byteenable),
        .out_memdep_14220_atax_avm_enable(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_enable),
        .out_memdep_14220_atax_avm_read(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_read),
        .out_memdep_14220_atax_avm_write(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_write),
        .out_memdep_14220_atax_avm_writedata(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_o_valid),
        .out_unnamed_atax14_atax_avm_address(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_address),
        .out_unnamed_atax14_atax_avm_burstcount(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_burstcount),
        .out_unnamed_atax14_atax_avm_byteenable(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_byteenable),
        .out_unnamed_atax14_atax_avm_enable(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_enable),
        .out_unnamed_atax14_atax_avm_read(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_read),
        .out_unnamed_atax14_atax_avm_write(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_write),
        .out_unnamed_atax14_atax_avm_writedata(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_writedata),
        .out_c0_exit184_0_tpl(),
        .out_c0_exit184_1_tpl(i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_c0_exit184_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_memdep_14220_atax_avm_address = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_address;
    assign out_memdep_14220_atax_avm_enable = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_enable;
    assign out_memdep_14220_atax_avm_read = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_read;
    assign out_memdep_14220_atax_avm_write = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_write;
    assign out_memdep_14220_atax_avm_writedata = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_writedata;
    assign out_memdep_14220_atax_avm_byteenable = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_byteenable;
    assign out_memdep_14220_atax_avm_burstcount = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_memdep_14220_atax_avm_burstcount;

    // feedback_stall_out_20_sync(GPOUT,8)
    assign out_feedback_stall_out_20 = i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_feedback_stall_out_20;

    // sync_out(GPOUT,19)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,22)
    assign out_unnamed_atax14_atax_avm_address = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_address;
    assign out_unnamed_atax14_atax_avm_enable = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_enable;
    assign out_unnamed_atax14_atax_avm_read = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_read;
    assign out_unnamed_atax14_atax_avm_write = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_write;
    assign out_unnamed_atax14_atax_avm_writedata = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_writedata;
    assign out_unnamed_atax14_atax_avm_byteenable = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_byteenable;
    assign out_unnamed_atax14_atax_avm_burstcount = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_unnamed_atax14_atax_avm_burstcount;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0(BITJOIN,35)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_q = i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0(BITSELECT,36)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,51)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,52)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[65:0]);

    // sel_for_coalesced_delay_0(BITSELECT,31)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[64:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[65:65]);

    // bubble_join_i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x(BITJOIN,44)
    assign bubble_join_i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_q = i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_out_c0_exit184_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x(BITSELECT,45)
    assign bubble_select_i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,23)@10
    assign out_c0_exe1185 = bubble_select_i_sfc_s_c0_in_for_inc40_ataxs_c0_enter180_atax3_aunroll_x_b;
    assign out_c0_exe21712 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe71766 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe81777 = sel_for_coalesced_delay_0_d;
    assign out_memdep_phi_pop20 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_atax0_b;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
