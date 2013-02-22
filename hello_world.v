// Copyright (C) 1991-2012 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 12.0 Build 178 05/31/2012 SJ Full Version"
// CREATED		"Wed Feb 06 13:18:54 2013"

module hello_world(
	iCLK_50,
	oDRAM0_WE_N,
	oDRAM0_CAS_N,
	oDRAM0_CKE,
	oDRAM0_CS_N,
	oDRAM0_RAS_N,
	oDRAM1_CKE,
	oDRAM1_CS_N,
	oDRAM1_RAS_N,
	oDRAM1_WE_N,
	oDRAM1_CAS_N,
	oDRAM0_CLK,
	oDRAM1_CLK,
	DRAM_DQ,
	oDRAM0_A,
	oDRAM0_BA,
	oDRAM1_A,
	oDRAM1_BA,
	oDRAM_DM,
	oLEDG
);


input wire	iCLK_50;
output wire	oDRAM0_WE_N;
output wire	oDRAM0_CAS_N;
output wire	oDRAM0_CKE;
output wire	oDRAM0_CS_N;
output wire	oDRAM0_RAS_N;
output wire	oDRAM1_CKE;
output wire	oDRAM1_CS_N;
output wire	oDRAM1_RAS_N;
output wire	oDRAM1_WE_N;
output wire	oDRAM1_CAS_N;
output wire	oDRAM0_CLK;
output wire	oDRAM1_CLK;
inout wire	[31:0] DRAM_DQ;
output wire	[12:0] oDRAM0_A;
output wire	[1:0] oDRAM0_BA;
output wire	[12:0] oDRAM1_A;
output wire	[1:0] oDRAM1_BA;
output wire	[3:0] oDRAM_DM;
output wire	[7:0] oLEDG;

	first_nios2_system u0 (
        .clk_clk                            (iCLK_50),                            //                         clk.clk
        .reset_reset_n                      (1),                      //                       reset.reset_n
        .led_pio_external_connection_export (oLEDG), // led_pio_external_connection.export
        .sdram_0_wire_addr                  (oDRAM0_A),                  //                sdram_0_wire.addr
        .sdram_0_wire_ba                    (oDRAM0_BA),                    //                            .ba
        .sdram_0_wire_cas_n                 (oDRAM0_CAS_N),                 //                            .cas_n
        .sdram_0_wire_cke                   (oDRAM0_CKE),                   //                            .cke
        .sdram_0_wire_cs_n                  (oDRAM0_CS_N),                  //                            .cs_n
        .sdram_0_wire_dq                    (DRAM_DQ),                    //                            .dq
        .sdram_0_wire_dqm                   (oDRAM_DM),                   //                            .dqm
        .sdram_0_wire_ras_n                 (oDRAM0_RAS_N),                 //                            .ras_n
        .sdram_0_wire_we_n                  (oDRAM0_WE_N),                   //                            .we_n
		  .sdram_external_clk_clk             (oDRAM0_CLK)
    );
	 
	//parallell drive hack
	assign oDRAM1_A = oDRAM0_A;
	assign oDRAM1_BA = oDRAM0_BA;
	assign oDRAM1_CAS_N = oDRAM0_CAS_N;
	assign oDRAM1_CKE = oDRAM0_CKE;
	assign oDRAM1_CS_N = oDRAM0_CS_N;
	assign oDRAM1_RAS_N = oDRAM0_RAS_N;
	assign oDRAM1_WE_N = oDRAM0_WE_N;
	assign oDRAM1_CLK = oDRAM0_CLK;


endmodule
