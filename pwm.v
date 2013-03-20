// pwm.v

// This file was auto-generated as a prototype implementation of a module
// created in component editor.  It ties off all outputs to ground and
// ignores all inputs.  It needs to be edited to make it do something
// useful.
// 
// This file will not be automatically regenerated.  You should check it in
// to your version control system if you want to keep it.

`timescale 1 ps / 1 ps
module pwm (
		output wire        waitrequest, // avalon_slave.waitrequest
		input  wire        write,       //             .write
		input  wire [15:0] writedata,   //             .writedata
		input  wire        clk,         //   clock_sink.clk
		input  wire        reset,       //   reset_sink.reset
		output wire        pwm_out      //      pwm_out.export
	);

	// TODO: Auto-generated HDL template

	assign waitrequest = 1'b0;

	assign pwm_out = 1'b0;

endmodule
