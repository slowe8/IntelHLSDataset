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

// SystemVerilog created from atax_bb_B8
// SystemVerilog created on Thu Feb 29 00:23:26 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B8 (
    input wire [0:0] in_feedback_almost_empty_in_20,
    input wire [0:0] in_feedback_data_in_20,
    input wire [0:0] in_feedback_empty_in_20,
    output wire [0:0] out_feedback_stall_out_20,
    input wire [63:0] in_c0_exe11502_0,
    input wire [31:0] in_c0_exe21513_0,
    input wire [0:0] in_c0_exe51544_0,
    input wire [63:0] in_c0_exe61555_0,
    input wire [0:0] in_c0_exe76_0,
    input wire [0:0] in_c0_exe87_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_5_atax_avm_readdata,
    input wire [0:0] in_memdep_5_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_5_atax_avm_waitrequest,
    input wire [0:0] in_memdep_5_atax_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe11502,
    output wire [31:0] out_c0_exe21513,
    output wire [0:0] out_c0_exe76,
    output wire [0:0] out_c0_exe87,
    output wire [31:0] out_memdep_5_atax_avm_address,
    output wire [0:0] out_memdep_5_atax_avm_burstcount,
    output wire [3:0] out_memdep_5_atax_avm_byteenable,
    output wire [0:0] out_memdep_5_atax_avm_enable,
    output wire [0:0] out_memdep_5_atax_avm_read,
    output wire [0:0] out_memdep_5_atax_avm_write,
    output wire [31:0] out_memdep_5_atax_avm_writedata,
    output wire [0:0] out_memdep_phi_pop20,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B8_branch_out_c0_exe11502;
    wire [31:0] atax_B8_branch_out_c0_exe21513;
    wire [0:0] atax_B8_branch_out_c0_exe76;
    wire [0:0] atax_B8_branch_out_c0_exe87;
    wire [0:0] atax_B8_branch_out_memdep_phi_pop20;
    wire [0:0] atax_B8_branch_out_stall_out;
    wire [0:0] atax_B8_branch_out_valid_out_0;
    wire [0:0] atax_B8_merge_out_almost_empty_out;
    wire [63:0] atax_B8_merge_out_c0_exe11502;
    wire [31:0] atax_B8_merge_out_c0_exe21513;
    wire [0:0] atax_B8_merge_out_c0_exe51544;
    wire [63:0] atax_B8_merge_out_c0_exe61555;
    wire [0:0] atax_B8_merge_out_c0_exe76;
    wire [0:0] atax_B8_merge_out_c0_exe87;
    wire [0:0] atax_B8_merge_out_empty_out;
    wire [0:0] atax_B8_merge_out_stall_out_0;
    wire [0:0] atax_B8_merge_out_valid_out;
    wire [0:0] bb_atax_B8_stall_region_out_almost_empty_out;
    wire [63:0] bb_atax_B8_stall_region_out_c0_exe11502;
    wire [31:0] bb_atax_B8_stall_region_out_c0_exe21513;
    wire [0:0] bb_atax_B8_stall_region_out_c0_exe76;
    wire [0:0] bb_atax_B8_stall_region_out_c0_exe87;
    wire [0:0] bb_atax_B8_stall_region_out_empty_out;
    wire [0:0] bb_atax_B8_stall_region_out_feedback_stall_out_20;
    wire [31:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_address;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_burstcount;
    wire [3:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_byteenable;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_enable;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_read;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_write;
    wire [31:0] bb_atax_B8_stall_region_out_memdep_5_atax_avm_writedata;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_phi_pop20;
    wire [0:0] bb_atax_B8_stall_region_out_stall_out;
    wire [0:0] bb_atax_B8_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // atax_B8_branch(BLACKBOX,2)
    atax_B8_branch theatax_B8_branch (
        .in_almost_empty_in(bb_atax_B8_stall_region_out_almost_empty_out),
        .in_c0_exe11502(bb_atax_B8_stall_region_out_c0_exe11502),
        .in_c0_exe21513(bb_atax_B8_stall_region_out_c0_exe21513),
        .in_c0_exe76(bb_atax_B8_stall_region_out_c0_exe76),
        .in_c0_exe87(bb_atax_B8_stall_region_out_c0_exe87),
        .in_empty_in(bb_atax_B8_stall_region_out_empty_out),
        .in_memdep_phi_pop20(bb_atax_B8_stall_region_out_memdep_phi_pop20),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B8_stall_region_out_valid_out),
        .out_c0_exe11502(atax_B8_branch_out_c0_exe11502),
        .out_c0_exe21513(atax_B8_branch_out_c0_exe21513),
        .out_c0_exe76(atax_B8_branch_out_c0_exe76),
        .out_c0_exe87(atax_B8_branch_out_c0_exe87),
        .out_memdep_phi_pop20(atax_B8_branch_out_memdep_phi_pop20),
        .out_stall_out(atax_B8_branch_out_stall_out),
        .out_valid_out_0(atax_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B8_merge(BLACKBOX,3)
    atax_B8_merge theatax_B8_merge (
        .in_c0_exe11502_0(in_c0_exe11502_0),
        .in_c0_exe21513_0(in_c0_exe21513_0),
        .in_c0_exe51544_0(in_c0_exe51544_0),
        .in_c0_exe61555_0(in_c0_exe61555_0),
        .in_c0_exe76_0(in_c0_exe76_0),
        .in_c0_exe87_0(in_c0_exe87_0),
        .in_stall_in(bb_atax_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(atax_B8_merge_out_almost_empty_out),
        .out_c0_exe11502(atax_B8_merge_out_c0_exe11502),
        .out_c0_exe21513(atax_B8_merge_out_c0_exe21513),
        .out_c0_exe51544(atax_B8_merge_out_c0_exe51544),
        .out_c0_exe61555(atax_B8_merge_out_c0_exe61555),
        .out_c0_exe76(atax_B8_merge_out_c0_exe76),
        .out_c0_exe87(atax_B8_merge_out_c0_exe87),
        .out_empty_out(atax_B8_merge_out_empty_out),
        .out_stall_out_0(atax_B8_merge_out_stall_out_0),
        .out_valid_out(atax_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B8_stall_region(BLACKBOX,4)
    atax_bb_B8_stall_region thebb_atax_B8_stall_region (
        .in_almost_empty_in(atax_B8_merge_out_almost_empty_out),
        .in_c0_exe11502(atax_B8_merge_out_c0_exe11502),
        .in_c0_exe21513(atax_B8_merge_out_c0_exe21513),
        .in_c0_exe51544(atax_B8_merge_out_c0_exe51544),
        .in_c0_exe61555(atax_B8_merge_out_c0_exe61555),
        .in_c0_exe76(atax_B8_merge_out_c0_exe76),
        .in_c0_exe87(atax_B8_merge_out_c0_exe87),
        .in_empty_in(atax_B8_merge_out_empty_out),
        .in_feedback_almost_empty_in_20(in_feedback_almost_empty_in_20),
        .in_feedback_data_in_20(in_feedback_data_in_20),
        .in_feedback_empty_in_20(in_feedback_empty_in_20),
        .in_flush(in_flush),
        .in_memdep_5_atax_avm_readdata(in_memdep_5_atax_avm_readdata),
        .in_memdep_5_atax_avm_readdatavalid(in_memdep_5_atax_avm_readdatavalid),
        .in_memdep_5_atax_avm_waitrequest(in_memdep_5_atax_avm_waitrequest),
        .in_memdep_5_atax_avm_writeack(in_memdep_5_atax_avm_writeack),
        .in_stall_in(atax_B8_branch_out_stall_out),
        .in_valid_in(atax_B8_merge_out_valid_out),
        .out_almost_empty_out(bb_atax_B8_stall_region_out_almost_empty_out),
        .out_c0_exe11502(bb_atax_B8_stall_region_out_c0_exe11502),
        .out_c0_exe21513(bb_atax_B8_stall_region_out_c0_exe21513),
        .out_c0_exe76(bb_atax_B8_stall_region_out_c0_exe76),
        .out_c0_exe87(bb_atax_B8_stall_region_out_c0_exe87),
        .out_empty_out(bb_atax_B8_stall_region_out_empty_out),
        .out_feedback_stall_out_20(bb_atax_B8_stall_region_out_feedback_stall_out_20),
        .out_memdep_5_atax_avm_address(bb_atax_B8_stall_region_out_memdep_5_atax_avm_address),
        .out_memdep_5_atax_avm_burstcount(bb_atax_B8_stall_region_out_memdep_5_atax_avm_burstcount),
        .out_memdep_5_atax_avm_byteenable(bb_atax_B8_stall_region_out_memdep_5_atax_avm_byteenable),
        .out_memdep_5_atax_avm_enable(bb_atax_B8_stall_region_out_memdep_5_atax_avm_enable),
        .out_memdep_5_atax_avm_read(bb_atax_B8_stall_region_out_memdep_5_atax_avm_read),
        .out_memdep_5_atax_avm_write(bb_atax_B8_stall_region_out_memdep_5_atax_avm_write),
        .out_memdep_5_atax_avm_writedata(bb_atax_B8_stall_region_out_memdep_5_atax_avm_writedata),
        .out_memdep_phi_pop20(bb_atax_B8_stall_region_out_memdep_phi_pop20),
        .out_stall_out(bb_atax_B8_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_20_sync(GPOUT,8)
    assign out_feedback_stall_out_20 = bb_atax_B8_stall_region_out_feedback_stall_out_20;

    // out_c0_exe11502(GPOUT,22)
    assign out_c0_exe11502 = atax_B8_branch_out_c0_exe11502;

    // out_c0_exe21513(GPOUT,23)
    assign out_c0_exe21513 = atax_B8_branch_out_c0_exe21513;

    // out_c0_exe76(GPOUT,24)
    assign out_c0_exe76 = atax_B8_branch_out_c0_exe76;

    // out_c0_exe87(GPOUT,25)
    assign out_c0_exe87 = atax_B8_branch_out_c0_exe87;

    // out_memdep_5_atax_avm_address(GPOUT,26)
    assign out_memdep_5_atax_avm_address = bb_atax_B8_stall_region_out_memdep_5_atax_avm_address;

    // out_memdep_5_atax_avm_burstcount(GPOUT,27)
    assign out_memdep_5_atax_avm_burstcount = bb_atax_B8_stall_region_out_memdep_5_atax_avm_burstcount;

    // out_memdep_5_atax_avm_byteenable(GPOUT,28)
    assign out_memdep_5_atax_avm_byteenable = bb_atax_B8_stall_region_out_memdep_5_atax_avm_byteenable;

    // out_memdep_5_atax_avm_enable(GPOUT,29)
    assign out_memdep_5_atax_avm_enable = bb_atax_B8_stall_region_out_memdep_5_atax_avm_enable;

    // out_memdep_5_atax_avm_read(GPOUT,30)
    assign out_memdep_5_atax_avm_read = bb_atax_B8_stall_region_out_memdep_5_atax_avm_read;

    // out_memdep_5_atax_avm_write(GPOUT,31)
    assign out_memdep_5_atax_avm_write = bb_atax_B8_stall_region_out_memdep_5_atax_avm_write;

    // out_memdep_5_atax_avm_writedata(GPOUT,32)
    assign out_memdep_5_atax_avm_writedata = bb_atax_B8_stall_region_out_memdep_5_atax_avm_writedata;

    // out_memdep_phi_pop20(GPOUT,33)
    assign out_memdep_phi_pop20 = atax_B8_branch_out_memdep_phi_pop20;

    // out_stall_out_0(GPOUT,34)
    assign out_stall_out_0 = atax_B8_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = atax_B8_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,36)
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
