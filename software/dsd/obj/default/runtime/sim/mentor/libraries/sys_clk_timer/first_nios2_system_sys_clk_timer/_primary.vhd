library verilog;
use verilog.vl_types.all;
entity first_nios2_system_sys_clk_timer is
    port(
        address         : in     vl_logic_vector(2 downto 0);
        chipselect      : in     vl_logic;
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        write_n         : in     vl_logic;
        writedata       : in     vl_logic_vector(15 downto 0);
        irq             : out    vl_logic;
        readdata        : out    vl_logic_vector(15 downto 0)
    );
end first_nios2_system_sys_clk_timer;
