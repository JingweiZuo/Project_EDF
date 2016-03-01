library verilog;
use verilog.vl_types.all;
entity can_crc is
    generic(
        tp              : integer := 1
    );
    port(
        clk             : in     vl_logic;
        data            : in     vl_logic;
        enable          : in     vl_logic;
        initialize      : in     vl_logic;
        crc             : out    vl_logic_vector(14 downto 0)
    );
end can_crc;
