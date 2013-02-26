library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_nios2_oci_debug is
    port(
        clk             : in     vl_logic;
        dbrk_break      : in     vl_logic;
        debugreq        : in     vl_logic;
        hbreak_enabled  : in     vl_logic;
        jdo             : in     vl_logic_vector(37 downto 0);
        jrst_n          : in     vl_logic;
        ocireg_ers      : in     vl_logic;
        ocireg_mrs      : in     vl_logic;
        reset           : in     vl_logic;
        st_ready_test_idle: in     vl_logic;
        take_action_ocimem_a: in     vl_logic;
        take_action_ocireg: in     vl_logic;
        xbrk_break      : in     vl_logic;
        debugack        : out    vl_logic;
        monitor_error   : out    vl_logic;
        monitor_go      : out    vl_logic;
        monitor_ready   : out    vl_logic;
        oci_hbreak_req  : out    vl_logic;
        resetlatch      : out    vl_logic;
        resetrequest    : out    vl_logic
    );
end first_nios2_system_cpu_nios2_oci_debug;
