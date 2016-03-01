library verilog;
use verilog.vl_types.all;
entity can_ibo is
    port(
        di              : in     vl_logic_vector(7 downto 0);
        do              : out    vl_logic_vector(7 downto 0)
    );
end can_ibo;
