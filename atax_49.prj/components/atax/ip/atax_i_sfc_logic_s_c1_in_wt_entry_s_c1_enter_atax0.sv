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

// SystemVerilog created from atax_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_atax0
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_atax0 (
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax5_0_tpl,
    output wire [0:0] out_unnamed_atax6,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [63:0] in_c1_eni1_1_tpl,
    input wire [63:0] in_c1_eni1_2_tpl,
    input wire [63:0] in_c1_eni1_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024a64f32_unnamed_atax2_atax3_out_intel_reserved_ffwd_0_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax3_atax4_out_intel_reserved_ffwd_1_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_intel_reserved_ffwd_2_0;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    reg [63:0] redist0_sync_together10_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [63:0] redist1_sync_together10_aunroll_x_in_c1_eni1_2_tpl_1_q;
    reg [63:0] redist2_sync_together10_aunroll_x_in_c1_eni1_3_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,15)@76 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // redist0_sync_together10_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,18)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together10_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_p1024a64f32_unnamed_atax2_atax3(BLACKBOX,5)@77
    // out out_intel_reserved_ffwd_0_0@20000000
    atax_i_llvm_fpga_ffwd_source_p1024a64f32_unnamed_2_atax0 thei_llvm_fpga_ffwd_source_p1024a64f32_unnamed_atax2_atax3 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist0_sync_together10_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024a64f32_unnamed_atax2_atax3_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,8)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024a64f32_unnamed_atax2_atax3_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg2(REG,16)@76 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // redist1_sync_together10_aunroll_x_in_c1_eni1_2_tpl_1(DELAY,19)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together10_aunroll_x_in_c1_eni1_2_tpl_1_q <= $unsigned(in_c1_eni1_2_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax3_atax4(BLACKBOX,6)@77
    // out out_intel_reserved_ffwd_1_0@20000000
    atax_i_llvm_fpga_ffwd_source_p1024f32_unnamed_3_atax0 thei_llvm_fpga_ffwd_source_p1024f32_unnamed_atax3_atax4 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(redist1_sync_together10_aunroll_x_in_c1_eni1_2_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax3_atax4_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax3_atax4_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg3(REG,17)@76 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_sync_together10_aunroll_x_in_c1_eni1_3_tpl_1(DELAY,20)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together10_aunroll_x_in_c1_eni1_3_tpl_1_q <= $unsigned(in_c1_eni1_3_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5(BLACKBOX,7)@77
    // out out_intel_reserved_ffwd_2_0@20000000
    atax_i_llvm_fpga_ffwd_source_p1024f32_unnamed_4_atax0 thei_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(redist2_sync_together10_aunroll_x_in_c1_eni1_3_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_p1024f32_unnamed_atax4_atax5_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg0(REG,14)@76 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // sync_out_aunroll_x(GPOUT,12)@77
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax5_0_tpl = GND_q;
    assign out_unnamed_atax6 = GND_q;

endmodule
