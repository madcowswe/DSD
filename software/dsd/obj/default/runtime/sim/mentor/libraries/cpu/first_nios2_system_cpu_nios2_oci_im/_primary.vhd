library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_nios2_oci_im is
    port(
        clk             : in     vl_logic;
        jdo             : in     vl_logic_vector(37 downto 0);
        jrst_n          : in     vl_logic;
        reset_n         : in     vl_logic;
        take_action_tracectrl: in     vl_logic;
        take_action_tracemem_a: in     vl_logic;
        take_action_tracemem_b: in     vl_logic;
        take_no_action_tracemem_a: in     vl_logic;
        trc_ctrl        : in     vl_logic_vector(15 downto 0);
        tw              : in     vl_logic_vector(35 downto 0);
        tracemem_on     : out    vl_logic;
        tracemem_trcdata: out    vl_logic_vector(35 downto 0);
        tracemem_tw     : out    vl_logic;
        trc_enb         : out    vl_logic;
        trc_im_addr     : out    vl_logic_vector(6 downto 0);
        trc_wrap        : out    vl_logic;
        xbrk_wrap_traceoff: out    vl_logic
    );
end first_nios2_system_cpu_nios2_oci_im;
