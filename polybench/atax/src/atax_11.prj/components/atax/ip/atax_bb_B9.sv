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

// SystemVerilog created from atax_bb_B9
// SystemVerilog created on Wed Dec 13 00:10:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B9 (
    input wire [0:0] in_exitcond38112_pop40135_0,
    input wire [0:0] in_exitcond38112_pop40135_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked43_0,
    input wire [0:0] in_forked43_1,
    input wire [63:0] in_idxprom27109_pop38130_0,
    input wire [63:0] in_idxprom27109_pop38130_1,
    input wire [127:0] in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writeack,
    input wire [127:0] in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_readdata,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writeack,
    input wire [127:0] in_memdep_511_atax_avm_readdata,
    input wire [0:0] in_memdep_511_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_511_atax_avm_waitrequest,
    input wire [0:0] in_memdep_511_atax_avm_writeack,
    input wire [0:0] in_memdep_phi_pop20139_0,
    input wire [0:0] in_memdep_phi_pop20139_1,
    input wire [0:0] in_notcmp74114_pop41137_0,
    input wire [0:0] in_notcmp74114_pop41137_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_atax19_0,
    input wire [31:0] in_unnamed_atax19_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2215,
    output wire [0:0] out_c0_exe4217,
    output wire [0:0] out_c0_exe5218,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount,
    output wire [15:0] out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write,
    output wire [127:0] out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata,
    output wire [31:0] out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount,
    output wire [15:0] out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read,
    output wire [0:0] out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write,
    output wire [127:0] out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata,
    output wire [31:0] out_memdep_511_atax_avm_address,
    output wire [0:0] out_memdep_511_atax_avm_burstcount,
    output wire [15:0] out_memdep_511_atax_avm_byteenable,
    output wire [0:0] out_memdep_511_atax_avm_enable,
    output wire [0:0] out_memdep_511_atax_avm_read,
    output wire [0:0] out_memdep_511_atax_avm_write,
    output wire [127:0] out_memdep_511_atax_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B9_branch_out_c0_exe2215;
    wire [0:0] atax_B9_branch_out_c0_exe4217;
    wire [0:0] atax_B9_branch_out_c0_exe5218;
    wire [0:0] atax_B9_branch_out_stall_out;
    wire [0:0] atax_B9_branch_out_valid_out_0;
    wire [0:0] atax_B9_branch_out_valid_out_1;
    wire [0:0] atax_B9_merge_out_exitcond38112_pop40135;
    wire [0:0] atax_B9_merge_out_forked43;
    wire [63:0] atax_B9_merge_out_idxprom27109_pop38130;
    wire [0:0] atax_B9_merge_out_memdep_phi_pop20139;
    wire [0:0] atax_B9_merge_out_notcmp74114_pop41137;
    wire [0:0] atax_B9_merge_out_stall_out_0;
    wire [0:0] atax_B9_merge_out_stall_out_1;
    wire [31:0] atax_B9_merge_out_unnamed_atax19;
    wire [0:0] atax_B9_merge_out_valid_out;
    wire [0:0] bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_atax6_exiting_stall_out;
    wire [0:0] bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_atax6_exiting_valid_out;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe2215;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe3216;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe4217;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe5218;
    wire [31:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount;
    wire [15:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write;
    wire [127:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata;
    wire [31:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount;
    wire [15:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write;
    wire [127:0] bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata;
    wire [31:0] bb_atax_B9_stall_region_out_memdep_511_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_511_atax_avm_burstcount;
    wire [15:0] bb_atax_B9_stall_region_out_memdep_511_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_511_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_511_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_memdep_511_atax_avm_write;
    wire [127:0] bb_atax_B9_stall_region_out_memdep_511_atax_avm_writedata;
    wire [0:0] bb_atax_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B9_stall_region_out_stall_out;
    wire [0:0] bb_atax_B9_stall_region_out_valid_out;


    // atax_B9_merge(BLACKBOX,3)
    atax_B9_merge theatax_B9_merge (
        .in_exitcond38112_pop40135_0(in_exitcond38112_pop40135_0),
        .in_exitcond38112_pop40135_1(in_exitcond38112_pop40135_1),
        .in_forked43_0(in_forked43_0),
        .in_forked43_1(in_forked43_1),
        .in_idxprom27109_pop38130_0(in_idxprom27109_pop38130_0),
        .in_idxprom27109_pop38130_1(in_idxprom27109_pop38130_1),
        .in_memdep_phi_pop20139_0(in_memdep_phi_pop20139_0),
        .in_memdep_phi_pop20139_1(in_memdep_phi_pop20139_1),
        .in_notcmp74114_pop41137_0(in_notcmp74114_pop41137_0),
        .in_notcmp74114_pop41137_1(in_notcmp74114_pop41137_1),
        .in_stall_in(bb_atax_B9_stall_region_out_stall_out),
        .in_unnamed_atax19_0(in_unnamed_atax19_0),
        .in_unnamed_atax19_1(in_unnamed_atax19_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond38112_pop40135(atax_B9_merge_out_exitcond38112_pop40135),
        .out_forked43(atax_B9_merge_out_forked43),
        .out_idxprom27109_pop38130(atax_B9_merge_out_idxprom27109_pop38130),
        .out_memdep_phi_pop20139(atax_B9_merge_out_memdep_phi_pop20139),
        .out_notcmp74114_pop41137(atax_B9_merge_out_notcmp74114_pop41137),
        .out_stall_out_0(atax_B9_merge_out_stall_out_0),
        .out_stall_out_1(atax_B9_merge_out_stall_out_1),
        .out_unnamed_atax19(atax_B9_merge_out_unnamed_atax19),
        .out_valid_out(atax_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B9_stall_region(BLACKBOX,4)
    atax_bb_B9_stall_region thebb_atax_B9_stall_region (
        .in_exitcond38112_pop40135(atax_B9_merge_out_exitcond38112_pop40135),
        .in_flush(in_flush),
        .in_forked43(atax_B9_merge_out_forked43),
        .in_idxprom27109_pop38130(atax_B9_merge_out_idxprom27109_pop38130),
        .in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writeack),
        .in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_readdata(in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_readdata),
        .in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_readdatavalid(in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_readdatavalid),
        .in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_waitrequest(in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_waitrequest),
        .in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writeack(in_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writeack),
        .in_memdep_511_atax_avm_readdata(in_memdep_511_atax_avm_readdata),
        .in_memdep_511_atax_avm_readdatavalid(in_memdep_511_atax_avm_readdatavalid),
        .in_memdep_511_atax_avm_waitrequest(in_memdep_511_atax_avm_waitrequest),
        .in_memdep_511_atax_avm_writeack(in_memdep_511_atax_avm_writeack),
        .in_memdep_phi_pop20139(atax_B9_merge_out_memdep_phi_pop20139),
        .in_notcmp74114_pop41137(atax_B9_merge_out_notcmp74114_pop41137),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B9_branch_out_stall_out),
        .in_unnamed_atax19(atax_B9_merge_out_unnamed_atax19),
        .in_valid_in(atax_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_atax6_exiting_stall_out(bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_atax6_exiting_valid_out(bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_atax6_exiting_valid_out),
        .out_c0_exe2215(bb_atax_B9_stall_region_out_c0_exe2215),
        .out_c0_exe3216(bb_atax_B9_stall_region_out_c0_exe3216),
        .out_c0_exe4217(bb_atax_B9_stall_region_out_c0_exe4217),
        .out_c0_exe5218(bb_atax_B9_stall_region_out_c0_exe5218),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write),
        .out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata(bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata),
        .out_memdep_511_atax_avm_address(bb_atax_B9_stall_region_out_memdep_511_atax_avm_address),
        .out_memdep_511_atax_avm_burstcount(bb_atax_B9_stall_region_out_memdep_511_atax_avm_burstcount),
        .out_memdep_511_atax_avm_byteenable(bb_atax_B9_stall_region_out_memdep_511_atax_avm_byteenable),
        .out_memdep_511_atax_avm_enable(bb_atax_B9_stall_region_out_memdep_511_atax_avm_enable),
        .out_memdep_511_atax_avm_read(bb_atax_B9_stall_region_out_memdep_511_atax_avm_read),
        .out_memdep_511_atax_avm_write(bb_atax_B9_stall_region_out_memdep_511_atax_avm_write),
        .out_memdep_511_atax_avm_writedata(bb_atax_B9_stall_region_out_memdep_511_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B9_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B9_branch(BLACKBOX,2)
    atax_B9_branch theatax_B9_branch (
        .in_c0_exe2215(bb_atax_B9_stall_region_out_c0_exe2215),
        .in_c0_exe3216(bb_atax_B9_stall_region_out_c0_exe3216),
        .in_c0_exe4217(bb_atax_B9_stall_region_out_c0_exe4217),
        .in_c0_exe5218(bb_atax_B9_stall_region_out_c0_exe5218),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B9_stall_region_out_valid_out),
        .out_c0_exe2215(atax_B9_branch_out_c0_exe2215),
        .out_c0_exe4217(atax_B9_branch_out_c0_exe4217),
        .out_c0_exe5218(atax_B9_branch_out_c0_exe5218),
        .out_stall_out(atax_B9_branch_out_stall_out),
        .out_valid_out_0(atax_B9_branch_out_valid_out_0),
        .out_valid_out_1(atax_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2215(GPOUT,34)
    assign out_c0_exe2215 = atax_B9_branch_out_c0_exe2215;

    // out_c0_exe4217(GPOUT,35)
    assign out_c0_exe4217 = atax_B9_branch_out_c0_exe4217;

    // out_c0_exe5218(GPOUT,36)
    assign out_c0_exe5218 = atax_B9_branch_out_c0_exe5218;

    // out_exiting_stall_out(GPOUT,37)
    assign out_exiting_stall_out = bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_atax6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,38)
    assign out_exiting_valid_out = bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_atax6_exiting_valid_out;

    // out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address(GPOUT,39)
    assign out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_address;

    // out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount(GPOUT,40)
    assign out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_burstcount;

    // out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable(GPOUT,41)
    assign out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_byteenable;

    // out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable(GPOUT,42)
    assign out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_enable;

    // out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read(GPOUT,43)
    assign out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_read;

    // out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write(GPOUT,44)
    assign out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_write;

    // out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata(GPOUT,45)
    assign out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1510_atax_avm_writedata;

    // out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address(GPOUT,46)
    assign out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_address;

    // out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount(GPOUT,47)
    assign out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_burstcount;

    // out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable(GPOUT,48)
    assign out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_byteenable;

    // out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable(GPOUT,49)
    assign out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_enable;

    // out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read(GPOUT,50)
    assign out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_read;

    // out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write(GPOUT,51)
    assign out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_write;

    // out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata(GPOUT,52)
    assign out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata = bb_atax_B9_stall_region_out_memcoalesce_load_atax_fpgaunique_1612_atax_avm_writedata;

    // out_memdep_511_atax_avm_address(GPOUT,53)
    assign out_memdep_511_atax_avm_address = bb_atax_B9_stall_region_out_memdep_511_atax_avm_address;

    // out_memdep_511_atax_avm_burstcount(GPOUT,54)
    assign out_memdep_511_atax_avm_burstcount = bb_atax_B9_stall_region_out_memdep_511_atax_avm_burstcount;

    // out_memdep_511_atax_avm_byteenable(GPOUT,55)
    assign out_memdep_511_atax_avm_byteenable = bb_atax_B9_stall_region_out_memdep_511_atax_avm_byteenable;

    // out_memdep_511_atax_avm_enable(GPOUT,56)
    assign out_memdep_511_atax_avm_enable = bb_atax_B9_stall_region_out_memdep_511_atax_avm_enable;

    // out_memdep_511_atax_avm_read(GPOUT,57)
    assign out_memdep_511_atax_avm_read = bb_atax_B9_stall_region_out_memdep_511_atax_avm_read;

    // out_memdep_511_atax_avm_write(GPOUT,58)
    assign out_memdep_511_atax_avm_write = bb_atax_B9_stall_region_out_memdep_511_atax_avm_write;

    // out_memdep_511_atax_avm_writedata(GPOUT,59)
    assign out_memdep_511_atax_avm_writedata = bb_atax_B9_stall_region_out_memdep_511_atax_avm_writedata;

    // out_stall_in_0(GPOUT,60)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,61)
    assign out_stall_out_0 = atax_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,62)
    assign out_stall_out_1 = atax_B9_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,63)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,64)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,65)
    assign out_valid_out_0 = atax_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,66)
    assign out_valid_out_1 = atax_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,68)
    assign out_pipeline_valid_out = bb_atax_B9_stall_region_out_pipeline_valid_out;

endmodule
