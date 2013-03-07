
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

# ACDS 12.1 177 win32 2013.03.05.04:02:32

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
  set TOP_LEVEL_NAME "first_nios2_system_tb"
} elseif { ![ string match "" $TOP_LEVEL_NAME ] } { 
  set TOP_LEVEL_NAME "$TOP_LEVEL_NAME"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} elseif { ![ string match "" $QSYS_SIMDIR ] } { 
  set QSYS_SIMDIR "$QSYS_SIMDIR"
} 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_bht_ram.dat ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_bht_ram.hex ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_bht_ram.mif ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_dc_tag_ram.dat ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_dc_tag_ram.hex ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_dc_tag_ram.mif ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_ic_tag_ram.dat ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_ic_tag_ram.hex ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_ic_tag_ram.mif ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_ociram_default_contents.dat ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_ociram_default_contents.hex ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_ociram_default_contents.mif ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_a.dat ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_a.hex ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_a.mif ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_b.dat ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_b.hex ./
file copy -force $QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_b.mif ./

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
  ensure_lib                  ./libraries/altera_ver/      
  vmap       altera_ver       ./libraries/altera_ver/      
  ensure_lib                  ./libraries/lpm_ver/         
  vmap       lpm_ver          ./libraries/lpm_ver/         
  ensure_lib                  ./libraries/sgate_ver/       
  vmap       sgate_ver        ./libraries/sgate_ver/       
  ensure_lib                  ./libraries/altera_mf_ver/   
  vmap       altera_mf_ver    ./libraries/altera_mf_ver/   
  ensure_lib                  ./libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver/
  ensure_lib                  ./libraries/cycloneiii_ver/  
  vmap       cycloneiii_ver   ./libraries/cycloneiii_ver/  
}
ensure_lib                                                                          ./libraries/irq_mapper/                                                              
vmap       irq_mapper                                                               ./libraries/irq_mapper/                                                              
ensure_lib                                                                          ./libraries/width_adapter/                                                           
vmap       width_adapter                                                            ./libraries/width_adapter/                                                           
ensure_lib                                                                          ./libraries/rsp_xbar_mux_001/                                                        
vmap       rsp_xbar_mux_001                                                         ./libraries/rsp_xbar_mux_001/                                                        
ensure_lib                                                                          ./libraries/rsp_xbar_mux/                                                            
vmap       rsp_xbar_mux                                                             ./libraries/rsp_xbar_mux/                                                            
ensure_lib                                                                          ./libraries/rsp_xbar_demux_001/                                                      
vmap       rsp_xbar_demux_001                                                       ./libraries/rsp_xbar_demux_001/                                                      
ensure_lib                                                                          ./libraries/rsp_xbar_demux/                                                          
vmap       rsp_xbar_demux                                                           ./libraries/rsp_xbar_demux/                                                          
ensure_lib                                                                          ./libraries/cmd_xbar_mux_001/                                                        
vmap       cmd_xbar_mux_001                                                         ./libraries/cmd_xbar_mux_001/                                                        
ensure_lib                                                                          ./libraries/cmd_xbar_mux/                                                            
vmap       cmd_xbar_mux                                                             ./libraries/cmd_xbar_mux/                                                            
ensure_lib                                                                          ./libraries/cmd_xbar_demux_002/                                                      
vmap       cmd_xbar_demux_002                                                       ./libraries/cmd_xbar_demux_002/                                                      
ensure_lib                                                                          ./libraries/cmd_xbar_demux_001/                                                      
vmap       cmd_xbar_demux_001                                                       ./libraries/cmd_xbar_demux_001/                                                      
ensure_lib                                                                          ./libraries/cmd_xbar_demux/                                                          
vmap       cmd_xbar_demux                                                           ./libraries/cmd_xbar_demux/                                                          
ensure_lib                                                                          ./libraries/rst_controller/                                                          
vmap       rst_controller                                                           ./libraries/rst_controller/                                                          
ensure_lib                                                                          ./libraries/burst_adapter/                                                           
vmap       burst_adapter                                                            ./libraries/burst_adapter/                                                           
ensure_lib                                                                          ./libraries/limiter/                                                                 
vmap       limiter                                                                  ./libraries/limiter/                                                                 
ensure_lib                                                                          ./libraries/id_router_002/                                                           
vmap       id_router_002                                                            ./libraries/id_router_002/                                                           
ensure_lib                                                                          ./libraries/id_router_001/                                                           
vmap       id_router_001                                                            ./libraries/id_router_001/                                                           
ensure_lib                                                                          ./libraries/id_router/                                                               
vmap       id_router                                                                ./libraries/id_router/                                                               
ensure_lib                                                                          ./libraries/addr_router_002/                                                         
vmap       addr_router_002                                                          ./libraries/addr_router_002/                                                         
ensure_lib                                                                          ./libraries/addr_router_001/                                                         
vmap       addr_router_001                                                          ./libraries/addr_router_001/                                                         
ensure_lib                                                                          ./libraries/addr_router/                                                             
vmap       addr_router                                                              ./libraries/addr_router/                                                             
ensure_lib                                                                          ./libraries/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
vmap       cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo ./libraries/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
ensure_lib                                                                          ./libraries/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent/         
vmap       cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent          ./libraries/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent/         
ensure_lib                                                                          ./libraries/cpu_instruction_master_translator_avalon_universal_master_0_agent/       
vmap       cpu_instruction_master_translator_avalon_universal_master_0_agent        ./libraries/cpu_instruction_master_translator_avalon_universal_master_0_agent/       
ensure_lib                                                                          ./libraries/cpu_jtag_debug_module_translator/                                        
vmap       cpu_jtag_debug_module_translator                                         ./libraries/cpu_jtag_debug_module_translator/                                        
ensure_lib                                                                          ./libraries/cpu_instruction_master_translator/                                       
vmap       cpu_instruction_master_translator                                        ./libraries/cpu_instruction_master_translator/                                       
ensure_lib                                                                          ./libraries/determinant_0/                                                           
vmap       determinant_0                                                            ./libraries/determinant_0/                                                           
ensure_lib                                                                          ./libraries/sdram_0/                                                                 
vmap       sdram_0                                                                  ./libraries/sdram_0/                                                                 
ensure_lib                                                                          ./libraries/led_pio/                                                                 
vmap       led_pio                                                                  ./libraries/led_pio/                                                                 
ensure_lib                                                                          ./libraries/sysid/                                                                   
vmap       sysid                                                                    ./libraries/sysid/                                                                   
ensure_lib                                                                          ./libraries/sys_clk_timer/                                                           
vmap       sys_clk_timer                                                            ./libraries/sys_clk_timer/                                                           
ensure_lib                                                                          ./libraries/jtag_uart/                                                               
vmap       jtag_uart                                                                ./libraries/jtag_uart/                                                               
ensure_lib                                                                          ./libraries/cpu/                                                                     
vmap       cpu                                                                      ./libraries/cpu/                                                                     
ensure_lib                                                                          ./libraries/sdram_0_my_partner/                                                      
vmap       sdram_0_my_partner                                                       ./libraries/sdram_0_my_partner/                                                      
ensure_lib                                                                          ./libraries/first_nios2_system_inst_led_pio_external_connection_bfm/                 
vmap       first_nios2_system_inst_led_pio_external_connection_bfm                  ./libraries/first_nios2_system_inst_led_pio_external_connection_bfm/                 
ensure_lib                                                                          ./libraries/first_nios2_system_inst_reset_bfm/                                       
vmap       first_nios2_system_inst_reset_bfm                                        ./libraries/first_nios2_system_inst_reset_bfm/                                       
ensure_lib                                                                          ./libraries/first_nios2_system_inst_clk_bfm/                                         
vmap       first_nios2_system_inst_clk_bfm                                          ./libraries/first_nios2_system_inst_clk_bfm/                                         
ensure_lib                                                                          ./libraries/first_nios2_system_inst/                                                 
vmap       first_nios2_system_inst                                                  ./libraries/first_nios2_system_inst/                                                 

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
    vlog     "c:/altera/12.1/quartus/eda/sim_lib/altera_primitives.v" -work altera_ver      
    vlog     "c:/altera/12.1/quartus/eda/sim_lib/220model.v"          -work lpm_ver         
    vlog     "c:/altera/12.1/quartus/eda/sim_lib/sgate.v"             -work sgate_ver       
    vlog     "c:/altera/12.1/quartus/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
    vlog -sv "c:/altera/12.1/quartus/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
    vlog     "c:/altera/12.1/quartus/eda/sim_lib/cycloneiii_atoms.v"  -work cycloneiii_ver  
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_irq_mapper.sv"                   -work irq_mapper                                                              
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_width_adapter.sv"                     -work width_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"                -work width_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_address_alignment.sv"                 -work width_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                        -work rsp_xbar_mux_001                                                        
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_rsp_xbar_mux_001.sv"             -work rsp_xbar_mux_001                                                        
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                        -work rsp_xbar_mux                                                            
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_rsp_xbar_mux.sv"                 -work rsp_xbar_mux                                                            
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_rsp_xbar_demux_001.sv"           -work rsp_xbar_demux_001                                                      
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_rsp_xbar_demux.sv"               -work rsp_xbar_demux                                                          
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                        -work cmd_xbar_mux_001                                                        
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cmd_xbar_mux_001.sv"             -work cmd_xbar_mux_001                                                        
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                        -work cmd_xbar_mux                                                            
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cmd_xbar_mux.sv"                 -work cmd_xbar_mux                                                            
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cmd_xbar_demux_002.sv"           -work cmd_xbar_demux_002                                                      
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cmd_xbar_demux_001.sv"           -work cmd_xbar_demux_001                                                      
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cmd_xbar_demux.sv"               -work cmd_xbar_demux                                                          
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_reset_controller.v"                          -work rst_controller                                                          
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_reset_synchronizer.v"                        -work rst_controller                                                          
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_burst_adapter.sv"                     -work burst_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_address_alignment.sv"                 -work burst_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_traffic_limiter.sv"                   -work limiter                                                                 
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                   -work limiter                                                                 
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_id_router_002.sv"                -work id_router_002                                                           
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_id_router_001.sv"                -work id_router_001                                                           
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_id_router.sv"                    -work id_router                                                               
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_addr_router_002.sv"              -work addr_router_002                                                         
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_addr_router_001.sv"              -work addr_router_001                                                         
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_addr_router.sv"                  -work addr_router                                                             
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_avalon_sc_fifo.v"                            -work cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_slave_agent.sv"                       -work cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"                -work cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_master_agent.sv"                      -work cpu_instruction_master_translator_avalon_universal_master_0_agent       
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_slave_translator.sv"                  -work cpu_jtag_debug_module_translator                                        
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_merlin_master_translator.sv"                 -work cpu_instruction_master_translator                                       
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/determinant.v"                                      -work determinant_0                                                           
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_sdram_0.v"                       -work sdram_0                                                                 
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_sdram_0_test_component.v"        -work sdram_0                                                                 
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_led_pio.v"                       -work led_pio                                                                 
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_sysid.vo"                        -work sysid                                                                   
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_sys_clk_timer.v"                 -work sys_clk_timer                                                           
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_jtag_uart.v"                     -work jtag_uart                                                               
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu.vo"                          -work cpu                                                                     
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_jtag_debug_module_sysclk.v"  -work cpu                                                                     
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_jtag_debug_module_tck.v"     -work cpu                                                                     
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_jtag_debug_module_wrapper.v" -work cpu                                                                     
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_mult_cell.v"                 -work cpu                                                                     
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_oci_test_bench.v"            -work cpu                                                                     
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_test_bench.v"                -work cpu                                                                     
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_sdram_partner_module.v"                      -work sdram_0_my_partner                                                      
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/verbosity_pkg.sv"                                   -work first_nios2_system_inst_led_pio_external_connection_bfm                 
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_conduit_bfm.sv"                              -work first_nios2_system_inst_led_pio_external_connection_bfm                 
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/verbosity_pkg.sv"                                   -work first_nios2_system_inst_reset_bfm                                       
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_avalon_reset_source.sv"                      -work first_nios2_system_inst_reset_bfm                                       
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/verbosity_pkg.sv"                                   -work first_nios2_system_inst_clk_bfm                                         
  vlog -sv "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/altera_avalon_clock_source.sv"                      -work first_nios2_system_inst_clk_bfm                                         
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/submodules/first_nios2_system.v"                               -work first_nios2_system_inst                                                 
  vlog     "$QSYS_SIMDIR/first_nios2_system_tb/simulation/first_nios2_system_tb.v"                                                                                                                     
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim -t ps -L work -L work_lib -L irq_mapper -L width_adapter -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_001 -L rsp_xbar_demux -L cmd_xbar_mux_001 -L cmd_xbar_mux -L cmd_xbar_demux_002 -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L burst_adapter -L limiter -L id_router_002 -L id_router_001 -L id_router -L addr_router_002 -L addr_router_001 -L addr_router -L cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent -L cpu_instruction_master_translator_avalon_universal_master_0_agent -L cpu_jtag_debug_module_translator -L cpu_instruction_master_translator -L determinant_0 -L sdram_0 -L led_pio -L sysid -L sys_clk_timer -L jtag_uart -L cpu -L sdram_0_my_partner -L first_nios2_system_inst_led_pio_external_connection_bfm -L first_nios2_system_inst_reset_bfm -L first_nios2_system_inst_clk_bfm -L first_nios2_system_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -novopt -t ps -L work -L work_lib -L irq_mapper -L width_adapter -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_001 -L rsp_xbar_demux -L cmd_xbar_mux_001 -L cmd_xbar_mux -L cmd_xbar_demux_002 -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L burst_adapter -L limiter -L id_router_002 -L id_router_001 -L id_router -L addr_router_002 -L addr_router_001 -L addr_router -L cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent -L cpu_instruction_master_translator_avalon_universal_master_0_agent -L cpu_jtag_debug_module_translator -L cpu_instruction_master_translator -L determinant_0 -L sdram_0 -L led_pio -L sysid -L sys_clk_timer -L jtag_uart -L cpu -L sdram_0_my_partner -L first_nios2_system_inst_led_pio_external_connection_bfm -L first_nios2_system_inst_reset_bfm -L first_nios2_system_inst_clk_bfm -L first_nios2_system_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver $TOP_LEVEL_NAME
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
