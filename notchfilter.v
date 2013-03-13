// notchfilter.v

// This file was auto-generated as a prototype implementation of a module
// created in component editor.  It ties off all outputs to ground and
// ignores all inputs.  It needs to be edited to make it do something
// useful.
//
// This file will not be automatically regenerated.  You should check it in
// to your version control system if you want to keep it.

`timescale 1 ps / 1 ps
module notchfilter #(
		parameter AUTO_CLOCK_SINK_CLOCK_RATE = "-1"
	) (
		input  wire        slave_address,      //     avalon_slave.address
		input  wire        slave_read,         //                 .read
		output wire [31:0] slave_readdata,     //                 .readdata
		output wire        slave_waitrequest,  //                 .waitrequest
		input  wire        slave_write,        //                 .write
		input  wire [31:0] slave_writedata,    //                 .writedata
		output reg  [31:0] master_address,     //    avalon_master.address
		input  wire [15:0] master_readdata,    //                 .readdata
		output reg         master_read,        //                 .read
		input  wire        master_waitrequest, //                 .waitrequest
		output reg  [9:0]  master_burstcount,  //                 .burstcount
		output wire        master_write,       //                 .write
		output wire [15:0] master_writedata,   //                 .writedata
		input  wire        master_readdatavalid,         //                 .readdatavalid
		input  wire        clk,                //       clock_sink.clk
		input  wire        reset,              // clock_sink_reset.reset
		input  wire        core_clk
	);

	// TODO: Auto-generated HDL template

	assign slave_waitrequest = 1'b0;

	assign master_write = 1'b0;

	wire infifo_empty;
	wire [9:0] infifo_usedw;

	wire outfifo_full;
	wire [9:0] outfifo_usedw;

	reg start_pulse = 0;
	reg [31:0] input_ptr;
	reg [31:0] end_ptr;

	wire [15:0] filtercore_in;
	wire [15:0] filtercore_out;

	wire filter_en;
	assign filter_en = ~infifo_empty && ~outfifo_full;

	//Depth = 512, Show ahead: rd = ack
	notch_dc_in_fifo	notch_dc_in_fifo_inst (
		.data ( master_readdata ),
		.rdclk ( core_clk ),
		.rdreq ( filter_en ),
		.wrclk ( clk ),
		.wrreq ( master_readdatavalid ),
		.q ( filtercore_in ),
		.rdempty ( infifo_empty ),
		.wrusedw ( infifo_usedw )
	);

	//Depth = 512, Show ahead: rd = ack
	notch_dc_out_fifo	notch_dc_out_fifo_inst (
		.data ( filtercore_out ),
		.rdclk ( clk ),
		.rdreq ( outfifo_usedw[5] ),
		.wrclk ( core_clk ),
		.wrreq ( filter_en ),
		.q ( master_writedata ),
		.rdusedw ( outfifo_usedw ),
		.wrfull ( outfifo_full )
	);


	Hdsdsos_copy_hardwired filtercore (
		.clk ( core_clk ),
		.clk_enable ( filter_en ),
		.reset ( reset ),
		.filter_in ( filtercore_in ),
		.filter_out ( filtercore_out )
	);

	assign slave_readdata = filtercore_out; //TEMP, do proper interface

	reg [31:0] next_ptr;
	reg isrunning = 0;
	reg readreqactive = 0;
	always @(posedge clk) begin : proc_sdraminterface_req
		master_read <= 0;

		if (start_pulse) begin
			master_read <= 1;
			master_burstcount <= 512;
			master_address <= input_ptr;
			next_ptr <= input_ptr + 512*2;

			readreqactive <= 1;
			isrunning <= 1;
		end

		if (isrunning) begin
			if (master_waitrequest && readreqactive) begin
				master_read <= 1;
			end
			else begin

				if (next_ptr <= end_ptr) begin
					if (~infifo_usedw[9]) begin

						master_address <= next_ptr;
						next_ptr <= next_ptr + ((512 - infifo_usedw) * 2);
						master_burstcount <= (512 - infifo_usedw);
						master_read <= 1;
					end
				end
				else begin
					readreqactive <= 0;
					master_read <= 0;
				end
			end
		end


	end

	always @(posedge clk) begin : proc_hostinterface
		//by default, the pulsed lines are 0
		start_pulse <= 0;

		//accept commands
		if (slave_write) begin
			case (slave_address)
				0:
					input_ptr <= slave_writedata;
				1: begin
					end_ptr <= slave_writedata;
					start_pulse <= 1;
				end

			   	default : ;
			endcase

		end
	end




endmodule
