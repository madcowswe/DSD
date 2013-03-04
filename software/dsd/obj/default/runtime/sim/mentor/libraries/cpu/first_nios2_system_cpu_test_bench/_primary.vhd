library verilog;
use verilog.vl_types.all;
entity first_nios2_system_cpu_test_bench is
    port(
        D_iw            : in     vl_logic_vector(31 downto 0);
        D_iw_op         : in     vl_logic_vector(5 downto 0);
        D_iw_opx        : in     vl_logic_vector(5 downto 0);
        D_valid         : in     vl_logic;
        E_alu_result    : in     vl_logic_vector(31 downto 0);
        E_mem_byte_en   : in     vl_logic_vector(3 downto 0);
        E_st_data       : in     vl_logic_vector(31 downto 0);
        E_valid         : in     vl_logic;
        F_pcb           : in     vl_logic_vector(24 downto 0);
        F_valid         : in     vl_logic;
        R_ctrl_exception: in     vl_logic;
        R_ctrl_ld       : in     vl_logic;
        R_ctrl_ld_non_io: in     vl_logic;
        R_dst_regnum    : in     vl_logic_vector(4 downto 0);
        R_wr_dst_reg    : in     vl_logic;
        W_bstatus_reg   : in     vl_logic;
        W_cmp_result    : in     vl_logic;
        W_estatus_reg   : in     vl_logic;
        W_ienable_reg   : in     vl_logic_vector(31 downto 0);
        W_ipending_reg  : in     vl_logic_vector(31 downto 0);
        W_mem_baddr     : in     vl_logic_vector(24 downto 0);
        W_rf_wr_data    : in     vl_logic_vector(31 downto 0);
        W_status_reg    : in     vl_logic;
        W_valid         : in     vl_logic;
        W_vinst         : in     vl_logic_vector(55 downto 0);
        W_wr_data       : in     vl_logic_vector(31 downto 0);
        av_ld_data_aligned_unfiltered: in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        d_address       : in     vl_logic_vector(24 downto 0);
        d_byteenable    : in     vl_logic_vector(3 downto 0);
        d_read          : in     vl_logic;
        d_write_nxt     : in     vl_logic;
        i_address       : in     vl_logic_vector(24 downto 0);
        i_read          : in     vl_logic;
        i_readdata      : in     vl_logic_vector(31 downto 0);
        i_waitrequest   : in     vl_logic;
        reset_n         : in     vl_logic;
        av_ld_data_aligned_filtered: out    vl_logic_vector(31 downto 0);
        d_write         : out    vl_logic;
        test_has_ended  : out    vl_logic
    );
end first_nios2_system_cpu_test_bench;
