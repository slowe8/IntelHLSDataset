`include "macro.v"
//module wrapper(clk_p, clk_n, ap_rst, probe_out, data_out, data_valid);
module wrapper(ap_clk, ap_rst, data_out, data_valid, ap_start);

parameter IO_PARTITION_FACTOR = 4; //change according to different io partition factors
parameter DATASET_UPDATE_INV = 1;  //change to reduce ram writing frequency
parameter INV_DATASET_SIZE = 4096; //in[64][64] = 4096

parameter DATA_SIZE_PER_RAM = (INV_DATASET_SIZE / IO_PARTITION_FACTOR);
parameter DATA_WIDTH = 64;
parameter DATASET_NUM = 8;

//1-dimensional buffer data size, no partition in hls directive
parameter SIZE_PER_RAM_1D = DATA_WIDTH;

//###############################
// input clk_p;
// input clk_n;
input ap_clk;
input ap_rst;
//output probe_out;
output reg [3:0] data_out;
output reg data_valid;

// wire ap_clk;
// clk_wiz_0 gen_clk(.clk_in1_p(clk_p), .clk_in1_n(clk_n), .clk_out1(ap_clk), .reset(1'b0), .locked());

wire ap_done;
wire ap_idle;
wire ap_ready;
//reg ap_start;
input ap_start;

//###############################
wire [9:0] A_0_address0;
wire A_0_ce0;
wire [31:0] A_0_q0;
wire [9:0] A_1_address0;
wire A_1_ce0;
wire [31:0] A_1_q0;
wire [9:0] A_2_address0;
wire A_2_ce0;
wire [31:0] A_2_q0;
wire [9:0] A_3_address0;
wire A_3_ce0;
wire [31:0] A_3_q0;
wire [5:0] x1_address0;
wire x1_ce0;
wire [31:0] x1_q0;
wire [5:0] x2_address0;
wire x2_ce0;
wire [31:0] x2_q0;
wire [5:0] y1_address0;
wire y1_ce0;
wire [31:0] y1_q0;
wire [5:0] y2_address0;
wire y2_ce0;
wire [31:0] y2_q0;
wire [31:0] x1_out_din;
wire x1_out_write;
wire [31:0] x2_out_din;
wire x2_out_write;

//###############################
// vio_0 vio_inst(.clk(ap_clk), .probe_out0(probe_out));

// reg pp_ap_start, x1_ap_start;
// always@(posedge ap_clk)
// begin
//     pp_ap_start <= probe_out;
//     x1_ap_start <= pp_ap_start;
//     ap_start <= x1_ap_start;
// end

//############# A #############
kernel_ram #(.DATA_WIDTH(DATA_WIDTH), .DATA_SIZE(DATA_SIZE_PER_RAM), .RAM_ADDR_WIDTH(`CLOG2(DATA_SIZE_PER_RAM)), .RAM_UPDATE_INV(DATASET_UPDATE_INV),
    .DATASET_NUM(DATASET_NUM), .ROM_ADDR_WIDTH((`CLOG2(DATA_SIZE_PER_RAM*DATASET_NUM))), 
    .ROM_INIT_FILE({`PRJ_DIR, "mif/A_rom_0.mif"}), 
    .RAM_INIT_FILE_0({`PRJ_DIR, "mif/A_ram_0_0.mif"}), 
    .RAM_INIT_FILE_1({`PRJ_DIR, "mif/A_ram_0_1.mif"}))
A_ram_0 (.ap_clk(ap_clk), .ap_rst(ap_rst), .ap_start(ap_start), .ap_done(ap_done), 
    .kram_en(A_0_ce0), .kram_addr(A_0_address0), .kram_dout(A_0_q0));

kernel_ram #(.DATA_WIDTH(DATA_WIDTH), .DATA_SIZE(DATA_SIZE_PER_RAM), .RAM_ADDR_WIDTH(`CLOG2(DATA_SIZE_PER_RAM)), .RAM_UPDATE_INV(DATASET_UPDATE_INV),
    .DATASET_NUM(DATASET_NUM), .ROM_ADDR_WIDTH((`CLOG2(DATA_SIZE_PER_RAM*DATASET_NUM))), 
    .ROM_INIT_FILE({`PRJ_DIR, "mif/A_rom_1.mif"}), 
    .RAM_INIT_FILE_0({`PRJ_DIR, "mif/A_ram_1_0.mif"}), 
    .RAM_INIT_FILE_1({`PRJ_DIR, "mif/A_ram_1_1.mif"}))
A_ram_1 (.ap_clk(ap_clk), .ap_rst(ap_rst), .ap_start(ap_start), .ap_done(ap_done), 
    .kram_en(A_1_ce0), .kram_addr(A_1_address0), .kram_dout(A_1_q0));

