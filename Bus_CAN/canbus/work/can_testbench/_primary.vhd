library verilog;
use verilog.vl_types.all;
entity can_testbench is
    generic(
        tp              : integer := 1;
        brp             : integer := 4
    );
end can_testbench;
