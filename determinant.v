
//modelsim command: vlog ../../../../../../../determinant.v; restart -f; run 200us

`timescale 1 ps / 1 ps
module determinant #(
		parameter AUTO_CLOCK_SINK_CLOCK_RATE = "-1"
	) (
		input  wire [31:0] dataa,         // nios_custom_instruction_slave.dataa
		input  wire [31:0] datab,         //                              .datab
		output reg [31:0] result,        //                              .result
		input  wire        cstm_reset,    //                              .reset
		input  wire        cstm_clk,      //                              .clk
		input  wire        clk_en,        //                              .clk_en
		input  wire        start,         //                              .start
		output reg        done,          //                              .done
		input  wire [1:0]  n,             //                              .n
		output wire [29:0] address,       //                 avalon_master.address
		input  wire [31:0] readdata,      //                              .readdata
		input  wire        readdatavalid, //                              .readdatavalid
		input  wire        waitrequest,   //                              .waitrequest
		output wire [2:0]  burstcount,    //                              .burstcount
		output wire        read,          //                              .read
		input  wire        clk,           //                    clock_sink.clk
		input  wire        reset          //              clock_sink_reset.reset
	);

	// TODO: Auto-generated HDL template

	localparam DMA_OPCODE = 0;

	localparam DMA_SUCCESS = 0;
	localparam DMA_BUSY_FAIL = 1;
	localparam DMA_GENERIC_FAIL = 2;

	assign burstcount = 3'b000;

	assign address = 30'b000000000000000000000000000000;

	assign read = 1'b0;

	reg dma_active;

	always @(posedge cstm_clk) begin : proc_custom_regs

		if (cstm_reset) begin
			dma_active <= 0;
		end
	   	else if (clk_en) begin
	   		if (start) begin
	   			if (n == DMA_OPCODE && !dma_active)
		   			dma_active <= 1;
	   		end
	  	end
	end

	always @(*) begin : proc_custom_logic

		//by default we are not done
		done <= 0;
		if (n == DMA_OPCODE) begin
			if (dma_active) begin
	   			result <= DMA_BUSY_FAIL;
	   			done <= 1;
	   		end
	   		else begin
				result <= DMA_SUCCESS;
				done <= 1;
	   		end
   		end

	end

endmodule
