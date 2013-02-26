library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_nios2_oci_break is
    port(
        clk             : in     vl_logic;
        dbrk_break      : in     vl_logic;
        dbrk_goto0      : in     vl_logic;
        dbrk_goto1      : in     vl_logic;
        jdo             : in     vl_logic_vector(37 downto 0);
        jrst_n          : in     vl_logic;
        reset_n         : in     vl_logic;
        take_action_break_a: in     vl_logic;
        take_action_break_b: in     vl_logic;
        take_action_break_c: in     vl_logic;
        take_no_action_break_a: in     vl_logic;
        take_no_action_break_b: in     vl_logic;
        take_no_action_break_c: in     vl_logic;
        xbrk_goto0      : in     vl_logic;
        xbrk_goto1      : in     vl_logic;
        break_readreg   : out    vl_logic_vector(31 downto 0);
        dbrk_hit0_latch : out    vl_logic;
        dbrk_hit1_latch : out    vl_logic;
        dbrk_hit2_latch : out    vl_logic;
        dbrk_hit3_latch : out    vl_logic;
        trigbrktype     : out    vl_logic;
        trigger_state_0 : out    vl_logic;
        trigger_state_1 : out    vl_logic;
        xbrk_ctrl0      : out    vl_logic_vector(7 downto 0);
        xbrk_ctrl1      : out    vl_logic_vector(7 downto 0);
        xbrk_ctrl2      : out    vl_logic_vector(7 downto 0);
        xbrk_ctrl3      : out    vl_logic_vector(7 downto 0)
    );
end first_nios2_system_cpu_nios2_oci_break;
