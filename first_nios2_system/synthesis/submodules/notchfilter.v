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
		output wire        master_read,        //                 .read
		input  wire        master_waitrequest, //                 .waitrequest
		output reg  [9:0]  master_burstcount,  //                 .burstcount
		output wire        master_write,       //                 .write
		output wire [15:0] master_writedata,   //                 .writedata
		input  wire        master_readdatavalid,         //                 .readdatavalid
		input  wire        clk,                //       clock_sink.clk
		input  wire        reset               // clock_sink_reset.reset
	);

	// TODO: Auto-generated HDL template

	assign slave_waitrequest = 1'b0;

	assign slave_readdata = 32'b00000000000000000000000000000000;

	assign master_writedata = 32'b00000000000000000000000000000000;

	assign master_write = 1'b0;

	assign master_read = 1'b0;

	wire infifo_empty;
	wire infifo_full;
	wire [8:0] infifo_usedw;
	reg  infifo_rdreq = 0;
	reg  infifo_wrreq = 0;
	reg  [15:0] infifo_writedata = 0;
	wire [15:0] infifo_readdata;

	reg start_pulse = 0;
	reg [32:0] input_ptr = 0;

	//Depth: 512
	notchfifo	notchfifo_inst (
		.clock ( clk ),
		.data ( infifo_writedata ),
		.rdreq ( infifo_rdreq ),
		.wrreq ( infifo_wrreq ),
		.empty ( infifo_empty ),
		.full ( infifo_full ),
		.q ( infifo_readdata ),
		.usedw ( infifo_usedw )
	);

	always @(posedge clk) begin : proc_sdraminterface_req
		if (start_pulse) begin
			master_burstcount <= 512;
			master_address <= input_ptr;
		end
	end

	always @(posedge clk) begin : proc_sdraminterface_rec
		infifo_wrreq <= 0;

		if (master_readdatavalid) begin
			infifo_writedata <= master_readdata;
			infifo_wrreq <= 1;
		end
	end

	always @(posedge clk) begin : proc_hostinterface
		//by default, the pulsed lines are 0
		start_pulse <= 0;

		//accept commands
		if (slave_write) begin
			input_ptr <= slave_writedata;
			start_pulse <= 1;
		end
	end


endmodule
