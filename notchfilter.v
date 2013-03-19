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
		output reg         master_read = 0,        //                 .read
		input  wire        master_waitrequest, //                 .waitrequest
		output reg  [9:0]  master_burstcount,  //                 .burstcount
		output reg         master_write = 0,       //                 .write
		output wire [15:0] master_writedata,   //                 .writedata
		input  wire        master_readdatavalid,         //                 .readdatavalid
		input  wire        clk,                //       clock_sink.clk
		input  wire        reset,              // clock_sink_reset.reset
		input  wire        core_clk
	);

	// TODO: Auto-generated HDL template

	assign slave_waitrequest = 1'b0;

	wire infifo_empty;
	wire [9:0] infifo_usedw;

	wire outfifo_full;
	wire [9:0] outfifo_usedw;

	reg start_pulse = 0;
	reg [32:21] input_base_ptr;
	reg [20:0] input_ptr;
	reg [20:0] end_ptr;
	reg [31:0] next_write_ptr;

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
		.rdreq ( master_write && ~master_waitrequest ), //temp
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


	reg [20:0] next_ptr;
	reg isrunning = 0;
	reg readstagedone;
	reg [9:0] temp_next_step;
	reg [9:0] outstanding_transfers;
	reg writestate = 0;
	reg willread = 0;
	reg [9:0] outstanding_writes;
	reg [9:0] infifo_usedw_pipe;
	reg readholdoff = 0;

	reg [21:0] temp_next_step_enddelta;
	reg [9:0] temp_next_step_fifodelta;
	reg [20:0] next_ptr_pipe;
	reg [20:0] end_ptr_pipe;

	reg [31:0] performancetimer = 0;

	assign slave_readdata = slave_address ? performancetimer : {31'b0000000000000000000000000000000, isrunning};

	always @(posedge clk) begin : proc_performancetiming
		if (isrunning) begin
			performancetimer <= performancetimer + 1;
		end
		if (start_pulse) begin
			performancetimer <= 0;
		end
	end

	always @(posedge clk) begin : proc_sdraminterface

		outstanding_transfers <= outstanding_transfers - master_readdatavalid + ((master_read & ~master_waitrequest) ? master_burstcount : 0);
		infifo_usedw_pipe <= infifo_usedw;
		willread = 0;

		if (start_pulse && ~isrunning) begin
			next_ptr <= input_ptr + 512*2;
			next_write_ptr = 32'h00c00000; //TEMP!!!
			master_burstcount = 512;
			master_address <= {input_base_ptr, input_ptr};
			outstanding_transfers <= 0;
			isrunning <= 1;
			master_read <= 1;
			willread = 1;
			writestate <= 0;
			readstagedone <= 0;
		end

		temp_next_step_enddelta <= (end_ptr - next_ptr)/2; //fine to pipe here
		temp_next_step_fifodelta = 512 - infifo_usedw_pipe - outstanding_transfers; //do not pipe, inputs piped
		next_ptr_pipe <= next_ptr;
		end_ptr_pipe <= end_ptr;

		if (infifo_usedw_pipe + outstanding_transfers >= 512 || next_ptr_pipe > end_ptr_pipe) begin
			temp_next_step = 0;
		end
		else begin
			temp_next_step = (temp_next_step_enddelta > temp_next_step_fifodelta) ? temp_next_step_fifodelta : temp_next_step_enddelta;
		end

		readholdoff <= readholdoff;
		if (master_read & ~master_waitrequest)
			readholdoff <= 0;

		if (isrunning) begin

			if ((~master_waitrequest || ~master_read) && ~writestate) begin //are we allowed to make a new request?
				if (next_ptr_pipe < end_ptr_pipe) begin

					if (temp_next_step >= 32 && ~readholdoff) begin //only read if we will read more than 32 words (use readholdoff to holdoff 1 cycle due to outstanding_transfers pipeline)
						master_address <= {input_base_ptr, next_ptr_pipe};
						master_burstcount = temp_next_step;
						next_ptr <= next_ptr_pipe + master_burstcount*2;

						master_read <= 1;
						willread = 1;
						readholdoff <= 1;
					end
					else begin
						master_read <= 0;
					end
				end
				else begin
					master_read <= 0;
					readstagedone <= 1;
				end
			end

			if (~willread && ~master_read && ~writestate) begin //transition to write state
				if (outfifo_usedw > 1) begin
					writestate <= 1;
					master_address <= next_write_ptr;
					next_write_ptr <= next_write_ptr + (outfifo_usedw-1)*2;
					master_burstcount <= outfifo_usedw-1;
					outstanding_writes <= outfifo_usedw-1;
					master_write <= 1;
				end
			end

			if (master_write && ~master_waitrequest) begin //do write
				outstanding_writes <= outstanding_writes - 1;
				if (outstanding_writes == 1) begin
					master_write <= 0;
					writestate <= 0;
				end
			end

			if (readstagedone && outfifo_usedw == 0) begin
				isrunning <= 0;
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
					{input_base_ptr, input_ptr} <= slave_writedata;
				1: begin
					end_ptr <= slave_writedata[20:0];
					start_pulse <= 1;
				end

			   	default : ;
			endcase

		end
	end




endmodule
