library verilog;
use verilog.vl_types.all;
entity determinant is
    generic(
        AUTO_CLOCK_SINK_CLOCK_RATE: string  := "-1"
    );
    port(
        address         : out    vl_logic_vector(29 downto 0);
        readdata        : in     vl_logic_vector(31 downto 0);
        readdatavalid   : in     vl_logic;
        waitrequest     : in     vl_logic;
        read            : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        slave_address   : in     vl_logic;
        slave_waitrequest: out    vl_logic;
        slave_writedata : in     vl_logic_vector(31 downto 0);
        slave_write     : in     vl_logic;
        slave_read      : in     vl_logic;
        slave_readdata  : out    vl_logic_vector(31 downto 0);
        irq             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of AUTO_CLOCK_SINK_CLOCK_RATE : constant is 1;
end determinant;
