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

// SystemVerilog created from atax_i_sfc_logic_s_c1_in_for_body9_s_c1_enter_atax0
// SystemVerilog created on Wed Dec 13 00:14:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c1_in_for_body9_s_c1_enter_atax0 (
    input wire [255:0] in_memdep_6_atax_avm_readdata,
    input wire [0:0] in_memdep_6_atax_avm_writeack,
    input wire [0:0] in_memdep_6_atax_avm_waitrequest,
    input wire [0:0] in_memdep_6_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_6_atax_avm_address,
    output wire [0:0] out_memdep_6_atax_avm_enable,
    output wire [0:0] out_memdep_6_atax_avm_read,
    output wire [0:0] out_memdep_6_atax_avm_write,
    output wire [255:0] out_memdep_6_atax_avm_writedata,
    output wire [31:0] out_memdep_6_atax_avm_byteenable,
    output wire [0:0] out_memdep_6_atax_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    output wire [0:0] out_unnamed_atax15_0_tpl,
    input wire [0:0] in_c1_eni10_0_tpl,
    input wire [31:0] in_c1_eni10_1_tpl,
    input wire [31:0] in_c1_eni10_2_tpl,
    input wire [31:0] in_c1_eni10_3_tpl,
    input wire [31:0] in_c1_eni10_4_tpl,
    input wire [31:0] in_c1_eni10_5_tpl,
    input wire [31:0] in_c1_eni10_6_tpl,
    input wire [31:0] in_c1_eni10_7_tpl,
    input wire [31:0] in_c1_eni10_8_tpl,
    input wire [63:0] in_c1_eni10_9_tpl,
    input wire [0:0] in_c1_eni10_10_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_burstcount;
    wire [31:0] i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_write;
    wire [255:0] i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_writedata;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    reg [31:0] redist0_sync_together9_aunroll_x_in_c1_eni10_1_tpl_1_q;
    reg [31:0] redist1_sync_together9_aunroll_x_in_c1_eni10_2_tpl_1_q;
    reg [31:0] redist2_sync_together9_aunroll_x_in_c1_eni10_3_tpl_1_q;
    reg [31:0] redist3_sync_together9_aunroll_x_in_c1_eni10_4_tpl_1_q;
    reg [31:0] redist4_sync_together9_aunroll_x_in_c1_eni10_5_tpl_1_q;
    reg [31:0] redist5_sync_together9_aunroll_x_in_c1_eni10_6_tpl_1_q;
    reg [31:0] redist6_sync_together9_aunroll_x_in_c1_eni10_7_tpl_1_q;
    reg [31:0] redist7_sync_together9_aunroll_x_in_c1_eni10_8_tpl_1_q;
    reg [63:0] redist8_sync_together9_aunroll_x_in_c1_eni10_9_tpl_1_q;
    reg [0:0] redist9_sync_together9_aunroll_x_in_c1_eni10_10_tpl_1_q;
    reg [0:0] redist10_sync_together9_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together9_aunroll_x_in_c1_eni10_8_tpl_1(DELAY,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together9_aunroll_x_in_c1_eni10_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together9_aunroll_x_in_c1_eni10_8_tpl_1_q <= $unsigned(in_c1_eni10_8_tpl);
        end
    end

    // redist6_sync_together9_aunroll_x_in_c1_eni10_7_tpl_1(DELAY,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together9_aunroll_x_in_c1_eni10_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together9_aunroll_x_in_c1_eni10_7_tpl_1_q <= $unsigned(in_c1_eni10_7_tpl);
        end
    end

    // redist5_sync_together9_aunroll_x_in_c1_eni10_6_tpl_1(DELAY,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together9_aunroll_x_in_c1_eni10_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together9_aunroll_x_in_c1_eni10_6_tpl_1_q <= $unsigned(in_c1_eni10_6_tpl);
        end
    end

    // redist4_sync_together9_aunroll_x_in_c1_eni10_5_tpl_1(DELAY,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together9_aunroll_x_in_c1_eni10_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together9_aunroll_x_in_c1_eni10_5_tpl_1_q <= $unsigned(in_c1_eni10_5_tpl);
        end
    end

    // redist3_sync_together9_aunroll_x_in_c1_eni10_4_tpl_1(DELAY,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together9_aunroll_x_in_c1_eni10_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together9_aunroll_x_in_c1_eni10_4_tpl_1_q <= $unsigned(in_c1_eni10_4_tpl);
        end
    end

    // redist2_sync_together9_aunroll_x_in_c1_eni10_3_tpl_1(DELAY,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together9_aunroll_x_in_c1_eni10_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together9_aunroll_x_in_c1_eni10_3_tpl_1_q <= $unsigned(in_c1_eni10_3_tpl);
        end
    end

    // redist1_sync_together9_aunroll_x_in_c1_eni10_2_tpl_1(DELAY,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together9_aunroll_x_in_c1_eni10_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together9_aunroll_x_in_c1_eni10_2_tpl_1_q <= $unsigned(in_c1_eni10_2_tpl);
        end
    end

    // redist0_sync_together9_aunroll_x_in_c1_eni10_1_tpl_1(DELAY,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together9_aunroll_x_in_c1_eni10_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together9_aunroll_x_in_c1_eni10_1_tpl_1_q <= $unsigned(in_c1_eni10_1_tpl);
        end
    end

    // valid_fanout_reg1(REG,11)@34 + 1
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

    // redist9_sync_together9_aunroll_x_in_c1_eni10_10_tpl_1(DELAY,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together9_aunroll_x_in_c1_eni10_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together9_aunroll_x_in_c1_eni10_10_tpl_1_q <= $unsigned(in_c1_eni10_10_tpl);
        end
    end

    // redist8_sync_together9_aunroll_x_in_c1_eni10_9_tpl_1(DELAY,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together9_aunroll_x_in_c1_eni10_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together9_aunroll_x_in_c1_eni10_9_tpl_1_q <= $unsigned(in_c1_eni10_9_tpl);
        end
    end

    // i_llvm_fpga_mem_memdep_6_atax3_aunroll_x(BLACKBOX,7)@35
    // out out_memdep_6_atax_avm_address@20000000
    // out out_memdep_6_atax_avm_burstcount@20000000
    // out out_memdep_6_atax_avm_byteenable@20000000
    // out out_memdep_6_atax_avm_enable@20000000
    // out out_memdep_6_atax_avm_read@20000000
    // out out_memdep_6_atax_avm_write@20000000
    // out out_memdep_6_atax_avm_writedata@20000000
    // out out_o_stall@36
    // out out_o_valid@36
    // out out_o_writeack@36
    atax_i_llvm_fpga_mem_memdep_6_0 thei_llvm_fpga_mem_memdep_6_atax3_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(redist8_sync_together9_aunroll_x_in_c1_eni10_9_tpl_1_q),
        .in_i_predicate(redist9_sync_together9_aunroll_x_in_c1_eni10_10_tpl_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .in_i_writedata_0_tpl(redist0_sync_together9_aunroll_x_in_c1_eni10_1_tpl_1_q),
        .in_i_writedata_1_tpl(redist1_sync_together9_aunroll_x_in_c1_eni10_2_tpl_1_q),
        .in_i_writedata_2_tpl(redist2_sync_together9_aunroll_x_in_c1_eni10_3_tpl_1_q),
        .in_i_writedata_3_tpl(redist3_sync_together9_aunroll_x_in_c1_eni10_4_tpl_1_q),
        .in_i_writedata_4_tpl(redist4_sync_together9_aunroll_x_in_c1_eni10_5_tpl_1_q),
        .in_i_writedata_5_tpl(redist5_sync_together9_aunroll_x_in_c1_eni10_6_tpl_1_q),
        .in_i_writedata_6_tpl(redist6_sync_together9_aunroll_x_in_c1_eni10_7_tpl_1_q),
        .in_i_writedata_7_tpl(redist7_sync_together9_aunroll_x_in_c1_eni10_8_tpl_1_q),
        .out_memdep_6_atax_avm_address(i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,4)
    assign out_memdep_6_atax_avm_address = i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_address;
    assign out_memdep_6_atax_avm_enable = i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_enable;
    assign out_memdep_6_atax_avm_read = i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_read;
    assign out_memdep_6_atax_avm_write = i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_write;
    assign out_memdep_6_atax_avm_writedata = i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_writedata;
    assign out_memdep_6_atax_avm_byteenable = i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_byteenable;
    assign out_memdep_6_atax_avm_burstcount = i_llvm_fpga_mem_memdep_6_atax3_aunroll_x_out_memdep_6_atax_avm_burstcount;

    // redist10_sync_together9_aunroll_x_in_i_valid_1(DELAY,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together9_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist10_sync_together9_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,10)@35 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist10_sync_together9_aunroll_x_in_i_valid_1_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,8)@36
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;
    assign out_unnamed_atax15_0_tpl = GND_q;

endmodule
