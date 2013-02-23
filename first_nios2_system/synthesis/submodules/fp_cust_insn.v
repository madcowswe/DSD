`timescale 1 ps / 1 ps
module fp_cust_insn (
		input  wire [31:0] dataa,  // nios_custom_instruction_slave.dataa
		input  wire [31:0] datab,  //                              .datab
		output wire [31:0] result, //                              .result
		input  wire [1:0]  n,
		input  wire        reset,  //                              .reset
		input  wire        clk,    //                              .clk
		input  wire        clk_en, //                              .clk_en
		input  wire        start,  //                              .start
		output wire        done    //                              .done
	);

	
	// default duration config
	parameter fp_add_latency = 7;
	parameter fp_sub_latency = 7;
	parameter fp_mul_latency = 5;
	
	// n = opcode
	parameter add_opcode = 0;
	parameter sub_opcode = 1;
	parameter mul_opcode = 2;
	
	//////////////////////////////////////////////////////////////////////////////
	
	wire add_sub_select;
	wire [31:0] result_bus [3:0];
	
	reg [3:0] delay_cnt;

	//////////////////////////////////////////////////////////////////////////////
	
	// note: reset ignored, only state kept is in a counter and that is properly reset with start signal

	// derive add/sub control signal for the addsub block"
	// add_sub high -> addition; low -> substraction
	assign add_sub_select = (n == add_opcode) ? 1'b1 : 1'b0;
	
	// add and sub results duplicated on both wires
	assign result_bus[sub_opcode] = result_bus[add_opcode];
	
	// multiplex correct result by operation select
	assign result = result_bus[n];

	// done signal
	assign done = (delay_cnt == 0) ? 1'b1 : 1'b0;
		
	//////////////////////////////////////////////////////////////////////////////

	// downcounter for asserting done when data is valid
	always @ (posedge clk)
	begin
		if (clk_en)
		begin
			if (start)
			begin
				case(n)
				add_opcode: delay_cnt <= fp_add_latency - 1;
				sub_opcode: delay_cnt <= fp_sub_latency - 1;
				mul_opcode: delay_cnt <= fp_mul_latency - 1;
				default: delay_cnt <= 0;
				endcase
			end
			else
				delay_cnt <= delay_cnt - 1; 
		end
	end

	//////////////////////////////////////////////////////////////////////////////

	// addition and substraction block
	altfp_addsub altfp_addsub_inst (.clock ( clk ),
									.add_sub ( add_sub_select ),
									.clk_en ( clk_en ),
									.dataa ( dataa ),
									.datab ( datab ),
									.result ( result_bus[add_opcode] ));

	// multiplication block
	altfp_mul altfp_mul_inst (.clock ( clk ),
							  .clk_en( clk_en ),
							  .dataa ( dataa ),
							  .datab ( datab ),
							  .result ( result_bus[mul_opcode] ));

endmodule