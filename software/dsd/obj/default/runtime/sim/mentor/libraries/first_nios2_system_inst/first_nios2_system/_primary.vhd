library verilog;
use verilog.vl_types.all;
entity first_nios2_system is
    port(
        led_pio_external_connection_export: out    vl_logic_vector(9 downto 0);
        clock_bridge_0_out_clk_clk: out    vl_logic;
        reset_reset_n   : in     vl_logic;
        clk_clk         : in     vl_logic;
        sdram_0_wire_addr: out    vl_logic_vector(11 downto 0);
        sdram_0_wire_ba : out    vl_logic_vector(1 downto 0);
        sdram_0_wire_cas_n: out    vl_logic;
        sdram_0_wire_cke: out    vl_logic;
        sdram_0_wire_cs_n: out    vl_logic;
        sdram_0_wire_dq : inout  vl_logic_vector(15 downto 0);
        sdram_0_wire_dqm: out    vl_logic_vector(1 downto 0);
        sdram_0_wire_ras_n: out    vl_logic;
        sdram_0_wire_we_n: out    vl_logic
    );
end first_nios2_system;
