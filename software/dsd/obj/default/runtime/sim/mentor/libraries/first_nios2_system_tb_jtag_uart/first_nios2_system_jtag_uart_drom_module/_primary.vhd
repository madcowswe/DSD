library verilog;
use verilog.vl_types.all;
entity first_nios2_system_jtag_uart_drom_module is
    generic(
        POLL_RATE       : integer := 100
    );
    port(
        clk             : in     vl_logic;
        incr_addr       : in     vl_logic;
        reset_n         : in     vl_logic;
        new_rom         : out    vl_logic;
        num_bytes       : out    vl_logic_vector(31 downto 0);
        q               : out    vl_logic_vector(7 downto 0);
        safe            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of POLL_RATE : constant is 1;
end first_nios2_system_jtag_uart_drom_module;
