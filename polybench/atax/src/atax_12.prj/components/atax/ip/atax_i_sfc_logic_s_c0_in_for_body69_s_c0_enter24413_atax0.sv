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

// SystemVerilog created from atax_i_sfc_logic_s_c0_in_for_body69_s_c0_enter24413_atax0
// SystemVerilog created on Wed Dec 13 00:14:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body69_s_c0_enter24413_atax0 (
    input wire [255:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write,
    output wire [255:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_c0_exi8254_0_tpl,
    output wire [31:0] out_c0_exi8254_1_tpl,
    output wire [31:0] out_c0_exi8254_2_tpl,
    output wire [31:0] out_c0_exi8254_3_tpl,
    output wire [31:0] out_c0_exi8254_4_tpl,
    output wire [31:0] out_c0_exi8254_5_tpl,
    output wire [31:0] out_c0_exi8254_6_tpl,
    output wire [31:0] out_c0_exi8254_7_tpl,
    output wire [31:0] out_c0_exi8254_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c0_eni2243_0_tpl,
    input wire [63:0] in_c0_eni2243_1_tpl,
    input wire [0:0] in_c0_eni2243_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write;
    wire [255:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_3_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_4_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_5_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_6_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_7_tpl;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    reg [0:0] redist0_valid_fanout_reg0_q_4_q;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_0;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_1;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_2;
    reg [63:0] redist1_sync_together10_aunroll_x_in_c0_eni2243_1_tpl_1_q;
    reg [0:0] redist2_sync_together10_aunroll_x_in_c0_eni2243_2_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,11)@2 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist2_sync_together10_aunroll_x_in_c0_eni2243_2_tpl_1(DELAY,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together10_aunroll_x_in_c0_eni2243_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together10_aunroll_x_in_c0_eni2243_2_tpl_1_q <= $unsigned(in_c0_eni2243_2_tpl);
        end
    end

    // redist1_sync_together10_aunroll_x_in_c0_eni2243_1_tpl_1(DELAY,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together10_aunroll_x_in_c0_eni2243_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together10_aunroll_x_in_c0_eni2243_1_tpl_1_q <= $unsigned(in_c0_eni2243_1_tpl);
        end
    end

    // i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x(BLACKBOX,7)@3
    // in in_i_stall@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write@20000000
    // out out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata@20000000
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_o_readdata_0_tpl@7
    // out out_o_readdata_1_tpl@7
    // out out_o_readdata_2_tpl@7
    // out out_o_readdata_3_tpl@7
    // out out_o_readdata_4_tpl@7
    // out out_o_readdata_5_tpl@7
    // out out_o_readdata_6_tpl@7
    // out out_o_readdata_7_tpl@7
    atax_i_llvm_fpga_mem_memcoalesce_load_fpgaunique_2610_atax0 thei_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(redist1_sync_together10_aunroll_x_in_c0_eni2243_1_tpl_1_q),
        .in_i_predicate(redist2_sync_together10_aunroll_x_in_c0_eni2243_2_tpl_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_3_tpl),
        .out_o_readdata_4_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_4_tpl),
        .out_o_readdata_5_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_5_tpl),
        .out_o_readdata_6_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_6_tpl),
        .out_o_readdata_7_tpl(i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,4)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable;
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount;

    // valid_fanout_reg0(REG,10)@2 + 1
    always @ (posedge clock or negedge resetn)
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

    // redist0_valid_fanout_reg0_q_4(DELAY,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_4_delay_0 <= '0;
            redist0_valid_fanout_reg0_q_4_delay_1 <= '0;
            redist0_valid_fanout_reg0_q_4_delay_2 <= '0;
            redist0_valid_fanout_reg0_q_4_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_4_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist0_valid_fanout_reg0_q_4_delay_1 <= redist0_valid_fanout_reg0_q_4_delay_0;
            redist0_valid_fanout_reg0_q_4_delay_2 <= redist0_valid_fanout_reg0_q_4_delay_1;
            redist0_valid_fanout_reg0_q_4_q <= redist0_valid_fanout_reg0_q_4_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,8)@7
    assign out_c0_exi8254_0_tpl = GND_q;
    assign out_c0_exi8254_1_tpl = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_0_tpl;
    assign out_c0_exi8254_2_tpl = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_1_tpl;
    assign out_c0_exi8254_3_tpl = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_2_tpl;
    assign out_c0_exi8254_4_tpl = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_3_tpl;
    assign out_c0_exi8254_5_tpl = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_4_tpl;
    assign out_c0_exi8254_6_tpl = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_5_tpl;
    assign out_c0_exi8254_7_tpl = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_6_tpl;
    assign out_c0_exi8254_8_tpl = i_llvm_fpga_mem_memcoalesce_load_atax_fpgaunique_2610_atax3_aunroll_x_out_o_readdata_7_tpl;
    assign out_o_valid = redist0_valid_fanout_reg0_q_4_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
