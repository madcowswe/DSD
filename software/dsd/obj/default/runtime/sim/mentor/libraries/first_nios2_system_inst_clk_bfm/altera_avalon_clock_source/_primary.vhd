library verilog;
use verilog.vl_types.all;
entity altera_avalon_clock_source is
    generic(
        CLOCK_RATE      : integer := 10;
        CLOCK_UNIT      : integer := 1000000
    );
    port(
        clk             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLOCK_RATE : constant is 1;
    attribute mti_svvh_generic_type of CLOCK_UNIT : constant is 1;
end altera_avalon_clock_source;
