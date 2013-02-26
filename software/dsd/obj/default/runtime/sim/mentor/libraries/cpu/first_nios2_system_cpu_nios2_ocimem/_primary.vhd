library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_nios2_ocimem is
    port(
        address         : in     vl_logic_vector(8 downto 0);
        begintransfer   : in     vl_logic;
        byteenable      : in     vl_logic_vector(3 downto 0);
        chipselect      : in     vl_logic;
        clk             : in     vl_logic;
        debugaccess     : in     vl_logic;
        jdo             : in     vl_logic_vector(37 downto 0);
        jrst_n          : in     vl_logic;
        resetrequest    : in     vl_logic;
        take_action_ocimem_a: in     vl_logic;
        take_action_ocimem_b: in     vl_logic;
        take_no_action_ocimem_a: in     vl_logic;
        write           : in     vl_logic;
        writedata       : in     vl_logic_vector(31 downto 0);
        MonDReg         : out    vl_logic_vector(31 downto 0);
        oci_ram_readdata: out    vl_logic_vector(31 downto 0)
    );
end first_nios2_system_cpu_nios2_ocimem;
