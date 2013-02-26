library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_nios2_oci_fifo is
    port(
        atm             : in     vl_logic_vector(35 downto 0);
        clk             : in     vl_logic;
        dbrk_traceme    : in     vl_logic;
        dbrk_traceoff   : in     vl_logic;
        dbrk_traceon    : in     vl_logic;
        dct_buffer      : in     vl_logic_vector(29 downto 0);
        dct_count       : in     vl_logic_vector(3 downto 0);
        dtm             : in     vl_logic_vector(35 downto 0);
        itm             : in     vl_logic_vector(35 downto 0);
        jrst_n          : in     vl_logic;
        reset_n         : in     vl_logic;
        test_ending     : in     vl_logic;
        test_has_ended  : in     vl_logic;
        trc_on          : in     vl_logic;
        tw              : out    vl_logic_vector(35 downto 0)
    );
end first_nios2_system_cpu_nios2_oci_fifo;
