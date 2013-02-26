library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_nios2_oci is
    port(
        D_valid         : in     vl_logic;
        E_st_data       : in     vl_logic_vector(31 downto 0);
        E_valid         : in     vl_logic;
        F_pc            : in     vl_logic_vector(22 downto 0);
        address         : in     vl_logic_vector(8 downto 0);
        av_ld_data_aligned_filtered: in     vl_logic_vector(31 downto 0);
        begintransfer   : in     vl_logic;
        byteenable      : in     vl_logic_vector(3 downto 0);
        chipselect      : in     vl_logic;
        clk             : in     vl_logic;
        d_address       : in     vl_logic_vector(24 downto 0);
        d_read          : in     vl_logic;
        d_waitrequest   : in     vl_logic;
        d_write         : in     vl_logic;
        debugaccess     : in     vl_logic;
        hbreak_enabled  : in     vl_logic;
        reset           : in     vl_logic;
        reset_n         : in     vl_logic;
        test_ending     : in     vl_logic;
        test_has_ended  : in     vl_logic;
        write           : in     vl_logic;
        writedata       : in     vl_logic_vector(31 downto 0);
        jtag_debug_module_debugaccess_to_roms: out    vl_logic;
        oci_hbreak_req  : out    vl_logic;
        oci_ienable     : out    vl_logic_vector(31 downto 0);
        oci_single_step_mode: out    vl_logic;
        readdata        : out    vl_logic_vector(31 downto 0);
        resetrequest    : out    vl_logic
    );
end first_nios2_system_cpu_nios2_oci;