kernel_ram #(.DATA_WIDTH(DATA_WIDTH), .DATA_SIZE(DATA_SIZE_PER_RAM), .RAM_ADDR_WIDTH(`CLOG2(DATA_SIZE_PER_RAM)), .RAM_UPDATE_INV(DATASET_UPDATE_INV),
    .DATASET_NUM(DATASET_NUM), .ROM_ADDR_WIDTH((`CLOG2(DATA_SIZE_PER_RAM*DATASET_NUM))), 
    .ROM_INIT_FILE({`PRJ_DIR, "mif/A_rom_2.mif"}), 
    .RAM_INIT_FILE_0({`PRJ_DIR, "mif/A_ram_2_0.mif"}), 
    .RAM_INIT_FILE_1({`PRJ_DIR, "mif/A_ram_2_1.mif"}))
A_ram_2 (.ap_clk(ap_clk), .ap_rst(ap_rst), .ap_start(ap_start), .ap_done(ap_done), 
    .kram_en(A_2_ce0), .kram_addr(A_2_address0), .kram_dout(A_2_q0));

kernel_ram #(.DATA_WIDTH(DATA_WIDTH), .DATA_SIZE(DATA_SIZE_PER_RAM), .RAM_ADDR_WIDTH(`CLOG2(DATA_SIZE_PER_RAM)), .RAM_UPDATE_INV(DATASET_UPDATE_INV),
    .DATASET_NUM(DATASET_NUM), .ROM_ADDR_WIDTH((`CLOG2(DATA_SIZE_PER_RAM*DATASET_NUM))), 
    .ROM_INIT_FILE({`PRJ_DIR, "mif/A_rom_3.mif"}), 
    .RAM_INIT_FILE_0({`PRJ_DIR, "mif/A_ram_3_0.mif"}), 
    .RAM_INIT_FILE_1({`PRJ_DIR, "mif/A_ram_3_1.mif"}))
A_ram_3 (.ap_clk(ap_clk), .ap_rst(ap_rst), .ap_start(ap_start), .ap_done(ap_done), 
    .kram_en(A_3_ce0), .kram_addr(A_3_address0), .kram_dout(A_3_q0));

//############# x1 #############
kernel_ram #(.DATA_WIDTH(DATA_WIDTH), .DATA_SIZE(SIZE_PER_RAM_1D), .RAM_ADDR_WIDTH(`CLOG2(SIZE_PER_RAM_1D)), .RAM_UPDATE_INV(DATASET_UPDATE_INV),
    .DATASET_NUM(DATASET_NUM), .ROM_ADDR_WIDTH((`CLOG2(SIZE_PER_RAM_1D*DATASET_NUM))), 
    .ROM_INIT_FILE({`PRJ_DIR, "mif/x1_rom_0.mif"}), 
    .RAM_INIT_FILE_0({`PRJ_DIR, "mif/x1_ram_0_0.mif"}), 
    .RAM_INIT_FILE_1({`PRJ_DIR, "mif/x1_ram_0_1.mif"}))
x1_ram_0 (.ap_clk(ap_clk), .ap_rst(ap_rst), .ap_start(ap_start), .ap_done(ap_done), 
    .kram_en(x1_ce0), .kram_addr(x1_address0), .kram_dout(x1_q0));

//############# x2 #############
kernel_ram #(.DATA_WIDTH(DATA_WIDTH), .DATA_SIZE(SIZE_PER_RAM_1D), .RAM_ADDR_WIDTH(`CLOG2(SIZE_PER_RAM_1D)), .RAM_UPDATE_INV(DATASET_UPDATE_INV),
    .DATASET_NUM(DATASET_NUM), .ROM_ADDR_WIDTH((`CLOG2(SIZE_PER_RAM_1D*DATASET_NUM))), 
    .ROM_INIT_FILE({`PRJ_DIR, "mif/x2_rom_0.mif"}), 
    .RAM_INIT_FILE_0({`PRJ_DIR, "mif/x2_ram_0_0.mif"}), 
    .RAM_INIT_FILE_1({`PRJ_DIR, "mif/x2_ram_0_1.mif"}))
x2_ram_0 (.ap_clk(ap_clk), .ap_rst(ap_rst), .ap_start(ap_start), .ap_done(ap_done), 
    .kram_en(x2_ce0), .kram_addr(x2_address0), .kram_dout(x2_q0));

