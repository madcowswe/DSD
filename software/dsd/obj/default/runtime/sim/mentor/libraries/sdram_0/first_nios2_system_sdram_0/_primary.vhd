library verilog;
use verilog.vl_types.all;
entity first_nios2_system_sdram_0 is
    port(
        az_addr         : in     vl_logic_vector(21 downto 0);
        az_be_n         : in     vl_logic_vector(1 downto 0);
        az_cs           : in     vl_logic;
        az_data         : in     vl_logic_vector(15 downto 0);
        az_rd_n         : in     vl_logic;
        az_wr_n         : in     vl_logic;
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        za_data         : out    vl_logic_vector(15 downto 0);
        za_valid        : out    vl_logic;
        za_waitrequest  : out    vl_logic;
        zs_addr         : out    vl_logic_vector(11 downto 0);
        zs_ba           : out    vl_logic_vector(1 downto 0);
        zs_cas_n        : out    vl_logic;
        zs_cke          : out    vl_logic;
        zs_cs_n         : out    vl_logic;
        zs_dq           : inout  vl_logic_vector(15 downto 0);
        zs_dqm          : out    vl_logic_vector(1 downto 0);
        zs_ras_n        : out    vl_logic;
        zs_we_n         : out    vl_logic
    );
end first_nios2_system_sdram_0;
