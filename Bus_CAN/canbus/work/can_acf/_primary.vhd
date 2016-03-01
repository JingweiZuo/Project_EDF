library verilog;
use verilog.vl_types.all;
entity can_acf is
    generic(
        tp              : integer := 1
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        id              : in     vl_logic_vector(28 downto 0);
        reset_mode      : in     vl_logic;
        acceptance_filter_mode: in     vl_logic;
        extended_mode   : in     vl_logic;
        acceptance_code_0: in     vl_logic_vector(7 downto 0);
        acceptance_code_1: in     vl_logic_vector(7 downto 0);
        acceptance_code_2: in     vl_logic_vector(7 downto 0);
        acceptance_code_3: in     vl_logic_vector(7 downto 0);
        acceptance_mask_0: in     vl_logic_vector(7 downto 0);
        acceptance_mask_1: in     vl_logic_vector(7 downto 0);
        acceptance_mask_2: in     vl_logic_vector(7 downto 0);
        acceptance_mask_3: in     vl_logic_vector(7 downto 0);
        go_rx_crc_lim   : in     vl_logic;
        go_rx_inter     : in     vl_logic;
        go_error_frame  : in     vl_logic;
        data0           : in     vl_logic_vector(7 downto 0);
        data1           : in     vl_logic_vector(7 downto 0);
        rtr1            : in     vl_logic;
        rtr2            : in     vl_logic;
        ide             : in     vl_logic;
        no_byte0        : in     vl_logic;
        no_byte1        : in     vl_logic;
        id_ok           : out    vl_logic
    );
end can_acf;
