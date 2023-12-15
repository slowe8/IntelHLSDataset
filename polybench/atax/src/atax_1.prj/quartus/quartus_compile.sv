module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic clock2x
	, input logic [0:0] atax_start
	, output logic [0:0] atax_busy
	, output logic [0:0] atax_done
	, input logic [0:0] atax_stall
	, input logic [63:0] atax_A
	, input logic [63:0] atax_x
	, input logic [63:0] atax_y_out
	, output logic [63:0] atax_avmm_0_rw_address
	, output logic [7:0] atax_avmm_0_rw_byteenable
	, output logic [0:0] atax_avmm_0_rw_read
	, input logic [63:0] atax_avmm_0_rw_readdata
	, output logic [0:0] atax_avmm_0_rw_write
	, output logic [63:0] atax_avmm_0_rw_writedata
	);

	logic [0:0] atax_start_reg;
	logic [0:0] atax_busy_reg;
	logic [0:0] atax_done_reg;
	logic [0:0] atax_stall_reg;
	logic [63:0] atax_A_reg;
	logic [63:0] atax_x_reg;
	logic [63:0] atax_y_out_reg;
	logic [63:0] atax_avmm_0_rw_address_reg;
	logic [7:0] atax_avmm_0_rw_byteenable_reg;
	logic [0:0] atax_avmm_0_rw_read_reg;
	logic [63:0] atax_avmm_0_rw_readdata_reg;
	logic [0:0] atax_avmm_0_rw_write_reg;
	logic [63:0] atax_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		atax_start_reg <= atax_start;
		atax_busy <= atax_busy_reg;
		atax_done <= atax_done_reg;
		atax_stall_reg <= atax_stall;
		atax_A_reg <= atax_A;
		atax_x_reg <= atax_x;
		atax_y_out_reg <= atax_y_out;
		atax_avmm_0_rw_address <= atax_avmm_0_rw_address_reg;
		atax_avmm_0_rw_byteenable <= atax_avmm_0_rw_byteenable_reg;
		atax_avmm_0_rw_read <= atax_avmm_0_rw_read_reg;
		atax_avmm_0_rw_readdata_reg <= atax_avmm_0_rw_readdata;
		atax_avmm_0_rw_write <= atax_avmm_0_rw_write_reg;
		atax_avmm_0_rw_writedata <= atax_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	atax atax_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .clock2x(clock2x)
		, .start(atax_start_reg)
		, .busy(atax_busy_reg)
		, .done(atax_done_reg)
		, .stall(atax_stall_reg)
		, .A(atax_A_reg)
		, .x(atax_x_reg)
		, .y_out(atax_y_out_reg)
		, .avmm_0_rw_address(atax_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(atax_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(atax_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(atax_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(atax_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(atax_avmm_0_rw_writedata_reg)
	);



endmodule
