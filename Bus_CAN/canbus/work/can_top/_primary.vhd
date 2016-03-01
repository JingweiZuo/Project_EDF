library verilog;
use verilog.vl_types.all;
entity can_top is
    generic(
        tp              : integer := 1
    );
    port(
        rst_i           : in     vl_logic;
        ale_i           : in     vl_logic;
        rd_i            : in     vl_logic;
        wr_i            : in     vl_logic;
        port_0_io       : inout  vl_logic_vector(7 downto 0);
        cs_can_i        : in     vl_logic;
        clk_i           : in     vl_logic;
        rx_i            : in     vl_logic;
        tx_o            : out    vl_logic;
        irq_on          : out    vl_logic;
        clkout_o        : out    vl_logic
    );
end can_top;
