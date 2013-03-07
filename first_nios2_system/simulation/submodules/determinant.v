// vlog ../../../../../../../determinant.v; restart -f; run 200us

`timescale 1 ps / 1 ps
module determinant #(
		parameter AUTO_CLOCK_SINK_CLOCK_RATE = "-1"
	) (
		output reg [29:0] address,           //    avalon_master.address
		input  wire [31:0] readdata,          //                 .readdata
		input  wire        readdatavalid,     //                 .readdatavalid
		input  wire        waitrequest,       //                 .waitrequest
		//output wire [2:0]  burstcount,        //                 .burstcount
		output reg         read = 0,              //                 .read
		input  wire        clk,               //       clock_sink.clk
		input  wire        reset,             // clock_sink_reset.reset
		input  wire        slave_address,     //     avalon_slave.address
		output reg        slave_waitrequest, //                 .waitrequest
		input  wire [31:0] slave_writedata,   //                 .writedata
		input  wire        slave_write,       //                 .write
		input  wire        slave_read,        //                 .read
		output reg [31:0] slave_readdata,    //                 .readdata
		output reg 			irq = 0               // interrupt_sender.irq
	);

	function [9:0] rowcol2addr;
		input [4:0] row;
		input [4:0] col;
		rowcol2addr = row * 32 + col;
	endfunction

	//we always want to fetch things in 4 word packets. But is 1 for now
	//assign burstcount = 1;

	localparam DET_RESULT_OFFSET = 0;
	localparam DET_STATUS_OFFSET = 1;
	localparam DET_PTR_OFFSET = 0;
	localparam DET_LEN_OFFSET = 1;

	localparam DET_STATUS_READY = 0;
	localparam DET_STATUS_BUSY = 1;

	reg [31:0] ptr;
	reg isrunning = 0;
	reg [5:0] mxsize;
	wire [10:0] nummxentries;
	assign nummxentries = mxsize * mxsize;

	reg done = 0;
	reg [31:0] result = 0; //temp!! xD
	reg [31:0] status = DET_STATUS_READY; //tem

	reg [10:0] timingtestctr = 2047;

	reg [9:0] dma_matrix_addr;
	reg [31:0] dma_matrix_data;
	reg dma_matrix_we = 0;

	reg start_dma_pulse = 0;
	reg dma_done = 0;

	matrixram	matrixram_inst (
	.address_a ( dma_matrix_addr ),
	.address_b ( 0 ),
	.clock ( clk ),
	.data_a ( dma_matrix_data ),
	.data_b ( 0 ),
	.wren_a ( dma_matrix_we ),
	.wren_b ( 0 ),
	.q_a (  ),
	.q_b (  )
	);

	always @(posedge clk) begin : cpuinterface_reg

		//by default, the pulsed lines are 0
		start_dma_pulse <= 0;

		if (isrunning) begin
			timingtestctr = timingtestctr - 1;
		end

		//clear the irq on any read
		if (slave_read) begin
			irq <= 0;
		end

		//raise a (new) interrupt when we are done
		if (done) begin
			if (isrunning) irq <= 1;
			isrunning <= 0;
		end

		//accept commands
		if (slave_write) begin
			case (slave_address)
				DET_PTR_OFFSET:
					ptr <= slave_writedata;

				DET_LEN_OFFSET: begin
					isrunning <= 1;
					start_dma_pulse <= 1;
					timingtestctr <= 2047;
					mxsize <= slave_writedata[4:0];
				end

				default : ;
			endcase
		end

		//make sure the status register is updated properly
		if (isrunning) begin
			status <= DET_STATUS_BUSY;
		end
		else begin
			status <= DET_STATUS_READY;
		end
	end

	always @(*) begin : cpuinterface_comb
		case (slave_address)
			DET_RESULT_OFFSET:
				slave_readdata <= result;
			DET_STATUS_OFFSET:
				slave_readdata <= status;
			default : ;
		endcase

		//reads always complete in 1 cycle
		slave_waitrequest <= 0;
	end

	always @(*) begin : proc_test
		done <= dma_done;
	end

	reg [31:0] dma_currptr;
	reg [4:0] dma_currrow;
	reg [4:0] dma_currcol;
	always @(posedge clk) begin : proc_dma

		if (start_dma_pulse) begin
			dma_currptr = ptr;
			dma_currrow <= 0;
			dma_currcol <= 0;
			read <= 1;
			dma_done <= 0;
			address <= dma_currptr;
		end

		//request pipeline
		if (!waitrequest && read) begin
			dma_currptr = dma_currptr + 4;
			address <= dma_currptr;
			if (dma_currptr == ptr + nummxentries * 4) begin
				read <= 0;
			end
		end

		dma_matrix_we <= 0;

		//recieve pipeline
		if (readdatavalid && !dma_done) begin
			dma_matrix_addr <= rowcol2addr(dma_currrow, dma_currcol);
			dma_matrix_data <= readdata;
			dma_matrix_we <= 1;

			dma_currcol <= dma_currcol + 1;
			if (dma_currcol == mxsize-1) begin
				dma_currcol <= 0;
				dma_currrow <= dma_currrow + 1;
			end

			if (dma_currrow == mxsize-1 && dma_currcol == mxsize-1) begin
				dma_done <= 1;
			end
		end



	end

endmodule
