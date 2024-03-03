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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_inc44_s_c0_enter158_atax0
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_inc44_s_c0_enter158_atax0 (
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
    input wire [0:0] in_flush,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax13_0_tpl,
    output wire [0:0] out_unnamed_atax6,
    input wire [0:0] in_c0_eni2157_0_tpl,
    input wire [31:0] in_c0_eni2157_1_tpl,
    input wire [63:0] in_c0_eni2157_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_writedata;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    reg [31:0] redist0_sync_together7_aunroll_x_in_c0_eni2157_1_tpl_1_q;
    reg [63:0] redist1_sync_together7_aunroll_x_in_c0_eni2157_2_tpl_1_q;
    reg [0:0] redist2_sync_together7_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together7_aunroll_x_in_c0_eni2157_1_tpl_1(DELAY,13)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together7_aunroll_x_in_c0_eni2157_1_tpl_1_q <= $unsigned(in_c0_eni2157_1_tpl);
        end
    end

    // valid_fanout_reg1(REG,12)@0 + 1
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

    // redist1_sync_together7_aunroll_x_in_c0_eni2157_2_tpl_1(DELAY,14)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together7_aunroll_x_in_c0_eni2157_2_tpl_1_q <= $unsigned(in_c0_eni2157_2_tpl);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memdep_5_atax2(BLACKBOX,6)@1
    // out out_memdep_5_atax_avm_address@20000000
    // out out_memdep_5_atax_avm_burstcount@20000000
    // out out_memdep_5_atax_avm_byteenable@20000000
    // out out_memdep_5_atax_avm_enable@20000000
    // out out_memdep_5_atax_avm_read@20000000
    // out out_memdep_5_atax_avm_write@20000000
    // out out_memdep_5_atax_avm_writedata@20000000
    // out out_o_almost_empty@2
    // out out_o_empty@2
    // out out_o_stall@2
    // out out_o_valid@2
    // out out_o_writeack@2
    atax_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_atax2 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(redist1_sync_together7_aunroll_x_in_c0_eni2157_2_tpl_1_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_i_writedata(redist0_sync_together7_aunroll_x_in_c0_eni2157_1_tpl_1_q),
        .in_memdep_5_atax_avm_readdata(in_memdep_5_atax_avm_readdata),
        .in_memdep_5_atax_avm_readdatavalid(in_memdep_5_atax_avm_readdatavalid),
        .in_memdep_5_atax_avm_waitrequest(in_memdep_5_atax_avm_waitrequest),
        .in_memdep_5_atax_avm_writeack(in_memdep_5_atax_avm_writeack),
        .out_memdep_5_atax_avm_address(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_address),
        .out_memdep_5_atax_avm_burstcount(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_burstcount),
        .out_memdep_5_atax_avm_byteenable(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_byteenable),
        .out_memdep_5_atax_avm_enable(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_enable),
        .out_memdep_5_atax_avm_read(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_read),
        .out_memdep_5_atax_avm_write(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_write),
        .out_memdep_5_atax_avm_writedata(i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_memdep_5_atax_avm_address = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_address;
    assign out_memdep_5_atax_avm_enable = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_enable;
    assign out_memdep_5_atax_avm_read = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_read;
    assign out_memdep_5_atax_avm_write = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_write;
    assign out_memdep_5_atax_avm_writedata = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_writedata;
    assign out_memdep_5_atax_avm_byteenable = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_byteenable;
    assign out_memdep_5_atax_avm_burstcount = i_llvm_fpga_mem_memdep_5_atax2_out_memdep_5_atax_avm_burstcount;

    // redist2_sync_together7_aunroll_x_in_i_valid_1(DELAY,15)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together7_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together7_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,11)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together7_aunroll_x_in_i_valid_1_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,9)@2
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax13_0_tpl = GND_q;
    assign out_unnamed_atax6 = GND_q;

endmodule
