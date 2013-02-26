library verilog;
use verilog.vl_types.all;
entity first_nios2_system_jtag_uart_log_module is
    port(
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        strobe          : in     vl_logic;
        valid           : in     vl_logic
    );
end first_nios2_system_jtag_uart_log_module;
