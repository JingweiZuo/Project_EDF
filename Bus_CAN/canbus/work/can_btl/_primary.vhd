library verilog;
use verilog.vl_types.all;
entity can_btl is
    generic(
        tp              : integer := 1
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        rx              : in     vl_logic;
        reset_mode      : in     vl_logic;
        baud_r_presc    : in     vl_logic_vector(5 downto 0);
        sync_jump_width : in     vl_logic_vector(1 downto 0);
        time_segment1   : in     vl_logic_vector(3 downto 0);
        time_segment2   : in     vl_logic_vector(2 downto 0);
        triple_sampling : in     vl_logic;
        clk_en          : out    vl_logic;
        sample_point    : out    vl_logic;
        sampled_bit     : out    vl_logic;
        sampled_bit_q   : out    vl_logic;
        tx_point        : out    vl_logic;
        hard_sync       : out    vl_logic;
        resync          : out    vl_logic;
        rx_idle         : in     vl_logic;
        transmitting    : in     vl_logic;
        last_bit_of_inter: in     vl_logic
    );
end can_btl;
