library verilog;
use verilog.vl_types.all;
entity first_nios2_system_jtag_uart is
    port(
        av_address      : in     vl_logic;
        av_chipselect   : in     vl_logic;
        av_read_n       : in     vl_logic;
        av_write_n      : in     vl_logic;
        av_writedata    : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        av_irq          : out    vl_logic;
        av_readdata     : out    vl_logic_vector(31 downto 0);
        av_waitrequest  : out    vl_logic;
        dataavailable   : out    vl_logic;
        readyfordata    : out    vl_logic
    );
end first_nios2_system_jtag_uart;
