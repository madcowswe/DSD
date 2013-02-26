library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_nios2_oci_itrace is
    port(
        clk             : in     vl_logic;
        dbrk_traceoff   : in     vl_logic;
        dbrk_traceon    : in     vl_logic;
        jdo             : in     vl_logic_vector(15 downto 0);
        jrst_n          : in     vl_logic;
        take_action_tracectrl: in     vl_logic;
        trc_enb         : in     vl_logic;
        xbrk_traceoff   : in     vl_logic;
        xbrk_traceon    : in     vl_logic;
        xbrk_wrap_traceoff: in     vl_logic;
        dct_buffer      : out    vl_logic_vector(29 downto 0);
        dct_count       : out    vl_logic_vector(3 downto 0);
        itm             : out    vl_logic_vector(35 downto 0);
        trc_ctrl        : out    vl_logic_vector(15 downto 0);
        trc_on          : out    vl_logic
    );
end first_nios2_system_cpu_nios2_oci_itrace;
