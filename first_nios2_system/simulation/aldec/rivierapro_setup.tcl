
# (C) 2001-2013 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 12.0 178 win32 2013.02.23.21:35:23

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "first_nios2_system"
} elseif { ![ string match "" $TOP_LEVEL_NAME ] } { 
  set TOP_LEVEL_NAME "$TOP_LEVEL_NAME"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} elseif { ![ string match "" $QSYS_SIMDIR ] } { 
  set QSYS_SIMDIR "$QSYS_SIMDIR"
} 

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ic_tag_ram.dat ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ic_tag_ram.hex ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ic_tag_ram.mif ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ociram_default_contents.dat ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ociram_default_contents.hex ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ociram_default_contents.mif ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_a.dat ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_a.hex ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_a.mif ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_b.dat ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_b.hex ./
file copy -force $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_b.mif ./

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                  ./libraries/altera_ver      
vmap       altera_ver       ./libraries/altera_ver      
ensure_lib                  ./libraries/lpm_ver         
vmap       lpm_ver          ./libraries/lpm_ver         
ensure_lib                  ./libraries/sgate_ver       
vmap       sgate_ver        ./libraries/sgate_ver       
ensure_lib                  ./libraries/altera_mf_ver   
vmap       altera_mf_ver    ./libraries/altera_mf_ver   
ensure_lib                  ./libraries/altera_lnsim_ver
vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver
ensure_lib                  ./libraries/cycloneiii_ver  
vmap       cycloneiii_ver   ./libraries/cycloneiii_ver  
ensure_lib                                                                                             ./libraries/first_nios2_system_irq_mapper                                                              
vmap       first_nios2_system_irq_mapper                                                               ./libraries/first_nios2_system_irq_mapper                                                              
ensure_lib                                                                                             ./libraries/first_nios2_system_width_adapter                                                           
vmap       first_nios2_system_width_adapter                                                            ./libraries/first_nios2_system_width_adapter                                                           
ensure_lib                                                                                             ./libraries/first_nios2_system_rsp_xbar_mux_001                                                        
vmap       first_nios2_system_rsp_xbar_mux_001                                                         ./libraries/first_nios2_system_rsp_xbar_mux_001                                                        
ensure_lib                                                                                             ./libraries/first_nios2_system_rsp_xbar_mux                                                            
vmap       first_nios2_system_rsp_xbar_mux                                                             ./libraries/first_nios2_system_rsp_xbar_mux                                                            
ensure_lib                                                                                             ./libraries/first_nios2_system_rsp_xbar_demux_002                                                      
vmap       first_nios2_system_rsp_xbar_demux_002                                                       ./libraries/first_nios2_system_rsp_xbar_demux_002                                                      
ensure_lib                                                                                             ./libraries/first_nios2_system_rsp_xbar_demux                                                          
vmap       first_nios2_system_rsp_xbar_demux                                                           ./libraries/first_nios2_system_rsp_xbar_demux                                                          
ensure_lib                                                                                             ./libraries/first_nios2_system_cmd_xbar_mux                                                            
vmap       first_nios2_system_cmd_xbar_mux                                                             ./libraries/first_nios2_system_cmd_xbar_mux                                                            
ensure_lib                                                                                             ./libraries/first_nios2_system_cmd_xbar_demux_001                                                      
vmap       first_nios2_system_cmd_xbar_demux_001                                                       ./libraries/first_nios2_system_cmd_xbar_demux_001                                                      
ensure_lib                                                                                             ./libraries/first_nios2_system_cmd_xbar_demux                                                          
vmap       first_nios2_system_cmd_xbar_demux                                                           ./libraries/first_nios2_system_cmd_xbar_demux                                                          
ensure_lib                                                                                             ./libraries/first_nios2_system_rst_controller                                                          
vmap       first_nios2_system_rst_controller                                                           ./libraries/first_nios2_system_rst_controller                                                          
ensure_lib                                                                                             ./libraries/first_nios2_system_burst_adapter                                                           
vmap       first_nios2_system_burst_adapter                                                            ./libraries/first_nios2_system_burst_adapter                                                           
ensure_lib                                                                                             ./libraries/first_nios2_system_limiter                                                                 
vmap       first_nios2_system_limiter                                                                  ./libraries/first_nios2_system_limiter                                                                 
ensure_lib                                                                                             ./libraries/first_nios2_system_id_router_002                                                           
vmap       first_nios2_system_id_router_002                                                            ./libraries/first_nios2_system_id_router_002                                                           
ensure_lib                                                                                             ./libraries/first_nios2_system_id_router_001                                                           
vmap       first_nios2_system_id_router_001                                                            ./libraries/first_nios2_system_id_router_001                                                           
ensure_lib                                                                                             ./libraries/first_nios2_system_id_router                                                               
vmap       first_nios2_system_id_router                                                                ./libraries/first_nios2_system_id_router                                                               
ensure_lib                                                                                             ./libraries/first_nios2_system_addr_router_001                                                         
vmap       first_nios2_system_addr_router_001                                                          ./libraries/first_nios2_system_addr_router_001                                                         
ensure_lib                                                                                             ./libraries/first_nios2_system_addr_router                                                             
vmap       first_nios2_system_addr_router                                                              ./libraries/first_nios2_system_addr_router                                                             
ensure_lib                                                                                             ./libraries/first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
vmap       first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo ./libraries/first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
ensure_lib                                                                                             ./libraries/first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent         
vmap       first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent          ./libraries/first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent         
ensure_lib                                                                                             ./libraries/first_nios2_system_cpu_instruction_master_translator_avalon_universal_master_0_agent       
vmap       first_nios2_system_cpu_instruction_master_translator_avalon_universal_master_0_agent        ./libraries/first_nios2_system_cpu_instruction_master_translator_avalon_universal_master_0_agent       
ensure_lib                                                                                             ./libraries/first_nios2_system_cpu_jtag_debug_module_translator                                        
vmap       first_nios2_system_cpu_jtag_debug_module_translator                                         ./libraries/first_nios2_system_cpu_jtag_debug_module_translator                                        
ensure_lib                                                                                             ./libraries/first_nios2_system_cpu_instruction_master_translator                                       
vmap       first_nios2_system_cpu_instruction_master_translator                                        ./libraries/first_nios2_system_cpu_instruction_master_translator                                       
ensure_lib                                                                                             ./libraries/first_nios2_system_cpu_custom_instruction_master_multi_slave_translator0                   
vmap       first_nios2_system_cpu_custom_instruction_master_multi_slave_translator0                    ./libraries/first_nios2_system_cpu_custom_instruction_master_multi_slave_translator0                   
ensure_lib                                                                                             ./libraries/first_nios2_system_cpu_custom_instruction_master_multi_xconnect                            
vmap       first_nios2_system_cpu_custom_instruction_master_multi_xconnect                             ./libraries/first_nios2_system_cpu_custom_instruction_master_multi_xconnect                            
ensure_lib                                                                                             ./libraries/first_nios2_system_cpu_custom_instruction_master_translator                                
vmap       first_nios2_system_cpu_custom_instruction_master_translator                                 ./libraries/first_nios2_system_cpu_custom_instruction_master_translator                                
ensure_lib                                                                                             ./libraries/first_nios2_system_fp_cust_insn_0                                                          
vmap       first_nios2_system_fp_cust_insn_0                                                           ./libraries/first_nios2_system_fp_cust_insn_0                                                          
ensure_lib                                                                                             ./libraries/first_nios2_system_altpll_0                                                                
vmap       first_nios2_system_altpll_0                                                                 ./libraries/first_nios2_system_altpll_0                                                                
ensure_lib                                                                                             ./libraries/first_nios2_system_sdram_0                                                                 
vmap       first_nios2_system_sdram_0                                                                  ./libraries/first_nios2_system_sdram_0                                                                 
ensure_lib                                                                                             ./libraries/first_nios2_system_led_pio                                                                 
vmap       first_nios2_system_led_pio                                                                  ./libraries/first_nios2_system_led_pio                                                                 
ensure_lib                                                                                             ./libraries/first_nios2_system_sysid                                                                   
vmap       first_nios2_system_sysid                                                                    ./libraries/first_nios2_system_sysid                                                                   
ensure_lib                                                                                             ./libraries/first_nios2_system_sys_clk_timer                                                           
vmap       first_nios2_system_sys_clk_timer                                                            ./libraries/first_nios2_system_sys_clk_timer                                                           
ensure_lib                                                                                             ./libraries/first_nios2_system_jtag_uart                                                               
vmap       first_nios2_system_jtag_uart                                                                ./libraries/first_nios2_system_jtag_uart                                                               
ensure_lib                                                                                             ./libraries/first_nios2_system_cpu                                                                     
vmap       first_nios2_system_cpu                                                                      ./libraries/first_nios2_system_cpu                                                                     

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vlog +define+SKIP_KEYWORDS_PRAGMA "C:/altera/quartus/eda/sim_lib/altera_primitives.v" -work altera_ver      
  vlog                              "C:/altera/quartus/eda/sim_lib/220model.v"          -work lpm_ver         
  vlog                              "C:/altera/quartus/eda/sim_lib/sgate.v"             -work sgate_ver       
  vlog                              "C:/altera/quartus/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  vlog                              "C:/altera/quartus/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  vlog                              "C:/altera/quartus/eda/sim_lib/cycloneiii_atoms.v"  -work cycloneiii_ver  
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_irq_mapper.sv"                                   -work first_nios2_system_irq_mapper                                                              
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                     -work first_nios2_system_width_adapter                                                           
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                -work first_nios2_system_width_adapter                                                           
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work first_nios2_system_rsp_xbar_mux_001                                                        
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_rsp_xbar_mux_001.sv"                             -work first_nios2_system_rsp_xbar_mux_001                                                        
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work first_nios2_system_rsp_xbar_mux                                                            
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_rsp_xbar_mux.sv"                                 -work first_nios2_system_rsp_xbar_mux                                                            
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_rsp_xbar_demux_002.sv"                           -work first_nios2_system_rsp_xbar_demux_002                                                      
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_rsp_xbar_demux.sv"                               -work first_nios2_system_rsp_xbar_demux                                                          
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work first_nios2_system_cmd_xbar_mux                                                            
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_cmd_xbar_mux.sv"                                 -work first_nios2_system_cmd_xbar_mux                                                            
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_cmd_xbar_demux_001.sv"                           -work first_nios2_system_cmd_xbar_demux_001                                                      
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_cmd_xbar_demux.sv"                               -work first_nios2_system_cmd_xbar_demux                                                          
  vlog  "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                          -work first_nios2_system_rst_controller                                                          
  vlog  "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                        -work first_nios2_system_rst_controller                                                          
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                     -work first_nios2_system_burst_adapter                                                           
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                   -work first_nios2_system_limiter                                                                 
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                   -work first_nios2_system_limiter                                                                 
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_id_router_002.sv"                                -work first_nios2_system_id_router_002                                                           
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_id_router_001.sv"                                -work first_nios2_system_id_router_001                                                           
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_id_router.sv"                                    -work first_nios2_system_id_router                                                               
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_addr_router_001.sv"                              -work first_nios2_system_addr_router_001                                                         
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_addr_router.sv"                                  -work first_nios2_system_addr_router                                                             
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                            -work first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                       -work first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                -work first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                      -work first_nios2_system_cpu_instruction_master_translator_avalon_universal_master_0_agent       
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                  -work first_nios2_system_cpu_jtag_debug_module_translator                                        
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                 -work first_nios2_system_cpu_instruction_master_translator                                       
  vlog  "$QSYS_SIMDIR/submodules/altera_customins_slave_translator.sv"                               -work first_nios2_system_cpu_custom_instruction_master_multi_slave_translator0                   
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_custom_instruction_master_multi_xconnect.sv" -work first_nios2_system_cpu_custom_instruction_master_multi_xconnect                            
  vlog  "$QSYS_SIMDIR/submodules/altera_customins_master_translator.v"                               -work first_nios2_system_cpu_custom_instruction_master_translator                                
  vlog  "$QSYS_SIMDIR/submodules/fp_cust_insn.v"                                                     -work first_nios2_system_fp_cust_insn_0                                                          
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_altpll_0.vo"                                     -work first_nios2_system_altpll_0                                                                
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_sdram_0.v"                                       -work first_nios2_system_sdram_0                                                                 
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_led_pio.v"                                       -work first_nios2_system_led_pio                                                                 
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_sysid.vo"                                        -work first_nios2_system_sysid                                                                   
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_sys_clk_timer.v"                                 -work first_nios2_system_sys_clk_timer                                                           
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_jtag_uart.v"                                     -work first_nios2_system_jtag_uart                                                               
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_cpu.vo"                                          -work first_nios2_system_cpu                                                                     
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_jtag_debug_module_sysclk.v"                  -work first_nios2_system_cpu                                                                     
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_jtag_debug_module_tck.v"                     -work first_nios2_system_cpu                                                                     
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_jtag_debug_module_wrapper.v"                 -work first_nios2_system_cpu                                                                     
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_oci_test_bench.v"                            -work first_nios2_system_cpu                                                                     
  vlog  "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_test_bench.v"                                -work first_nios2_system_cpu                                                                     
  vlog  "$QSYS_SIMDIR/first_nios2_system.v"                                                                                                                                                           
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim +access +r  -t ps -L work -L first_nios2_system_irq_mapper -L first_nios2_system_width_adapter -L first_nios2_system_rsp_xbar_mux_001 -L first_nios2_system_rsp_xbar_mux -L first_nios2_system_rsp_xbar_demux_002 -L first_nios2_system_rsp_xbar_demux -L first_nios2_system_cmd_xbar_mux -L first_nios2_system_cmd_xbar_demux_001 -L first_nios2_system_cmd_xbar_demux -L first_nios2_system_rst_controller -L first_nios2_system_burst_adapter -L first_nios2_system_limiter -L first_nios2_system_id_router_002 -L first_nios2_system_id_router_001 -L first_nios2_system_id_router -L first_nios2_system_addr_router_001 -L first_nios2_system_addr_router -L first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent -L first_nios2_system_cpu_instruction_master_translator_avalon_universal_master_0_agent -L first_nios2_system_cpu_jtag_debug_module_translator -L first_nios2_system_cpu_instruction_master_translator -L first_nios2_system_cpu_custom_instruction_master_multi_slave_translator0 -L first_nios2_system_cpu_custom_instruction_master_multi_xconnect -L first_nios2_system_cpu_custom_instruction_master_translator -L first_nios2_system_fp_cust_insn_0 -L first_nios2_system_altpll_0 -L first_nios2_system_sdram_0 -L first_nios2_system_led_pio -L first_nios2_system_sysid -L first_nios2_system_sys_clk_timer -L first_nios2_system_jtag_uart -L first_nios2_system_cpu -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -dbg -O2 +access +r -t ps -L work -L first_nios2_system_irq_mapper -L first_nios2_system_width_adapter -L first_nios2_system_rsp_xbar_mux_001 -L first_nios2_system_rsp_xbar_mux -L first_nios2_system_rsp_xbar_demux_002 -L first_nios2_system_rsp_xbar_demux -L first_nios2_system_cmd_xbar_mux -L first_nios2_system_cmd_xbar_demux_001 -L first_nios2_system_cmd_xbar_demux -L first_nios2_system_rst_controller -L first_nios2_system_burst_adapter -L first_nios2_system_limiter -L first_nios2_system_id_router_002 -L first_nios2_system_id_router_001 -L first_nios2_system_id_router -L first_nios2_system_addr_router_001 -L first_nios2_system_addr_router -L first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent -L first_nios2_system_cpu_instruction_master_translator_avalon_universal_master_0_agent -L first_nios2_system_cpu_jtag_debug_module_translator -L first_nios2_system_cpu_instruction_master_translator -L first_nios2_system_cpu_custom_instruction_master_multi_slave_translator0 -L first_nios2_system_cpu_custom_instruction_master_multi_xconnect -L first_nios2_system_cpu_custom_instruction_master_translator -L first_nios2_system_fp_cust_insn_0 -L first_nios2_system_altpll_0 -L first_nios2_system_sdram_0 -L first_nios2_system_led_pio -L first_nios2_system_sysid -L first_nios2_system_sys_clk_timer -L first_nios2_system_jtag_uart -L first_nios2_system_cpu -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
}
h
