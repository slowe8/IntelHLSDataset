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

// SystemVerilog created from atax_bb_B12
// SystemVerilog created on Wed Dec 13 00:14:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B12 (
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_15_o_active,
    output wire [0:0] out_lsu_memdep_16_o_active,
    output wire [0:0] out_lsu_memdep_18_o_active,
    output wire [0:0] out_lsu_memdep_20_o_active,
    output wire [0:0] out_lsu_memdep_23_o_active,
    output wire [0:0] out_lsu_memdep_27_o_active,
    output wire [0:0] out_lsu_memdep_32_o_active,
    output wire [0:0] out_lsu_memdep_39_o_active,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write,
    output wire [255:0] out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata,
    output wire [63:0] out_memdep_15_atax_avm_address,
    output wire [0:0] out_memdep_15_atax_avm_burstcount,
    output wire [7:0] out_memdep_15_atax_avm_byteenable,
    output wire [0:0] out_memdep_15_atax_avm_enable,
    output wire [0:0] out_memdep_15_atax_avm_read,
    output wire [0:0] out_memdep_15_atax_avm_write,
    output wire [63:0] out_memdep_15_atax_avm_writedata,
    output wire [63:0] out_memdep_16_atax_avm_address,
    output wire [0:0] out_memdep_16_atax_avm_burstcount,
    output wire [7:0] out_memdep_16_atax_avm_byteenable,
    output wire [0:0] out_memdep_16_atax_avm_enable,
    output wire [0:0] out_memdep_16_atax_avm_read,
    output wire [0:0] out_memdep_16_atax_avm_write,
    output wire [63:0] out_memdep_16_atax_avm_writedata,
    output wire [63:0] out_memdep_18_atax_avm_address,
    output wire [0:0] out_memdep_18_atax_avm_burstcount,
    output wire [7:0] out_memdep_18_atax_avm_byteenable,
    output wire [0:0] out_memdep_18_atax_avm_enable,
    output wire [0:0] out_memdep_18_atax_avm_read,
    output wire [0:0] out_memdep_18_atax_avm_write,
    output wire [63:0] out_memdep_18_atax_avm_writedata,
    output wire [63:0] out_memdep_20_atax_avm_address,
    output wire [0:0] out_memdep_20_atax_avm_burstcount,
    output wire [7:0] out_memdep_20_atax_avm_byteenable,
    output wire [0:0] out_memdep_20_atax_avm_enable,
    output wire [0:0] out_memdep_20_atax_avm_read,
    output wire [0:0] out_memdep_20_atax_avm_write,
    output wire [63:0] out_memdep_20_atax_avm_writedata,
    output wire [63:0] out_memdep_23_atax_avm_address,
    output wire [0:0] out_memdep_23_atax_avm_burstcount,
    output wire [7:0] out_memdep_23_atax_avm_byteenable,
    output wire [0:0] out_memdep_23_atax_avm_enable,
    output wire [0:0] out_memdep_23_atax_avm_read,
    output wire [0:0] out_memdep_23_atax_avm_write,
    output wire [63:0] out_memdep_23_atax_avm_writedata,
    output wire [63:0] out_memdep_27_atax_avm_address,
    output wire [0:0] out_memdep_27_atax_avm_burstcount,
    output wire [7:0] out_memdep_27_atax_avm_byteenable,
    output wire [0:0] out_memdep_27_atax_avm_enable,
    output wire [0:0] out_memdep_27_atax_avm_read,
    output wire [0:0] out_memdep_27_atax_avm_write,
    output wire [63:0] out_memdep_27_atax_avm_writedata,
    output wire [63:0] out_memdep_32_atax_avm_address,
    output wire [0:0] out_memdep_32_atax_avm_burstcount,
    output wire [7:0] out_memdep_32_atax_avm_byteenable,
    output wire [0:0] out_memdep_32_atax_avm_enable,
    output wire [0:0] out_memdep_32_atax_avm_read,
    output wire [0:0] out_memdep_32_atax_avm_write,
    output wire [63:0] out_memdep_32_atax_avm_writedata,
    output wire [63:0] out_memdep_39_atax_avm_address,
    output wire [0:0] out_memdep_39_atax_avm_burstcount,
    output wire [7:0] out_memdep_39_atax_avm_byteenable,
    output wire [0:0] out_memdep_39_atax_avm_enable,
    output wire [0:0] out_memdep_39_atax_avm_read,
    output wire [0:0] out_memdep_39_atax_avm_write,
    output wire [63:0] out_memdep_39_atax_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [255:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack,
    input wire [63:0] in_memdep_15_atax_avm_readdata,
    input wire [0:0] in_memdep_15_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_15_atax_avm_waitrequest,
    input wire [0:0] in_memdep_15_atax_avm_writeack,
    input wire [63:0] in_memdep_16_atax_avm_readdata,
    input wire [0:0] in_memdep_16_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_16_atax_avm_waitrequest,
    input wire [0:0] in_memdep_16_atax_avm_writeack,
    input wire [63:0] in_memdep_18_atax_avm_readdata,
    input wire [0:0] in_memdep_18_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_18_atax_avm_waitrequest,
    input wire [0:0] in_memdep_18_atax_avm_writeack,
    input wire [63:0] in_memdep_20_atax_avm_readdata,
    input wire [0:0] in_memdep_20_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_20_atax_avm_waitrequest,
    input wire [0:0] in_memdep_20_atax_avm_writeack,
    input wire [63:0] in_memdep_23_atax_avm_readdata,
    input wire [0:0] in_memdep_23_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_23_atax_avm_waitrequest,
    input wire [0:0] in_memdep_23_atax_avm_writeack,
    input wire [63:0] in_memdep_27_atax_avm_readdata,
    input wire [0:0] in_memdep_27_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_27_atax_avm_waitrequest,
    input wire [0:0] in_memdep_27_atax_avm_writeack,
    input wire [63:0] in_memdep_32_atax_avm_readdata,
    input wire [0:0] in_memdep_32_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_32_atax_avm_waitrequest,
    input wire [0:0] in_memdep_32_atax_avm_writeack,
    input wire [63:0] in_memdep_39_atax_avm_readdata,
    input wire [0:0] in_memdep_39_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_39_atax_avm_waitrequest,
    input wire [0:0] in_memdep_39_atax_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B12_branch_out_stall_out;
    wire [0:0] atax_B12_branch_out_valid_out_0;
    wire [0:0] atax_B12_branch_out_valid_out_1;
    wire [0:0] atax_B12_merge_out_forked;
    wire [0:0] atax_B12_merge_out_stall_out_0;
    wire [0:0] atax_B12_merge_out_stall_out_1;
    wire [0:0] atax_B12_merge_out_valid_out;
    wire [0:0] bb_atax_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_stall_out;
    wire [0:0] bb_atax_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_valid_out;
    wire [0:0] bb_atax_B12_stall_region_out_lsu_memdep_15_o_active;
    wire [0:0] bb_atax_B12_stall_region_out_lsu_memdep_16_o_active;
    wire [0:0] bb_atax_B12_stall_region_out_lsu_memdep_18_o_active;
    wire [0:0] bb_atax_B12_stall_region_out_lsu_memdep_20_o_active;
    wire [0:0] bb_atax_B12_stall_region_out_lsu_memdep_23_o_active;
    wire [0:0] bb_atax_B12_stall_region_out_lsu_memdep_27_o_active;
    wire [0:0] bb_atax_B12_stall_region_out_lsu_memdep_32_o_active;
    wire [0:0] bb_atax_B12_stall_region_out_lsu_memdep_39_o_active;
    wire [0:0] bb_atax_B12_stall_region_out_masked;
    wire [31:0] bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address;
    wire [0:0] bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount;
    wire [31:0] bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable;
    wire [0:0] bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read;
    wire [0:0] bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write;
    wire [255:0] bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_15_atax_avm_address;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_15_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_stall_region_out_memdep_15_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_15_atax_avm_enable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_15_atax_avm_read;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_15_atax_avm_write;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_15_atax_avm_writedata;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_16_atax_avm_address;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_16_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_stall_region_out_memdep_16_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_16_atax_avm_enable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_16_atax_avm_read;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_16_atax_avm_write;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_16_atax_avm_writedata;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_18_atax_avm_address;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_18_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_stall_region_out_memdep_18_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_18_atax_avm_enable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_18_atax_avm_read;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_18_atax_avm_write;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_18_atax_avm_writedata;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_20_atax_avm_address;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_20_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_stall_region_out_memdep_20_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_20_atax_avm_enable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_20_atax_avm_read;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_20_atax_avm_write;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_20_atax_avm_writedata;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_23_atax_avm_address;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_23_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_stall_region_out_memdep_23_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_23_atax_avm_enable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_23_atax_avm_read;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_23_atax_avm_write;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_23_atax_avm_writedata;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_27_atax_avm_address;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_27_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_stall_region_out_memdep_27_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_27_atax_avm_enable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_27_atax_avm_read;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_27_atax_avm_write;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_27_atax_avm_writedata;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_32_atax_avm_address;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_32_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_stall_region_out_memdep_32_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_32_atax_avm_enable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_32_atax_avm_read;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_32_atax_avm_write;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_32_atax_avm_writedata;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_39_atax_avm_address;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_39_atax_avm_burstcount;
    wire [7:0] bb_atax_B12_stall_region_out_memdep_39_atax_avm_byteenable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_39_atax_avm_enable;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_39_atax_avm_read;
    wire [0:0] bb_atax_B12_stall_region_out_memdep_39_atax_avm_write;
    wire [63:0] bb_atax_B12_stall_region_out_memdep_39_atax_avm_writedata;
    wire [0:0] bb_atax_B12_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B12_stall_region_out_stall_out;
    wire [0:0] bb_atax_B12_stall_region_out_valid_out;


    // atax_B12_branch(BLACKBOX,2)
    atax_B12_branch theatax_B12_branch (
        .in_masked(bb_atax_B12_stall_region_out_masked),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B12_stall_region_out_valid_out),
        .out_stall_out(atax_B12_branch_out_stall_out),
        .out_valid_out_0(atax_B12_branch_out_valid_out_0),
        .out_valid_out_1(atax_B12_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B12_merge(BLACKBOX,3)
    atax_B12_merge theatax_B12_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_atax_B12_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(atax_B12_merge_out_forked),
        .out_stall_out_0(atax_B12_merge_out_stall_out_0),
        .out_stall_out_1(atax_B12_merge_out_stall_out_1),
        .out_valid_out(atax_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B12_stall_region(BLACKBOX,4)
    atax_bb_B12_stall_region thebb_atax_B12_stall_region (
        .in_flush(in_flush),
        .in_forked(atax_B12_merge_out_forked),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writeack),
        .in_memdep_15_atax_avm_readdata(in_memdep_15_atax_avm_readdata),
        .in_memdep_15_atax_avm_readdatavalid(in_memdep_15_atax_avm_readdatavalid),
        .in_memdep_15_atax_avm_waitrequest(in_memdep_15_atax_avm_waitrequest),
        .in_memdep_15_atax_avm_writeack(in_memdep_15_atax_avm_writeack),
        .in_memdep_16_atax_avm_readdata(in_memdep_16_atax_avm_readdata),
        .in_memdep_16_atax_avm_readdatavalid(in_memdep_16_atax_avm_readdatavalid),
        .in_memdep_16_atax_avm_waitrequest(in_memdep_16_atax_avm_waitrequest),
        .in_memdep_16_atax_avm_writeack(in_memdep_16_atax_avm_writeack),
        .in_memdep_18_atax_avm_readdata(in_memdep_18_atax_avm_readdata),
        .in_memdep_18_atax_avm_readdatavalid(in_memdep_18_atax_avm_readdatavalid),
        .in_memdep_18_atax_avm_waitrequest(in_memdep_18_atax_avm_waitrequest),
        .in_memdep_18_atax_avm_writeack(in_memdep_18_atax_avm_writeack),
        .in_memdep_20_atax_avm_readdata(in_memdep_20_atax_avm_readdata),
        .in_memdep_20_atax_avm_readdatavalid(in_memdep_20_atax_avm_readdatavalid),
        .in_memdep_20_atax_avm_waitrequest(in_memdep_20_atax_avm_waitrequest),
        .in_memdep_20_atax_avm_writeack(in_memdep_20_atax_avm_writeack),
        .in_memdep_23_atax_avm_readdata(in_memdep_23_atax_avm_readdata),
        .in_memdep_23_atax_avm_readdatavalid(in_memdep_23_atax_avm_readdatavalid),
        .in_memdep_23_atax_avm_waitrequest(in_memdep_23_atax_avm_waitrequest),
        .in_memdep_23_atax_avm_writeack(in_memdep_23_atax_avm_writeack),
        .in_memdep_27_atax_avm_readdata(in_memdep_27_atax_avm_readdata),
        .in_memdep_27_atax_avm_readdatavalid(in_memdep_27_atax_avm_readdatavalid),
        .in_memdep_27_atax_avm_waitrequest(in_memdep_27_atax_avm_waitrequest),
        .in_memdep_27_atax_avm_writeack(in_memdep_27_atax_avm_writeack),
        .in_memdep_32_atax_avm_readdata(in_memdep_32_atax_avm_readdata),
        .in_memdep_32_atax_avm_readdatavalid(in_memdep_32_atax_avm_readdatavalid),
        .in_memdep_32_atax_avm_waitrequest(in_memdep_32_atax_avm_waitrequest),
        .in_memdep_32_atax_avm_writeack(in_memdep_32_atax_avm_writeack),
        .in_memdep_39_atax_avm_readdata(in_memdep_39_atax_avm_readdata),
        .in_memdep_39_atax_avm_readdatavalid(in_memdep_39_atax_avm_readdatavalid),
        .in_memdep_39_atax_avm_waitrequest(in_memdep_39_atax_avm_waitrequest),
        .in_memdep_39_atax_avm_writeack(in_memdep_39_atax_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B12_branch_out_stall_out),
        .in_valid_in(atax_B12_merge_out_valid_out),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_stall_out(bb_atax_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_valid_out(bb_atax_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_valid_out),
        .out_lsu_memdep_15_o_active(bb_atax_B12_stall_region_out_lsu_memdep_15_o_active),
        .out_lsu_memdep_16_o_active(bb_atax_B12_stall_region_out_lsu_memdep_16_o_active),
        .out_lsu_memdep_18_o_active(bb_atax_B12_stall_region_out_lsu_memdep_18_o_active),
        .out_lsu_memdep_20_o_active(bb_atax_B12_stall_region_out_lsu_memdep_20_o_active),
        .out_lsu_memdep_23_o_active(bb_atax_B12_stall_region_out_lsu_memdep_23_o_active),
        .out_lsu_memdep_27_o_active(bb_atax_B12_stall_region_out_lsu_memdep_27_o_active),
        .out_lsu_memdep_32_o_active(bb_atax_B12_stall_region_out_lsu_memdep_32_o_active),
        .out_lsu_memdep_39_o_active(bb_atax_B12_stall_region_out_lsu_memdep_39_o_active),
        .out_masked(bb_atax_B12_stall_region_out_masked),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address(bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount(bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable(bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable(bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read(bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write(bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata(bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata),
        .out_memdep_15_atax_avm_address(bb_atax_B12_stall_region_out_memdep_15_atax_avm_address),
        .out_memdep_15_atax_avm_burstcount(bb_atax_B12_stall_region_out_memdep_15_atax_avm_burstcount),
        .out_memdep_15_atax_avm_byteenable(bb_atax_B12_stall_region_out_memdep_15_atax_avm_byteenable),
        .out_memdep_15_atax_avm_enable(bb_atax_B12_stall_region_out_memdep_15_atax_avm_enable),
        .out_memdep_15_atax_avm_read(bb_atax_B12_stall_region_out_memdep_15_atax_avm_read),
        .out_memdep_15_atax_avm_write(bb_atax_B12_stall_region_out_memdep_15_atax_avm_write),
        .out_memdep_15_atax_avm_writedata(bb_atax_B12_stall_region_out_memdep_15_atax_avm_writedata),
        .out_memdep_16_atax_avm_address(bb_atax_B12_stall_region_out_memdep_16_atax_avm_address),
        .out_memdep_16_atax_avm_burstcount(bb_atax_B12_stall_region_out_memdep_16_atax_avm_burstcount),
        .out_memdep_16_atax_avm_byteenable(bb_atax_B12_stall_region_out_memdep_16_atax_avm_byteenable),
        .out_memdep_16_atax_avm_enable(bb_atax_B12_stall_region_out_memdep_16_atax_avm_enable),
        .out_memdep_16_atax_avm_read(bb_atax_B12_stall_region_out_memdep_16_atax_avm_read),
        .out_memdep_16_atax_avm_write(bb_atax_B12_stall_region_out_memdep_16_atax_avm_write),
        .out_memdep_16_atax_avm_writedata(bb_atax_B12_stall_region_out_memdep_16_atax_avm_writedata),
        .out_memdep_18_atax_avm_address(bb_atax_B12_stall_region_out_memdep_18_atax_avm_address),
        .out_memdep_18_atax_avm_burstcount(bb_atax_B12_stall_region_out_memdep_18_atax_avm_burstcount),
        .out_memdep_18_atax_avm_byteenable(bb_atax_B12_stall_region_out_memdep_18_atax_avm_byteenable),
        .out_memdep_18_atax_avm_enable(bb_atax_B12_stall_region_out_memdep_18_atax_avm_enable),
        .out_memdep_18_atax_avm_read(bb_atax_B12_stall_region_out_memdep_18_atax_avm_read),
        .out_memdep_18_atax_avm_write(bb_atax_B12_stall_region_out_memdep_18_atax_avm_write),
        .out_memdep_18_atax_avm_writedata(bb_atax_B12_stall_region_out_memdep_18_atax_avm_writedata),
        .out_memdep_20_atax_avm_address(bb_atax_B12_stall_region_out_memdep_20_atax_avm_address),
        .out_memdep_20_atax_avm_burstcount(bb_atax_B12_stall_region_out_memdep_20_atax_avm_burstcount),
        .out_memdep_20_atax_avm_byteenable(bb_atax_B12_stall_region_out_memdep_20_atax_avm_byteenable),
        .out_memdep_20_atax_avm_enable(bb_atax_B12_stall_region_out_memdep_20_atax_avm_enable),
        .out_memdep_20_atax_avm_read(bb_atax_B12_stall_region_out_memdep_20_atax_avm_read),
        .out_memdep_20_atax_avm_write(bb_atax_B12_stall_region_out_memdep_20_atax_avm_write),
        .out_memdep_20_atax_avm_writedata(bb_atax_B12_stall_region_out_memdep_20_atax_avm_writedata),
        .out_memdep_23_atax_avm_address(bb_atax_B12_stall_region_out_memdep_23_atax_avm_address),
        .out_memdep_23_atax_avm_burstcount(bb_atax_B12_stall_region_out_memdep_23_atax_avm_burstcount),
        .out_memdep_23_atax_avm_byteenable(bb_atax_B12_stall_region_out_memdep_23_atax_avm_byteenable),
        .out_memdep_23_atax_avm_enable(bb_atax_B12_stall_region_out_memdep_23_atax_avm_enable),
        .out_memdep_23_atax_avm_read(bb_atax_B12_stall_region_out_memdep_23_atax_avm_read),
        .out_memdep_23_atax_avm_write(bb_atax_B12_stall_region_out_memdep_23_atax_avm_write),
        .out_memdep_23_atax_avm_writedata(bb_atax_B12_stall_region_out_memdep_23_atax_avm_writedata),
        .out_memdep_27_atax_avm_address(bb_atax_B12_stall_region_out_memdep_27_atax_avm_address),
        .out_memdep_27_atax_avm_burstcount(bb_atax_B12_stall_region_out_memdep_27_atax_avm_burstcount),
        .out_memdep_27_atax_avm_byteenable(bb_atax_B12_stall_region_out_memdep_27_atax_avm_byteenable),
        .out_memdep_27_atax_avm_enable(bb_atax_B12_stall_region_out_memdep_27_atax_avm_enable),
        .out_memdep_27_atax_avm_read(bb_atax_B12_stall_region_out_memdep_27_atax_avm_read),
        .out_memdep_27_atax_avm_write(bb_atax_B12_stall_region_out_memdep_27_atax_avm_write),
        .out_memdep_27_atax_avm_writedata(bb_atax_B12_stall_region_out_memdep_27_atax_avm_writedata),
        .out_memdep_32_atax_avm_address(bb_atax_B12_stall_region_out_memdep_32_atax_avm_address),
        .out_memdep_32_atax_avm_burstcount(bb_atax_B12_stall_region_out_memdep_32_atax_avm_burstcount),
        .out_memdep_32_atax_avm_byteenable(bb_atax_B12_stall_region_out_memdep_32_atax_avm_byteenable),
        .out_memdep_32_atax_avm_enable(bb_atax_B12_stall_region_out_memdep_32_atax_avm_enable),
        .out_memdep_32_atax_avm_read(bb_atax_B12_stall_region_out_memdep_32_atax_avm_read),
        .out_memdep_32_atax_avm_write(bb_atax_B12_stall_region_out_memdep_32_atax_avm_write),
        .out_memdep_32_atax_avm_writedata(bb_atax_B12_stall_region_out_memdep_32_atax_avm_writedata),
        .out_memdep_39_atax_avm_address(bb_atax_B12_stall_region_out_memdep_39_atax_avm_address),
        .out_memdep_39_atax_avm_burstcount(bb_atax_B12_stall_region_out_memdep_39_atax_avm_burstcount),
        .out_memdep_39_atax_avm_byteenable(bb_atax_B12_stall_region_out_memdep_39_atax_avm_byteenable),
        .out_memdep_39_atax_avm_enable(bb_atax_B12_stall_region_out_memdep_39_atax_avm_enable),
        .out_memdep_39_atax_avm_read(bb_atax_B12_stall_region_out_memdep_39_atax_avm_read),
        .out_memdep_39_atax_avm_write(bb_atax_B12_stall_region_out_memdep_39_atax_avm_write),
        .out_memdep_39_atax_avm_writedata(bb_atax_B12_stall_region_out_memdep_39_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B12_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B12_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,5)
    assign out_exiting_stall_out = bb_atax_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,6)
    assign out_exiting_valid_out = bb_atax_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax2_exiting_valid_out;

    // out_lsu_memdep_15_o_active(GPOUT,7)
    assign out_lsu_memdep_15_o_active = bb_atax_B12_stall_region_out_lsu_memdep_15_o_active;

    // out_lsu_memdep_16_o_active(GPOUT,8)
    assign out_lsu_memdep_16_o_active = bb_atax_B12_stall_region_out_lsu_memdep_16_o_active;

    // out_lsu_memdep_18_o_active(GPOUT,9)
    assign out_lsu_memdep_18_o_active = bb_atax_B12_stall_region_out_lsu_memdep_18_o_active;

    // out_lsu_memdep_20_o_active(GPOUT,10)
    assign out_lsu_memdep_20_o_active = bb_atax_B12_stall_region_out_lsu_memdep_20_o_active;

    // out_lsu_memdep_23_o_active(GPOUT,11)
    assign out_lsu_memdep_23_o_active = bb_atax_B12_stall_region_out_lsu_memdep_23_o_active;

    // out_lsu_memdep_27_o_active(GPOUT,12)
    assign out_lsu_memdep_27_o_active = bb_atax_B12_stall_region_out_lsu_memdep_27_o_active;

    // out_lsu_memdep_32_o_active(GPOUT,13)
    assign out_lsu_memdep_32_o_active = bb_atax_B12_stall_region_out_lsu_memdep_32_o_active;

    // out_lsu_memdep_39_o_active(GPOUT,14)
    assign out_lsu_memdep_39_o_active = bb_atax_B12_stall_region_out_lsu_memdep_39_o_active;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address(GPOUT,15)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address = bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_address;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount(GPOUT,16)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount = bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_burstcount;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable(GPOUT,17)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable = bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_byteenable;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable(GPOUT,18)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable = bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_enable;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read(GPOUT,19)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read = bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_read;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write(GPOUT,20)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write = bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_write;

    // out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata(GPOUT,21)
    assign out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata = bb_atax_B12_stall_region_out_memcoalesce_load_atax_fpgaunique_2610_atax_avm_writedata;

    // out_memdep_15_atax_avm_address(GPOUT,22)
    assign out_memdep_15_atax_avm_address = bb_atax_B12_stall_region_out_memdep_15_atax_avm_address;

    // out_memdep_15_atax_avm_burstcount(GPOUT,23)
    assign out_memdep_15_atax_avm_burstcount = bb_atax_B12_stall_region_out_memdep_15_atax_avm_burstcount;

    // out_memdep_15_atax_avm_byteenable(GPOUT,24)
    assign out_memdep_15_atax_avm_byteenable = bb_atax_B12_stall_region_out_memdep_15_atax_avm_byteenable;

    // out_memdep_15_atax_avm_enable(GPOUT,25)
    assign out_memdep_15_atax_avm_enable = bb_atax_B12_stall_region_out_memdep_15_atax_avm_enable;

    // out_memdep_15_atax_avm_read(GPOUT,26)
    assign out_memdep_15_atax_avm_read = bb_atax_B12_stall_region_out_memdep_15_atax_avm_read;

    // out_memdep_15_atax_avm_write(GPOUT,27)
    assign out_memdep_15_atax_avm_write = bb_atax_B12_stall_region_out_memdep_15_atax_avm_write;

    // out_memdep_15_atax_avm_writedata(GPOUT,28)
    assign out_memdep_15_atax_avm_writedata = bb_atax_B12_stall_region_out_memdep_15_atax_avm_writedata;

    // out_memdep_16_atax_avm_address(GPOUT,29)
    assign out_memdep_16_atax_avm_address = bb_atax_B12_stall_region_out_memdep_16_atax_avm_address;

    // out_memdep_16_atax_avm_burstcount(GPOUT,30)
    assign out_memdep_16_atax_avm_burstcount = bb_atax_B12_stall_region_out_memdep_16_atax_avm_burstcount;

    // out_memdep_16_atax_avm_byteenable(GPOUT,31)
    assign out_memdep_16_atax_avm_byteenable = bb_atax_B12_stall_region_out_memdep_16_atax_avm_byteenable;

    // out_memdep_16_atax_avm_enable(GPOUT,32)
    assign out_memdep_16_atax_avm_enable = bb_atax_B12_stall_region_out_memdep_16_atax_avm_enable;

    // out_memdep_16_atax_avm_read(GPOUT,33)
    assign out_memdep_16_atax_avm_read = bb_atax_B12_stall_region_out_memdep_16_atax_avm_read;

    // out_memdep_16_atax_avm_write(GPOUT,34)
    assign out_memdep_16_atax_avm_write = bb_atax_B12_stall_region_out_memdep_16_atax_avm_write;

    // out_memdep_16_atax_avm_writedata(GPOUT,35)
    assign out_memdep_16_atax_avm_writedata = bb_atax_B12_stall_region_out_memdep_16_atax_avm_writedata;

    // out_memdep_18_atax_avm_address(GPOUT,36)
    assign out_memdep_18_atax_avm_address = bb_atax_B12_stall_region_out_memdep_18_atax_avm_address;

    // out_memdep_18_atax_avm_burstcount(GPOUT,37)
    assign out_memdep_18_atax_avm_burstcount = bb_atax_B12_stall_region_out_memdep_18_atax_avm_burstcount;

    // out_memdep_18_atax_avm_byteenable(GPOUT,38)
    assign out_memdep_18_atax_avm_byteenable = bb_atax_B12_stall_region_out_memdep_18_atax_avm_byteenable;

    // out_memdep_18_atax_avm_enable(GPOUT,39)
    assign out_memdep_18_atax_avm_enable = bb_atax_B12_stall_region_out_memdep_18_atax_avm_enable;

    // out_memdep_18_atax_avm_read(GPOUT,40)
    assign out_memdep_18_atax_avm_read = bb_atax_B12_stall_region_out_memdep_18_atax_avm_read;

    // out_memdep_18_atax_avm_write(GPOUT,41)
    assign out_memdep_18_atax_avm_write = bb_atax_B12_stall_region_out_memdep_18_atax_avm_write;

    // out_memdep_18_atax_avm_writedata(GPOUT,42)
    assign out_memdep_18_atax_avm_writedata = bb_atax_B12_stall_region_out_memdep_18_atax_avm_writedata;

    // out_memdep_20_atax_avm_address(GPOUT,43)
    assign out_memdep_20_atax_avm_address = bb_atax_B12_stall_region_out_memdep_20_atax_avm_address;

    // out_memdep_20_atax_avm_burstcount(GPOUT,44)
    assign out_memdep_20_atax_avm_burstcount = bb_atax_B12_stall_region_out_memdep_20_atax_avm_burstcount;

    // out_memdep_20_atax_avm_byteenable(GPOUT,45)
    assign out_memdep_20_atax_avm_byteenable = bb_atax_B12_stall_region_out_memdep_20_atax_avm_byteenable;

    // out_memdep_20_atax_avm_enable(GPOUT,46)
    assign out_memdep_20_atax_avm_enable = bb_atax_B12_stall_region_out_memdep_20_atax_avm_enable;

    // out_memdep_20_atax_avm_read(GPOUT,47)
    assign out_memdep_20_atax_avm_read = bb_atax_B12_stall_region_out_memdep_20_atax_avm_read;

    // out_memdep_20_atax_avm_write(GPOUT,48)
    assign out_memdep_20_atax_avm_write = bb_atax_B12_stall_region_out_memdep_20_atax_avm_write;

    // out_memdep_20_atax_avm_writedata(GPOUT,49)
    assign out_memdep_20_atax_avm_writedata = bb_atax_B12_stall_region_out_memdep_20_atax_avm_writedata;

    // out_memdep_23_atax_avm_address(GPOUT,50)
    assign out_memdep_23_atax_avm_address = bb_atax_B12_stall_region_out_memdep_23_atax_avm_address;

    // out_memdep_23_atax_avm_burstcount(GPOUT,51)
    assign out_memdep_23_atax_avm_burstcount = bb_atax_B12_stall_region_out_memdep_23_atax_avm_burstcount;

    // out_memdep_23_atax_avm_byteenable(GPOUT,52)
    assign out_memdep_23_atax_avm_byteenable = bb_atax_B12_stall_region_out_memdep_23_atax_avm_byteenable;

    // out_memdep_23_atax_avm_enable(GPOUT,53)
    assign out_memdep_23_atax_avm_enable = bb_atax_B12_stall_region_out_memdep_23_atax_avm_enable;

    // out_memdep_23_atax_avm_read(GPOUT,54)
    assign out_memdep_23_atax_avm_read = bb_atax_B12_stall_region_out_memdep_23_atax_avm_read;

    // out_memdep_23_atax_avm_write(GPOUT,55)
    assign out_memdep_23_atax_avm_write = bb_atax_B12_stall_region_out_memdep_23_atax_avm_write;

    // out_memdep_23_atax_avm_writedata(GPOUT,56)
    assign out_memdep_23_atax_avm_writedata = bb_atax_B12_stall_region_out_memdep_23_atax_avm_writedata;

    // out_memdep_27_atax_avm_address(GPOUT,57)
    assign out_memdep_27_atax_avm_address = bb_atax_B12_stall_region_out_memdep_27_atax_avm_address;

    // out_memdep_27_atax_avm_burstcount(GPOUT,58)
    assign out_memdep_27_atax_avm_burstcount = bb_atax_B12_stall_region_out_memdep_27_atax_avm_burstcount;

    // out_memdep_27_atax_avm_byteenable(GPOUT,59)
    assign out_memdep_27_atax_avm_byteenable = bb_atax_B12_stall_region_out_memdep_27_atax_avm_byteenable;

    // out_memdep_27_atax_avm_enable(GPOUT,60)
    assign out_memdep_27_atax_avm_enable = bb_atax_B12_stall_region_out_memdep_27_atax_avm_enable;

    // out_memdep_27_atax_avm_read(GPOUT,61)
    assign out_memdep_27_atax_avm_read = bb_atax_B12_stall_region_out_memdep_27_atax_avm_read;

    // out_memdep_27_atax_avm_write(GPOUT,62)
    assign out_memdep_27_atax_avm_write = bb_atax_B12_stall_region_out_memdep_27_atax_avm_write;

    // out_memdep_27_atax_avm_writedata(GPOUT,63)
    assign out_memdep_27_atax_avm_writedata = bb_atax_B12_stall_region_out_memdep_27_atax_avm_writedata;

    // out_memdep_32_atax_avm_address(GPOUT,64)
    assign out_memdep_32_atax_avm_address = bb_atax_B12_stall_region_out_memdep_32_atax_avm_address;

    // out_memdep_32_atax_avm_burstcount(GPOUT,65)
    assign out_memdep_32_atax_avm_burstcount = bb_atax_B12_stall_region_out_memdep_32_atax_avm_burstcount;

    // out_memdep_32_atax_avm_byteenable(GPOUT,66)
    assign out_memdep_32_atax_avm_byteenable = bb_atax_B12_stall_region_out_memdep_32_atax_avm_byteenable;

    // out_memdep_32_atax_avm_enable(GPOUT,67)
    assign out_memdep_32_atax_avm_enable = bb_atax_B12_stall_region_out_memdep_32_atax_avm_enable;

    // out_memdep_32_atax_avm_read(GPOUT,68)
    assign out_memdep_32_atax_avm_read = bb_atax_B12_stall_region_out_memdep_32_atax_avm_read;

    // out_memdep_32_atax_avm_write(GPOUT,69)
    assign out_memdep_32_atax_avm_write = bb_atax_B12_stall_region_out_memdep_32_atax_avm_write;

    // out_memdep_32_atax_avm_writedata(GPOUT,70)
    assign out_memdep_32_atax_avm_writedata = bb_atax_B12_stall_region_out_memdep_32_atax_avm_writedata;

    // out_memdep_39_atax_avm_address(GPOUT,71)
    assign out_memdep_39_atax_avm_address = bb_atax_B12_stall_region_out_memdep_39_atax_avm_address;

    // out_memdep_39_atax_avm_burstcount(GPOUT,72)
    assign out_memdep_39_atax_avm_burstcount = bb_atax_B12_stall_region_out_memdep_39_atax_avm_burstcount;

    // out_memdep_39_atax_avm_byteenable(GPOUT,73)
    assign out_memdep_39_atax_avm_byteenable = bb_atax_B12_stall_region_out_memdep_39_atax_avm_byteenable;

    // out_memdep_39_atax_avm_enable(GPOUT,74)
    assign out_memdep_39_atax_avm_enable = bb_atax_B12_stall_region_out_memdep_39_atax_avm_enable;

    // out_memdep_39_atax_avm_read(GPOUT,75)
    assign out_memdep_39_atax_avm_read = bb_atax_B12_stall_region_out_memdep_39_atax_avm_read;

    // out_memdep_39_atax_avm_write(GPOUT,76)
    assign out_memdep_39_atax_avm_write = bb_atax_B12_stall_region_out_memdep_39_atax_avm_write;

    // out_memdep_39_atax_avm_writedata(GPOUT,77)
    assign out_memdep_39_atax_avm_writedata = bb_atax_B12_stall_region_out_memdep_39_atax_avm_writedata;

    // out_stall_in_0(GPOUT,78)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,79)
    assign out_stall_out_0 = atax_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,80)
    assign out_stall_out_1 = atax_B12_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,81)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,82)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,83)
    assign out_valid_out_0 = atax_B12_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,84)
    assign out_valid_out_1 = atax_B12_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,86)
    assign out_pipeline_valid_out = bb_atax_B12_stall_region_out_pipeline_valid_out;

endmodule
