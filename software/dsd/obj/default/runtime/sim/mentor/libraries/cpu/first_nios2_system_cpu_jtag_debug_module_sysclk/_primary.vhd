library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_jtag_debug_module_sysclk is
    port(
        clk             : in     vl_logic;
        ir_in           : in     vl_logic_vector(1 downto 0);
        sr              : in     vl_logic_vector(37 downto 0);
        vs_udr          : in     vl_logic;
        vs_uir          : in     vl_logic;
        jdo             : out    vl_logic_vector(37 downto 0);
        take_action_break_a: out    vl_logic;
        take_action_break_b: out    vl_logic;
        take_action_break_c: out    vl_logic;
        take_action_ocimem_a: out    vl_logic;
        take_action_ocimem_b: out    vl_logic;
        take_action_tracectrl: out    vl_logic;
        take_action_tracemem_a: out    vl_logic;
        take_action_tracemem_b: out    vl_logic;
        take_no_action_break_a: out    vl_logic;
        take_no_action_break_b: out    vl_logic;
        take_no_action_break_c: out    vl_logic;
        take_no_action_ocimem_a: out    vl_logic;
        take_no_action_tracemem_a: out    vl_logic
    );
end first_nios2_system_cpu_jtag_debug_module_sysclk;
