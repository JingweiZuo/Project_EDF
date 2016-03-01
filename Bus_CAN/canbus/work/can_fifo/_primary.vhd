library verilog;
use verilog.vl_types.all;
entity can_fifo is
    generic(
        tp              : integer := 1
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        wr              : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        addr            : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0);
        fifo_selected   : in     vl_logic;
        reset_mode      : in     vl_logic;
        release_buffer  : in     vl_logic;
        extended_mode   : in     vl_logic;
        overrun         : out    vl_logic;
        info_empty      : out    vl_logic;
        info_cnt        : out    vl_logic_vector(6 downto 0)
    );
end can_fifo;
