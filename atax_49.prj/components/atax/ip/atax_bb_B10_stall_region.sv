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

// SystemVerilog created from atax_bb_B10_stall_region
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B10_stall_region (
    output wire [0:0] out_feedback_almost_empty_out_20,
    output wire [0:0] out_feedback_data_out_20,
    output wire [0:0] out_feedback_empty_out_20,
    input wire [0:0] in_feedback_stall_in_20,
    input wire [0:0] in_c0_exe41849,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe11818,
    input wire [0:0] in_c0_exe518510,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe518510,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_feedback_almost_empty_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_feedback_data_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_feedback_empty_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_valid_out;
    wire [1:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_atax0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_atax0_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V4;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V3;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V5;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] stall_entry_o4_reg1_q;
    reg [0:0] stall_entry_o4_reg0_q;
    reg [0:0] stall_entry_o5_reg1_q;
    reg [0:0] stall_entry_o5_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_almost_empty_out_reg0(REG,36)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_almost_empty_out_reg1(REG,35)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_almost_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_empty_out_reg0(REG,38)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_empty_out);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_empty_out_reg1(REG,37)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_valid_out_reg0(REG,40)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_valid_out);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_valid_out_reg1(REG,39)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_valid_out_reg0_q);
        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_atax0(STALLENABLE,23)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_atax0_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i1_memdep_phi_push20_atax0_in_stall_in_reg0(REG,33)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi_push20_atax0_in_stall_in_reg0_q <= $unsigned(SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_atax0_backStall);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push20_atax0_in_stall_in_reg1(REG,34)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi_push20_atax0_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_in_stall_in_reg0_q);
        end
    end

    // stall_entry_o5_reg0(REG,52)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_c0_exe518510);
        end
    end

    // stall_entry_o5_reg1(REG,51)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg1_q <= $unsigned(stall_entry_o5_reg0_q);
        end
    end

    // stall_entry_o4_reg0(REG,50)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_c0_exe11818);
        end
    end

    // stall_entry_o4_reg1(REG,49)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg1_q <= $unsigned(stall_entry_o4_reg0_q);
        end
    end

    // bubble_join_stall_entry(BITJOIN,19)
    assign bubble_join_stall_entry_q = {stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,20)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);

    // stall_entry_frontAlmostEmpty_reg0(REG,48)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,47)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,46)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,45)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,44)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,43)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,32)
    // Desync
    assign merged_in_SE_bubble_join_stall_entry_temp_back_stall = i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_stall_out | in_stall_in;
    assign merged_in_SE_bubble_join_stall_entry_backStall = merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V4 = stall_entry_frontAlmostEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = merged_in_SE_bubble_join_stall_entry_V0;
    assign merged_in_SE_bubble_join_stall_entry_V3 = merged_in_SE_bubble_join_stall_entry_V2;
    assign merged_in_SE_bubble_join_stall_entry_V5 = merged_in_SE_bubble_join_stall_entry_V4;

    // i_llvm_fpga_push_i1_memdep_phi_push20_atax0(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_almost_empty_out@17
    // out out_data_out@17
    // out out_empty_out@17
    // out out_feedback_almost_empty_out_20@20000000
    // out out_feedback_data_out_20@20000000
    // out out_feedback_empty_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@17
    atax_i_llvm_fpga_push_i1_memdep_phi_push20_0 thei_llvm_fpga_push_i1_memdep_phi_push20_atax0 (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V4),
        .in_data_in(bubble_select_stall_entry_b),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_feedback_stall_in_20(in_feedback_stall_in_20),
        .in_stall_in(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_join_stall_entry_V0),
        .out_almost_empty_out(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_empty_out),
        .out_feedback_almost_empty_out_20(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_feedback_almost_empty_out_20),
        .out_feedback_data_out_20(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_feedback_data_out_20),
        .out_feedback_empty_out_20(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_feedback_empty_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_almost_empty_out_20_sync(GPOUT,4)
    assign out_feedback_almost_empty_out_20 = i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_feedback_almost_empty_out_20;

    // feedback_data_out_20_sync(GPOUT,5)
    assign out_feedback_data_out_20 = i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_feedback_data_out_20;

    // feedback_empty_out_20_sync(GPOUT,6)
    assign out_feedback_empty_out_20 = i_llvm_fpga_push_i1_memdep_phi_push20_atax0_out_feedback_empty_out_20;

    // stall_entry_frontStall_reg0(REG,41)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_bubble_join_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,42)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,15)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_sync_out_x(GPOUT,17)@0
    assign out_almost_empty_out = merged_in_SE_bubble_join_stall_entry_V5;
    assign out_c0_exe518510 = bubble_select_stall_entry_c;
    assign out_empty_out = merged_in_SE_bubble_join_stall_entry_V3;
    assign out_valid_out = merged_in_SE_bubble_join_stall_entry_V1;

    // rst_sync(RESETSYNC,53)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
