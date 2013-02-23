library verilog;
use verilog.vl_types.all;
entity first_nios2_system_sdram_0_test_component is
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
end first_nios2_system_sdram_0_test_component;
