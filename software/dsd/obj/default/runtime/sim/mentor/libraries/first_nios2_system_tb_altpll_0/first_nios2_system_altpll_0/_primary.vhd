library verilog;
use verilog.vl_types.all;
entity first_nios2_system_altpll_0 is
    port(
        address         : in     vl_logic_vector(1 downto 0);
        areset          : in     vl_logic;
        c0              : out    vl_logic;
        c1              : out    vl_logic;
        c2              : out    vl_logic;
        clk             : in     vl_logic;
        locked          : out    vl_logic;
        phasedone       : out    vl_logic;
        read            : in     vl_logic;
        readdata        : out    vl_logic_vector(31 downto 0);
        reset           : in     vl_logic;
        write           : in     vl_logic;
        writedata       : in     vl_logic_vector(31 downto 0)
    );
end first_nios2_system_altpll_0;
