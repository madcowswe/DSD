
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

# ACDS 12.0 178 win32 2013.02.23.21:35:22

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="first_nios2_system"
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
mkdir -p ./libraries/first_nios2_system_irq_mapper/
mkdir -p ./libraries/first_nios2_system_width_adapter/
mkdir -p ./libraries/first_nios2_system_rsp_xbar_mux_001/
mkdir -p ./libraries/first_nios2_system_rsp_xbar_mux/
mkdir -p ./libraries/first_nios2_system_rsp_xbar_demux_002/
mkdir -p ./libraries/first_nios2_system_rsp_xbar_demux/
mkdir -p ./libraries/first_nios2_system_cmd_xbar_mux/
mkdir -p ./libraries/first_nios2_system_cmd_xbar_demux_001/
mkdir -p ./libraries/first_nios2_system_cmd_xbar_demux/
mkdir -p ./libraries/first_nios2_system_rst_controller/
mkdir -p ./libraries/first_nios2_system_burst_adapter/
mkdir -p ./libraries/first_nios2_system_limiter/
mkdir -p ./libraries/first_nios2_system_id_router_002/
mkdir -p ./libraries/first_nios2_system_id_router_001/
mkdir -p ./libraries/first_nios2_system_id_router/
mkdir -p ./libraries/first_nios2_system_addr_router_001/
mkdir -p ./libraries/first_nios2_system_addr_router/
mkdir -p ./libraries/first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/first_nios2_system_cpu_instruction_master_translator_avalon_universal_master_0_agent/
mkdir -p ./libraries/first_nios2_system_cpu_jtag_debug_module_translator/
mkdir -p ./libraries/first_nios2_system_cpu_instruction_master_translator/
mkdir -p ./libraries/first_nios2_system_cpu_custom_instruction_master_multi_slave_translator0/
mkdir -p ./libraries/first_nios2_system_cpu_custom_instruction_master_multi_xconnect/
mkdir -p ./libraries/first_nios2_system_cpu_custom_instruction_master_translator/
mkdir -p ./libraries/first_nios2_system_fp_cust_insn_0/
mkdir -p ./libraries/first_nios2_system_altpll_0/
mkdir -p ./libraries/first_nios2_system_sdram_0/
mkdir -p ./libraries/first_nios2_system_led_pio/
mkdir -p ./libraries/first_nios2_system_sysid/
mkdir -p ./libraries/first_nios2_system_sys_clk_timer/
mkdir -p ./libraries/first_nios2_system_jtag_uart/
mkdir -p ./libraries/first_nios2_system_cpu/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cycloneiii_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/first_nios2_system_cpu_rf_ram_b.mif ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog     "C:/altera/quartus/eda/sim_lib/altera_primitives.v" -work altera_ver      
  ncvlog     "C:/altera/quartus/eda/sim_lib/220model.v"          -work lpm_ver         
  ncvlog     "C:/altera/quartus/eda/sim_lib/sgate.v"             -work sgate_ver       
  ncvlog     "C:/altera/quartus/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  ncvlog -sv "C:/altera/quartus/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  ncvlog     "C:/altera/quartus/eda/sim_lib/cycloneiii_atoms.v"  -work cycloneiii_ver  
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_irq_mapper.sv"                                   -work first_nios2_system_irq_mapper                                                               -cdslib ./cds_libs/first_nios2_system_irq_mapper.cds.lib                                                              
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                     -work first_nios2_system_width_adapter                                                            -cdslib ./cds_libs/first_nios2_system_width_adapter.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                -work first_nios2_system_width_adapter                                                            -cdslib ./cds_libs/first_nios2_system_width_adapter.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work first_nios2_system_rsp_xbar_mux_001                                                         -cdslib ./cds_libs/first_nios2_system_rsp_xbar_mux_001.cds.lib                                                        
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_rsp_xbar_mux_001.sv"                             -work first_nios2_system_rsp_xbar_mux_001                                                         -cdslib ./cds_libs/first_nios2_system_rsp_xbar_mux_001.cds.lib                                                        
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work first_nios2_system_rsp_xbar_mux                                                             -cdslib ./cds_libs/first_nios2_system_rsp_xbar_mux.cds.lib                                                            
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_rsp_xbar_mux.sv"                                 -work first_nios2_system_rsp_xbar_mux                                                             -cdslib ./cds_libs/first_nios2_system_rsp_xbar_mux.cds.lib                                                            
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_rsp_xbar_demux_002.sv"                           -work first_nios2_system_rsp_xbar_demux_002                                                       -cdslib ./cds_libs/first_nios2_system_rsp_xbar_demux_002.cds.lib                                                      
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_rsp_xbar_demux.sv"                               -work first_nios2_system_rsp_xbar_demux                                                           -cdslib ./cds_libs/first_nios2_system_rsp_xbar_demux.cds.lib                                                          
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work first_nios2_system_cmd_xbar_mux                                                             -cdslib ./cds_libs/first_nios2_system_cmd_xbar_mux.cds.lib                                                            
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_cmd_xbar_mux.sv"                                 -work first_nios2_system_cmd_xbar_mux                                                             -cdslib ./cds_libs/first_nios2_system_cmd_xbar_mux.cds.lib                                                            
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_cmd_xbar_demux_001.sv"                           -work first_nios2_system_cmd_xbar_demux_001                                                       -cdslib ./cds_libs/first_nios2_system_cmd_xbar_demux_001.cds.lib                                                      
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_cmd_xbar_demux.sv"                               -work first_nios2_system_cmd_xbar_demux                                                           -cdslib ./cds_libs/first_nios2_system_cmd_xbar_demux.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                          -work first_nios2_system_rst_controller                                                           -cdslib ./cds_libs/first_nios2_system_rst_controller.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                        -work first_nios2_system_rst_controller                                                           -cdslib ./cds_libs/first_nios2_system_rst_controller.cds.lib                                                          
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                     -work first_nios2_system_burst_adapter                                                            -cdslib ./cds_libs/first_nios2_system_burst_adapter.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                   -work first_nios2_system_limiter                                                                  -cdslib ./cds_libs/first_nios2_system_limiter.cds.lib                                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                   -work first_nios2_system_limiter                                                                  -cdslib ./cds_libs/first_nios2_system_limiter.cds.lib                                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_id_router_002.sv"                                -work first_nios2_system_id_router_002                                                            -cdslib ./cds_libs/first_nios2_system_id_router_002.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_id_router_001.sv"                                -work first_nios2_system_id_router_001                                                            -cdslib ./cds_libs/first_nios2_system_id_router_001.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_id_router.sv"                                    -work first_nios2_system_id_router                                                                -cdslib ./cds_libs/first_nios2_system_id_router.cds.lib                                                               
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_addr_router_001.sv"                              -work first_nios2_system_addr_router_001                                                          -cdslib ./cds_libs/first_nios2_system_addr_router_001.cds.lib                                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_addr_router.sv"                                  -work first_nios2_system_addr_router                                                              -cdslib ./cds_libs/first_nios2_system_addr_router.cds.lib                                                             
  ncvlog     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                            -work first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -cdslib ./cds_libs/first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                       -work first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent          -cdslib ./cds_libs/first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent.cds.lib         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                -work first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent          -cdslib ./cds_libs/first_nios2_system_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent.cds.lib         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                      -work first_nios2_system_cpu_instruction_master_translator_avalon_universal_master_0_agent        -cdslib ./cds_libs/first_nios2_system_cpu_instruction_master_translator_avalon_universal_master_0_agent.cds.lib       
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                  -work first_nios2_system_cpu_jtag_debug_module_translator                                         -cdslib ./cds_libs/first_nios2_system_cpu_jtag_debug_module_translator.cds.lib                                        
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                 -work first_nios2_system_cpu_instruction_master_translator                                        -cdslib ./cds_libs/first_nios2_system_cpu_instruction_master_translator.cds.lib                                       
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_customins_slave_translator.sv"                               -work first_nios2_system_cpu_custom_instruction_master_multi_slave_translator0                    -cdslib ./cds_libs/first_nios2_system_cpu_custom_instruction_master_multi_slave_translator0.cds.lib                   
  ncvlog -sv "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_custom_instruction_master_multi_xconnect.sv" -work first_nios2_system_cpu_custom_instruction_master_multi_xconnect                             -cdslib ./cds_libs/first_nios2_system_cpu_custom_instruction_master_multi_xconnect.cds.lib                            
  ncvlog     "$QSYS_SIMDIR/submodules/altera_customins_master_translator.v"                               -work first_nios2_system_cpu_custom_instruction_master_translator                                 -cdslib ./cds_libs/first_nios2_system_cpu_custom_instruction_master_translator.cds.lib                                
  ncvlog     "$QSYS_SIMDIR/submodules/fp_cust_insn.v"                                                     -work first_nios2_system_fp_cust_insn_0                                                           -cdslib ./cds_libs/first_nios2_system_fp_cust_insn_0.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_altpll_0.vo"                                     -work first_nios2_system_altpll_0                                                                 -cdslib ./cds_libs/first_nios2_system_altpll_0.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_sdram_0.v"                                       -work first_nios2_system_sdram_0                                                                  -cdslib ./cds_libs/first_nios2_system_sdram_0.cds.lib                                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_led_pio.v"                                       -work first_nios2_system_led_pio                                                                  -cdslib ./cds_libs/first_nios2_system_led_pio.cds.lib                                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_sysid.vo"                                        -work first_nios2_system_sysid                                                                    -cdslib ./cds_libs/first_nios2_system_sysid.cds.lib                                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_sys_clk_timer.v"                                 -work first_nios2_system_sys_clk_timer                                                            -cdslib ./cds_libs/first_nios2_system_sys_clk_timer.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_jtag_uart.v"                                     -work first_nios2_system_jtag_uart                                                                -cdslib ./cds_libs/first_nios2_system_jtag_uart.cds.lib                                                               
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_cpu.vo"                                          -work first_nios2_system_cpu                                                                      -cdslib ./cds_libs/first_nios2_system_cpu.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_jtag_debug_module_sysclk.v"                  -work first_nios2_system_cpu                                                                      -cdslib ./cds_libs/first_nios2_system_cpu.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_jtag_debug_module_tck.v"                     -work first_nios2_system_cpu                                                                      -cdslib ./cds_libs/first_nios2_system_cpu.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_jtag_debug_module_wrapper.v"                 -work first_nios2_system_cpu                                                                      -cdslib ./cds_libs/first_nios2_system_cpu.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_oci_test_bench.v"                            -work first_nios2_system_cpu                                                                      -cdslib ./cds_libs/first_nios2_system_cpu.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/first_nios2_system_cpu_test_bench.v"                                -work first_nios2_system_cpu                                                                      -cdslib ./cds_libs/first_nios2_system_cpu.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/first_nios2_system.v"                                                                                                                                                                                                                                                                                  
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