//############# y1 #############
kernel_ram #(.DATA_WIDTH(DATA_WIDTH), .DATA_SIZE(SIZE_PER_RAM_1D), .RAM_ADDR_WIDTH(`CLOG2(SIZE_PER_RAM_1D)), .RAM_UPDATE_INV(DATASET_UPDATE_INV),
    .DATASET_NUM(DATASET_NUM), .ROM_ADDR_WIDTH((`CLOG2(SIZE_PER_RAM_1D*DATASET_NUM))), 
    .ROM_INIT_FILE({`PRJ_DIR, "mif/y1_rom_0.mif"}), 
    .RAM_INIT_FILE_0({`PRJ_DIR, "mif/y1_ram_0_0.mif"}), 
    .RAM_INIT_FILE_1({`PRJ_DIR, "mif/y1_ram_0_1.mif"}))
y1_ram_0 (.ap_clk(ap_clk), .ap_rst(ap_rst), .ap_start(ap_start), .ap_done(ap_done), 
    .kram_en(y1_ce0), .kram_addr(y1_address0), .kram_dout(y1_q0));

//############# y2 #############
kernel_ram #(.DATA_WIDTH(DATA_WIDTH), .DATA_SIZE(SIZE_PER_RAM_1D), .RAM_ADDR_WIDTH(`CLOG2(SIZE_PER_RAM_1D)), .RAM_UPDATE_INV(DATASET_UPDATE_INV),
    .DATASET_NUM(DATASET_NUM), .ROM_ADDR_WIDTH((`CLOG2(SIZE_PER_RAM_1D*DATASET_NUM))), 
    .ROM_INIT_FILE({`PRJ_DIR, "mif/y2_rom_0.mif"}), 
    .RAM_INIT_FILE_0({`PRJ_DIR, "mif/y2_ram_0_0.mif"}), 
    .RAM_INIT_FILE_1({`PRJ_DIR, "mif/y2_ram_0_1.mif"}))
y2_ram_0 (.ap_clk(ap_clk), .ap_rst(ap_rst), .ap_start(ap_start), .ap_done(ap_done), 
    .kram_en(y2_ce0), .kram_addr(y2_address0), .kram_dout(y2_q0));

//###############################
mvt kernel(
	.ap_clk(ap_clk),
	.ap_rst(ap_rst),
	.ap_start(ap_start),
	.ap_done(ap_done),
	.ap_idle(ap_idle),
	.ap_ready(ap_ready),
	.A_0_address0(A_0_address0),
	.A_0_ce0(A_0_ce0),
	.A_0_q0(A_0_q0),
	.A_1_address0(A_1_address0),
	.A_1_ce0(A_1_ce0),
	.A_1_q0(A_1_q0),
	.A_2_address0(A_2_address0),
	.A_2_ce0(A_2_ce0),
	.A_2_q0(A_2_q0),
	.A_3_address0(A_3_address0),
	.A_3_ce0(A_3_ce0),
	.A_3_q0(A_3_q0),
	.x1_address0(x1_address0),
    .x1_ce0(x1_ce0),
    .x1_q0(x1_q0),
    .x2_address0(x2_address0),
    .x2_ce0(x2_ce0),
    .x2_q0(x2_q0),
    .y1_address0(y1_address0),
    .y1_ce0(y1_ce0),
    .y1_q0(y1_q0),
    .y2_address0(y2_address0),
    .y2_ce0(y2_ce0),
    .y2_q0(y2_q0),
    .x1_out_din(x1_out_din),
    .x1_out_full_n(1'b1),
    .x1_out_write(x1_out_write),
    .x2_out_din(x2_out_din),
    .x2_out_full_n(1'b1),
    .x2_out_write(x2_out_write)
);

//############## output stage 1: xor output by itself ##############
reg [8-1:0] xor_1 [1:0];
reg xor_valid_1 [1:0];

always@(posedge ap_clk)
begin
    xor_valid_1[0] <= x2_out_write;
	xor_valid_1[1] <= x1_out_write;
    xor_1[0] <= x2_out_din[7:0] ^ x2_out_din[15:8] ^ x2_out_din[23:16] ^ x2_out_din[31:24];
	xor_1[1] <= x1_out_din[7:0] ^ x1_out_din[15:8] ^ x1_out_din[23:16] ^ x1_out_din[31:24];
end

//############## output stage 2: 2-to-1 reduction: select/xor ##############
reg [8-1:0] xor_2;
reg xor_valid_2;

always@(posedge ap_clk)
begin
    xor_valid_2 <= xor_valid_1[0] | xor_valid_1[1];
    
    case({xor_valid_1[1], xor_valid_1[0]})
        2'b00: xor_2 <= 0;
        2'b01: xor_2 <= xor_1[0];
        2'b10: xor_2 <= xor_1[1];
        2'b11: xor_2 <= xor_1[0] ^ xor_1[1];
    endcase
end

always@(posedge ap_clk)
begin
    data_valid <= xor_valid_2;
    data_out <= xor_2[7:4] ^ xor_2[3:0];
end

endmodule