library verilog;
use verilog.vl_types.all;
entity altera_sdram_partner_module is
    generic(
        INIT_FILE       : string  := "altera_sdram_partner_module.dat"
    );
    port(
        clk             : in     vl_logic;
        zs_addr         : in     vl_logic_vector(11 downto 0);
        zs_ba           : in     vl_logic_vector(1 downto 0);
        zs_cas_n        : in     vl_logic;
        zs_cke          : in     vl_logic;
        zs_cs_n         : in     vl_logic;
        zs_dqm          : in     vl_logic_vector(1 downto 0);
        zs_ras_n        : in     vl_logic;
        zs_we_n         : in     vl_logic;
        zs_dq           : inout  vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT_FILE : constant is 1;
end altera_sdram_partner_module;
