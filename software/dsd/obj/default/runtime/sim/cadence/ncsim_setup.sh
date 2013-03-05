
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

# ACDS 12.1sp1 243 win32 2013.03.03.18:56:34

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="first_nios2_system_tb"
QSYS_SIMDIR="./../"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/width_adapter/
mkdir -p ./libraries/rsp_xbar_mux_001/
mkdir -p ./libraries/rsp_xbar_mux/
mkdir -p ./libraries/rsp_xbar_demux_001/
mkdir -p ./libraries/cmd_xbar_mux_001/
mkdir -p ./libraries/cmd_xbar_mux/
mkdir -p ./libraries/cmd_xbar_demux_002/
mkdir -p ./libraries/cmd_xbar_demux_001/
mkdir -p ./libraries/cmd_xbar_demux/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/burst_adapter/
mkdir -p ./libraries/id_router_002/
mkdir -p ./libraries/id_router_001/
mkdir -p ./libraries/id_router/
mkdir -p ./libraries/addr_router_002/
mkdir -p ./libraries/addr_router_001/
mkdir -p ./libraries/addr_router/
mkdir -p ./libraries/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/cpu_instruction_master_translator_avalon_universal_master_0_agent/
mkdir -p ./libraries/cpu_jtag_debug_module_translator/
mkdir -p ./libraries/cpu_instruction_master_translator/
mkdir -p ./libraries/determinant_0/
mkdir -p ./libraries/sdram_0/
mkdir -p ./libraries/led_pio/
mkdir -p ./libraries/sysid/
mkdir -p ./libraries/sys_clk_timer/
mkdir -p ./libraries/jtag_uart/
mkdir -p ./libraries/cpu/
mkdir -p ./libraries/sdram_0_my_partner/
mkdir -p ./libraries/first_nios2_system_inst_led_pio_external_connection_bfm/
mkdir -p ./libraries/first_nios2_system_inst_reset_bfm/
mkdir -p ./libraries/first_nios2_system_inst_clk_bfm/
mkdir -p ./libraries/first_nios2_system_inst/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cycloneiii_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_ociram_default_contents.dat ./
  cp -f C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_ociram_default_contents.hex ./
  cp -f C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_ociram_default_contents.mif ./
  cp -f C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_a.dat ./
  cp -f C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_a.hex ./
  cp -f C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_a.mif ./
  cp -f C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_b.dat ./
  cp -f C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_b.hex ./
  cp -f C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_rf_ram_b.mif ./
  cp -f C:/Users/Oskar/Documents/DSD/software/dsd/mem_init/hdl_sim/sdram_0.dat ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog     "c:/altera/12.1sp1/quartus/eda/sim_lib/altera_primitives.v" -work altera_ver      
  ncvlog     "c:/altera/12.1sp1/quartus/eda/sim_lib/220model.v"          -work lpm_ver         
  ncvlog     "c:/altera/12.1sp1/quartus/eda/sim_lib/sgate.v"             -work sgate_ver       
  ncvlog     "c:/altera/12.1sp1/quartus/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  ncvlog -sv "c:/altera/12.1sp1/quartus/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  ncvlog     "c:/altera/12.1sp1/quartus/eda/sim_lib/cycloneiii_atoms.v"  -work cycloneiii_ver  
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_irq_mapper.sv"                   -work irq_mapper                                                               -cdslib ./cds_libs/irq_mapper.cds.lib                                                              
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_width_adapter.sv"                     -work width_adapter                                                            -cdslib ./cds_libs/width_adapter.cds.lib                                                           
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"                -work width_adapter                                                            -cdslib ./cds_libs/width_adapter.cds.lib                                                           
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_address_alignment.sv"                 -work width_adapter                                                            -cdslib ./cds_libs/width_adapter.cds.lib                                                           
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                        -work rsp_xbar_mux_001                                                         -cdslib ./cds_libs/rsp_xbar_mux_001.cds.lib                                                        
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_rsp_xbar_mux_001.sv"             -work rsp_xbar_mux_001                                                         -cdslib ./cds_libs/rsp_xbar_mux_001.cds.lib                                                        
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                        -work rsp_xbar_mux                                                             -cdslib ./cds_libs/rsp_xbar_mux.cds.lib                                                            
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_rsp_xbar_mux.sv"                 -work rsp_xbar_mux                                                             -cdslib ./cds_libs/rsp_xbar_mux.cds.lib                                                            
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_rsp_xbar_demux_001.sv"           -work rsp_xbar_demux_001                                                       -cdslib ./cds_libs/rsp_xbar_demux_001.cds.lib                                                      
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                        -work cmd_xbar_mux_001                                                         -cdslib ./cds_libs/cmd_xbar_mux_001.cds.lib                                                        
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cmd_xbar_mux_001.sv"             -work cmd_xbar_mux_001                                                         -cdslib ./cds_libs/cmd_xbar_mux_001.cds.lib                                                        
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                        -work cmd_xbar_mux                                                             -cdslib ./cds_libs/cmd_xbar_mux.cds.lib                                                            
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cmd_xbar_mux.sv"                 -work cmd_xbar_mux                                                             -cdslib ./cds_libs/cmd_xbar_mux.cds.lib                                                            
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cmd_xbar_demux_002.sv"           -work cmd_xbar_demux_002                                                       -cdslib ./cds_libs/cmd_xbar_demux_002.cds.lib                                                      
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cmd_xbar_demux_001.sv"           -work cmd_xbar_demux_001                                                       -cdslib ./cds_libs/cmd_xbar_demux_001.cds.lib                                                      
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cmd_xbar_demux.sv"               -work cmd_xbar_demux                                                           -cdslib ./cds_libs/cmd_xbar_demux.cds.lib                                                          
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_reset_controller.v"                          -work rst_controller                                                           -cdslib ./cds_libs/rst_controller.cds.lib                                                          
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_reset_synchronizer.v"                        -work rst_controller                                                           -cdslib ./cds_libs/rst_controller.cds.lib                                                          
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_burst_adapter.sv"                     -work burst_adapter                                                            -cdslib ./cds_libs/burst_adapter.cds.lib                                                           
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_address_alignment.sv"                 -work burst_adapter                                                            -cdslib ./cds_libs/burst_adapter.cds.lib                                                           
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_id_router_002.sv"                -work id_router_002                                                            -cdslib ./cds_libs/id_router_002.cds.lib                                                           
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_id_router_001.sv"                -work id_router_001                                                            -cdslib ./cds_libs/id_router_001.cds.lib                                                           
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_id_router.sv"                    -work id_router                                                                -cdslib ./cds_libs/id_router.cds.lib                                                               
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_addr_router_002.sv"              -work addr_router_002                                                          -cdslib ./cds_libs/addr_router_002.cds.lib                                                         
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_addr_router_001.sv"              -work addr_router_001                                                          -cdslib ./cds_libs/addr_router_001.cds.lib                                                         
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_addr_router.sv"                  -work addr_router                                                              -cdslib ./cds_libs/addr_router.cds.lib                                                             
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_avalon_sc_fifo.v"                            -work cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -cdslib ./cds_libs/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo.cds.lib
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_slave_agent.sv"                       -work cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent          -cdslib ./cds_libs/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent.cds.lib         
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"                -work cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent          -cdslib ./cds_libs/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent.cds.lib         
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_master_agent.sv"                      -work cpu_instruction_master_translator_avalon_universal_master_0_agent        -cdslib ./cds_libs/cpu_instruction_master_translator_avalon_universal_master_0_agent.cds.lib       
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_slave_translator.sv"                  -work cpu_jtag_debug_module_translator                                         -cdslib ./cds_libs/cpu_jtag_debug_module_translator.cds.lib                                        
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_merlin_master_translator.sv"                 -work cpu_instruction_master_translator                                        -cdslib ./cds_libs/cpu_instruction_master_translator.cds.lib                                       
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/determinant.v"                                      -work determinant_0                                                            -cdslib ./cds_libs/determinant_0.cds.lib                                                           
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_sdram_0.v"                       -work sdram_0                                                                  -cdslib ./cds_libs/sdram_0.cds.lib                                                                 
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_sdram_0_test_component.v"        -work sdram_0                                                                  -cdslib ./cds_libs/sdram_0.cds.lib                                                                 
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_led_pio.v"                       -work led_pio                                                                  -cdslib ./cds_libs/led_pio.cds.lib                                                                 
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_sysid.vo"                        -work sysid                                                                    -cdslib ./cds_libs/sysid.cds.lib                                                                   
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_sys_clk_timer.v"                 -work sys_clk_timer                                                            -cdslib ./cds_libs/sys_clk_timer.cds.lib                                                           
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_jtag_uart.v"                     -work jtag_uart                                                                -cdslib ./cds_libs/jtag_uart.cds.lib                                                               
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu.v"                           -work cpu                                                                      -cdslib ./cds_libs/cpu.cds.lib                                                                     
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_jtag_debug_module_sysclk.v"  -work cpu                                                                      -cdslib ./cds_libs/cpu.cds.lib                                                                     
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_jtag_debug_module_tck.v"     -work cpu                                                                      -cdslib ./cds_libs/cpu.cds.lib                                                                     
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_jtag_debug_module_wrapper.v" -work cpu                                                                      -cdslib ./cds_libs/cpu.cds.lib                                                                     
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_oci_test_bench.v"            -work cpu                                                                      -cdslib ./cds_libs/cpu.cds.lib                                                                     
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system_cpu_test_bench.v"                -work cpu                                                                      -cdslib ./cds_libs/cpu.cds.lib                                                                     
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_sdram_partner_module.v"                      -work sdram_0_my_partner                                                       -cdslib ./cds_libs/sdram_0_my_partner.cds.lib                                                      
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/verbosity_pkg.sv"                                   -work first_nios2_system_inst_led_pio_external_connection_bfm                  -cdslib ./cds_libs/first_nios2_system_inst_led_pio_external_connection_bfm.cds.lib                 
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_conduit_bfm.sv"                              -work first_nios2_system_inst_led_pio_external_connection_bfm                  -cdslib ./cds_libs/first_nios2_system_inst_led_pio_external_connection_bfm.cds.lib                 
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/verbosity_pkg.sv"                                   -work first_nios2_system_inst_reset_bfm                                        -cdslib ./cds_libs/first_nios2_system_inst_reset_bfm.cds.lib                                       
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_avalon_reset_source.sv"                      -work first_nios2_system_inst_reset_bfm                                        -cdslib ./cds_libs/first_nios2_system_inst_reset_bfm.cds.lib                                       
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/verbosity_pkg.sv"                                   -work first_nios2_system_inst_clk_bfm                                          -cdslib ./cds_libs/first_nios2_system_inst_clk_bfm.cds.lib                                         
  ncvlog -sv "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/altera_avalon_clock_source.sv"                      -work first_nios2_system_inst_clk_bfm                                          -cdslib ./cds_libs/first_nios2_system_inst_clk_bfm.cds.lib                                         
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/submodules/first_nios2_system.v"                               -work first_nios2_system_inst                                                  -cdslib ./cds_libs/first_nios2_system_inst.cds.lib                                                 
  ncvlog     "C:/Users/Oskar/Documents/DSD/first_nios2_system/testbench/first_nios2_system_tb/simulation/first_nios2_system_tb.v"                                                                                                                                                                                                                         
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
