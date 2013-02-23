// determinant.v

// This file was auto-generated as a prototype implementation of a module
// created in component editor.  It ties off all outputs to ground and
// ignores all inputs.  It needs to be edited to make it do something
// useful.
// 
// This file will not be automatically regenerated.  You should check it in
// to your version control system if you want to keep it.

`timescale 1 ps / 1 ps
module determinant #(
		parameter AUTO_CLOCK_SINK_CLOCK_RATE = "-1"
	) (
		input  wire [31:0] dataa,         // nios_custom_instruction_slave.dataa
		input  wire [31:0] datab,         //                              .datab
		output wire [31:0] result,        //                              .result
		input  wire        cstm_reset,    //                              .reset
		input  wire        cstm_clk,      //                              .clk
		input  wire        clk_en,        //                              .clk_en
		input  wire        start,         //                              .start
		output wire        done,          //                              .done
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

	assign result = 32'b00000000000000000000000000000000;

	assign done = 1'b1;

	assign burstcount = 3'b000;

	assign address = 30'b000000000000000000000000000000;

	assign read = 1'b0;

endmodule
