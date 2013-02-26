library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_register_bank_b_module is
    generic(
        lpm_file        : string  := "UNUSED"
    );
    port(
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(31 downto 0);
        rdaddress       : in     vl_logic_vector(4 downto 0);
        wraddress       : in     vl_logic_vector(4 downto 0);
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lpm_file : constant is 1;
end first_nios2_system_cpu_register_bank_b_module;
