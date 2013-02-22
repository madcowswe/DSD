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
	input CLOCK_50,
	output DRAM_CAS_N,
	output DRAM_WE_N,
	output DRAM_RAS_N,
	output DRAM_CKE,
	output DRAM_CS_N,
	output DRAM_CLK,
	inout [15:0] DRAM_DQ,
	output [11:0] DRAM_ADDR,
	output [1:0] DRAM_BA,
	output [1:0] DRAM_DQM
);

    first_nios2_system u0 (
        .clk_clk                            (CLOCK_50),                            //                         clk.clk
        .reset_reset_n                      (1),                      //                       reset.reset_n
        .led_pio_external_connection_export (LEDG), // led_pio_external_connection.export
        .sdram_0_wire_addr                  (DRAM_ADDR),                  //                sdram_0_wire.addr
        .sdram_0_wire_ba                    (DRAM_BA),                    //                            .ba
        .sdram_0_wire_cas_n                 (DRAM_CAS_N),                 //                            .cas_n
        .sdram_0_wire_cke                   (DRAM_CKE),                   //                            .cke
        .sdram_0_wire_cs_n                  (DRAM_CS_N),                  //                            .cs_n
        .sdram_0_wire_dq                    (DRAM_DQ),                    //                            .dq
        .sdram_0_wire_dqm                   (DRAM_DQM),                   //                            .dqm
        .sdram_0_wire_ras_n                 (DRAM_RAS_N),                 //                            .ras_n
        .sdram_0_wire_we_n                  (DRAM_WE_N),                  //                            .we_n
        .sdram_external_clk_clk             (DRAM_CLK)              //          sdram_external_clk.clk
    );


endmodule
