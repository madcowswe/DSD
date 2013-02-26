library verilog;
use verilog.vl_types.all;
entity determinant is
    generic(
        AUTO_CLOCK_SINK_CLOCK_RATE: string  := "-1"
    );
    port(
        dataa           : in     vl_logic_vector(31 downto 0);
        datab           : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0);
        cstm_reset      : in     vl_logic;
        cstm_clk        : in     vl_logic;
        clk_en          : in     vl_logic;
        start           : in     vl_logic;
        done            : out    vl_logic;
        n               : in     vl_logic_vector(1 downto 0);
        address         : out    vl_logic_vector(29 downto 0);
        readdata        : in     vl_logic_vector(31 downto 0);
        readdatavalid   : in     vl_logic;
        waitrequest     : in     vl_logic;
        burstcount      : out    vl_logic_vector(2 downto 0);
        read            : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of AUTO_CLOCK_SINK_CLOCK_RATE : constant is 1;
end determinant;
