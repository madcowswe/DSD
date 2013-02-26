library verilog;
use verilog.vl_types.all;
entity altera_customins_slave_translator is
    generic(
        N_WIDTH         : integer := 8;
        USE_DONE        : integer := 1;
        NUM_FIXED_CYCLES: integer := 2
    );
    port(
        ci_slave_dataa  : in     vl_logic_vector(31 downto 0);
        ci_slave_datab  : in     vl_logic_vector(31 downto 0);
        ci_slave_result : out    vl_logic_vector(31 downto 0);
        ci_slave_n      : in     vl_logic_vector(7 downto 0);
        ci_slave_readra : in     vl_logic;
        ci_slave_readrb : in     vl_logic;
        ci_slave_writerc: in     vl_logic;
        ci_slave_a      : in     vl_logic_vector(4 downto 0);
        ci_slave_b      : in     vl_logic_vector(4 downto 0);
        ci_slave_c      : in     vl_logic_vector(4 downto 0);
        ci_slave_ipending: in     vl_logic_vector(31 downto 0);
        ci_slave_estatus: in     vl_logic;
        ci_slave_clk    : in     vl_logic;
        ci_slave_clken  : in     vl_logic;
        ci_slave_reset  : in     vl_logic;
        ci_slave_start  : in     vl_logic;
        ci_slave_done   : out    vl_logic;
        ci_master_dataa : out    vl_logic_vector(31 downto 0);
        ci_master_datab : out    vl_logic_vector(31 downto 0);
        ci_master_result: in     vl_logic_vector(31 downto 0);
        ci_master_n     : out    vl_logic_vector;
        ci_master_readra: out    vl_logic;
        ci_master_readrb: out    vl_logic;
        ci_master_writerc: out    vl_logic;
        ci_master_a     : out    vl_logic_vector(4 downto 0);
        ci_master_b     : out    vl_logic_vector(4 downto 0);
        ci_master_c     : out    vl_logic_vector(4 downto 0);
        ci_master_ipending: out    vl_logic_vector(31 downto 0);
        ci_master_estatus: out    vl_logic;
        ci_master_clk   : out    vl_logic;
        ci_master_clken : out    vl_logic;
        ci_master_reset : out    vl_logic;
        ci_master_start : out    vl_logic;
        ci_master_done  : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of USE_DONE : constant is 1;
    attribute mti_svvh_generic_type of NUM_FIXED_CYCLES : constant is 1;
end altera_customins_slave_translator;
