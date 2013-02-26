// new_component.v

// This file was auto-generated as a prototype implementation of a module
// created in component editor.  It ties off all outputs to ground and
// ignores all inputs.  It needs to be edited to make it do something
// useful.
// 
// This file will not be automatically regenerated.  You should check it in
// to your version control system if you want to keep it.

`timescale 1 ps / 1 ps
module new_component (
		input  wire [31:0] new_signal,   // nios_custom_instruction_slave.dataa
		input  wire [31:0] new_signal_1, //                              .datab
		output wire [31:0] new_signal_2, //                              .result
		input  wire        new_signal_3, //                              .reset
		input  wire        new_signal_4, //                              .clk
		input  wire        new_signal_5, //                              .clk_en
		input  wire        new_signal_6, //                              .start
		output wire        new_signal_7, //                              .done
		input  wire        new_signal_8  //                              .n
	);

	// TODO: Auto-generated HDL template

	assign new_signal_2 = 32'b00000000000000000000000000000000;

	assign new_signal_7 = 1'b0;

endmodule
