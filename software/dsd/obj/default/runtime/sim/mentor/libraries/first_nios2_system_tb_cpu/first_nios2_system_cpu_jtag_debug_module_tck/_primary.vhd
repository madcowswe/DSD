library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_jtag_debug_module_tck is
    port(
        MonDReg         : in     vl_logic_vector(31 downto 0);
        break_readreg   : in     vl_logic_vector(31 downto 0);
        dbrk_hit0_latch : in     vl_logic;
        dbrk_hit1_latch : in     vl_logic;
        dbrk_hit2_latch : in     vl_logic;
        dbrk_hit3_latch : in     vl_logic;
        debugack        : in     vl_logic;
        ir_in           : in     vl_logic_vector(1 downto 0);
        jtag_state_rti  : in     vl_logic;
        monitor_error   : in     vl_logic;
        monitor_ready   : in     vl_logic;
        reset_n         : in     vl_logic;
        resetlatch      : in     vl_logic;
        tck             : in     vl_logic;
        tdi             : in     vl_logic;
        tracemem_on     : in     vl_logic;
        tracemem_trcdata: in     vl_logic_vector(35 downto 0);
        tracemem_tw     : in     vl_logic;
        trc_im_addr     : in     vl_logic_vector(6 downto 0);
        trc_on          : in     vl_logic;
        trc_wrap        : in     vl_logic;
        trigbrktype     : in     vl_logic;
        trigger_state_1 : in     vl_logic;
        vs_cdr          : in     vl_logic;
        vs_sdr          : in     vl_logic;
        vs_uir          : in     vl_logic;
        ir_out          : out    vl_logic_vector(1 downto 0);
        jrst_n          : out    vl_logic;
        sr              : out    vl_logic_vector(37 downto 0);
        st_ready_test_idle: out    vl_logic;
        tdo             : out    vl_logic
    );
end first_nios2_system_cpu_jtag_debug_module_tck;
