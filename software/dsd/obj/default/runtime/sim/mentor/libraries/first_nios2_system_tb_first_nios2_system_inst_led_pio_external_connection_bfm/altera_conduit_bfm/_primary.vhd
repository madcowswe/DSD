library verilog;
use verilog.vl_types.all;
entity altera_conduit_bfm is
    port(
        sig_export      : in     vl_logic_vector(9 downto 0)
    );
end altera_conduit_bfm;
