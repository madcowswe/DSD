library verilog;
use verilog.vl_types.all;
entity first_nios2_system_irq_mapper is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        receiver0_irq   : in     vl_logic;
        receiver1_irq   : in     vl_logic;
        receiver2_irq   : in     vl_logic;
        sender_irq      : out    vl_logic_vector(31 downto 0)
    );
end first_nios2_system_irq_mapper;
