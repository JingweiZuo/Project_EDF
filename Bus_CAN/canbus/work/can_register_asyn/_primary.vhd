library verilog;
use verilog.vl_types.all;
entity can_register_asyn is
    generic(
        width           : integer := 8;
        reset_value     : integer := 0
    );
    port(
        data_in         : in     vl_logic_vector;
        data_out        : out    vl_logic_vector;
        we              : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end can_register_asyn;
