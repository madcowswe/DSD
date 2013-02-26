library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_traceram_lpm_dram_bdp_component_module is
    generic(
        lpm_file        : string  := "UNUSED"
    );
    port(
        address_a       : in     vl_logic_vector(6 downto 0);
        address_b       : in     vl_logic_vector(6 downto 0);
        clock0          : in     vl_logic;
        clock1          : in     vl_logic;
        clocken0        : in     vl_logic;
        clocken1        : in     vl_logic;
        data_a          : in     vl_logic_vector(35 downto 0);
        data_b          : in     vl_logic_vector(35 downto 0);
        wren_a          : in     vl_logic;
        wren_b          : in     vl_logic;
        q_a             : out    vl_logic_vector(35 downto 0);
        q_b             : out    vl_logic_vector(35 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lpm_file : constant is 1;
end first_nios2_system_cpu_traceram_lpm_dram_bdp_component_module;
