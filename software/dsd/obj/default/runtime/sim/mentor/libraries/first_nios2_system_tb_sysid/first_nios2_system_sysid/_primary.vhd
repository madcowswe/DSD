library verilog;
use verilog.vl_types.all;
entity first_nios2_system_sysid is
    port(
        address         : in     vl_logic;
        clock           : in     vl_logic;
        readdata        : out    vl_logic_vector(31 downto 0);
        reset_n         : in     vl_logic
    );
end first_nios2_system_sysid;
