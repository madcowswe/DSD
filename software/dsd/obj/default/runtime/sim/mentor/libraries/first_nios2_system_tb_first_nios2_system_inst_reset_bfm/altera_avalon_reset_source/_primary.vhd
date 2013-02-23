library verilog;
use verilog.vl_types.all;
entity altera_avalon_reset_source is
    generic(
        ASSERT_HIGH_RESET: integer := 1;
        INITIAL_RESET_CYCLES: integer := 0
    );
    port(
        clk             : in     vl_logic;
        reset           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ASSERT_HIGH_RESET : constant is 1;
    attribute mti_svvh_generic_type of INITIAL_RESET_CYCLES : constant is 1;
end altera_avalon_reset_source;
