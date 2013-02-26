library verilog;
use verilog.vl_types.all;
entity first_nios2_system_sdram_0_test_component_ram_module is
    port(
        data            : in     vl_logic_vector(15 downto 0);
        rdaddress       : in     vl_logic_vector(21 downto 0);
        rdclken         : in     vl_logic;
        wraddress       : in     vl_logic_vector(21 downto 0);
        wrclock         : in     vl_logic;
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(15 downto 0)
    );
end first_nios2_system_sdram_0_test_component_ram_module;
