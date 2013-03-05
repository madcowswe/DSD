library verilog;
use verilog.vl_types.all;
entity first_nios2_system_addr_router_001_default_decode is
    generic(
        DEFAULT_CHANNEL : integer := 1;
        DEFAULT_DESTID  : integer := 1
    );
    port(
        default_destination_id: out    vl_logic_vector(2 downto 0);
        default_src_channel: out    vl_logic_vector(6 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEFAULT_CHANNEL : constant is 1;
    attribute mti_svvh_generic_type of DEFAULT_DESTID : constant is 1;
end first_nios2_system_addr_router_001_default_decode;
