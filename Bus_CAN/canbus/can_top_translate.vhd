-- Xilinx Vhdl netlist produced by netgen application (version G.23)
-- Command       : -intstyle ise -rpw 100 -tpw 0 -ar Structure -xon true -w -ofmt vhdl -sim can_top.ngd can_top_translate.vhd 
-- Input file    : can_top.ngd
-- Output file   : can_top_translate.vhd
-- Design name   : can_top
-- # of Entities : 1
-- Xilinx        : C:/Program Files/Xilinx
-- Device        : 2s300epq208-6

-- This vhdl netlist is a simulation model and uses simulation 
-- primitives which may not represent the true implementation of the 
-- device, however the netlist is functionally correct and should not 
-- be modified. This file cannot be synthesized and should only be used 
-- with supported simulation tools.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity can_top is
  port (
    rst_i : in STD_LOGIC := 'X'; 
    rx_i : in STD_LOGIC := 'X'; 
    ale_i : in STD_LOGIC := 'X'; 
    clk_i : in STD_LOGIC := 'X'; 
    rd_i : in STD_LOGIC := 'X'; 
    wr_i : in STD_LOGIC := 'X'; 
    cs_can_i : in STD_LOGIC := 'X'; 
    tx_o : out STD_LOGIC; 
    irq_on : out STD_LOGIC; 
    clkout_o : out STD_LOGIC; 
    port_0_io : inout STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end can_top;

architecture Structure of can_top is
  signal rst_i_IBUF : STD_LOGIC; 
  signal rx_i_IBUF : STD_LOGIC; 
  signal ale_i_IBUF : STD_LOGIC; 
  signal clk_i_BUFGP : STD_LOGIC; 
  signal irq_on_OBUF : STD_LOGIC; 
  signal rd_i_IBUF : STD_LOGIC; 
  signal wr_i_IBUF : STD_LOGIC; 
  signal cs_can_i_IBUF : STD_LOGIC; 
  signal clkout_o_OBUF : STD_LOGIC; 
  signal tx_successful : STD_LOGIC; 
  signal i_can_bsp_node_bus_off : STD_LOGIC; 
  signal we_tx_err_cnt : STD_LOGIC; 
  signal last_bit_of_inter : STD_LOGIC; 
  signal wr_i_q : STD_LOGIC; 
  signal i_can_btl_sample_point : STD_LOGIC; 
  signal overrun : STD_LOGIC; 
  signal read_error_code_capture_reg : STD_LOGIC; 
  signal error_status : STD_LOGIC; 
  signal cs : STD_LOGIC; 
  signal i_can_btl_sampled_bit : STD_LOGIC; 
  signal listen_only_mode : STD_LOGIC; 
  signal Q_n0000 : STD_LOGIC; 
  signal tx_point : STD_LOGIC; 
  signal N23149 : STD_LOGIC; 
  signal N23151 : STD_LOGIC; 
  signal i_can_bsp_i_can_crc_rx_n0000_8_Q : STD_LOGIC; 
  signal I8_N3072 : STD_LOGIC; 
  signal i_can_bsp_i_can_crc_rx_n0000_3_Q : STD_LOGIC; 
  signal set_reset_mode : STD_LOGIC; 
  signal i_can_bsp_i_can_crc_rx_n0000_4_Q : STD_LOGIC; 
  signal acceptance_filter_mode : STD_LOGIC; 
  signal i_can_bsp_tx : STD_LOGIC; 
  signal N54651 : STD_LOGIC; 
  signal N54653 : STD_LOGIC; 
  signal data_out_fifo_selected : STD_LOGIC; 
  signal i_can_bsp_transmitting : STD_LOGIC; 
  signal i_can_bsp_rx_idle : STD_LOGIC; 
  signal read_arbitration_lost_capture_reg : STD_LOGIC; 
  signal i_can_bsp_node_error_passive : STD_LOGIC; 
  signal i_can_bsp_need_to_tx : STD_LOGIC; 
  signal N55708 : STD_LOGIC; 
  signal i_can_registers_single_shot_transmission : STD_LOGIC; 
  signal info_empty : STD_LOGIC; 
  signal i_can_bsp_i_can_crc_rx_n0000_14_Q : STD_LOGIC; 
  signal i_can_bsp_i_can_crc_rx_n0000_10_Q : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net177 : STD_LOGIC; 
  signal rd_i_q : STD_LOGIC; 
  signal i_can_bsp_i_can_crc_rx_n0000_7_Q : STD_LOGIC; 
  signal i_can_btl_sampled_bit_q : STD_LOGIC; 
  signal abort_tx : STD_LOGIC; 
  signal hard_sync : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_31 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_30 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_29 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_28 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_27 : STD_LOGIC; 
  signal i_can_btl_clk_en : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_lut4_10 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_cy_87 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_cy_84 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_lut3_9 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_sum_54 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_lut3_15 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_sum_48 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_cy_78 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_lut3_8 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_cy_77 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_lut3_16 : STD_LOGIC; 
  signal i_can_btl_resync : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_cy_85 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_sum_55 : STD_LOGIC; 
  signal i_can_btl_sync_blocked : STD_LOGIC; 
  signal i_can_btl_resync_latched : STD_LOGIC; 
  signal i_can_btl_clk_cnt_15 : STD_LOGIC; 
  signal i_can_btl_seg1 : STD_LOGIC; 
  signal i_can_btl_n0007 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_16 : STD_LOGIC; 
  signal i_can_btl_n0021 : STD_LOGIC; 
  signal i_can_btl_n0017 : STD_LOGIC; 
  signal i_can_btl_n0030 : STD_LOGIC; 
  signal i_can_btl_N28750 : STD_LOGIC; 
  signal i_can_btl_n0033 : STD_LOGIC; 
  signal i_can_btl_n0028 : STD_LOGIC; 
  signal i_can_btl_n0034 : STD_LOGIC; 
  signal i_can_btl_n0029 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_10 : STD_LOGIC; 
  signal i_can_btl_n0035 : STD_LOGIC; 
  signal i_can_btl_n0041 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_lut4_13 : STD_LOGIC; 
  signal i_can_btl_n0042 : STD_LOGIC; 
  signal i_can_btl_N28740 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_12 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_sum_56 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_lut3_12 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_lut4_12 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_cy_80 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_sum_50 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_sum_53 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_lut3_11 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_lut3_14 : STD_LOGIC; 
  signal i_can_btl_seg2 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_cy_82 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_cy_81 : STD_LOGIC; 
  signal i_can_btl_sync_window : STD_LOGIC; 
  signal i_can_btl_go_seg2 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_sum_51 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_sum_52 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_lut3_10 : STD_LOGIC; 
  signal i_can_btl_go_seg1 : STD_LOGIC; 
  signal i_can_btl_resync_blocked : STD_LOGIC; 
  signal i_can_btl_sync : STD_LOGIC; 
  signal i_can_btl_clk_cnt_13 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_lut3_13 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_14 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_cy_83 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_cy_89 : STD_LOGIC; 
  signal i_can_btl_n0074 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_11 : STD_LOGIC; 
  signal i_can_btl_n0080 : STD_LOGIC; 
  signal i_can_btl_n0075 : STD_LOGIC; 
  signal i_can_btl_n0081 : STD_LOGIC; 
  signal i_can_btl_n0076 : STD_LOGIC; 
  signal i_can_btl_n0082 : STD_LOGIC; 
  signal i_can_btl_n0077 : STD_LOGIC; 
  signal i_can_btl_n0083 : STD_LOGIC; 
  signal i_can_btl_n0078 : STD_LOGIC; 
  signal i_can_btl_n0084 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_9 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_cy_79 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0034_inst_cy_87 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0042_inst_lut4_0 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0034_inst_cy_88 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0042_inst_lut4_3 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0042_inst_cy_9 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0042_inst_lut4_2 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0042_inst_cy_8 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0042_inst_lut4_1 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0042_inst_cy_7 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0041_inst_cy_7 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0041_inst_lut4_0 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0041_inst_lut4_3 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0041_inst_cy_9 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0041_inst_lut4_2 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0041_inst_cy_8 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0041_inst_lut4_1 : STD_LOGIC; 
  signal i_can_btl_Madd_n0038_inst_cy_12 : STD_LOGIC; 
  signal i_can_btl_Madd_n0038_inst_cy_13 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0034_inst_lut4_11 : STD_LOGIC; 
  signal i_can_btl_Madd_n0038_inst_cy_11 : STD_LOGIC; 
  signal i_can_btl_Madd_n0038_inst_lut2_6 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_cy_15 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_lut2_10 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_lut2_17 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_cy_21 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_lut2_16 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_cy_20 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_lut2_15 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_cy_19 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_lut2_14 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_cy_18 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_lut2_13 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_cy_17 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_lut2_12 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_cy_16 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0030_inst_lut2_11 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_cy_23 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_lut4_4 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_lut4_9 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_cy_27 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_lut4_8 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_cy_26 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_lut4_7 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_cy_25 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_lut4_6 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_cy_24 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0007_inst_lut4_5 : STD_LOGIC; 
  signal i_can_btl_Madd_n0045_inst_cy_31 : STD_LOGIC; 
  signal i_can_btl_Madd_n0045_inst_cy_30 : STD_LOGIC; 
  signal i_can_btl_Madd_n0045_inst_cy_32 : STD_LOGIC; 
  signal i_can_btl_Madd_n0045_inst_cy_33 : STD_LOGIC; 
  signal i_can_btl_Madd_n0045_inst_cy_29 : STD_LOGIC; 
  signal i_can_btl_Madd_n0045_inst_lut2_18 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_cy_35 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_lut2_24 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_lut2_33 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_cy_43 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_lut2_32 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_cy_42 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_lut2_31 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_cy_41 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_lut2_30 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_cy_40 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_lut2_29 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_cy_39 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_lut2_28 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_cy_38 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_lut2_27 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_cy_37 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_lut2_26 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_cy_36 : STD_LOGIC; 
  signal i_can_btl_Mcompar_sync_window_inst_lut2_25 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_lut2_41 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_cy_50 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_lut2_39 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_cy_52 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_cy_49 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_lut2_38 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_cy_51 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_cy_48 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_lut2_37 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_cy_47 : STD_LOGIC; 
  signal i_can_btl_clk_cnt_inst_sum_49 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_lut2_34 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_cy_45 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_lut2_40 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_lut2_35 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_cy_46 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0034_inst_lut4_12 : STD_LOGIC; 
  signal i_can_btl_Msub_n0003_inst_lut2_36 : STD_LOGIC; 
  signal i_can_btl_Madd_n0044_inst_cy_55 : STD_LOGIC; 
  signal i_can_btl_Madd_n0044_inst_lut2_46 : STD_LOGIC; 
  signal i_can_btl_Madd_n0044_inst_cy_56 : STD_LOGIC; 
  signal i_can_btl_Madd_n0044_inst_lut2_45 : STD_LOGIC; 
  signal i_can_btl_Madd_n0044_inst_lut2_44 : STD_LOGIC; 
  signal i_can_btl_Madd_n0044_inst_lut2_43 : STD_LOGIC; 
  signal i_can_btl_Madd_n0044_inst_cy_54 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_lut2_53 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_lut4_11 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_cy_63 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_lut2_52 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_cy_66 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_cy_62 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_lut2_51 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_lut2_54 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_cy_61 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_lut2_50 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0034_inst_cy_89 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_cy_60 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_lut2_49 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0034_inst_lut4_13 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_cy_59 : STD_LOGIC; 
  signal N54664 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_cy_65 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0034_inst_lut4_10 : STD_LOGIC; 
  signal i_can_btl_Msub_n0000_inst_cy_64 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_sum_40 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_lut3_1 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_cy_75 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_lut3_6 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_sum_45 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_cy_74 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_lut3_5 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_sum_44 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_cy_73 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_lut3_4 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_sum_43 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_cy_72 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_lut3_3 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_sum_42 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_cy_71 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_lut3_2 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_sum_41 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_cy_70 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_sum_47 : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_cy_88 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_lut3_7 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_sum_46 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_cy_68 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_lut3_0 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_inst_cy_69 : STD_LOGIC; 
  signal i_can_registers_n0069 : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG4_n0001 : STD_LOGIC; 
  signal i_can_registers_N31898 : STD_LOGIC; 
  signal i_can_registers_N31806 : STD_LOGIC; 
  signal i_can_registers_n0062 : STD_LOGIC; 
  signal i_can_registers_arbitration_lost_irq : STD_LOGIC; 
  signal N54658 : STD_LOGIC; 
  signal i_can_registers_error_irq : STD_LOGIC; 
  signal i_can_registers_error_passive_irq : STD_LOGIC; 
  signal i_can_registers_N31603 : STD_LOGIC; 
  signal i_can_registers_n0207 : STD_LOGIC; 
  signal i_can_registers_N31875 : STD_LOGIC; 
  signal i_can_registers_n0205 : STD_LOGIC; 
  signal i_can_registers_n0169 : STD_LOGIC; 
  signal i_can_registers_n0199 : STD_LOGIC; 
  signal i_can_registers_N31634 : STD_LOGIC; 
  signal i_can_registers_receive_irq : STD_LOGIC; 
  signal N54937 : STD_LOGIC; 
  signal i_can_registers_n0176 : STD_LOGIC; 
  signal i_can_registers_N31793 : STD_LOGIC; 
  signal i_can_registers_N31731 : STD_LOGIC; 
  signal i_can_registers_N31528 : STD_LOGIC; 
  signal i_can_registers_MODE_REG0_n0003 : STD_LOGIC; 
  signal i_can_registers_n0198 : STD_LOGIC; 
  signal i_can_registers_n0076 : STD_LOGIC; 
  signal i_can_registers_n0208 : STD_LOGIC; 
  signal i_can_registers_n0200 : STD_LOGIC; 
  signal i_can_registers_n0056 : STD_LOGIC; 
  signal i_can_registers_n0197 : STD_LOGIC; 
  signal i_can_registers_n0158 : STD_LOGIC; 
  signal i_can_registers_receive_buffer_status : STD_LOGIC; 
  signal i_can_registers_MODE_REG0_n0001 : STD_LOGIC; 
  signal i_can_registers_n0210 : STD_LOGIC; 
  signal i_can_registers_n0209 : STD_LOGIC; 
  signal i_can_registers_n0058 : STD_LOGIC; 
  signal i_can_registers_N31781 : STD_LOGIC; 
  signal i_can_registers_n0074 : STD_LOGIC; 
  signal i_can_registers_n0063 : STD_LOGIC; 
  signal i_can_registers_N31893 : STD_LOGIC; 
  signal i_can_registers_N31823 : STD_LOGIC; 
  signal i_can_registers_N31720 : STD_LOGIC; 
  signal i_can_registers_n0065 : STD_LOGIC; 
  signal i_can_registers_bus_error_irq : STD_LOGIC; 
  signal i_can_registers_N31787 : STD_LOGIC; 
  signal i_can_registers_transmission_complete : STD_LOGIC; 
  signal i_can_registers_transmit_buffer_status : STD_LOGIC; 
  signal i_can_registers_we_bus_timing_1 : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG4_n0003 : STD_LOGIC; 
  signal i_can_registers_transmit_irq : STD_LOGIC; 
  signal i_can_registers_n0068 : STD_LOGIC; 
  signal i_can_registers_transmit_buffer_status_q : STD_LOGIC; 
  signal i_can_registers_node_error_passive_q : STD_LOGIC; 
  signal i_can_registers_node_bus_off_q : STD_LOGIC; 
  signal i_can_registers_n0047 : STD_LOGIC; 
  signal i_can_registers_N31666 : STD_LOGIC; 
  signal i_can_registers_we_error_warning_limit : STD_LOGIC; 
  signal i_can_registers_tx_successful_q : STD_LOGIC; 
  signal i_can_registers_we_clock_divider_low : STD_LOGIC; 
  signal i_can_registers_N31740 : STD_LOGIC; 
  signal i_can_registers_n0060 : STD_LOGIC; 
  signal i_can_registers_n0204 : STD_LOGIC; 
  signal i_can_registers_we_bus_timing_0 : STD_LOGIC; 
  signal i_can_registers_we_mode : STD_LOGIC; 
  signal i_can_registers_N31748 : STD_LOGIC; 
  signal i_can_registers_we_command : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG0_n0003 : STD_LOGIC; 
  signal i_can_registers_we_interrupt_enable : STD_LOGIC; 
  signal i_can_registers_error_status_q : STD_LOGIC; 
  signal i_can_registers_n0064 : STD_LOGIC; 
  signal i_can_registers_we_acceptance_code_0 : STD_LOGIC; 
  signal i_can_registers_we_acceptance_code_1 : STD_LOGIC; 
  signal i_can_registers_we_acceptance_code_2 : STD_LOGIC; 
  signal i_can_registers_we_acceptance_code_3 : STD_LOGIC; 
  signal i_can_registers_overrun_status : STD_LOGIC; 
  signal i_can_registers_N31881 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_10 : STD_LOGIC; 
  signal N54641 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_11 : STD_LOGIC; 
  signal i_can_registers_overrun_q : STD_LOGIC; 
  signal i_can_registers_we_tx_data_12 : STD_LOGIC; 
  signal i_can_registers_we_acceptance_mask_0 : STD_LOGIC; 
  signal i_can_registers_we_acceptance_mask_1 : STD_LOGIC; 
  signal i_can_registers_we_acceptance_mask_2 : STD_LOGIC; 
  signal i_can_registers_data_overrun_irq : STD_LOGIC; 
  signal i_can_registers_we_acceptance_mask_3 : STD_LOGIC; 
  signal i_can_registers_clkout_tmp : STD_LOGIC; 
  signal i_can_registers_we_tx_data_0 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_1 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_2 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_3 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_4 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_5 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_6 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_7 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_8 : STD_LOGIC; 
  signal i_can_registers_we_tx_data_9 : STD_LOGIC; 
  signal i_can_registers_n0206 : STD_LOGIC; 
  signal i_can_registers_we_clock_divider_hi : STD_LOGIC; 
  signal i_can_registers_n0000 : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG0_n0001 : STD_LOGIC; 
  signal i_can_registers_N31709 : STD_LOGIC; 
  signal i_can_registers_n0004 : STD_LOGIC; 
  signal i_can_registers_n0010 : STD_LOGIC; 
  signal i_can_registers_n0067 : STD_LOGIC; 
  signal i_can_registers_N31818 : STD_LOGIC; 
  signal i_can_registers_N31446 : STD_LOGIC; 
  signal i_can_registers_read : STD_LOGIC; 
  signal i_can_registers_n0014 : STD_LOGIC; 
  signal i_can_registers_n0015 : STD_LOGIC; 
  signal i_can_registers_n0071 : STD_LOGIC; 
  signal i_can_registers_n0066 : STD_LOGIC; 
  signal i_can_registers_n0201 : STD_LOGIC; 
  signal i_can_registers_N31847 : STD_LOGIC; 
  signal i_can_registers_n0061 : STD_LOGIC; 
  signal i_can_registers_n0203 : STD_LOGIC; 
  signal i_can_registers_n0032 : STD_LOGIC; 
  signal i_can_registers_n0033 : STD_LOGIC; 
  signal i_can_registers_N31646 : STD_LOGIC; 
  signal i_can_registers_n0034 : STD_LOGIC; 
  signal i_can_registers_N31509 : STD_LOGIC; 
  signal i_can_registers_n0057 : STD_LOGIC; 
  signal i_can_registers_n0036 : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG1_n0003 : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG_n0003 : STD_LOGIC; 
  signal i_can_registers_n0037 : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG1_n0001 : STD_LOGIC; 
  signal N55039 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net270 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_31 : STD_LOGIC; 
  signal N55523 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_lut3_27 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_98 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net231 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_sum_92 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_lut3_24 : STD_LOGIC; 
  signal N54525 : STD_LOGIC; 
  signal N54662 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net235 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_cy_122 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_sum_89 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_lut2_130 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_cy_201 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_lut3_25 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_cy_123 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_130 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_lut2_124 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_sum_90 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_lut3_26 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_cy_196 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_N30681 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0034 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_N30671 : STD_LOGIC; 
  signal N55535 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_cy_124 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_cy_121 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_inst_sum_91 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_116 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_21 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_76 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_77 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_96 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_78 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_118 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0026 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_79 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_119 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_117 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_lut2_128 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_cy_199 : STD_LOGIC; 
  signal N54519 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_120 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_17 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_18 : STD_LOGIC; 
  signal i_can_bsp_ack_err_latched : STD_LOGIC; 
  signal i_can_bsp_go_tx : STD_LOGIC; 
  signal i_can_bsp_go_rx_dlc : STD_LOGIC; 
  signal i_can_bsp_go_rx_crc : STD_LOGIC; 
  signal i_can_bsp_go_rx_eof : STD_LOGIC; 
  signal i_can_bsp_go_rx_id1 : STD_LOGIC; 
  signal i_can_bsp_go_rx_id2 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_q : STD_LOGIC; 
  signal i_can_bsp_go_rx_ide : STD_LOGIC; 
  signal i_can_bsp_rx_eof : STD_LOGIC; 
  signal N55527 : STD_LOGIC; 
  signal CHOICE2128 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_3_5 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_5_0 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_4_3 : STD_LOGIC; 
  signal i_can_bsp_suspend : STD_LOGIC; 
  signal i_can_bsp_error_flag_over_blocked : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_21 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_sum_95 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_cy_128 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_94 : STD_LOGIC; 
  signal i_can_bsp_go_rx_data : STD_LOGIC; 
  signal i_can_bsp_bit_de_stuff_set : STD_LOGIC; 
  signal i_can_bsp_rx_r0 : STD_LOGIC; 
  signal i_can_bsp_rx_r1 : STD_LOGIC; 
  signal i_can_bsp_go_rx_crc_lim : STD_LOGIC; 
  signal i_can_bsp_go_early_tx_latched : STD_LOGIC; 
  signal i_can_bsp_go_overload_frame : STD_LOGIC; 
  signal i_can_bsp_waiting_for_bus_free : STD_LOGIC; 
  signal i_can_bsp_arbitration_blocked : STD_LOGIC; 
  signal i_can_bsp_no_byte0 : STD_LOGIC; 
  signal i_can_bsp_no_byte1 : STD_LOGIC; 
  signal i_can_bsp_transmitter : STD_LOGIC; 
  signal i_can_bsp_susp_cnt_en : STD_LOGIC; 
  signal i_can_bsp_arbitration_field : STD_LOGIC; 
  signal i_can_bsp_bus_free : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_SF26404 : STD_LOGIC; 
  signal i_can_bsp_rtr1 : STD_LOGIC; 
  signal i_can_bsp_rtr2 : STD_LOGIC; 
  signal i_can_bsp_write_data_to_tmp_fifo : STD_LOGIC; 
  signal i_can_bsp_stuff_err : STD_LOGIC; 
  signal i_can_bsp_rx_crc_lim : STD_LOGIC; 
  signal i_can_bsp_rule3_exc1_1 : STD_LOGIC; 
  signal i_can_bsp_rule3_exc1_2 : STD_LOGIC; 
  signal i_can_bsp_bit_err : STD_LOGIC; 
  signal i_can_bsp_bit_stuff_cnt_en : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_32 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_131 : STD_LOGIC; 
  signal i_can_bsp_rx_id2 : STD_LOGIC; 
  signal i_can_bsp_n0003 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_19 : STD_LOGIC; 
  signal i_can_bsp_n0005 : STD_LOGIC; 
  signal i_can_bsp_n0010 : STD_LOGIC; 
  signal N54917 : STD_LOGIC; 
  signal i_can_bsp_n0011 : STD_LOGIC; 
  signal i_can_bsp_n0007 : STD_LOGIC; 
  signal i_can_bsp_N34298 : STD_LOGIC; 
  signal i_can_bsp_n0008 : STD_LOGIC; 
  signal i_can_bsp_N34319 : STD_LOGIC; 
  signal i_can_bsp_n0009 : STD_LOGIC; 
  signal i_can_bsp_n0014 : STD_LOGIC; 
  signal i_can_bsp_n0020 : STD_LOGIC; 
  signal i_can_bsp_n0021 : STD_LOGIC; 
  signal i_can_bsp_n0022 : STD_LOGIC; 
  signal i_can_bsp_n0023 : STD_LOGIC; 
  signal i_can_bsp_n0019 : STD_LOGIC; 
  signal i_can_bsp_n0024 : STD_LOGIC; 
  signal i_can_bsp_n0025 : STD_LOGIC; 
  signal i_can_bsp_n0030 : STD_LOGIC; 
  signal i_can_bsp_n0026 : STD_LOGIC; 
  signal i_can_bsp_n0032 : STD_LOGIC; 
  signal i_can_bsp_rx_rtr1 : STD_LOGIC; 
  signal i_can_bsp_n0028 : STD_LOGIC; 
  signal i_can_bsp_rx_rtr2 : STD_LOGIC; 
  signal i_can_bsp_n0034 : STD_LOGIC; 
  signal i_can_bsp_n0040 : STD_LOGIC; 
  signal i_can_bsp_n0036 : STD_LOGIC; 
  signal i_can_bsp_n0042 : STD_LOGIC; 
  signal i_can_bsp_n0038 : STD_LOGIC; 
  signal i_can_bsp_n0044 : STD_LOGIC; 
  signal i_can_bsp_n0050 : STD_LOGIC; 
  signal i_can_bsp_n0101 : STD_LOGIC; 
  signal i_can_bsp_n0046 : STD_LOGIC; 
  signal i_can_bsp_n0102 : STD_LOGIC; 
  signal i_can_bsp_n0052 : STD_LOGIC; 
  signal i_can_bsp_n0048 : STD_LOGIC; 
  signal i_can_bsp_n0054 : STD_LOGIC; 
  signal i_can_bsp_n0110 : STD_LOGIC; 
  signal i_can_bsp_n0105 : STD_LOGIC; 
  signal i_can_bsp_n0111 : STD_LOGIC; 
  signal i_can_bsp_n0061 : STD_LOGIC; 
  signal i_can_bsp_n0056 : STD_LOGIC; 
  signal i_can_bsp_n0108 : STD_LOGIC; 
  signal i_can_bsp_n0063 : STD_LOGIC; 
  signal i_can_bsp_n0058 : STD_LOGIC; 
  signal i_can_bsp_n0114 : STD_LOGIC; 
  signal i_can_bsp_N34329 : STD_LOGIC; 
  signal i_can_bsp_n0065 : STD_LOGIC; 
  signal i_can_bsp_n0116 : STD_LOGIC; 
  signal i_can_bsp_n0118 : STD_LOGIC; 
  signal i_can_bsp_n0124 : STD_LOGIC; 
  signal i_can_bsp_n0074 : STD_LOGIC; 
  signal i_can_bsp_n0131 : STD_LOGIC; 
  signal i_can_bsp_n0076 : STD_LOGIC; 
  signal i_can_bsp_bit_de_stuff_tx : STD_LOGIC; 
  signal i_can_bsp_n0133 : STD_LOGIC; 
  signal i_can_bsp_n0083 : STD_LOGIC; 
  signal i_can_bsp_n0129 : STD_LOGIC; 
  signal i_can_bsp_n0079 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_110 : STD_LOGIC; 
  signal i_can_bsp_n0135 : STD_LOGIC; 
  signal i_can_bsp_n0091 : STD_LOGIC; 
  signal i_can_bsp_n0142 : STD_LOGIC; 
  signal i_can_bsp_n0087 : STD_LOGIC; 
  signal i_can_bsp_n0144 : STD_LOGIC; 
  signal i_can_bsp_n0094 : STD_LOGIC; 
  signal i_can_bsp_n0200 : STD_LOGIC; 
  signal i_can_bsp_n0146 : STD_LOGIC; 
  signal i_can_bsp_n0152 : STD_LOGIC; 
  signal i_can_bsp_n0097 : STD_LOGIC; 
  signal i_can_bsp_n0203 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_129 : STD_LOGIC; 
  signal i_can_bsp_N34362 : STD_LOGIC; 
  signal i_can_bsp_N34172 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net227 : STD_LOGIC; 
  signal i_can_bsp_n0155 : STD_LOGIC; 
  signal i_can_bsp_N34368 : STD_LOGIC; 
  signal i_can_bsp_n0206 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0068 : STD_LOGIC; 
  signal i_can_bsp_N34226 : STD_LOGIC; 
  signal i_can_bsp_n0207 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0073 : STD_LOGIC; 
  signal i_can_bsp_N34357 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_cy_205 : STD_LOGIC; 
  signal N54523 : STD_LOGIC; 
  signal i_can_bsp_tx_state : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_lut2_126 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net179 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net184 : STD_LOGIC; 
  signal i_can_bsp_n0220 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_cy_195 : STD_LOGIC; 
  signal i_can_bsp_N33580 : STD_LOGIC; 
  signal i_can_bsp_N33893 : STD_LOGIC; 
  signal i_can_bsp_n0221 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net272 : STD_LOGIC; 
  signal i_can_bsp_N34191 : STD_LOGIC; 
  signal CHOICE2403 : STD_LOGIC; 
  signal i_can_bsp_n0222 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_1_5 : STD_LOGIC; 
  signal N55662 : STD_LOGIC; 
  signal i_can_bsp_N33831 : STD_LOGIC; 
  signal i_can_bsp_N33815 : STD_LOGIC; 
  signal i_can_bsp_N34271 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_127 : STD_LOGIC; 
  signal i_can_bsp_n0219 : STD_LOGIC; 
  signal i_can_bsp_N34261 : STD_LOGIC; 
  signal i_can_bsp_N34068 : STD_LOGIC; 
  signal CHOICE2019 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net210 : STD_LOGIC; 
  signal i_can_bsp_n0180 : STD_LOGIC; 
  signal i_can_bsp_N34206 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_1_4 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net178 : STD_LOGIC; 
  signal i_can_bsp_N34196 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_0_7 : STD_LOGIC; 
  signal i_can_bsp_n0182 : STD_LOGIC; 
  signal CHOICE2028 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_4_4 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net186 : STD_LOGIC; 
  signal i_can_bsp_n0183 : STD_LOGIC; 
  signal i_can_bsp_N33532 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_1 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_95 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_1 : STD_LOGIC; 
  signal i_can_bsp_n0179 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_2 : STD_LOGIC; 
  signal i_can_bsp_n0190 : STD_LOGIC; 
  signal i_can_bsp_N34216 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net211 : STD_LOGIC; 
  signal i_can_bsp_N33524 : STD_LOGIC; 
  signal i_can_bsp_n0186 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net212 : STD_LOGIC; 
  signal i_can_bsp_n0241 : STD_LOGIC; 
  signal i_can_bsp_enable_error_cnt2 : STD_LOGIC; 
  signal i_can_bsp_n0237 : STD_LOGIC; 
  signal i_can_bsp_n0242 : STD_LOGIC; 
  signal i_can_bsp_N34211 : STD_LOGIC; 
  signal i_can_bsp_n0188 : STD_LOGIC; 
  signal i_can_bsp_n0238 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net215 : STD_LOGIC; 
  signal i_can_bsp_N34184 : STD_LOGIC; 
  signal i_can_bsp_n0189 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net213 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_20 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_26 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_3_2 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_4_7 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_93 : STD_LOGIC; 
  signal i_can_bsp_N33954 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net248 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net229 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_22 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_28 : STD_LOGIC; 
  signal i_can_bsp_go_error_frame : STD_LOGIC; 
  signal i_can_bsp_n0198 : STD_LOGIC; 
  signal i_can_bsp_n0248 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_5_4 : STD_LOGIC; 
  signal CHOICE1686 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_1_0 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_111 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_5_3 : STD_LOGIC; 
  signal i_can_bsp_n0262 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_5_2 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_4_6 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net225 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_4_5 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_95 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net224 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_72 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_4 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_23 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_lut2_131 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_5_1 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_cy_200 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net187 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_104 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_N26539 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_1_2 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_lut2_133 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net243 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_1_3 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_0_5 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_30 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net246 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net244 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_0_6 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_3 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net263 : STD_LOGIC; 
  signal i_can_bsp_remote_rq : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_2 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_94 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net264 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net250 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_cy_207 : STD_LOGIC; 
  signal i_can_bsp_n0282 : STD_LOGIC; 
  signal i_can_bsp_n0327 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_4_2 : STD_LOGIC; 
  signal N55174 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net214 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_sum_93 : STD_LOGIC; 
  signal tx_err_cnt_4_rt : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_28 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_lut2_134 : STD_LOGIC; 
  signal i_can_bsp_n0290 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_4_1 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net242 : STD_LOGIC; 
  signal i_can_bsp_n0291 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_0_4 : STD_LOGIC; 
  signal i_can_bsp_n0292 : STD_LOGIC; 
  signal N55531 : STD_LOGIC; 
  signal i_can_bsp_ack_err : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net258 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_97 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_32 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net181 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_3_4 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_103 : STD_LOGIC; 
  signal i_can_bsp_go_rx_ack_lim : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_0_3 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_3_7 : STD_LOGIC; 
  signal i_can_bsp_error_frame_ended : STD_LOGIC; 
  signal i_can_bsp_rx_dlc : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_3_3 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_128 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_4_0 : STD_LOGIC; 
  signal i_can_bsp_rx_inter : STD_LOGIC; 
  signal N54529 : STD_LOGIC; 
  signal i_can_bsp_enable_overload_cnt2 : STD_LOGIC; 
  signal i_can_bsp_rx_crc : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_sum_98 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_7_0 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_N26758 : STD_LOGIC; 
  signal i_can_bsp_go_rx_rtr1 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_0_1 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost : STD_LOGIC; 
  signal i_can_bsp_tx_q : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_N26544 : STD_LOGIC; 
  signal i_can_bsp_go_early_tx : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_24 : STD_LOGIC; 
  signal i_can_bsp_rule5 : STD_LOGIC; 
  signal i_can_bsp_go_rx_rtr2 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_26 : STD_LOGIC; 
  signal i_can_bsp_go_rx_idle : STD_LOGIC; 
  signal i_can_bsp_go_rx_r0 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_126 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_6_1 : STD_LOGIC; 
  signal i_can_bsp_form_err : STD_LOGIC; 
  signal i_can_bsp_go_rx_r1 : STD_LOGIC; 
  signal i_can_bsp_overload_frame_blocked : STD_LOGIC; 
  signal i_can_bsp_error_frame_q : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_24 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0002 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_6_6 : STD_LOGIC; 
  signal i_can_bsp_storing_header : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_n0104 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_23 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_n0103 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_sum_97 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_sum_94 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_93 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_0_2 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_7_5 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_6_5 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_23 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_2_7 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_0_0 : STD_LOGIC; 
  signal i_can_bsp_n0432 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_31 : STD_LOGIC; 
  signal i_can_bsp_N34177 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_6_0 : STD_LOGIC; 
  signal i_can_bsp_go_crc_enable : STD_LOGIC; 
  signal i_can_bsp_bit_de_stuff_reset : STD_LOGIC; 
  signal i_can_bsp_stuff_err_latched : STD_LOGIC; 
  signal i_can_bsp_arbitration_cnt_en : STD_LOGIC; 
  signal i_can_bsp_wr_fifo : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_7_6 : STD_LOGIC; 
  signal i_can_bsp_rx_ide : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_21 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_2_2 : STD_LOGIC; 
  signal i_can_bsp_rule3_exc2 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_5_7 : STD_LOGIC; 
  signal i_can_bsp_err : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_25 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_7_7 : STD_LOGIC; 
  signal i_can_bsp_n0444 : STD_LOGIC; 
  signal i_can_bsp_error_capture_code_blocked : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_126 : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_blocked : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_6_4 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_2_3 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_3_0 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_22 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_5_6 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_5 : STD_LOGIC; 
  signal i_can_bsp_N34231 : STD_LOGIC; 
  signal N54521 : STD_LOGIC; 
  signal i_can_bsp_bit_err_latched : STD_LOGIC; 
  signal i_can_bsp_rx_id1 : STD_LOGIC; 
  signal i_can_bsp_reset_mode_q : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_6_3 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_29 : STD_LOGIC; 
  signal i_can_bsp_go_rx_ack : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_96 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_7_3 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_7_2 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_7_1 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_N30666 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_24 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0071 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_22 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0072 : STD_LOGIC; 
  signal i_can_bsp_bus_free_cnt_en : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_0 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_2_1 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_2_5 : STD_LOGIC; 
  signal N55501 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_106 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_2_0 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_23 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_33 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut1_0 : STD_LOGIC; 
  signal i_can_bsp_n0467 : STD_LOGIC; 
  signal i_can_bsp_bit_de_stuff : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_61 : STD_LOGIC; 
  signal i_can_bsp_form_err_latched : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net228 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net267 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_94 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_2_6 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net185 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_n0001 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_30 : STD_LOGIC; 
  signal i_can_bsp_ide : STD_LOGIC; 
  signal i_can_bsp_n0475 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_93 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_129 : STD_LOGIC; 
  signal i_can_bsp_rx_ack : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_24 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_5_5 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_6_2 : STD_LOGIC; 
  signal i_can_bsp_tx_point_q : STD_LOGIC; 
  signal i_can_bsp_crc_err : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_lut2_135 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_cy_208 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net223 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_113 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net221 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net222 : STD_LOGIC; 
  signal i_can_bsp_n0492 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net220 : STD_LOGIC; 
  signal N54623 : STD_LOGIC; 
  signal i_can_bsp_crc_enable : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_18 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_31 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_25 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_105 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_73 : STD_LOGIC; 
  signal i_can_bsp_overload_frame : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_cy_130 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_69 : STD_LOGIC; 
  signal tx_data_1_0_rt : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_107 : STD_LOGIC; 
  signal N54919 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_3_1 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_sum_96 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_99 : STD_LOGIC; 
  signal i_can_bsp_N33734 : STD_LOGIC; 
  signal N54621 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_3_6 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_62 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_32 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_67 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_68 : STD_LOGIC; 
  signal N54925 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_cy_131 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_65 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0078 : STD_LOGIC; 
  signal N54929 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_98 : STD_LOGIC; 
  signal rx_err_cnt_4_rt : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_66 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_21 : STD_LOGIC; 
  signal N54531 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_127 : STD_LOGIC; 
  signal i_can_bsp_n0620 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_75 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_n0144 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_97 : STD_LOGIC; 
  signal i_can_bsp_n0621 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_108 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_n0196 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_26 : STD_LOGIC; 
  signal i_can_bsp_n0622 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_q : STD_LOGIC; 
  signal i_can_bsp_n0623 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_n0145 : STD_LOGIC; 
  signal i_can_bsp_n0619 : STD_LOGIC; 
  signal i_can_bsp_n0624 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_1_6 : STD_LOGIC; 
  signal i_can_bsp_n0625 : STD_LOGIC; 
  signal i_can_bsp_n0630 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_0 : STD_LOGIC; 
  signal i_can_bsp_n0626 : STD_LOGIC; 
  signal i_can_bsp_n0631 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_114 : STD_LOGIC; 
  signal i_can_bsp_n0627 : STD_LOGIC; 
  signal i_can_bsp_n0632 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_1_1 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_1_7 : STD_LOGIC; 
  signal i_can_bsp_n0628 : STD_LOGIC; 
  signal i_can_bsp_n0633 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_112 : STD_LOGIC; 
  signal i_can_bsp_n0629 : STD_LOGIC; 
  signal i_can_bsp_n0634 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_25 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_2_4 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_100 : STD_LOGIC; 
  signal i_can_bsp_n0635 : STD_LOGIC; 
  signal i_can_bsp_n0640 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_92 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_101 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_30 : STD_LOGIC; 
  signal i_can_bsp_n0641 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_5 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_57 : STD_LOGIC; 
  signal i_can_bsp_n0637 : STD_LOGIC; 
  signal i_can_bsp_n0642 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_91 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_63 : STD_LOGIC; 
  signal i_can_bsp_n0643 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_59 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_60 : STD_LOGIC; 
  signal i_can_bsp_n0639 : STD_LOGIC; 
  signal i_can_bsp_n0644 : STD_LOGIC; 
  signal i_can_bsp_rx_ack_lim : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_22 : STD_LOGIC; 
  signal i_can_bsp_n0645 : STD_LOGIC; 
  signal i_can_bsp_n0650 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_58 : STD_LOGIC; 
  signal i_can_bsp_n0646 : STD_LOGIC; 
  signal i_can_bsp_n0651 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0067 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_64 : STD_LOGIC; 
  signal i_can_bsp_n0647 : STD_LOGIC; 
  signal i_can_bsp_n0652 : STD_LOGIC; 
  signal i_can_bsp_finish_msg : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_7_4 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_33 : STD_LOGIC; 
  signal i_can_bsp_n0648 : STD_LOGIC; 
  signal i_can_bsp_n0653 : STD_LOGIC; 
  signal i_can_bsp_tmp_fifo_6_7 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_96 : STD_LOGIC; 
  signal i_can_bsp_n0649 : STD_LOGIC; 
  signal i_can_bsp_n0654 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net269 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_128 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0075 : STD_LOGIC; 
  signal i_can_bsp_n0660 : STD_LOGIC; 
  signal i_can_bsp_n0656 : STD_LOGIC; 
  signal i_can_bsp_n0661 : STD_LOGIC; 
  signal i_can_bsp_n0657 : STD_LOGIC; 
  signal i_can_bsp_n0662 : STD_LOGIC; 
  signal N54615 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_17 : STD_LOGIC; 
  signal i_can_bsp_n0658 : STD_LOGIC; 
  signal i_can_bsp_n0663 : STD_LOGIC; 
  signal N54527 : STD_LOGIC; 
  signal i_can_bsp_n0659 : STD_LOGIC; 
  signal i_can_bsp_n0664 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_id_ok : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_19 : STD_LOGIC; 
  signal i_can_bsp_n0665 : STD_LOGIC; 
  signal i_can_bsp_n0670 : STD_LOGIC; 
  signal i_can_bsp_error_flag_over : STD_LOGIC; 
  signal i_can_bsp_n0666 : STD_LOGIC; 
  signal i_can_bsp_n0671 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_N26867 : STD_LOGIC; 
  signal i_can_bsp_i_can_crc_rx_SF26255 : STD_LOGIC; 
  signal i_can_bsp_n0667 : STD_LOGIC; 
  signal i_can_bsp_n0672 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0074 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_25 : STD_LOGIC; 
  signal i_can_bsp_n0668 : STD_LOGIC; 
  signal i_can_bsp_n0673 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_97 : STD_LOGIC; 
  signal i_can_bsp_n0669 : STD_LOGIC; 
  signal i_can_bsp_n0674 : STD_LOGIC; 
  signal CHOICE1798 : STD_LOGIC; 
  signal i_can_bsp_n0675 : STD_LOGIC; 
  signal i_can_bsp_n0680 : STD_LOGIC; 
  signal i_can_bsp_n0676 : STD_LOGIC; 
  signal i_can_bsp_n0681 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_3 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_20 : STD_LOGIC; 
  signal i_can_bsp_n0677 : STD_LOGIC; 
  signal i_can_bsp_n0682 : STD_LOGIC; 
  signal i_can_bsp_n0678 : STD_LOGIC; 
  signal i_can_bsp_n0679 : STD_LOGIC; 
  signal i_can_bsp_n0684 : STD_LOGIC; 
  signal i_can_bsp_error_frame : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_130 : STD_LOGIC; 
  signal i_can_bsp_n0685 : STD_LOGIC; 
  signal i_can_bsp_n0690 : STD_LOGIC; 
  signal i_can_bsp_n0686 : STD_LOGIC; 
  signal i_can_bsp_n0691 : STD_LOGIC; 
  signal i_can_bsp_n0687 : STD_LOGIC; 
  signal i_can_bsp_n0692 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_23 : STD_LOGIC; 
  signal i_can_bsp_n0688 : STD_LOGIC; 
  signal i_can_bsp_go_rx_inter : STD_LOGIC; 
  signal i_can_bsp_rst_tx_pointer : STD_LOGIC; 
  signal i_can_bsp_n0689 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_21 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_cy_129 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0006 : STD_LOGIC; 
  signal i_can_bsp_overload_frame_ended : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_22 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_98 : STD_LOGIC; 
  signal i_can_bsp_rx_data : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_23 : STD_LOGIC; 
  signal N54923 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0011 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_4 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_24 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_22 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_17 : STD_LOGIC; 
  signal i_can_bsp_reset_wr_fifo : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_25 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_26 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_33 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_95 : STD_LOGIC; 
  signal N54533 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_n0143 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_21 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_N30656 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_26 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_71 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0001 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_n0111 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0014 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_29 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_n0005 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_131 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_28 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_29 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_cy_126 : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_n0102 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_20 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_latch_overrun : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_70 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_inst_cy_127 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_18 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_19 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net191 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net190 : STD_LOGIC; 
  signal CHOICE1685 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net252 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net209 : STD_LOGIC; 
  signal N55276 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_cy_211 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net253 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net208 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net193 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_lut2_136 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net259 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net207 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net194 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_cy_209 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net257 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net206 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net195 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_cy_212 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net256 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net205 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net196 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_lut2_137 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net255 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net204 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net197 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_cy_210 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net260 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net203 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net198 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0248_inst_lut4_28 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net265 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net202 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net199 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0248_inst_cy_203 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net266 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net201 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net200 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0248_inst_lut4_29 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0289_inst_cy_12 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0289_inst_cy_13 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_cy_206 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0289_inst_cy_11 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0289_inst_lut2_6 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_sum_91 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_cy_121 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_cy_124 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_lut3_26 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_sum_90 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_cy_123 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_lut3_25 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_sum_89 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_cy_122 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_lut3_24 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_sum_92 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0248_inst_lut4_27 : STD_LOGIC; 
  signal i_can_bsp_data_cnt_inst_lut3_27 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_lut3_28 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_cy_127 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_cy_131 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_lut3_32 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_sum_96 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_cy_130 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_lut3_31 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_sum_95 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_cy_129 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_lut3_30 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_sum_94 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_cy_128 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_lut3_29 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_sum_93 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_sum_98 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0248_inst_cy_202 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_lut3_33 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_sum_97 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_inst_cy_126 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_28 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_cy_127 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_cy_131 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_32 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_sum_96 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_cy_130 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_31 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_sum_95 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_cy_129 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_30 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_sum_94 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_cy_128 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_29 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_sum_93 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_sum_98 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_lut2_124 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_33 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_sum_97 : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_cy_126 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0229_inst_lut2_84 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_cy_194 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0229_inst_cy_134 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0229_inst_lut2_83 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0229_inst_lut2_85 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0229_inst_cy_133 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0229_inst_cy_135 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_lut2_139 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_lut2_125 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0224_inst_lut2_87 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0224_inst_cy_139 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0224_inst_lut2_88 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0224_inst_cy_138 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0224_inst_cy_137 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0224_inst_lut2_86 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0220_inst_cy_140 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0220_inst_lut4_14 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0220_inst_lut4_18 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0220_inst_cy_143 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0220_inst_lut4_17 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0220_inst_cy_142 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0220_inst_lut4_16 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0220_inst_cy_141 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0220_inst_lut4_15 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0219_inst_cy_140 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0219_inst_lut4_14 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0219_inst_lut4_18 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0219_inst_cy_143 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0219_inst_lut4_17 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0219_inst_cy_142 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0219_inst_lut4_16 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0219_inst_cy_141 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0219_inst_lut4_15 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net249 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net273 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net274 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_lut2_96 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_cy_150 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_lut2_94 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_cy_152 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_cy_149 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_lut2_93 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_cy_151 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_cy_148 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_lut2_92 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_lut2_97 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_cy_147 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_lut2_91 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0272_inst_lut2_138 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_cy_146 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_lut2_90 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_lut2_95 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_cy_145 : STD_LOGIC; 
  signal i_can_bsp_Maddsub_n0158_inst_lut1_1 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0157_inst_cy_157 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_cy_196 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0157_inst_cy_155 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0157_inst_cy_158 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0157_inst_cy_156 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0157_inst_cy_154 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0157_inst_lut2_98 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0156_inst_cy_157 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_lut2_127 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0156_inst_cy_155 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0156_inst_cy_158 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0156_inst_cy_156 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0156_inst_cy_154 : STD_LOGIC; 
  signal i_can_bsp_Madd_n0156_inst_lut2_98 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_cy_197 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_lut2_128 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0001_inst_cy_165 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0001_inst_lut2_109 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0001_inst_cy_167 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0001_inst_cy_164 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0001_inst_lut2_108 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0001_inst_cy_166 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0001_inst_cy_163 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0001_inst_lut2_107 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_cy_198 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_cy_193 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_lut2_123 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_lut2_129 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_lut2_131 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_cy_200 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0001_inst_lut2_110 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0283_inst_cy_199 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_cy_194 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0000_inst_cy_165 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0000_inst_lut2_109 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0000_inst_cy_167 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0000_inst_cy_164 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0000_inst_lut2_108 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0000_inst_cy_166 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0000_inst_cy_163 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0000_inst_lut2_107 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_lut2_125 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_lut2_129 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_cy_198 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_cy_195 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_cy_197 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_lut2_127 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0000_inst_lut2_110 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_lut2_126 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_lut2_130 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net251 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net262 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_cy_169 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_lut3_34 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_cy_173 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_lut3_37 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_sum_133 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_cy_172 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_lut3_36 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_sum_132 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_cy_171 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_lut3_35 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_sum_131 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_cy_170 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_sum_135 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_cy_201 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_lut3_38 : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_sum_134 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_cy_175 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_lut4_19 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_lut4_26 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_cy_181 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_lut4_25 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_cy_180 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_lut4_24 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_cy_179 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_lut4_23 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_cy_178 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_lut4_22 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_cy_177 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_lut4_21 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_cy_176 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0262_inst_lut4_20 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0247_inst_cy_186 : STD_LOGIC; 
  signal N54612 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0247_inst_lut2_118 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net234 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net232 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_lut2_123 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net230 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net271 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0247_inst_lut2_117 : STD_LOGIC; 
  signal i_can_bsp_Mcompar_n0284_inst_cy_193 : STD_LOGIC; 
  signal i_can_bsp_Msub_n0247_inst_cy_187 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net245 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net239 : STD_LOGIC; 
  signal i_can_bsp_Msub_COND_6_inst_lut2_121 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net236 : STD_LOGIC; 
  signal i_can_bsp_Msub_COND_6_inst_cy_190 : STD_LOGIC; 
  signal i_can_bsp_Msub_COND_6_inst_cy_189 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net237 : STD_LOGIC; 
  signal i_can_bsp_Msub_COND_6_inst_lut2_119 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net238 : STD_LOGIC; 
  signal i_can_bsp_Msub_COND_6_inst_lut2_120 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net19 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net20 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net21 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net5 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net6 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net7 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net8 : STD_LOGIC; 
  signal CHOICE1784 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net10 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net11 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net12 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net13 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net14 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net15 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net16 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net17 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0010_net18 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net82 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net83 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net84 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net23 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net24 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net25 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net26 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net27 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net28 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net29 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net30 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net31 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net32 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net33 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net34 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net35 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net36 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net37 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net38 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net39 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net40 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net41 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net42 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net43 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net44 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net45 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net46 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net47 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net48 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net49 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net50 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net51 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net52 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net53 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net54 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net55 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net56 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net57 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net58 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net59 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net60 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net61 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net62 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net63 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net64 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net65 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net66 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net67 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net68 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net69 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net70 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net71 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net72 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net73 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net74 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net75 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net76 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net77 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net78 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net79 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net80 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0009_net81 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net100 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net101 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net102 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net86 : STD_LOGIC; 
  signal CHOICE2399 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net88 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net89 : STD_LOGIC; 
  signal CHOICE1816 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net91 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net92 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net93 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net94 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net95 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net96 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net97 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net98 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0008_net99 : STD_LOGIC; 
  signal CHOICE2231 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net139 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net140 : STD_LOGIC; 
  signal CHOICE2268 : STD_LOGIC; 
  signal N54833 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net106 : STD_LOGIC; 
  signal CHOICE2393 : STD_LOGIC; 
  signal CHOICE2439 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net109 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net110 : STD_LOGIC; 
  signal CHOICE2150 : STD_LOGIC; 
  signal CHOICE2113 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net113 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0004_net241 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net115 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net116 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net117 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_pointer_5_rt : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net119 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net120 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net121 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net122 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net123 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net124 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net125 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net126 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net127 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net128 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net129 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net130 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net131 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net132 : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_8_rt : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net134 : STD_LOGIC; 
  signal CHOICE1820 : STD_LOGIC; 
  signal CHOICE2045 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0007_net137 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net153 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net154 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net155 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net142 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net143 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net144 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net145 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net146 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net147 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net148 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net149 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net150 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net151 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0006_net152 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net216 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net217 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net218 : STD_LOGIC; 
  signal N51688 : STD_LOGIC; 
  signal CHOICE1791 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net159 : STD_LOGIC; 
  signal N54660 : STD_LOGIC; 
  signal N54701 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net162 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net163 : STD_LOGIC; 
  signal CHOICE1688 : STD_LOGIC; 
  signal CHOICE2442 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net166 : STD_LOGIC; 
  signal CHOICE2011 : STD_LOGIC; 
  signal CHOICE2278 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net169 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net170 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net171 : STD_LOGIC; 
  signal CHOICE1900 : STD_LOGIC; 
  signal CHOICE2237 : STD_LOGIC; 
  signal i_can_bsp_Mmux_n0005_net174 : STD_LOGIC; 
  signal CHOICE2306 : STD_LOGIC; 
  signal CHOICE2249 : STD_LOGIC; 
  signal N39408 : STD_LOGIC; 
  signal N41450 : STD_LOGIC; 
  signal N55543 : STD_LOGIC; 
  signal N55559 : STD_LOGIC; 
  signal N42757 : STD_LOGIC; 
  signal N39715 : STD_LOGIC; 
  signal N55388 : STD_LOGIC; 
  signal CHOICE81 : STD_LOGIC; 
  signal N42398 : STD_LOGIC; 
  signal N41612 : STD_LOGIC; 
  signal N41250 : STD_LOGIC; 
  signal N40613 : STD_LOGIC; 
  signal N54688 : STD_LOGIC; 
  signal N54647 : STD_LOGIC; 
  signal N42193 : STD_LOGIC; 
  signal N41527 : STD_LOGIC; 
  signal N41066 : STD_LOGIC; 
  signal N42592 : STD_LOGIC; 
  signal N41313 : STD_LOGIC; 
  signal N39691 : STD_LOGIC; 
  signal CHOICE92 : STD_LOGIC; 
  signal N41574 : STD_LOGIC; 
  signal tx_err_cnt_6_rt : STD_LOGIC; 
  signal N55056 : STD_LOGIC; 
  signal N54649 : STD_LOGIC; 
  signal N40370 : STD_LOGIC; 
  signal N39475 : STD_LOGIC; 
  signal N42702 : STD_LOGIC; 
  signal N54629 : STD_LOGIC; 
  signal N41671 : STD_LOGIC; 
  signal N42141 : STD_LOGIC; 
  signal N40975 : STD_LOGIC; 
  signal N54966 : STD_LOGIC; 
  signal N55555 : STD_LOGIC; 
  signal N42338 : STD_LOGIC; 
  signal N42889 : STD_LOGIC; 
  signal N40739 : STD_LOGIC; 
  signal N54668 : STD_LOGIC; 
  signal N55551 : STD_LOGIC; 
  signal N54631 : STD_LOGIC; 
  signal N55384 : STD_LOGIC; 
  signal N40664 : STD_LOGIC; 
  signal CHOICE353 : STD_LOGIC; 
  signal CHOICE453 : STD_LOGIC; 
  signal N43019 : STD_LOGIC; 
  signal N55188 : STD_LOGIC; 
  signal N39945 : STD_LOGIC; 
  signal N55392 : STD_LOGIC; 
  signal i_can_bsp_bus_free_cnt_2_rt : STD_LOGIC; 
  signal N55240 : STD_LOGIC; 
  signal N55569 : STD_LOGIC; 
  signal N42647 : STD_LOGIC; 
  signal N55497 : STD_LOGIC; 
  signal N39650 : STD_LOGIC; 
  signal N42812 : STD_LOGIC; 
  signal N55547 : STD_LOGIC; 
  signal N41200 : STD_LOGIC; 
  signal N40713 : STD_LOGIC; 
  signal N41895 : STD_LOGIC; 
  signal CHOICE93 : STD_LOGIC; 
  signal N41930 : STD_LOGIC; 
  signal N42430 : STD_LOGIC; 
  signal N42482 : STD_LOGIC; 
  signal N42537 : STD_LOGIC; 
  signal N43165 : STD_LOGIC; 
  signal N55264 : STD_LOGIC; 
  signal CHOICE1561 : STD_LOGIC; 
  signal CHOICE922 : STD_LOGIC; 
  signal CHOICE1046 : STD_LOGIC; 
  signal i_can_bsp_data_len_0_rt : STD_LOGIC; 
  signal N55192 : STD_LOGIC; 
  signal CHOICE1564 : STD_LOGIC; 
  signal CHOICE568 : STD_LOGIC; 
  signal CHOICE738 : STD_LOGIC; 
  signal CHOICE902 : STD_LOGIC; 
  signal CHOICE883 : STD_LOGIC; 
  signal CHOICE1262 : STD_LOGIC; 
  signal CHOICE625 : STD_LOGIC; 
  signal CHOICE1559 : STD_LOGIC; 
  signal CHOICE1225 : STD_LOGIC; 
  signal N55519 : STD_LOGIC; 
  signal N43210 : STD_LOGIC; 
  signal CHOICE1169 : STD_LOGIC; 
  signal CHOICE950 : STD_LOGIC; 
  signal CHOICE990 : STD_LOGIC; 
  signal N55029 : STD_LOGIC; 
  signal CHOICE1271 : STD_LOGIC; 
  signal CHOICE877 : STD_LOGIC; 
  signal CHOICE1233 : STD_LOGIC; 
  signal CHOICE1252 : STD_LOGIC; 
  signal CHOICE959 : STD_LOGIC; 
  signal CHOICE1190 : STD_LOGIC; 
  signal CHOICE1100 : STD_LOGIC; 
  signal CHOICE1136 : STD_LOGIC; 
  signal CHOICE1159 : STD_LOGIC; 
  signal CHOICE696 : STD_LOGIC; 
  signal CHOICE981 : STD_LOGIC; 
  signal CHOICE570 : STD_LOGIC; 
  signal CHOICE1286 : STD_LOGIC; 
  signal N55133 : STD_LOGIC; 
  signal CHOICE1198 : STD_LOGIC; 
  signal CHOICE1283 : STD_LOGIC; 
  signal N55284 : STD_LOGIC; 
  signal N55184 : STD_LOGIC; 
  signal CHOICE911 : STD_LOGIC; 
  signal N54905 : STD_LOGIC; 
  signal CHOICE1397 : STD_LOGIC; 
  signal N49359 : STD_LOGIC; 
  signal N54609 : STD_LOGIC; 
  signal N55743 : STD_LOGIC; 
  signal CHOICE1071 : STD_LOGIC; 
  signal tx_err_cnt_7_rt : STD_LOGIC; 
  signal CHOICE690 : STD_LOGIC; 
  signal CHOICE942 : STD_LOGIC; 
  signal N55252 : STD_LOGIC; 
  signal CHOICE767 : STD_LOGIC; 
  signal N55054 : STD_LOGIC; 
  signal N55131 : STD_LOGIC; 
  signal CHOICE967 : STD_LOGIC; 
  signal CHOICE830 : STD_LOGIC; 
  signal CHOICE1026 : STD_LOGIC; 
  signal N54907 : STD_LOGIC; 
  signal CHOICE765 : STD_LOGIC; 
  signal N55236 : STD_LOGIC; 
  signal N55332 : STD_LOGIC; 
  signal N54913 : STD_LOGIC; 
  signal CHOICE1255 : STD_LOGIC; 
  signal CHOICE1049 : STD_LOGIC; 
  signal CHOICE583 : STD_LOGIC; 
  signal CHOICE711 : STD_LOGIC; 
  signal tx_err_cnt_5_rt : STD_LOGIC; 
  signal N55513 : STD_LOGIC; 
  signal CHOICE679 : STD_LOGIC; 
  signal CHOICE1164 : STD_LOGIC; 
  signal CHOICE797 : STD_LOGIC; 
  signal N55515 : STD_LOGIC; 
  signal N54769 : STD_LOGIC; 
  signal CHOICE651 : STD_LOGIC; 
  signal CHOICE1215 : STD_LOGIC; 
  signal CHOICE1109 : STD_LOGIC; 
  signal N54911 : STD_LOGIC; 
  signal N55288 : STD_LOGIC; 
  signal CHOICE910 : STD_LOGIC; 
  signal CHOICE987 : STD_LOGIC; 
  signal N54970 : STD_LOGIC; 
  signal CHOICE973 : STD_LOGIC; 
  signal CHOICE638 : STD_LOGIC; 
  signal CHOICE527 : STD_LOGIC; 
  signal CHOICE1297 : STD_LOGIC; 
  signal CHOICE632 : STD_LOGIC; 
  signal N55694 : STD_LOGIC; 
  signal CHOICE1519 : STD_LOGIC; 
  signal CHOICE989 : STD_LOGIC; 
  signal CHOICE1351 : STD_LOGIC; 
  signal CHOICE1530 : STD_LOGIC; 
  signal N55260 : STD_LOGIC; 
  signal CHOICE526 : STD_LOGIC; 
  signal CHOICE775 : STD_LOGIC; 
  signal CHOICE1058 : STD_LOGIC; 
  signal N54627 : STD_LOGIC; 
  signal CHOICE1284 : STD_LOGIC; 
  signal CHOICE1529 : STD_LOGIC; 
  signal CHOICE1128 : STD_LOGIC; 
  signal CHOICE1160 : STD_LOGIC; 
  signal CHOICE1522 : STD_LOGIC; 
  signal CHOICE598 : STD_LOGIC; 
  signal CHOICE930 : STD_LOGIC; 
  signal CHOICE885 : STD_LOGIC; 
  signal CHOICE1319 : STD_LOGIC; 
  signal CHOICE590 : STD_LOGIC; 
  signal CHOICE1433 : STD_LOGIC; 
  signal rx_err_cnt_7_rt : STD_LOGIC; 
  signal N55509 : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_pointer_4_rt : STD_LOGIC; 
  signal CHOICE888 : STD_LOGIC; 
  signal N54643 : STD_LOGIC; 
  signal CHOICE1299 : STD_LOGIC; 
  signal CHOICE1310 : STD_LOGIC; 
  signal N55031 : STD_LOGIC; 
  signal CHOICE850 : STD_LOGIC; 
  signal CHOICE513 : STD_LOGIC; 
  signal N54670 : STD_LOGIC; 
  signal CHOICE1392 : STD_LOGIC; 
  signal N55123 : STD_LOGIC; 
  signal CHOICE732 : STD_LOGIC; 
  signal CHOICE1115 : STD_LOGIC; 
  signal CHOICE1129 : STD_LOGIC; 
  signal CHOICE514 : STD_LOGIC; 
  signal N54645 : STD_LOGIC; 
  signal CHOICE771 : STD_LOGIC; 
  signal CHOICE1518 : STD_LOGIC; 
  signal CHOICE1101 : STD_LOGIC; 
  signal CHOICE843 : STD_LOGIC; 
  signal CHOICE665 : STD_LOGIC; 
  signal N55204 : STD_LOGIC; 
  signal CHOICE1420 : STD_LOGIC; 
  signal CHOICE828 : STD_LOGIC; 
  signal CHOICE1506 : STD_LOGIC; 
  signal N55228 : STD_LOGIC; 
  signal N54765 : STD_LOGIC; 
  signal CHOICE759 : STD_LOGIC; 
  signal CHOICE1275 : STD_LOGIC; 
  signal CHOICE822 : STD_LOGIC; 
  signal CHOICE1360 : STD_LOGIC; 
  signal CHOICE1431 : STD_LOGIC; 
  signal N55346 : STD_LOGIC; 
  signal N54761 : STD_LOGIC; 
  signal tx_err_cnt_0_rt : STD_LOGIC; 
  signal CHOICE856 : STD_LOGIC; 
  signal CHOICE1259 : STD_LOGIC; 
  signal CHOICE1307 : STD_LOGIC; 
  signal CHOICE1305 : STD_LOGIC; 
  signal CHOICE768 : STD_LOGIC; 
  signal CHOICE652 : STD_LOGIC; 
  signal CHOICE596 : STD_LOGIC; 
  signal CHOICE961 : STD_LOGIC; 
  signal CHOICE1016 : STD_LOGIC; 
  signal CHOICE1244 : STD_LOGIC; 
  signal N55268 : STD_LOGIC; 
  signal N55196 : STD_LOGIC; 
  signal CHOICE1219 : STD_LOGIC; 
  signal CHOICE1002 : STD_LOGIC; 
  signal CHOICE1048 : STD_LOGIC; 
  signal CHOICE2288 : STD_LOGIC; 
  signal CHOICE610 : STD_LOGIC; 
  signal CHOICE554 : STD_LOGIC; 
  signal CHOICE1237 : STD_LOGIC; 
  signal CHOICE1019 : STD_LOGIC; 
  signal CHOICE1186 : STD_LOGIC; 
  signal CHOICE1484 : STD_LOGIC; 
  signal N55212 : STD_LOGIC; 
  signal N54931 : STD_LOGIC; 
  signal CHOICE996 : STD_LOGIC; 
  signal N54962 : STD_LOGIC; 
  signal CHOICE553 : STD_LOGIC; 
  signal N54619 : STD_LOGIC; 
  signal CHOICE1423 : STD_LOGIC; 
  signal CHOICE1173 : STD_LOGIC; 
  signal N48407 : STD_LOGIC; 
  signal CHOICE1142 : STD_LOGIC; 
  signal N48340 : STD_LOGIC; 
  signal CHOICE1059 : STD_LOGIC; 
  signal N54617 : STD_LOGIC; 
  signal CHOICE936 : STD_LOGIC; 
  signal N55232 : STD_LOGIC; 
  signal CHOICE1494 : STD_LOGIC; 
  signal CHOICE1226 : STD_LOGIC; 
  signal CHOICE788 : STD_LOGIC; 
  signal CHOICE1473 : STD_LOGIC; 
  signal N55208 : STD_LOGIC; 
  signal CHOICE1207 : STD_LOGIC; 
  signal CHOICE769 : STD_LOGIC; 
  signal CHOICE1010 : STD_LOGIC; 
  signal CHOICE896 : STD_LOGIC; 
  signal CHOICE958 : STD_LOGIC; 
  signal CHOICE1088 : STD_LOGIC; 
  signal CHOICE1415 : STD_LOGIC; 
  signal CHOICE1470 : STD_LOGIC; 
  signal CHOICE540 : STD_LOGIC; 
  signal N55119 : STD_LOGIC; 
  signal CHOICE725 : STD_LOGIC; 
  signal CHOICE1156 : STD_LOGIC; 
  signal CHOICE1370 : STD_LOGIC; 
  signal CHOICE1293 : STD_LOGIC; 
  signal N54633 : STD_LOGIC; 
  signal CHOICE541 : STD_LOGIC; 
  signal CHOICE1410 : STD_LOGIC; 
  signal addr_latched_4_rt : STD_LOGIC; 
  signal N55256 : STD_LOGIC; 
  signal CHOICE886 : STD_LOGIC; 
  signal CHOICE1403 : STD_LOGIC; 
  signal N55312 : STD_LOGIC; 
  signal N55652 : STD_LOGIC; 
  signal N55690 : STD_LOGIC; 
  signal N55292 : STD_LOGIC; 
  signal CHOICE1324 : STD_LOGIC; 
  signal CHOICE806 : STD_LOGIC; 
  signal CHOICE1337 : STD_LOGIC; 
  signal CHOICE1181 : STD_LOGIC; 
  signal CHOICE617 : STD_LOGIC; 
  signal CHOICE870 : STD_LOGIC; 
  signal CHOICE1040 : STD_LOGIC; 
  signal CHOICE782 : STD_LOGIC; 
  signal CHOICE682 : STD_LOGIC; 
  signal CHOICE1158 : STD_LOGIC; 
  signal CHOICE1203 : STD_LOGIC; 
  signal CHOICE1018 : STD_LOGIC; 
  signal N54625 : STD_LOGIC; 
  signal CHOICE1345 : STD_LOGIC; 
  signal CHOICE791 : STD_LOGIC; 
  signal N55485 : STD_LOGIC; 
  signal CHOICE1079 : STD_LOGIC; 
  signal CHOICE683 : STD_LOGIC; 
  signal N55489 : STD_LOGIC; 
  signal N55115 : STD_LOGIC; 
  signal N55720 : STD_LOGIC; 
  signal CHOICE681 : STD_LOGIC; 
  signal N54666 : STD_LOGIC; 
  signal CHOICE1243 : STD_LOGIC; 
  signal CHOICE557 : STD_LOGIC; 
  signal i_can_bsp_bus_free_cnt_1_rt : STD_LOGIC; 
  signal N48810 : STD_LOGIC; 
  signal CHOICE659 : STD_LOGIC; 
  signal N55698 : STD_LOGIC; 
  signal CHOICE887 : STD_LOGIC; 
  signal CHOICE1032 : STD_LOGIC; 
  signal N55493 : STD_LOGIC; 
  signal CHOICE1427 : STD_LOGIC; 
  signal CHOICE752 : STD_LOGIC; 
  signal CHOICE623 : STD_LOGIC; 
  signal CHOICE1277 : STD_LOGIC; 
  signal N55272 : STD_LOGIC; 
  signal CHOICE1085 : STD_LOGIC; 
  signal CHOICE956 : STD_LOGIC; 
  signal CHOICE563 : STD_LOGIC; 
  signal N55200 : STD_LOGIC; 
  signal CHOICE1996 : STD_LOGIC; 
  signal reset_mode_rt1 : STD_LOGIC; 
  signal N55141 : STD_LOGIC; 
  signal N51638 : STD_LOGIC; 
  signal CHOICE2116 : STD_LOGIC; 
  signal CHOICE2072 : STD_LOGIC; 
  signal CHOICE1812 : STD_LOGIC; 
  signal CHOICE1569 : STD_LOGIC; 
  signal CHOICE2497 : STD_LOGIC; 
  signal CHOICE2317 : STD_LOGIC; 
  signal CHOICE2272 : STD_LOGIC; 
  signal N54992 : STD_LOGIC; 
  signal CHOICE2173 : STD_LOGIC; 
  signal tx_data_0_0_rt : STD_LOGIC; 
  signal CHOICE2206 : STD_LOGIC; 
  signal CHOICE2494 : STD_LOGIC; 
  signal CHOICE1885 : STD_LOGIC; 
  signal CHOICE2165 : STD_LOGIC; 
  signal CHOICE2394 : STD_LOGIC; 
  signal CHOICE1573 : STD_LOGIC; 
  signal CHOICE2087 : STD_LOGIC; 
  signal N55539 : STD_LOGIC; 
  signal N55180 : STD_LOGIC; 
  signal N55070 : STD_LOGIC; 
  signal CHOICE2351 : STD_LOGIC; 
  signal CHOICE2354 : STD_LOGIC; 
  signal N55724 : STD_LOGIC; 
  signal CHOICE2487 : STD_LOGIC; 
  signal CHOICE2158 : STD_LOGIC; 
  signal CHOICE1827 : STD_LOGIC; 
  signal CHOICE1796 : STD_LOGIC; 
  signal CHOICE1580 : STD_LOGIC; 
  signal CHOICE1578 : STD_LOGIC; 
  signal CHOICE2436 : STD_LOGIC; 
  signal N54713 : STD_LOGIC; 
  signal CHOICE2490 : STD_LOGIC; 
  signal CHOICE1579 : STD_LOGIC; 
  signal CHOICE2309 : STD_LOGIC; 
  signal CHOICE2285 : STD_LOGIC; 
  signal CHOICE2348 : STD_LOGIC; 
  signal CHOICE2513 : STD_LOGIC; 
  signal CHOICE2264 : STD_LOGIC; 
  signal N51738 : STD_LOGIC; 
  signal CHOICE2331 : STD_LOGIC; 
  signal CHOICE2397 : STD_LOGIC; 
  signal CHOICE2195 : STD_LOGIC; 
  signal N54838 : STD_LOGIC; 
  signal CHOICE1740 : STD_LOGIC; 
  signal N54637 : STD_LOGIC; 
  signal CHOICE2025 : STD_LOGIC; 
  signal CHOICE1589 : STD_LOGIC; 
  signal CHOICE2484 : STD_LOGIC; 
  signal CHOICE2261 : STD_LOGIC; 
  signal CHOICE1590 : STD_LOGIC; 
  signal CHOICE2071 : STD_LOGIC; 
  signal i_can_btl_quant_cnt_3_rt : STD_LOGIC; 
  signal CHOICE2260 : STD_LOGIC; 
  signal CHOICE2147 : STD_LOGIC; 
  signal CHOICE2482 : STD_LOGIC; 
  signal CHOICE1604 : STD_LOGIC; 
  signal CHOICE2170 : STD_LOGIC; 
  signal CHOICE1908 : STD_LOGIC; 
  signal CHOICE1593 : STD_LOGIC; 
  signal N54825 : STD_LOGIC; 
  signal N55025 : STD_LOGIC; 
  signal CHOICE2477 : STD_LOGIC; 
  signal CHOICE1922 : STD_LOGIC; 
  signal CHOICE1755 : STD_LOGIC; 
  signal CHOICE1835 : STD_LOGIC; 
  signal N54696 : STD_LOGIC; 
  signal CHOICE2141 : STD_LOGIC; 
  signal N54635 : STD_LOGIC; 
  signal CHOICE2216 : STD_LOGIC; 
  signal N55127 : STD_LOGIC; 
  signal CHOICE2112 : STD_LOGIC; 
  signal N54935 : STD_LOGIC; 
  signal CHOICE2346 : STD_LOGIC; 
  signal CHOICE2032 : STD_LOGIC; 
  signal i_can_bsp_bus_free_cnt_3_rt : STD_LOGIC; 
  signal CHOICE1607 : STD_LOGIC; 
  signal CHOICE1600 : STD_LOGIC; 
  signal CHOICE2081 : STD_LOGIC; 
  signal N51044 : STD_LOGIC; 
  signal N54988 : STD_LOGIC; 
  signal CHOICE1695 : STD_LOGIC; 
  signal CHOICE2471 : STD_LOGIC; 
  signal CHOICE2125 : STD_LOGIC; 
  signal CHOICE2474 : STD_LOGIC; 
  signal CHOICE2303 : STD_LOGIC; 
  signal N55244 : STD_LOGIC; 
  signal CHOICE1929 : STD_LOGIC; 
  signal N54972 : STD_LOGIC; 
  signal CHOICE1611 : STD_LOGIC; 
  signal N55338 : STD_LOGIC; 
  signal CHOICE1892 : STD_LOGIC; 
  signal CHOICE2123 : STD_LOGIC; 
  signal CHOICE2467 : STD_LOGIC; 
  signal CHOICE1621 : STD_LOGIC; 
  signal N51488 : STD_LOGIC; 
  signal N51588 : STD_LOGIC; 
  signal CHOICE2358 : STD_LOGIC; 
  signal N54954 : STD_LOGIC; 
  signal CHOICE2462 : STD_LOGIC; 
  signal CHOICE2254 : STD_LOGIC; 
  signal CHOICE2361 : STD_LOGIC; 
  signal N55076 : STD_LOGIC; 
  signal CHOICE2371 : STD_LOGIC; 
  signal CHOICE2465 : STD_LOGIC; 
  signal CHOICE1618 : STD_LOGIC; 
  signal N51788 : STD_LOGIC; 
  signal N55726 : STD_LOGIC; 
  signal CHOICE1804 : STD_LOGIC; 
  signal CHOICE2144 : STD_LOGIC; 
  signal CHOICE2187 : STD_LOGIC; 
  signal N55280 : STD_LOGIC; 
  signal N55088 : STD_LOGIC; 
  signal CHOICE1824 : STD_LOGIC; 
  signal CHOICE2387 : STD_LOGIC; 
  signal CHOICE2282 : STD_LOGIC; 
  signal N54980 : STD_LOGIC; 
  signal N49742 : STD_LOGIC; 
  signal CHOICE2504 : STD_LOGIC; 
  signal CHOICE2245 : STD_LOGIC; 
  signal i_can_bsp_tx_err_cnt_8_rt : STD_LOGIC; 
  signal CHOICE2341 : STD_LOGIC; 
  signal CHOICE2461 : STD_LOGIC; 
  signal N54717 : STD_LOGIC; 
  signal CHOICE2022 : STD_LOGIC; 
  signal N54656 : STD_LOGIC; 
  signal CHOICE2196 : STD_LOGIC; 
  signal N54946 : STD_LOGIC; 
  signal N55096 : STD_LOGIC; 
  signal CHOICE2075 : STD_LOGIC; 
  signal CHOICE2132 : STD_LOGIC; 
  signal N55658 : STD_LOGIC; 
  signal CHOICE2280 : STD_LOGIC; 
  signal CHOICE2211 : STD_LOGIC; 
  signal CHOICE2329 : STD_LOGIC; 
  signal CHOICE1759 : STD_LOGIC; 
  signal CHOICE2455 : STD_LOGIC; 
  signal rx_err_cnt_5_rt : STD_LOGIC; 
  signal N55092 : STD_LOGIC; 
  signal CHOICE1634 : STD_LOGIC; 
  signal CHOICE2222 : STD_LOGIC; 
  signal CHOICE1747 : STD_LOGIC; 
  signal CHOICE2453 : STD_LOGIC; 
  signal CHOICE2335 : STD_LOGIC; 
  signal CHOICE2507 : STD_LOGIC; 
  signal N55732 : STD_LOGIC; 
  signal CHOICE2510 : STD_LOGIC; 
  signal CHOICE1636 : STD_LOGIC; 
  signal CHOICE2252 : STD_LOGIC; 
  signal CHOICE2199 : STD_LOGIC; 
  signal N54797 : STD_LOGIC; 
  signal CHOICE2450 : STD_LOGIC; 
  signal N54817 : STD_LOGIC; 
  signal CHOICE2429 : STD_LOGIC; 
  signal CHOICE2056 : STD_LOGIC; 
  signal CHOICE1641 : STD_LOGIC; 
  signal CHOICE2035 : STD_LOGIC; 
  signal CHOICE2326 : STD_LOGIC; 
  signal N55505 : STD_LOGIC; 
  signal CHOICE2167 : STD_LOGIC; 
  signal CHOICE2055 : STD_LOGIC; 
  signal CHOICE2426 : STD_LOGIC; 
  signal CHOICE1643 : STD_LOGIC; 
  signal CHOICE2077 : STD_LOGIC; 
  signal N54639 : STD_LOGIC; 
  signal CHOICE1646 : STD_LOGIC; 
  signal N54757 : STD_LOGIC; 
  signal CHOICE2050 : STD_LOGIC; 
  signal CHOICE1652 : STD_LOGIC; 
  signal CHOICE2203 : STD_LOGIC; 
  signal N51538 : STD_LOGIC; 
  signal CHOICE2422 : STD_LOGIC; 
  signal CHOICE1649 : STD_LOGIC; 
  signal CHOICE2295 : STD_LOGIC; 
  signal CHOICE2325 : STD_LOGIC; 
  signal N54821 : STD_LOGIC; 
  signal CHOICE2189 : STD_LOGIC; 
  signal CHOICE2016 : STD_LOGIC; 
  signal N55080 : STD_LOGIC; 
  signal N54705 : STD_LOGIC; 
  signal CHOICE2314 : STD_LOGIC; 
  signal CHOICE2300 : STD_LOGIC; 
  signal CHOICE2137 : STD_LOGIC; 
  signal CHOICE2219 : STD_LOGIC; 
  signal CHOICE2106 : STD_LOGIC; 
  signal CHOICE1846 : STD_LOGIC; 
  signal CHOICE2414 : STD_LOGIC; 
  signal CHOICE2419 : STD_LOGIC; 
  signal CHOICE1778 : STD_LOGIC; 
  signal CHOICE1657 : STD_LOGIC; 
  signal N54950 : STD_LOGIC; 
  signal CHOICE2006 : STD_LOGIC; 
  signal N50992 : STD_LOGIC; 
  signal CHOICE1658 : STD_LOGIC; 
  signal CHOICE1841 : STD_LOGIC; 
  signal CHOICE2377 : STD_LOGIC; 
  signal CHOICE2162 : STD_LOGIC; 
  signal CHOICE2226 : STD_LOGIC; 
  signal CHOICE1869 : STD_LOGIC; 
  signal CHOICE1843 : STD_LOGIC; 
  signal CHOICE1661 : STD_LOGIC; 
  signal CHOICE2053 : STD_LOGIC; 
  signal N55145 : STD_LOGIC; 
  signal CHOICE2416 : STD_LOGIC; 
  signal CHOICE2368 : STD_LOGIC; 
  signal N54984 : STD_LOGIC; 
  signal CHOICE2104 : STD_LOGIC; 
  signal CHOICE2176 : STD_LOGIC; 
  signal N55084 : STD_LOGIC; 
  signal CHOICE2229 : STD_LOGIC; 
  signal CHOICE2063 : STD_LOGIC; 
  signal rx_err_cnt_6_rt : STD_LOGIC; 
  signal CHOICE2155 : STD_LOGIC; 
  signal N54813 : STD_LOGIC; 
  signal CHOICE2238 : STD_LOGIC; 
  signal CHOICE1707 : STD_LOGIC; 
  signal CHOICE1811 : STD_LOGIC; 
  signal CHOICE2382 : STD_LOGIC; 
  signal CHOICE2037 : STD_LOGIC; 
  signal CHOICE2241 : STD_LOGIC; 
  signal CHOICE1708 : STD_LOGIC; 
  signal CHOICE1671 : STD_LOGIC; 
  signal N55248 : STD_LOGIC; 
  signal CHOICE2009 : STD_LOGIC; 
  signal N54829 : STD_LOGIC; 
  signal CHOICE2338 : STD_LOGIC; 
  signal CHOICE1926 : STD_LOGIC; 
  signal N54942 : STD_LOGIC; 
  signal N54958 : STD_LOGIC; 
  signal CHOICE2409 : STD_LOGIC; 
  signal CHOICE2292 : STD_LOGIC; 
  signal CHOICE2271 : STD_LOGIC; 
  signal CHOICE2319 : STD_LOGIC; 
  signal CHOICE1793 : STD_LOGIC; 
  signal CHOICE2003 : STD_LOGIC; 
  signal N54680 : STD_LOGIC; 
  signal N54709 : STD_LOGIC; 
  signal CHOICE2374 : STD_LOGIC; 
  signal CHOICE2014 : STD_LOGIC; 
  signal CHOICE1677 : STD_LOGIC; 
  signal tx_data_0_0_rt1 : STD_LOGIC; 
  signal CHOICE2445 : STD_LOGIC; 
  signal CHOICE1753 : STD_LOGIC; 
  signal CHOICE2406 : STD_LOGIC; 
  signal N55104 : STD_LOGIC; 
  signal CHOICE1876 : STD_LOGIC; 
  signal CHOICE2385 : STD_LOGIC; 
  signal CHOICE1999 : STD_LOGIC; 
  signal CHOICE2065 : STD_LOGIC; 
  signal N55481 : STD_LOGIC; 
  signal baud_r_presc_3_rt : STD_LOGIC; 
  signal i_can_btl_quant_cnt_2_rt : STD_LOGIC; 
  signal i_can_btl_quant_cnt_1_rt : STD_LOGIC; 
  signal baud_r_presc_1_rt : STD_LOGIC; 
  signal baud_r_presc_5_rt : STD_LOGIC; 
  signal baud_r_presc_2_rt : STD_LOGIC; 
  signal baud_r_presc_4_rt : STD_LOGIC; 
  signal i_can_btl_n0007_rt : STD_LOGIC; 
  signal reset_mode_rt : STD_LOGIC; 
  signal i_can_btl_go_sync1_1 : STD_LOGIC; 
  signal i_can_btl_sampled_bit_1 : STD_LOGIC; 
  signal addr_latched_0_1 : STD_LOGIC; 
  signal addr_latched_0_2 : STD_LOGIC; 
  signal addr_latched_2_1 : STD_LOGIC; 
  signal addr_latched_2_2 : STD_LOGIC; 
  signal addr_latched_2_3 : STD_LOGIC; 
  signal addr_latched_2_4 : STD_LOGIC; 
  signal addr_latched_4_1 : STD_LOGIC; 
  signal addr_latched_4_2 : STD_LOGIC; 
  signal addr_latched_4_3 : STD_LOGIC; 
  signal addr_latched_4_4 : STD_LOGIC; 
  signal addr_latched_1_1 : STD_LOGIC; 
  signal addr_latched_1_2 : STD_LOGIC; 
  signal addr_latched_1_3 : STD_LOGIC; 
  signal addr_latched_3_1 : STD_LOGIC; 
  signal addr_latched_3_2 : STD_LOGIC; 
  signal i_can_registers_Ker318731_1 : STD_LOGIC; 
  signal i_can_btl_go_sync1_2 : STD_LOGIC; 
  signal addr_latched_0_3 : STD_LOGIC; 
  signal N55772 : STD_LOGIC; 
  signal N55774 : STD_LOGIC; 
  signal N55777 : STD_LOGIC; 
  signal N55779 : STD_LOGIC; 
  signal N55782 : STD_LOGIC; 
  signal N55784 : STD_LOGIC; 
  signal N55787 : STD_LOGIC; 
  signal N55789 : STD_LOGIC; 
  signal N55792 : STD_LOGIC; 
  signal N55794 : STD_LOGIC; 
  signal N55797 : STD_LOGIC; 
  signal N55799 : STD_LOGIC; 
  signal N55802 : STD_LOGIC; 
  signal N55804 : STD_LOGIC; 
  signal N55807 : STD_LOGIC; 
  signal N55809 : STD_LOGIC; 
  signal N55812 : STD_LOGIC; 
  signal N55814 : STD_LOGIC; 
  signal N55817 : STD_LOGIC; 
  signal N55819 : STD_LOGIC; 
  signal N55822 : STD_LOGIC; 
  signal N55824 : STD_LOGIC; 
  signal N55827 : STD_LOGIC; 
  signal N55829 : STD_LOGIC; 
  signal N55832 : STD_LOGIC; 
  signal N55834 : STD_LOGIC; 
  signal N55837 : STD_LOGIC; 
  signal N55839 : STD_LOGIC; 
  signal N55842 : STD_LOGIC; 
  signal N55844 : STD_LOGIC; 
  signal N55847 : STD_LOGIC; 
  signal N55849 : STD_LOGIC; 
  signal N55852 : STD_LOGIC; 
  signal N55854 : STD_LOGIC; 
  signal N55857 : STD_LOGIC; 
  signal N55859 : STD_LOGIC; 
  signal N55862 : STD_LOGIC; 
  signal N55864 : STD_LOGIC; 
  signal N55867 : STD_LOGIC; 
  signal N55869 : STD_LOGIC; 
  signal N55872 : STD_LOGIC; 
  signal N55874 : STD_LOGIC; 
  signal N55877 : STD_LOGIC; 
  signal N55879 : STD_LOGIC; 
  signal N55882 : STD_LOGIC; 
  signal N55884 : STD_LOGIC; 
  signal N55887 : STD_LOGIC; 
  signal N55889 : STD_LOGIC; 
  signal i_can_registers_MODE_REG0_data_out_0_1 : STD_LOGIC; 
  signal rst_i_IBUF_1 : STD_LOGIC; 
  signal rst_i_IBUF_2 : STD_LOGIC; 
  signal rst_i_IBUF_3 : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_21_1 : STD_LOGIC; 
  signal N55897 : STD_LOGIC; 
  signal N55900 : STD_LOGIC; 
  signal N55903 : STD_LOGIC; 
  signal N55911 : STD_LOGIC; 
  signal N55923 : STD_LOGIC; 
  signal N55926 : STD_LOGIC; 
  signal N55928 : STD_LOGIC; 
  signal N55930 : STD_LOGIC; 
  signal N55932 : STD_LOGIC; 
  signal N55934 : STD_LOGIC; 
  signal N55936 : STD_LOGIC; 
  signal N55939 : STD_LOGIC; 
  signal N55941 : STD_LOGIC; 
  signal N55943 : STD_LOGIC; 
  signal N55946 : STD_LOGIC; 
  signal N55948 : STD_LOGIC; 
  signal N55950 : STD_LOGIC; 
  signal N55952 : STD_LOGIC; 
  signal N55954 : STD_LOGIC; 
  signal N55957 : STD_LOGIC; 
  signal N55959 : STD_LOGIC; 
  signal N55961 : STD_LOGIC; 
  signal N55963 : STD_LOGIC; 
  signal N55965 : STD_LOGIC; 
  signal N55968 : STD_LOGIC; 
  signal N55972 : STD_LOGIC; 
  signal N55974 : STD_LOGIC; 
  signal N55979 : STD_LOGIC; 
  signal N55994 : STD_LOGIC; 
  signal N55997 : STD_LOGIC; 
  signal N55999 : STD_LOGIC; 
  signal N56002 : STD_LOGIC; 
  signal N56005 : STD_LOGIC; 
  signal N56012 : STD_LOGIC; 
  signal N56020 : STD_LOGIC; 
  signal N56030 : STD_LOGIC; 
  signal N56034 : STD_LOGIC; 
  signal N56036 : STD_LOGIC; 
  signal N56099 : STD_LOGIC; 
  signal N56111 : STD_LOGIC; 
  signal i_can_btl_go_sync1_1_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_3_187_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0138_5_O : STD_LOGIC; 
  signal i_can_bsp_n0138_3_O : STD_LOGIC; 
  signal i_can_bsp_n0138_0_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0138_5_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_3_229_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_6_5_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_4_193_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_7_163_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_1_6_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_2_187_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_4_22_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_0_127_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_5_104_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_4_233_O : STD_LOGIC; 
  signal i_can_bsp_n0138_1_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_2_229_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_1_28_O : STD_LOGIC; 
  signal i_can_bsp_n0138_1_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_6_229_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_4_39_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_1_43_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_7_25_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_2_6_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_3_6_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_0_220_O : STD_LOGIC; 
  signal i_can_bsp_n0154_0_80_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_6_37_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_3_28_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_2_28_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_1_102_O : STD_LOGIC; 
  signal i_can_bsp_n0138_2_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_5_144_O : STD_LOGIC; 
  signal i_can_bsp_n0138_2_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0138_6_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_3_43_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_5_19_O : STD_LOGIC; 
  signal i_can_bsp_n0138_6_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_2_43_O : STD_LOGIC; 
  signal i_can_bsp_n0138_4_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_1_144_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_6_147_O : STD_LOGIC; 
  signal i_can_bsp_n0138_4_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0138_7_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_5_35_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_7_5_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_3_102_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_1_187_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_5_177_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_6_20_SW0_O : STD_LOGIC; 
  signal i_can_registers_we_acceptance_mask_018_O : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_inst_lut3_341_O : STD_LOGIC; 
  signal i_can_registers_we_tx_data_518_SW0_O : STD_LOGIC; 
  signal i_can_registers_Ker315071_SW0_O : STD_LOGIC; 
  signal i_can_registers_we_acceptance_code_0_SW0_O : STD_LOGIC; 
  signal i_can_registers_Ker3144491_SW1_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0154_1_O : STD_LOGIC; 
  signal i_can_bsp_n0140_7_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0140_7_O : STD_LOGIC; 
  signal i_can_bsp_n0140_4_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0140_4_O : STD_LOGIC; 
  signal i_can_bsp_n0154_4_O : STD_LOGIC; 
  signal i_can_registers_Ker3144446_SW1_O : STD_LOGIC; 
  signal i_can_bsp_n0140_8_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0140_3_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0140_2_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0140_2_O : STD_LOGIC; 
  signal i_can_bsp_n0140_6_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0140_6_O : STD_LOGIC; 
  signal i_can_registers_we_tx_data_85_O : STD_LOGIC; 
  signal i_can_bsp_n0140_0_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0140_0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_7_37_O : STD_LOGIC; 
  signal i_can_bsp_n0138_0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_0_198_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_6_161_SW1_O : STD_LOGIC; 
  signal i_can_bsp_n068567_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_2_144_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_5_209_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_0_30_O : STD_LOGIC; 
  signal i_can_bsp_n01461_O : STD_LOGIC; 
  signal i_can_bsp_n0138_3_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_6_40_O : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_311_O : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_301_O : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_281_O : STD_LOGIC; 
  signal i_can_bsp_eof_cnt_Mmux_n0001_Result_1_1_O : STD_LOGIC; 
  signal i_can_bsp_eof_cnt_Mmux_n0001_Result_0_1_O : STD_LOGIC; 
  signal i_can_bsp_eof_cnt_Mmux_n0001_Result_2_1_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_4_91_SW1_O : STD_LOGIC; 
  signal i_can_bsp_n0154_3_54_O : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_lut4_111_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_2_102_O : STD_LOGIC; 
  signal i_can_bsp_n01141_O : STD_LOGIC; 
  signal i_can_bsp_n0140_5_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_1_229_O : STD_LOGIC; 
  signal i_can_bsp_n0140_5_O : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_321_O : STD_LOGIC; 
  signal i_can_bsp_n0140_3_O : STD_LOGIC; 
  signal i_can_bsp_n0154_7_1_O : STD_LOGIC; 
  signal i_can_bsp_n0154_6_1_O : STD_LOGIC; 
  signal i_can_bsp_n0154_5_1_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_7_102_SW0_SW0_O : STD_LOGIC; 
  signal i_can_bsp_n0099_2_1_O : STD_LOGIC; 
  signal i_can_bsp_n0099_1_1_O : STD_LOGIC; 
  signal i_can_bsp_n0099_0_1_O : STD_LOGIC; 
  signal i_can_bsp_n01881_O : STD_LOGIC; 
  signal i_can_bsp_n04321_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_7_70_O : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG4_n00011_O : STD_LOGIC; 
  signal i_can_registers_n00041_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_6_220_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_4_144_O : STD_LOGIC; 
  signal i_can_registers_n00601_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_6_166_SW1_O : STD_LOGIC; 
  signal i_can_bsp_n0140_1_SW0_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_4_92_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_1_262_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_0_253_O : STD_LOGIC; 
  signal i_can_bsp_n0140_1_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_3_262_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_2_262_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_5_242_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_4_266_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_7_228_O : STD_LOGIC; 
  signal i_can_bsp_n0138_8_O : STD_LOGIC; 
  signal i_can_registers_n01581_O : STD_LOGIC; 
  signal i_can_bsp_n0154_2_20_O : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_331_O : STD_LOGIC; 
  signal i_can_bsp_n0140_8_O : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_lut4_121_O : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_inst_lut3_291_O : STD_LOGIC; 
  signal i_can_registers_data_out_tmp_3_144_O : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_lut4_101_O : STD_LOGIC; 
  signal i_can_btl_Mcompar_n0035_inst_lut4_131_O : STD_LOGIC; 
  signal clk_i_BUFGP_IBUFG : STD_LOGIC; 
  signal GSR : STD_LOGIC; 
  signal addr_latched_6_GSR_OR : STD_LOGIC; 
  signal addr_latched_1_GSR_OR : STD_LOGIC; 
  signal addr_latched_2_GSR_OR : STD_LOGIC; 
  signal addr_latched_0_GSR_OR : STD_LOGIC; 
  signal addr_latched_3_GSR_OR : STD_LOGIC; 
  signal addr_latched_4_GSR_OR : STD_LOGIC; 
  signal addr_latched_5_GSR_OR : STD_LOGIC; 
  signal rd_i_q_GSR_OR : STD_LOGIC; 
  signal wr_i_q_GSR_OR : STD_LOGIC; 
  signal addr_latched_7_GSR_OR : STD_LOGIC; 
  signal i_can_btl_clk_cnt_13_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_25_GSR_OR : STD_LOGIC; 
  signal i_can_btl_resync_blocked_GSR_OR : STD_LOGIC; 
  signal i_can_btl_sync_blocked_GSR_OR : STD_LOGIC; 
  signal i_can_btl_sample_point_GSR_OR : STD_LOGIC; 
  signal i_can_btl_sampled_bit_q_GSR_OR : STD_LOGIC; 
  signal i_can_btl_sampled_bit_GSR_OR : STD_LOGIC; 
  signal i_can_btl_delay_3_GSR_OR : STD_LOGIC; 
  signal i_can_btl_quant_cnt_5_GSR_OR : STD_LOGIC; 
  signal i_can_btl_seg2_GSR_OR : STD_LOGIC; 
  signal i_can_btl_seg1_GSR_OR : STD_LOGIC; 
  signal i_can_btl_sync_GSR_OR : STD_LOGIC; 
  signal i_can_btl_resync_latched_GSR_OR : STD_LOGIC; 
  signal i_can_btl_clk_en_GSR_OR : STD_LOGIC; 
  signal i_can_btl_clk_cnt_14_GSR_OR : STD_LOGIC; 
  signal i_can_btl_sample_0_GSR_OR : STD_LOGIC; 
  signal i_can_btl_sample_1_GSR_OR : STD_LOGIC; 
  signal i_can_btl_delay_0_GSR_OR : STD_LOGIC; 
  signal i_can_btl_delay_1_GSR_OR : STD_LOGIC; 
  signal i_can_btl_delay_2_GSR_OR : STD_LOGIC; 
  signal i_can_btl_quant_cnt_6_GSR_OR : STD_LOGIC; 
  signal i_can_btl_quant_cnt_7_GSR_OR : STD_LOGIC; 
  signal i_can_btl_quant_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_btl_quant_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_btl_quant_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_btl_quant_cnt_3_GSR_OR : STD_LOGIC; 
  signal i_can_btl_quant_cnt_4_GSR_OR : STD_LOGIC; 
  signal i_can_btl_clk_cnt_15_GSR_OR : STD_LOGIC; 
  signal i_can_btl_clk_cnt_16_GSR_OR : STD_LOGIC; 
  signal i_can_btl_clk_cnt_8_GSR_OR : STD_LOGIC; 
  signal i_can_btl_clk_cnt_9_GSR_OR : STD_LOGIC; 
  signal i_can_btl_clk_cnt_10_GSR_OR : STD_LOGIC; 
  signal i_can_btl_clk_cnt_11_GSR_OR : STD_LOGIC; 
  signal i_can_btl_clk_cnt_12_GSR_OR : STD_LOGIC; 
  signal i_can_registers_arbitration_lost_irq_GSR_OR : STD_LOGIC; 
  signal i_can_registers_bus_error_irq_GSR_OR : STD_LOGIC; 
  signal i_can_registers_error_irq_GSR_OR : STD_LOGIC; 
  signal i_can_registers_receive_irq_GSR_OR : STD_LOGIC; 
  signal i_can_registers_transmit_irq_GSR_OR : STD_LOGIC; 
  signal i_can_registers_data_overrun_irq_GSR_OR : STD_LOGIC; 
  signal i_can_registers_data_out_7_GSR_OR : STD_LOGIC; 
  signal i_can_registers_clkout_tmp_GSR_OR : STD_LOGIC; 
  signal i_can_registers_clkout_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_registers_receive_buffer_status_GSR_OR : STD_LOGIC; 
  signal i_can_registers_overrun_status_GSR_OR : STD_LOGIC; 
  signal i_can_registers_transmit_buffer_status_GSR_OR : STD_LOGIC; 
  signal i_can_registers_transmission_complete_GSR_OR : STD_LOGIC; 
  signal i_can_registers_single_shot_transmission_GSR_OR : STD_LOGIC; 
  signal i_can_registers_ERROR_WARNING_REG_data_out_1_GSR_OR : STD_LOGIC; 
  signal i_can_registers_data_out_3_GSR_OR : STD_LOGIC; 
  signal i_can_registers_MODE_REG_BASIC_data_out_2_GSR_OR : STD_LOGIC; 
  signal i_can_registers_data_out_2_GSR_OR : STD_LOGIC; 
  signal i_can_registers_data_out_1_GSR_OR : STD_LOGIC; 
  signal i_can_registers_data_out_0_GSR_OR : STD_LOGIC; 
  signal i_can_registers_MODE_REG_EXT_data_out_1_GSR_OR : STD_LOGIC; 
  signal i_can_registers_error_passive_irq_GSR_OR : STD_LOGIC; 
  signal i_can_registers_ERROR_WARNING_REG_data_out_3_GSR_OR : STD_LOGIC; 
  signal i_can_registers_ERROR_WARNING_REG_data_out_7_GSR_OR : STD_LOGIC; 
  signal i_can_registers_ERROR_WARNING_REG_data_out_5_GSR_OR : STD_LOGIC; 
  signal i_can_registers_ERROR_WARNING_REG_data_out_0_GSR_OR : STD_LOGIC; 
  signal i_can_registers_ERROR_WARNING_REG_data_out_2_GSR_OR : STD_LOGIC; 
  signal i_can_registers_clkout_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_registers_clkout_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_23_GSR_OR : STD_LOGIC; 
  signal i_can_registers_ERROR_WARNING_REG_data_out_6_GSR_OR : STD_LOGIC; 
  signal i_can_registers_data_out_6_GSR_OR : STD_LOGIC; 
  signal i_can_registers_data_out_5_GSR_OR : STD_LOGIC; 
  signal i_can_registers_data_out_4_GSR_OR : STD_LOGIC; 
  signal i_can_registers_ERROR_WARNING_REG_data_out_4_GSR_OR : STD_LOGIC; 
  signal i_can_registers_MODE_REG0_data_out_0_GSR_OR : STD_LOGIC; 
  signal i_can_registers_MODE_REG_BASIC_data_out_3_GSR_OR : STD_LOGIC; 
  signal i_can_registers_MODE_REG_BASIC_data_out_0_GSR_OR : STD_LOGIC; 
  signal i_can_registers_MODE_REG_BASIC_data_out_1_GSR_OR : STD_LOGIC; 
  signal i_can_registers_MODE_REG_EXT_data_out_2_GSR_OR : STD_LOGIC; 
  signal i_can_registers_MODE_REG_EXT_data_out_0_GSR_OR : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG4_data_out_0_GSR_OR : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG1_data_out_0_GSR_OR : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG0_data_out_0_GSR_OR : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG_data_out_0_GSR_OR : STD_LOGIC; 
  signal i_can_registers_COMMAND_REG_data_out_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_26_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_err_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_enable_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_stuff_cnt_tx_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_crc_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_data_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_dlc_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_r0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_r1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_rtr2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_id2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_ide_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_err_cnt_6_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_err_cnt_5_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_err_cnt_4_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_6_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_err_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_7_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_err_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_8_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_arbitration_blocked_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_err_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_9_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_capture_code_6_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_arbitration_cnt_en_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_10_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_capture_code_5_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_11_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_finish_msg_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_29_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_capture_code_4_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_12_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_capture_code_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_capture_code_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_13_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_capture_code_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_14_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_capture_code_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_passive_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_15_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_passive_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_16_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bus_free_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_17_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bus_free_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_18_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_suspend_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_susp_cnt_en_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bus_free_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_19_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_transmitting_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_20_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_21_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_transmitter_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_ack_lim_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_go_early_tx_latched_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_state_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_22_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_23_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_24_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_25_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_27_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_24_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_28_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_capture_code_blocked_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_capture_code_7_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_waiting_for_bus_free_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bus_free_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bus_free_cnt_en_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_node_error_passive_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_blocked_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_crc_lim_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_err_cnt_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_26_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bus_free_cnt_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_node_bus_off_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_rtr1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_id1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_overload_frame_blocked_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_enable_overload_cnt2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_5_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_6_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_7_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_passive_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_overload_frame_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_9_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_8_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_10_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tmp_data_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_flag_over_blocked_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_enable_error_cnt2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tmp_data_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_frame_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tmp_data_5_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tmp_data_6_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rule3_exc2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_stuff_err_latched_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_data_len_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_data_len_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_data_len_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_data_len_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tmp_data_7_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rule3_exc1_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_5_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_id_4_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_err_cnt_7_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_8_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_err_cnt_8_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_idle_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_4_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tmp_data_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_data_cnt_18_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tmp_data_4_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_form_err_latched_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_wr_fifo_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rule3_exc1_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_7_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_err_latched_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_6_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_24_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_write_data_to_tmp_fifo_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_ide_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rtr2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rtr1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_inter_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_eof_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_4_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_ack_err_latched_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_err_cnt_5_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_11_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_12_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_13_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_crc_in_14_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tmp_data_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_need_to_tx_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_rx_ack_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_22_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_21_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_stuff_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_stuff_cnt_en_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_stuff_cnt_tx_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_stuff_cnt_tx_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_stuff_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_stuff_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_susp_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_susp_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_susp_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_overload_cnt2_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_overload_cnt2_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_overload_cnt2_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_overload_cnt1_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_overload_cnt1_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_overload_cnt1_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_delayed_dominant_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_delayed_dominant_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_delayed_dominant_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_cnt2_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_cnt2_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_cnt2_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_cnt1_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_cnt1_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_error_cnt1_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_header_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_header_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_header_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_eof_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_eof_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_eof_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_byte_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_byte_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_byte_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_data_cnt_19_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_data_cnt_20_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_data_cnt_17_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_25_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_26_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_21_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_22_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_23_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_25_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_26_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_21_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_22_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_bit_cnt_23_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_30_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_31_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_27_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_arbitration_lost_capture_28_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_acf_id_ok_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_pointer_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_pointer_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_fifo_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_pointer_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_fifo_cnt_5_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_5_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_23_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_fifo_cnt_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_fifo_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_fifo_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_pointer_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_fifo_cnt_4_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_fifo_cnt_6_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_pointer_4_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_q_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_18_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_24_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_24_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_pointer_5_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_24_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_latch_overrun_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_6_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_22_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_0_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_2_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_3_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_info_cnt_4_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_info_pointer_21_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_19_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_20_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_len_cnt_17_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_25_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_26_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_21_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_22_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_wr_pointer_23_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_25_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_i_can_fifo_rd_info_pointer_26_GSR_OR : STD_LOGIC; 
  signal i_can_btl_sampled_bit_1_GSR_OR : STD_LOGIC; 
  signal addr_latched_0_1_GSR_OR : STD_LOGIC; 
  signal addr_latched_0_2_GSR_OR : STD_LOGIC; 
  signal addr_latched_2_1_GSR_OR : STD_LOGIC; 
  signal addr_latched_2_2_GSR_OR : STD_LOGIC; 
  signal addr_latched_2_3_GSR_OR : STD_LOGIC; 
  signal addr_latched_2_4_GSR_OR : STD_LOGIC; 
  signal addr_latched_4_1_GSR_OR : STD_LOGIC; 
  signal addr_latched_4_2_GSR_OR : STD_LOGIC; 
  signal addr_latched_4_3_GSR_OR : STD_LOGIC; 
  signal addr_latched_4_4_GSR_OR : STD_LOGIC; 
  signal addr_latched_1_1_GSR_OR : STD_LOGIC; 
  signal addr_latched_1_2_GSR_OR : STD_LOGIC; 
  signal addr_latched_1_3_GSR_OR : STD_LOGIC; 
  signal addr_latched_3_1_GSR_OR : STD_LOGIC; 
  signal addr_latched_3_2_GSR_OR : STD_LOGIC; 
  signal addr_latched_0_3_GSR_OR : STD_LOGIC; 
  signal i_can_registers_MODE_REG0_data_out_0_1_GSR_OR : STD_LOGIC; 
  signal i_can_bsp_tx_pointer_21_1_GSR_OR : STD_LOGIC; 
  signal GTS : STD_LOGIC; 
  signal port_0_io_0_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal port_0_io_1_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal port_0_io_2_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal port_0_io_3_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal port_0_io_4_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal port_0_io_5_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal port_0_io_6_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal port_0_io_7_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal tx_o_OBUFT_GTS_AND : STD_LOGIC; 
  signal clkout_o_OBUF_GTS_TRI : STD_LOGIC; 
  signal irq_on_OBUF_GTS_TRI : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_6_C : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_1_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_2_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_0_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_3_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_4_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_5_C : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_7_C : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_fifo_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_fifo_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_fifo_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_fifo_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_fifo_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_fifo_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_fifo_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_fifo_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_info_fifo_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_info_fifo_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_info_fifo_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_info_fifo_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_i_can_bsp_i_can_fifo_overrun_fifo_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_0_1_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_0_2_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_2_1_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_2_2_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_2_3_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_2_4_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_4_1_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_4_2_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_4_3_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_4_4_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_1_1_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_1_2_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_1_3_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_3_1_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_3_2_C : STD_LOGIC; 
  signal NlwInverterSignal_addr_latched_0_3_C : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_0_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_0_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_1_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_1_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_2_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_2_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_3_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_3_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_4_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_4_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_5_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_5_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_6_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_6_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_7_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_port_0_io_7_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_tx_o_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_tx_o_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_clkout_o_OBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_irq_on_OBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal i_can_registers_TX_DATA_REG6_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_TX_DATA_REG3_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_TX_DATA_REG9_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_TX_DATA_REG5_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_TX_DATA_REG2_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_bsp_i_can_fifo_read_address : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal i_can_registers_TX_DATA_REG11_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_TX_DATA_REG1_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_TX_DATA_REG12_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_TX_DATA_REG7_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_TX_DATA_REG4_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_MODE_REG0_data_out : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal i_can_registers_COMMAND_REG_data_out : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal i_can_registers_CLOCK_DIVIDER_REG_7_data_out : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal i_can_registers_BUS_TIMING_1_REG_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal addr_latched : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_bsp_rx_err_cnt : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal i_can_registers_TX_DATA_REG8_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Q_n0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_TX_DATA_REG10_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_bsp_tx_err_cnt : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal data_out_fifo : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_bsp_i_can_fifo_info_cnt : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal i_can_bsp_error_capture_code : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_BUS_TIMING_0_REG_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_ERROR_WARNING_REG_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_ACCEPTANCE_CODE_REG0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_ACCEPTANCE_MASK_REG0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_ACCEPTANCE_CODE_REG1_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_ACCEPTANCE_CODE_REG2_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_ACCEPTANCE_CODE_REG3_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_ACCEPTANCE_MASK_REG1_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_ACCEPTANCE_MASK_REG2_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_ACCEPTANCE_MASK_REG3_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_TX_DATA_REG0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_btl_delay : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_can_btl_sample : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal i_can_btl_n0003 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal i_can_btl_quant_cnt : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_btl_n0000 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal i_can_btl_clk_cnt : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal i_can_btl_preset_cnt : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal i_can_btl_n0098 : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal i_can_btl_n0102 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_btl_n0019 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_can_btl_n0038 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal i_can_registers_clkout_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_registers_data_out_tmp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_IRQ_EN_REG_data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_registers_COMMAND_REG0_data_out : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal i_can_registers_MODE_REG_EXT_data_out : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_registers_clkout_cnt_n0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_registers_COMMAND_REG1_data_out : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal i_can_registers_MODE_REG_BASIC_data_out : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_can_registers_CLOCK_DIVIDER_REG_3_data_out : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal i_can_registers_COMMAND_REG4_data_out : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal i_can_registers_COMMAND_REG_n0001 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal i_can_bsp_i_can_fifo_rd_pointer : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal i_can_bsp_n0224 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal i_can_bsp_n0247 : STD_LOGIC_VECTOR ( 5 downto 4 ); 
  signal i_can_bsp_n0001 : STD_LOGIC_VECTOR ( 8 downto 4 ); 
  signal i_can_bsp_i_can_fifo_n0019 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal i_can_bsp_i_can_fifo_n0021 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal i_can_bsp_n0000 : STD_LOGIC_VECTOR ( 8 downto 4 ); 
  signal i_can_bsp_i_can_fifo_fifo_cnt : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal i_can_bsp_id : STD_LOGIC_VECTOR ( 28 downto 0 ); 
  signal i_can_bsp_susp_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_data_for_fifo : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_bsp_i_can_fifo_n0032 : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal i_can_bsp_n0763 : STD_LOGIC_VECTOR ( 8 downto 4 ); 
  signal i_can_bsp_byte_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_overload_cnt2 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_i_can_fifo_info_cnt_n0000 : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal i_can_bsp_n0289 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal i_can_bsp_n0099 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_i_can_fifo_n0015 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal i_can_bsp_n0147 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_can_bsp_n0272 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal i_can_bsp_bus_free_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_can_bsp_n0004 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_bsp_n0140 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal i_can_bsp_i_can_fifo_n0077 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal i_can_bsp_i_can_crc_rx_crc : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal i_can_bsp_bit_stuff_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_header_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_crc_in : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal i_can_bsp_error_cnt1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_bit_stuff_cnt_tx : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_n0138 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal i_can_bsp_n0154 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_bsp_n0761 : STD_LOGIC_VECTOR ( 8 downto 4 ); 
  signal i_can_bsp_error_cnt2 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_i_can_fifo_length_info : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_can_bsp_n0158 : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal i_can_bsp_i_can_fifo_n0010 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal i_can_bsp_tmp_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_can_bsp_i_can_fifo_n0020 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal i_can_bsp_overload_cnt1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_n0070 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_n0069 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_data_len : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_can_bsp_header_len : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal i_can_bsp_n0229 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_can_bsp_passive_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_limited_data_len_minus1 : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal i_can_bsp_COND_6 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_delayed_dominant_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_eof_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_susp_cnt_n0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_overload_cnt2_n0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_overload_cnt1_n0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_delayed_dominant_cnt_n0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_error_cnt2_n0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_error_cnt1_n0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_header_cnt_n0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_eof_cnt_n0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_can_bsp_byte_cnt_n0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  addr_latched_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => ale_i_IBUF,
      RST => addr_latched_6_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_6_C,
      O => addr_latched(6),
      SET => GND
    );
  addr_latched_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => ale_i_IBUF,
      RST => addr_latched_1_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_1_C,
      O => addr_latched(1),
      SET => GND
    );
  Mmux_n0001_Result_0_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => data_out_fifo_selected,
      ADR1 => data_out_fifo(0),
      ADR2 => i_can_registers_data_out(0),
      O => Q_n0001(0)
    );
  Mmux_n0001_Result_6_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => data_out_fifo_selected,
      ADR1 => data_out_fifo(6),
      ADR2 => i_can_registers_data_out(6),
      O => Q_n0001(6)
    );
  Mmux_n0001_Result_3_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => data_out_fifo_selected,
      ADR1 => data_out_fifo(3),
      ADR2 => i_can_registers_data_out(3),
      O => Q_n0001(3)
    );
  addr_latched_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => ale_i_IBUF,
      RST => addr_latched_2_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_2_C,
      O => addr_latched(2),
      SET => GND
    );
  addr_latched_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => ale_i_IBUF,
      RST => addr_latched_0_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_0_C,
      O => addr_latched(0),
      SET => GND
    );
  Mmux_n0001_Result_5_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => data_out_fifo_selected,
      ADR1 => data_out_fifo(5),
      ADR2 => i_can_registers_data_out(5),
      O => Q_n0001(5)
    );
  addr_latched_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => ale_i_IBUF,
      RST => addr_latched_3_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_3_C,
      O => addr_latched(3),
      SET => GND
    );
  Mmux_n0001_Result_7_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => data_out_fifo_selected,
      ADR1 => data_out_fifo(7),
      ADR2 => i_can_registers_data_out(7),
      O => Q_n0001(7)
    );
  addr_latched_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => ale_i_IBUF,
      RST => addr_latched_4_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_4_C,
      O => addr_latched(4),
      SET => GND
    );
  addr_latched_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => ale_i_IBUF,
      RST => addr_latched_5_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_5_C,
      O => addr_latched(5),
      SET => GND
    );
  i_can_bsp_data_for_fifo_7_5_G : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(2),
      ADR1 => i_can_bsp_id(12),
      ADR2 => i_can_bsp_header_cnt(1),
      O => N55889
    );
  Q_n00001 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => wr_i_IBUF,
      ADR1 => cs,
      O => Q_n0000
    );
  i_can_bsp_n0674_0 : X_LUT4
    generic map(
      INIT => X"FBEA"
    )
    port map (
      ADR0 => N40664,
      ADR1 => i_can_bsp_tx_state,
      ADR2 => i_can_bsp_arbitration_lost,
      ADR3 => i_can_bsp_go_rx_id1,
      O => i_can_bsp_n0674
    );
  data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0001(7),
      CE => Q_n0000,
      CLK => clk_i_BUFGP,
      O => data_out(7),
      SET => GND,
      RST => GSR
    );
  tx_o_OBUFT : X_TRI
    port map (
      I => i_can_bsp_tx,
      CTL => tx_o_OBUFT_GTS_AND,
      O => tx_o
    );
  rd_i_q_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => rd_i_IBUF,
      RST => rd_i_q_GSR_OR,
      CLK => clk_i_BUFGP,
      O => rd_i_q,
      CE => VCC,
      SET => GND
    );
  wr_i_q_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => wr_i_IBUF,
      RST => wr_i_q_GSR_OR,
      CLK => clk_i_BUFGP,
      O => wr_i_q,
      CE => VCC,
      SET => GND
    );
  addr_latched_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => ale_i_IBUF,
      RST => addr_latched_7_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_7_C,
      O => addr_latched(7),
      SET => GND
    );
  i_can_registers_Ker318041 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => addr_latched_3_2,
      ADR1 => addr_latched_1_3,
      O => i_can_registers_N31806
    );
  i_can_btl_clk_cnt_13_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_clk_cnt_inst_sum_53,
      CE => N23149,
      RST => i_can_btl_clk_cnt_13_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_clk_cnt_13
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_25_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_97,
      CE => i_can_bsp_i_can_fifo_n0068,
      RST => i_can_bsp_i_can_fifo_wr_info_pointer_25_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_25
    );
  data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0001(0),
      CE => Q_n0000,
      CLK => clk_i_BUFGP,
      O => data_out(0),
      SET => GND,
      RST => GSR
    );
  data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0001(1),
      CE => Q_n0000,
      CLK => clk_i_BUFGP,
      O => data_out(1),
      SET => GND,
      RST => GSR
    );
  data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0001(2),
      CE => Q_n0000,
      CLK => clk_i_BUFGP,
      O => data_out(2),
      SET => GND,
      RST => GSR
    );
  data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0001(3),
      CE => Q_n0000,
      CLK => clk_i_BUFGP,
      O => data_out(3),
      SET => GND,
      RST => GSR
    );
  data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0001(4),
      CE => Q_n0000,
      CLK => clk_i_BUFGP,
      O => data_out(4),
      SET => GND,
      RST => GSR
    );
  data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0001(5),
      CE => Q_n0000,
      CLK => clk_i_BUFGP,
      O => data_out(5),
      SET => GND,
      RST => GSR
    );
  data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0001(6),
      CE => Q_n0000,
      CLK => clk_i_BUFGP,
      O => data_out(6),
      SET => GND,
      RST => GSR
    );
  I8_EnableTr_INV1 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => cs_can_i_IBUF,
      ADR1 => rd_i_IBUF,
      O => I8_N3072
    );
  XST_VCC : X_ONE
    port map (
      O => N23149
    );
  XST_GND : X_ZERO
    port map (
      O => N23151
    );
  Mmux_n0001_Result_4_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => data_out_fifo_selected,
      ADR1 => data_out_fifo(4),
      ADR2 => i_can_registers_data_out(4),
      O => Q_n0001(4)
    );
  Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => data_out_fifo_selected,
      ADR1 => data_out_fifo(1),
      ADR2 => i_can_registers_data_out(1),
      O => Q_n0001(1)
    );
  Mmux_n0001_Result_2_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => data_out_fifo_selected,
      ADR1 => data_out_fifo(2),
      ADR2 => i_can_registers_data_out(2),
      O => Q_n0001(2)
    );
  i_can_btl_Mcompar_n0042_inst_lut4_31 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(6),
      ADR1 => N23151,
      ADR2 => i_can_btl_quant_cnt(7),
      ADR3 => N23151,
      O => i_can_btl_Mcompar_n0042_inst_lut4_3
    );
  i_can_btl_n0019_1_1 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_btl_n0030,
      ADR1 => i_can_btl_n0102(1),
      ADR2 => i_can_btl_n0038(1),
      ADR3 => i_can_btl_n0029,
      O => i_can_btl_n0019(1)
    );
  i_can_btl_n0019_2_1 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_btl_n0030,
      ADR1 => i_can_btl_n0102(2),
      ADR2 => i_can_btl_n0038(2),
      ADR3 => i_can_btl_n0029,
      O => i_can_btl_n0019(2)
    );
  i_can_btl_n0019_3_1 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_btl_n0030,
      ADR1 => i_can_btl_n0038(3),
      ADR2 => i_can_btl_n0029,
      O => i_can_btl_n0019(3)
    );
  i_can_btl_n00171 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_seg2,
      ADR2 => i_can_btl_go_sync1_2,
      O => i_can_btl_n0017
    );
  i_can_btl_Mcompar_n0041_inst_cy_9_5 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0041_inst_cy_8,
      IA => N23149,
      SEL => i_can_btl_Mcompar_n0041_inst_lut4_2,
      O => i_can_btl_Mcompar_n0041_inst_cy_9
    );
  i_can_bsp_tx_successful_SW0 : X_LUT4
    generic map(
      INIT => X"0307"
    )
    port map (
      ADR0 => i_can_bsp_n0242,
      ADR1 => i_can_btl_go_sync1_1,
      ADR2 => i_can_bsp_arbitration_lost,
      ADR3 => i_can_bsp_n0241,
      O => N42193
    );
  i_can_bsp_Maddsub_n0158_inst_lut2_951 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(6),
      ADR1 => i_can_bsp_transmitter,
      ADR2 => i_can_bsp_N34261,
      O => i_can_bsp_Maddsub_n0158_inst_lut2_95
    );
  i_can_btl_Mcompar_sync_window_inst_lut2_241 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(6),
      ADR1 => i_can_btl_n0003(0),
      O => i_can_btl_Mcompar_sync_window_inst_lut2_24
    );
  i_can_btl_Mcompar_n0035_inst_cy_87_6 : X_MUX2
    port map (
      IB => N23149,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0035_inst_lut4_10,
      O => i_can_btl_Mcompar_n0035_inst_cy_87
    );
  i_can_btl_hard_sync1 : X_LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      ADR0 => i_can_btl_N28740,
      ADR1 => last_bit_of_inter,
      ADR2 => i_can_bsp_rx_idle,
      O => hard_sync
    );
  i_can_btl_resync1 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_btl_resync_blocked,
      ADR1 => i_can_bsp_rx_idle,
      ADR2 => N55903,
      O => i_can_btl_resync
    );
  i_can_btl_go_seg114 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_btl_sync_window,
      ADR1 => CHOICE1641,
      ADR2 => CHOICE1643,
      ADR3 => i_can_btl_clk_en,
      O => i_can_btl_go_seg1
    );
  i_can_btl_go_seg21 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_btl_N28750,
      ADR1 => i_can_btl_n0034,
      ADR2 => i_can_btl_seg1,
      O => i_can_btl_go_seg2
    );
  i_can_btl_Mcompar_n0030_inst_cy_21_7 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0030_inst_cy_20,
      IA => i_can_btl_quant_cnt(6),
      SEL => i_can_btl_Mcompar_n0030_inst_lut2_16,
      O => i_can_btl_Mcompar_n0030_inst_cy_21
    );
  i_can_btl_Mcompar_n0007_inst_cy_27_8 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0007_inst_cy_26,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0007_inst_lut4_8,
      O => i_can_btl_Mcompar_n0007_inst_cy_27
    );
  i_can_btl_Madd_n0045_inst_cy_32_9 : X_MUX2
    port map (
      IB => i_can_btl_Madd_n0045_inst_cy_31,
      IA => N23151,
      SEL => baud_r_presc_3_rt,
      O => i_can_btl_Madd_n0045_inst_cy_32
    );
  i_can_btl_Mcompar_sync_window_inst_cy_43_10 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_sync_window_inst_cy_42,
      IA => N23151,
      SEL => i_can_btl_Mcompar_sync_window_inst_lut2_32,
      O => i_can_btl_Mcompar_sync_window_inst_cy_43
    );
  i_can_btl_Mcompar_n0034_inst_cy_88_11 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0034_inst_cy_87,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0034_inst_lut4_11,
      O => i_can_btl_Mcompar_n0034_inst_cy_88
    );
  i_can_btl_Madd_n0044_inst_cy_57 : X_MUX2
    port map (
      IB => i_can_btl_Madd_n0044_inst_cy_56,
      IA => i_can_btl_delay(3),
      SEL => i_can_btl_Madd_n0044_inst_lut2_46,
      O => i_can_btl_n0098(4)
    );
  i_can_btl_Madd_n0043_Mxor_Result_1_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(6),
      ADR1 => i_can_registers_BUS_TIMING_0_REG_data_out(7),
      O => i_can_btl_n0102(1)
    );
  i_can_btl_Msub_n0000_inst_sum_38 : X_XOR2
    port map (
      I0 => N23149,
      I1 => i_can_btl_Msub_n0000_inst_cy_65,
      O => i_can_btl_n0000(8)
    );
  i_can_btl_Mmux_n0021_Result1 : X_LUT4
    generic map(
      INIT => X"FD80"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_1_REG_data_out(7),
      ADR1 => i_can_btl_sample(0),
      ADR2 => i_can_btl_sample(1),
      ADR3 => rx_i_IBUF,
      O => i_can_btl_n0021
    );
  i_can_bsp_Ker342291 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(2),
      ADR1 => i_can_bsp_header_cnt(0),
      ADR2 => i_can_bsp_header_cnt(1),
      O => i_can_bsp_N34231
    );
  i_can_bsp_arbitration_field_12 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_rx_ide,
      ADR1 => i_can_bsp_rx_id2,
      ADR2 => i_can_bsp_rx_rtr2,
      ADR3 => N42398,
      O => i_can_bsp_arbitration_field
    );
  i_can_btl_n00821 : X_LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      ADR0 => i_can_btl_clk_en,
      ADR1 => hard_sync,
      ADR2 => i_can_btl_seg1,
      ADR3 => i_can_btl_n0034,
      O => i_can_btl_n0082
    );
  i_can_btl_n00811 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_btl_n0041,
      ADR1 => i_can_btl_N28750,
      ADR2 => i_can_btl_seg1,
      O => i_can_btl_n0081
    );
  i_can_bsp_n01351 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => N54688,
      ADR1 => i_can_registers_N31898,
      ADR2 => addr_latched_0_1,
      ADR3 => i_can_registers_N31603,
      O => i_can_bsp_n0135
    );
  i_can_btl_resync_blocked_13 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_registers_MODE_REG0_data_out_0_1,
      CE => i_can_btl_n0084,
      SET => i_can_btl_resync_blocked_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_resync_blocked,
      RST => GND
    );
  i_can_btl_sync_blocked_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_n0033,
      CE => i_can_btl_n0083,
      RST => i_can_btl_sync_blocked_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_sync_blocked,
      SET => GND
    );
  i_can_btl_sample_point_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_N28750,
      CE => i_can_btl_n0082,
      RST => i_can_btl_sample_point_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_sample_point,
      SET => GND
    );
  i_can_btl_sampled_bit_q_16 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_btl_sampled_bit_1,
      CE => i_can_btl_n0081,
      SET => i_can_btl_sampled_bit_q_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_sampled_bit_q,
      RST => GND
    );
  i_can_btl_sampled_bit_17 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_btl_n0021,
      CE => i_can_btl_n0081,
      SET => i_can_btl_sampled_bit_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_sampled_bit,
      RST => GND
    );
  i_can_btl_delay_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_n0019(3),
      CE => i_can_btl_n0080,
      RST => i_can_btl_delay_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_delay(3),
      SET => GND
    );
  i_can_btl_quant_cnt_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_quant_cnt_inst_sum_45,
      CE => i_can_btl_n0078,
      RST => i_can_btl_quant_cnt_5_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_quant_cnt(5)
    );
  i_can_btl_seg2_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_go_seg2,
      CE => i_can_btl_n0077,
      RST => i_can_btl_seg2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_seg2,
      SET => GND
    );
  i_can_btl_n00801 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => i_can_btl_n0029,
      O => i_can_btl_n0080
    );
  i_can_registers_data_out_tmp_6_83_SW0 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_2_1,
      ADR2 => i_can_registers_arbitration_lost_irq,
      ADR3 => i_can_registers_BUS_TIMING_0_REG_data_out(6),
      O => N55698
    );
  i_can_bsp_n06431 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_go_rx_crc,
      ADR2 => hard_sync,
      ADR3 => i_can_bsp_go_tx,
      O => i_can_bsp_n0643
    );
  i_can_btl_n00751 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_sync1_2,
      O => i_can_btl_n0075
    );
  i_can_btl_n00741 : X_LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      ADR0 => i_can_btl_sync_window,
      ADR1 => i_can_btl_resync,
      ADR2 => i_can_btl_seg2,
      ADR3 => i_can_btl_go_seg1,
      O => i_can_btl_n0074
    );
  i_can_btl_seg1_19 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_btl_go_seg1,
      CE => i_can_btl_n0076,
      SET => i_can_btl_seg1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_seg1,
      RST => GND
    );
  i_can_btl_sync_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_go_sync1_2,
      CE => i_can_btl_n0075,
      RST => i_can_btl_sync_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_sync,
      SET => GND
    );
  i_can_btl_resync_latched_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_n0028,
      CE => i_can_btl_n0074,
      RST => i_can_btl_resync_latched_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_resync_latched,
      SET => GND
    );
  i_can_btl_clk_en_22 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_n0007,
      RST => i_can_btl_clk_en_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_clk_en,
      CE => VCC,
      SET => GND
    );
  i_can_btl_clk_cnt_14_23 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_clk_cnt_inst_sum_54,
      CE => N23149,
      RST => i_can_btl_clk_cnt_14_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_clk_cnt_14
    );
  i_can_btl_sample_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => rx_i_IBUF,
      CE => i_can_btl_clk_en,
      SET => i_can_btl_sample_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_sample(0),
      RST => GND
    );
  i_can_btl_sample_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_btl_sample(0),
      CE => i_can_btl_clk_en,
      SET => i_can_btl_sample_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_sample(1),
      RST => GND
    );
  i_can_btl_Mcompar_n0035_inst_cy_89_24 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0035_inst_cy_88,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0035_inst_lut4_12,
      O => i_can_btl_Mcompar_n0035_inst_cy_89
    );
  i_can_btl_delay_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_n0019(0),
      CE => i_can_btl_n0080,
      RST => i_can_btl_delay_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_delay(0),
      SET => GND
    );
  i_can_btl_delay_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_n0019(1),
      CE => i_can_btl_n0080,
      RST => i_can_btl_delay_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_delay(1),
      SET => GND
    );
  i_can_btl_delay_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_n0019(2),
      CE => i_can_btl_n0080,
      RST => i_can_btl_delay_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_delay(2),
      SET => GND
    );
  i_can_btl_n00281 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_btl_sync_window,
      ADR1 => i_can_btl_resync,
      ADR2 => i_can_btl_seg2,
      O => i_can_btl_n0028
    );
  i_can_btl_n00291 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_btl_seg1,
      ADR1 => i_can_btl_clk_en,
      ADR2 => i_can_btl_resync,
      O => i_can_btl_n0029
    );
  i_can_btl_Mcompar_n0034_inst_cy_89_25 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0034_inst_cy_88,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0034_inst_lut4_12,
      O => i_can_btl_Mcompar_n0034_inst_cy_89
    );
  i_can_btl_Mcompar_n0042_inst_lut4_11 : X_LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(3),
      ADR1 => i_can_registers_BUS_TIMING_1_REG_data_out(6),
      ADR2 => i_can_btl_quant_cnt(2),
      O => i_can_btl_Mcompar_n0042_inst_lut4_1
    );
  i_can_btl_Madd_n0043_n00031 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(6),
      O => i_can_btl_n0102(0),
      ADR1 => GND
    );
  i_can_btl_Madd_n0043_Cout1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(7),
      ADR1 => i_can_registers_BUS_TIMING_0_REG_data_out(6),
      O => i_can_btl_n0102(2)
    );
  i_can_btl_Mcompar_n0042_inst_cy_10 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0042_inst_cy_9,
      IA => N23149,
      SEL => i_can_btl_Mcompar_n0042_inst_lut4_3,
      O => i_can_btl_n0042
    );
  i_can_btl_Mcompar_n0035_inst_cy_90 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0035_inst_cy_89,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0035_inst_lut4_13,
      O => i_can_btl_n0035
    );
  i_can_btl_Mcompar_n0042_inst_lut4_01 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(0),
      ADR1 => i_can_registers_BUS_TIMING_1_REG_data_out(4),
      ADR2 => i_can_btl_quant_cnt(1),
      ADR3 => i_can_registers_BUS_TIMING_1_REG_data_out(5),
      O => i_can_btl_Mcompar_n0042_inst_lut4_0
    );
  i_can_btl_Mcompar_n0042_inst_cy_7_26 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_btl_Mcompar_n0042_inst_lut4_0,
      O => i_can_btl_Mcompar_n0042_inst_cy_7
    );
  i_can_bsp_n06855 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_bsp_delayed_dominant_cnt(0),
      ADR1 => i_can_bsp_delayed_dominant_cnt(1),
      ADR2 => i_can_bsp_delayed_dominant_cnt(2),
      ADR3 => i_can_bsp_N34319,
      O => CHOICE1835
    );
  i_can_btl_Mcompar_n0042_inst_cy_8_27 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0042_inst_cy_7,
      IA => N23149,
      SEL => i_can_btl_Mcompar_n0042_inst_lut4_1,
      O => i_can_btl_Mcompar_n0042_inst_cy_8
    );
  i_can_btl_Mcompar_n0042_inst_lut4_21 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(4),
      ADR1 => N23151,
      ADR2 => i_can_btl_quant_cnt(5),
      ADR3 => N23151,
      O => i_can_btl_Mcompar_n0042_inst_lut4_2
    );
  i_can_btl_Mcompar_n0042_inst_cy_9_28 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0042_inst_cy_8,
      IA => N23149,
      SEL => i_can_btl_Mcompar_n0042_inst_lut4_2,
      O => i_can_btl_Mcompar_n0042_inst_cy_9
    );
  i_can_btl_Mcompar_n0041_inst_lut4_31 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(6),
      ADR1 => N23151,
      ADR2 => i_can_btl_quant_cnt(7),
      ADR3 => N23151,
      O => i_can_btl_Mcompar_n0041_inst_lut4_3
    );
  i_can_btl_Mcompar_n0041_inst_cy_10 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0041_inst_cy_9,
      IA => N23149,
      SEL => i_can_btl_Mcompar_n0041_inst_lut4_3,
      O => i_can_btl_n0041
    );
  i_can_btl_Mcompar_n0041_inst_lut4_01 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(0),
      ADR1 => i_can_btl_Madd_n0044_inst_lut2_43,
      ADR2 => i_can_btl_quant_cnt(1),
      ADR3 => i_can_btl_n0098(1),
      O => i_can_btl_Mcompar_n0041_inst_lut4_0
    );
  i_can_btl_Mcompar_n0041_inst_cy_7_29 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_btl_Mcompar_n0041_inst_lut4_0,
      O => i_can_btl_Mcompar_n0041_inst_cy_7
    );
  i_can_btl_Mcompar_n0041_inst_lut4_11 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(2),
      ADR1 => i_can_btl_n0098(2),
      ADR2 => i_can_btl_quant_cnt(3),
      ADR3 => i_can_btl_n0098(3),
      O => i_can_btl_Mcompar_n0041_inst_lut4_1
    );
  i_can_btl_Mcompar_n0041_inst_cy_8_30 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0041_inst_cy_7,
      IA => N23149,
      SEL => i_can_btl_Mcompar_n0041_inst_lut4_1,
      O => i_can_btl_Mcompar_n0041_inst_cy_8
    );
  i_can_bsp_n06221 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_id2,
      ADR1 => i_can_bsp_go_rx_r0,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => N55662,
      O => i_can_bsp_n0622
    );
  i_can_btl_Madd_n0038_inst_cy_13_31 : X_MUX2
    port map (
      IB => i_can_btl_Madd_n0038_inst_cy_12,
      IA => N23151,
      SEL => i_can_btl_quant_cnt_2_rt,
      O => i_can_btl_Madd_n0038_inst_cy_13
    );
  i_can_btl_Madd_n0038_inst_sum_9 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_2_rt,
      I1 => i_can_btl_Madd_n0038_inst_cy_12,
      O => i_can_btl_n0038(2)
    );
  i_can_btl_Madd_n0038_inst_lut2_61 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(0),
      O => i_can_btl_Madd_n0038_inst_lut2_6,
      ADR1 => GND
    );
  i_can_btl_Madd_n0038_inst_cy_11_32 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_btl_Madd_n0038_inst_lut2_6,
      O => i_can_btl_Madd_n0038_inst_cy_11
    );
  i_can_btl_Madd_n0038_inst_sum_10 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_3_rt,
      I1 => i_can_btl_Madd_n0038_inst_cy_13,
      O => i_can_btl_n0038(3)
    );
  i_can_btl_Madd_n0038_inst_cy_12_33 : X_MUX2
    port map (
      IB => i_can_btl_Madd_n0038_inst_cy_11,
      IA => N23151,
      SEL => i_can_btl_quant_cnt_1_rt,
      O => i_can_btl_Madd_n0038_inst_cy_12
    );
  i_can_btl_Madd_n0038_inst_sum_8 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_1_rt,
      I1 => i_can_btl_Madd_n0038_inst_cy_11,
      O => i_can_btl_n0038(1)
    );
  i_can_btl_Mcompar_n0030_inst_lut2_1711 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(7),
      O => i_can_btl_Mcompar_n0030_inst_lut2_17,
      ADR1 => GND
    );
  i_can_btl_Mcompar_n0030_inst_cy_22 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0030_inst_cy_21,
      IA => i_can_btl_quant_cnt(7),
      SEL => i_can_btl_Mcompar_n0030_inst_lut2_17,
      O => i_can_btl_n0030
    );
  i_can_btl_Mcompar_n0030_inst_lut2_101 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(0),
      ADR1 => i_can_registers_BUS_TIMING_0_REG_data_out(6),
      O => i_can_btl_Mcompar_n0030_inst_lut2_10
    );
  i_can_btl_Mcompar_n0030_inst_cy_15_34 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_btl_quant_cnt(0),
      SEL => i_can_btl_Mcompar_n0030_inst_lut2_10,
      O => i_can_btl_Mcompar_n0030_inst_cy_15
    );
  i_can_btl_Mcompar_n0030_inst_lut2_111 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(1),
      ADR1 => i_can_registers_BUS_TIMING_0_REG_data_out(7),
      O => i_can_btl_Mcompar_n0030_inst_lut2_11
    );
  i_can_btl_Mcompar_n0030_inst_cy_16_35 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0030_inst_cy_15,
      IA => i_can_btl_quant_cnt(1),
      SEL => i_can_btl_Mcompar_n0030_inst_lut2_11,
      O => i_can_btl_Mcompar_n0030_inst_cy_16
    );
  i_can_btl_Mcompar_n0030_inst_lut2_1211 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(2),
      O => i_can_btl_Mcompar_n0030_inst_lut2_12,
      ADR1 => GND
    );
  i_can_btl_Mcompar_n0030_inst_cy_17_36 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0030_inst_cy_16,
      IA => i_can_btl_quant_cnt(2),
      SEL => i_can_btl_Mcompar_n0030_inst_lut2_12,
      O => i_can_btl_Mcompar_n0030_inst_cy_17
    );
  i_can_btl_Mcompar_n0030_inst_lut2_1311 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(3),
      O => i_can_btl_Mcompar_n0030_inst_lut2_13,
      ADR1 => GND
    );
  i_can_btl_Mcompar_n0030_inst_cy_18_37 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0030_inst_cy_17,
      IA => i_can_btl_quant_cnt(3),
      SEL => i_can_btl_Mcompar_n0030_inst_lut2_13,
      O => i_can_btl_Mcompar_n0030_inst_cy_18
    );
  i_can_btl_Mcompar_n0030_inst_lut2_1411 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(4),
      O => i_can_btl_Mcompar_n0030_inst_lut2_14,
      ADR1 => GND
    );
  i_can_btl_Mcompar_n0030_inst_cy_19_38 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0030_inst_cy_18,
      IA => i_can_btl_quant_cnt(4),
      SEL => i_can_btl_Mcompar_n0030_inst_lut2_14,
      O => i_can_btl_Mcompar_n0030_inst_cy_19
    );
  i_can_btl_Mcompar_n0030_inst_lut2_1511 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(5),
      O => i_can_btl_Mcompar_n0030_inst_lut2_15,
      ADR1 => GND
    );
  i_can_btl_Mcompar_n0030_inst_cy_20_39 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0030_inst_cy_19,
      IA => i_can_btl_quant_cnt(5),
      SEL => i_can_btl_Mcompar_n0030_inst_lut2_15,
      O => i_can_btl_Mcompar_n0030_inst_cy_20
    );
  i_can_btl_Mcompar_n0030_inst_lut2_1611 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(6),
      O => i_can_btl_Mcompar_n0030_inst_lut2_16,
      ADR1 => GND
    );
  i_can_btl_Mcompar_n0007_inst_lut4_911 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_n0000(9),
      O => i_can_btl_Mcompar_n0007_inst_lut4_9,
      ADR1 => GND
    );
  i_can_btl_Mcompar_n0007_inst_cy_28 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0007_inst_cy_27,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0007_inst_lut4_9,
      O => i_can_btl_n0007
    );
  i_can_bsp_Mmux_n0008_inst_lut3_851 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(7),
      O => i_can_bsp_Mmux_n0008_net86
    );
  i_can_btl_Mcompar_n0007_inst_cy_23_40 : X_MUX2
    port map (
      IB => N23149,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0007_inst_lut4_4,
      O => i_can_btl_Mcompar_n0007_inst_cy_23
    );
  i_can_btl_Mcompar_n0007_inst_lut4_51 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_clk_cnt_10,
      ADR1 => i_can_btl_n0000(2),
      ADR2 => i_can_btl_clk_cnt_11,
      ADR3 => i_can_btl_n0000(3),
      O => i_can_btl_Mcompar_n0007_inst_lut4_5
    );
  i_can_btl_Mcompar_n0007_inst_cy_24_41 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0007_inst_cy_23,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0007_inst_lut4_5,
      O => i_can_btl_Mcompar_n0007_inst_cy_24
    );
  i_can_btl_Mcompar_n0007_inst_lut4_61 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_clk_cnt_12,
      ADR1 => i_can_btl_n0000(4),
      ADR2 => i_can_btl_clk_cnt_13,
      ADR3 => i_can_btl_n0000(5),
      O => i_can_btl_Mcompar_n0007_inst_lut4_6
    );
  i_can_btl_Mcompar_n0007_inst_cy_25_42 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0007_inst_cy_24,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0007_inst_lut4_6,
      O => i_can_btl_Mcompar_n0007_inst_cy_25
    );
  i_can_btl_Mcompar_n0007_inst_lut4_71 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_clk_cnt_14,
      ADR1 => i_can_btl_n0000(6),
      ADR2 => i_can_btl_clk_cnt_15,
      ADR3 => i_can_btl_n0000(7),
      O => i_can_btl_Mcompar_n0007_inst_lut4_7
    );
  i_can_btl_Mcompar_n0007_inst_cy_26_43 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0007_inst_cy_25,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0007_inst_lut4_7,
      O => i_can_btl_Mcompar_n0007_inst_cy_26
    );
  i_can_bsp_arbitration_lost_capture_inst_lut3_371 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => read_arbitration_lost_capture_reg,
      ADR1 => i_can_bsp_arbitration_lost_capture_30,
      O => i_can_bsp_arbitration_lost_capture_inst_lut3_37
    );
  i_can_btl_Madd_n0045_inst_sum_14 : X_XOR2
    port map (
      I0 => baud_r_presc_3_rt,
      I1 => i_can_btl_Madd_n0045_inst_cy_31,
      O => i_can_btl_preset_cnt(4)
    );
  i_can_btl_Madd_n0045_inst_sum_15 : X_XOR2
    port map (
      I0 => baud_r_presc_4_rt,
      I1 => i_can_btl_Madd_n0045_inst_cy_32,
      O => i_can_btl_preset_cnt(5)
    );
  i_can_btl_Madd_n0045_inst_lut2_181 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(0),
      O => i_can_btl_Madd_n0045_inst_lut2_18,
      ADR1 => GND
    );
  i_can_btl_Madd_n0045_inst_cy_29_44 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_btl_Madd_n0045_inst_lut2_18,
      O => i_can_btl_Madd_n0045_inst_cy_29
    );
  i_can_bsp_Ker342596 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(1),
      ADR1 => i_can_bsp_rx_err_cnt(2),
      O => CHOICE1658
    );
  i_can_btl_Madd_n0045_inst_sum_16 : X_XOR2
    port map (
      I0 => baud_r_presc_5_rt,
      I1 => i_can_btl_Madd_n0045_inst_cy_33,
      O => i_can_btl_preset_cnt(6)
    );
  i_can_btl_Madd_n0045_inst_cy_30_45 : X_MUX2
    port map (
      IB => i_can_btl_Madd_n0045_inst_cy_29,
      IA => N23151,
      SEL => baud_r_presc_1_rt,
      O => i_can_btl_Madd_n0045_inst_cy_30
    );
  i_can_btl_Madd_n0045_inst_sum_12 : X_XOR2
    port map (
      I0 => baud_r_presc_1_rt,
      I1 => i_can_btl_Madd_n0045_inst_cy_29,
      O => i_can_btl_preset_cnt(2)
    );
  i_can_btl_Madd_n0045_inst_cy_34 : X_MUX2
    port map (
      IB => i_can_btl_Madd_n0045_inst_cy_33,
      IA => N23151,
      SEL => baud_r_presc_5_rt,
      O => i_can_btl_preset_cnt(7)
    );
  i_can_btl_Madd_n0045_inst_cy_31_46 : X_MUX2
    port map (
      IB => i_can_btl_Madd_n0045_inst_cy_30,
      IA => N23151,
      SEL => baud_r_presc_2_rt,
      O => i_can_btl_Madd_n0045_inst_cy_31
    );
  i_can_btl_Madd_n0045_inst_sum_13 : X_XOR2
    port map (
      I0 => baud_r_presc_2_rt,
      I1 => i_can_btl_Madd_n0045_inst_cy_30,
      O => i_can_btl_preset_cnt(3)
    );
  i_can_btl_Madd_n0045_inst_cy_33_47 : X_MUX2
    port map (
      IB => i_can_btl_Madd_n0045_inst_cy_32,
      IA => N23151,
      SEL => baud_r_presc_4_rt,
      O => i_can_btl_Madd_n0045_inst_cy_33
    );
  i_can_btl_Mcompar_sync_window_inst_lut2_3311 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_n0003(8),
      O => i_can_btl_Mcompar_sync_window_inst_lut2_33,
      ADR1 => GND
    );
  i_can_btl_Mcompar_sync_window_inst_cy_44 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_sync_window_inst_cy_43,
      IA => N23151,
      SEL => i_can_btl_Mcompar_sync_window_inst_lut2_33,
      O => i_can_btl_sync_window
    );
  i_can_bsp_arbitration_lost_capture_inst_lut3_381 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => read_arbitration_lost_capture_reg,
      ADR1 => i_can_bsp_arbitration_lost_capture_31,
      O => i_can_bsp_arbitration_lost_capture_inst_lut3_38
    );
  i_can_btl_Mcompar_sync_window_inst_cy_35_48 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_btl_n0102(0),
      SEL => i_can_btl_Mcompar_sync_window_inst_lut2_24,
      O => i_can_btl_Mcompar_sync_window_inst_cy_35
    );
  i_can_btl_Mcompar_sync_window_inst_cy_36_49 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_sync_window_inst_cy_35,
      IA => i_can_btl_n0102(1),
      SEL => i_can_btl_Mcompar_sync_window_inst_lut2_25,
      O => i_can_btl_Mcompar_sync_window_inst_cy_36
    );
  i_can_btl_Mcompar_sync_window_inst_lut2_251 : X_LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(6),
      ADR1 => i_can_registers_BUS_TIMING_0_REG_data_out(7),
      ADR2 => i_can_btl_n0003(1),
      O => i_can_btl_Mcompar_sync_window_inst_lut2_25
    );
  i_can_btl_Mcompar_sync_window_inst_cy_37_50 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_sync_window_inst_cy_36,
      IA => i_can_btl_n0102(2),
      SEL => i_can_btl_Mcompar_sync_window_inst_lut2_26,
      O => i_can_btl_Mcompar_sync_window_inst_cy_37
    );
  i_can_btl_Mcompar_sync_window_inst_lut2_2711 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_n0003(3),
      O => i_can_btl_Mcompar_sync_window_inst_lut2_27,
      ADR1 => GND
    );
  i_can_btl_Mcompar_sync_window_inst_cy_38_51 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_sync_window_inst_cy_37,
      IA => N23151,
      SEL => i_can_btl_Mcompar_sync_window_inst_lut2_27,
      O => i_can_btl_Mcompar_sync_window_inst_cy_38
    );
  i_can_btl_Mcompar_sync_window_inst_lut2_2811 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_n0003(4),
      O => i_can_btl_Mcompar_sync_window_inst_lut2_28,
      ADR1 => GND
    );
  i_can_btl_Mcompar_sync_window_inst_cy_39_52 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_sync_window_inst_cy_38,
      IA => N23151,
      SEL => i_can_btl_Mcompar_sync_window_inst_lut2_28,
      O => i_can_btl_Mcompar_sync_window_inst_cy_39
    );
  i_can_btl_Mcompar_sync_window_inst_lut2_2911 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_n0003(5),
      O => i_can_btl_Mcompar_sync_window_inst_lut2_29,
      ADR1 => GND
    );
  i_can_btl_Mcompar_sync_window_inst_cy_40_53 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_sync_window_inst_cy_39,
      IA => N23151,
      SEL => i_can_btl_Mcompar_sync_window_inst_lut2_29,
      O => i_can_btl_Mcompar_sync_window_inst_cy_40
    );
  i_can_btl_Mcompar_sync_window_inst_lut2_3011 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_n0003(6),
      O => i_can_btl_Mcompar_sync_window_inst_lut2_30,
      ADR1 => GND
    );
  i_can_btl_Mcompar_sync_window_inst_cy_41_54 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_sync_window_inst_cy_40,
      IA => N23151,
      SEL => i_can_btl_Mcompar_sync_window_inst_lut2_30,
      O => i_can_btl_Mcompar_sync_window_inst_cy_41
    );
  i_can_btl_Mcompar_sync_window_inst_lut2_3111 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_n0003(7),
      O => i_can_btl_Mcompar_sync_window_inst_lut2_31,
      ADR1 => GND
    );
  i_can_btl_Mcompar_sync_window_inst_cy_42_55 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_sync_window_inst_cy_41,
      IA => N23151,
      SEL => i_can_btl_Mcompar_sync_window_inst_lut2_31,
      O => i_can_btl_Mcompar_sync_window_inst_cy_42
    );
  i_can_btl_Mcompar_sync_window_inst_lut2_3211 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_n0003(8),
      O => i_can_btl_Mcompar_sync_window_inst_lut2_32,
      ADR1 => GND
    );
  i_can_btl_Mcompar_n0034_inst_lut4_111 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(2),
      ADR1 => i_can_btl_n0098(2),
      ADR2 => i_can_btl_quant_cnt(3),
      ADR3 => i_can_btl_n0098(3),
      O => i_can_btl_Mcompar_n0034_inst_lut4_11
    );
  i_can_btl_Msub_n0003_inst_sum_25 : X_XOR2
    port map (
      I0 => N23149,
      I1 => i_can_btl_Msub_n0003_inst_cy_52,
      O => i_can_btl_n0003(8)
    );
  i_can_btl_Msub_n0003_inst_lut2_341 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_1_REG_data_out(4),
      ADR1 => i_can_btl_quant_cnt(0),
      O => i_can_btl_Msub_n0003_inst_lut2_34
    );
  i_can_btl_Msub_n0003_inst_cy_45_56 : X_MUX2
    port map (
      IB => N23149,
      IA => i_can_registers_BUS_TIMING_1_REG_data_out(4),
      SEL => i_can_btl_Msub_n0003_inst_lut2_34,
      O => i_can_btl_Msub_n0003_inst_cy_45
    );
  i_can_btl_Msub_n0003_inst_sum_17 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0003_inst_lut2_34,
      I1 => N23149,
      O => i_can_btl_n0003(0)
    );
  i_can_btl_Msub_n0003_inst_lut2_351 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_1_REG_data_out(5),
      ADR1 => i_can_btl_quant_cnt(1),
      O => i_can_btl_Msub_n0003_inst_lut2_35
    );
  i_can_btl_Msub_n0003_inst_cy_46_57 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0003_inst_cy_45,
      IA => i_can_registers_BUS_TIMING_1_REG_data_out(5),
      SEL => i_can_btl_Msub_n0003_inst_lut2_35,
      O => i_can_btl_Msub_n0003_inst_cy_46
    );
  i_can_btl_Msub_n0003_inst_sum_18 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0003_inst_lut2_35,
      I1 => i_can_btl_Msub_n0003_inst_cy_45,
      O => i_can_btl_n0003(1)
    );
  i_can_btl_Msub_n0003_inst_lut2_361 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_1_REG_data_out(6),
      ADR1 => i_can_btl_quant_cnt(2),
      O => i_can_btl_Msub_n0003_inst_lut2_36
    );
  i_can_btl_Msub_n0003_inst_cy_47_58 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0003_inst_cy_46,
      IA => i_can_registers_BUS_TIMING_1_REG_data_out(6),
      SEL => i_can_btl_Msub_n0003_inst_lut2_36,
      O => i_can_btl_Msub_n0003_inst_cy_47
    );
  i_can_btl_Msub_n0003_inst_sum_19 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0003_inst_lut2_36,
      I1 => i_can_btl_Msub_n0003_inst_cy_46,
      O => i_can_btl_n0003(2)
    );
  i_can_btl_Msub_n0003_inst_lut2_3711 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(3),
      O => i_can_btl_Msub_n0003_inst_lut2_37,
      ADR1 => GND
    );
  i_can_btl_Msub_n0003_inst_cy_48_59 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0003_inst_cy_47,
      IA => N23151,
      SEL => i_can_btl_Msub_n0003_inst_lut2_37,
      O => i_can_btl_Msub_n0003_inst_cy_48
    );
  i_can_btl_Msub_n0003_inst_sum_20 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0003_inst_lut2_37,
      I1 => i_can_btl_Msub_n0003_inst_cy_47,
      O => i_can_btl_n0003(3)
    );
  i_can_btl_Msub_n0003_inst_lut2_3811 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(4),
      O => i_can_btl_Msub_n0003_inst_lut2_38,
      ADR1 => GND
    );
  i_can_btl_Msub_n0003_inst_cy_49_60 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0003_inst_cy_48,
      IA => N23151,
      SEL => i_can_btl_Msub_n0003_inst_lut2_38,
      O => i_can_btl_Msub_n0003_inst_cy_49
    );
  i_can_btl_Msub_n0003_inst_sum_21 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0003_inst_lut2_38,
      I1 => i_can_btl_Msub_n0003_inst_cy_48,
      O => i_can_btl_n0003(4)
    );
  i_can_btl_Msub_n0003_inst_lut2_3911 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(5),
      O => i_can_btl_Msub_n0003_inst_lut2_39,
      ADR1 => GND
    );
  i_can_btl_Msub_n0003_inst_cy_50_61 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0003_inst_cy_49,
      IA => N23151,
      SEL => i_can_btl_Msub_n0003_inst_lut2_39,
      O => i_can_btl_Msub_n0003_inst_cy_50
    );
  i_can_btl_Msub_n0003_inst_sum_22 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0003_inst_lut2_39,
      I1 => i_can_btl_Msub_n0003_inst_cy_49,
      O => i_can_btl_n0003(5)
    );
  i_can_btl_Msub_n0003_inst_lut2_4011 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(6),
      O => i_can_btl_Msub_n0003_inst_lut2_40,
      ADR1 => GND
    );
  i_can_btl_Msub_n0003_inst_cy_51_62 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0003_inst_cy_50,
      IA => N23151,
      SEL => i_can_btl_Msub_n0003_inst_lut2_40,
      O => i_can_btl_Msub_n0003_inst_cy_51
    );
  i_can_btl_Msub_n0003_inst_sum_23 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0003_inst_lut2_40,
      I1 => i_can_btl_Msub_n0003_inst_cy_50,
      O => i_can_btl_n0003(6)
    );
  i_can_btl_Msub_n0003_inst_lut2_4111 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(7),
      O => i_can_btl_Msub_n0003_inst_lut2_41,
      ADR1 => GND
    );
  i_can_btl_Msub_n0003_inst_cy_52_63 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0003_inst_cy_51,
      IA => N23151,
      SEL => i_can_btl_Msub_n0003_inst_lut2_41,
      O => i_can_btl_Msub_n0003_inst_cy_52
    );
  i_can_btl_Msub_n0003_inst_sum_24 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0003_inst_lut2_41,
      I1 => i_can_btl_Msub_n0003_inst_cy_51,
      O => i_can_btl_n0003(7)
    );
  i_can_btl_Madd_n0044_inst_sum_29 : X_XOR2
    port map (
      I0 => i_can_btl_Madd_n0044_inst_lut2_46,
      I1 => i_can_btl_Madd_n0044_inst_cy_56,
      O => i_can_btl_n0098(3)
    );
  i_can_btl_Madd_n0044_inst_lut2_431 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_btl_delay(0),
      ADR1 => i_can_registers_BUS_TIMING_1_REG_data_out(0),
      O => i_can_btl_Madd_n0044_inst_lut2_43
    );
  i_can_btl_Madd_n0044_inst_cy_54_64 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_btl_delay(0),
      SEL => i_can_btl_Madd_n0044_inst_lut2_43,
      O => i_can_btl_Madd_n0044_inst_cy_54
    );
  i_can_bsp_rst_tx_pointer26 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_23,
      ADR1 => i_can_bsp_tx_pointer_25,
      O => CHOICE1798
    );
  i_can_btl_Madd_n0044_inst_lut2_441 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_btl_delay(1),
      ADR1 => i_can_registers_BUS_TIMING_1_REG_data_out(1),
      O => i_can_btl_Madd_n0044_inst_lut2_44
    );
  i_can_btl_Madd_n0044_inst_cy_55_65 : X_MUX2
    port map (
      IB => i_can_btl_Madd_n0044_inst_cy_54,
      IA => i_can_btl_delay(1),
      SEL => i_can_btl_Madd_n0044_inst_lut2_44,
      O => i_can_btl_Madd_n0044_inst_cy_55
    );
  i_can_btl_Madd_n0044_inst_sum_27 : X_XOR2
    port map (
      I0 => i_can_btl_Madd_n0044_inst_lut2_44,
      I1 => i_can_btl_Madd_n0044_inst_cy_54,
      O => i_can_btl_n0098(1)
    );
  i_can_btl_Madd_n0044_inst_lut2_451 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_btl_delay(2),
      ADR1 => i_can_registers_BUS_TIMING_1_REG_data_out(2),
      O => i_can_btl_Madd_n0044_inst_lut2_45
    );
  i_can_btl_Madd_n0044_inst_cy_56_66 : X_MUX2
    port map (
      IB => i_can_btl_Madd_n0044_inst_cy_55,
      IA => i_can_btl_delay(2),
      SEL => i_can_btl_Madd_n0044_inst_lut2_45,
      O => i_can_btl_Madd_n0044_inst_cy_56
    );
  i_can_btl_Madd_n0044_inst_sum_28 : X_XOR2
    port map (
      I0 => i_can_btl_Madd_n0044_inst_lut2_45,
      I1 => i_can_btl_Madd_n0044_inst_cy_55,
      O => i_can_btl_n0098(2)
    );
  i_can_btl_Madd_n0044_inst_lut2_461 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_btl_delay(3),
      ADR1 => i_can_registers_BUS_TIMING_1_REG_data_out(3),
      O => i_can_btl_Madd_n0044_inst_lut2_46
    );
  i_can_btl_Mcompar_n0034_inst_cy_87_67 : X_MUX2
    port map (
      IB => N23149,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0034_inst_lut4_10,
      O => i_can_btl_Mcompar_n0034_inst_cy_87
    );
  i_can_btl_Mcompar_n0034_inst_lut4_101 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(0),
      ADR1 => i_can_btl_Madd_n0044_inst_lut2_43,
      ADR2 => i_can_btl_quant_cnt(1),
      ADR3 => i_can_btl_n0098(1),
      O => i_can_btl_Mcompar_n0034_inst_lut4_10
    );
  i_can_btl_Msub_n0000_inst_sum_39 : X_XOR2
    port map (
      I0 => N23149,
      I1 => i_can_btl_Msub_n0000_inst_cy_66,
      O => i_can_btl_n0000(9)
    );
  i_can_btl_Mcompar_n0034_inst_cy_90 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0034_inst_cy_89,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0034_inst_lut4_13,
      O => i_can_btl_n0034
    );
  i_can_btl_Mcompar_n0034_inst_lut4_131 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(6),
      ADR1 => N23151,
      ADR2 => i_can_btl_quant_cnt(7),
      ADR3 => N23151,
      O => i_can_btl_Mcompar_n0034_inst_lut4_13
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_201 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG9_data_out(7),
      O => N54649
    );
  i_can_btl_Msub_n0000_inst_cy_59_68 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_btl_Madd_n0045_inst_lut2_18,
      SEL => i_can_registers_BUS_TIMING_0_REG_data_out(0),
      O => i_can_btl_Msub_n0000_inst_cy_59
    );
  i_can_bsp_n068579 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => we_tx_err_cnt,
      ADR1 => CHOICE1846,
      O => i_can_bsp_n0685
    );
  i_can_btl_Msub_n0000_inst_lut2_491 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_preset_cnt(2),
      O => i_can_btl_Msub_n0000_inst_lut2_49,
      ADR1 => GND
    );
  i_can_btl_Msub_n0000_inst_cy_60_69 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0000_inst_cy_59,
      IA => i_can_btl_preset_cnt(2),
      SEL => i_can_btl_Msub_n0000_inst_lut2_49,
      O => i_can_btl_Msub_n0000_inst_cy_60
    );
  i_can_btl_Msub_n0000_inst_sum_32 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0000_inst_lut2_49,
      I1 => i_can_btl_Msub_n0000_inst_cy_59,
      O => i_can_btl_n0000(2)
    );
  i_can_btl_Msub_n0000_inst_lut2_501 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_preset_cnt(3),
      O => i_can_btl_Msub_n0000_inst_lut2_50,
      ADR1 => GND
    );
  i_can_btl_Msub_n0000_inst_cy_61_70 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0000_inst_cy_60,
      IA => i_can_btl_preset_cnt(3),
      SEL => i_can_btl_Msub_n0000_inst_lut2_50,
      O => i_can_btl_Msub_n0000_inst_cy_61
    );
  i_can_btl_Msub_n0000_inst_sum_33 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0000_inst_lut2_50,
      I1 => i_can_btl_Msub_n0000_inst_cy_60,
      O => i_can_btl_n0000(3)
    );
  i_can_btl_Msub_n0000_inst_lut2_511 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_preset_cnt(4),
      O => i_can_btl_Msub_n0000_inst_lut2_51,
      ADR1 => GND
    );
  i_can_btl_Msub_n0000_inst_cy_62_71 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0000_inst_cy_61,
      IA => i_can_btl_preset_cnt(4),
      SEL => i_can_btl_Msub_n0000_inst_lut2_51,
      O => i_can_btl_Msub_n0000_inst_cy_62
    );
  i_can_btl_Msub_n0000_inst_sum_34 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0000_inst_lut2_51,
      I1 => i_can_btl_Msub_n0000_inst_cy_61,
      O => i_can_btl_n0000(4)
    );
  i_can_btl_Msub_n0000_inst_lut2_521 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_preset_cnt(5),
      O => i_can_btl_Msub_n0000_inst_lut2_52,
      ADR1 => GND
    );
  i_can_btl_Msub_n0000_inst_cy_63_72 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0000_inst_cy_62,
      IA => i_can_btl_preset_cnt(5),
      SEL => i_can_btl_Msub_n0000_inst_lut2_52,
      O => i_can_btl_Msub_n0000_inst_cy_63
    );
  i_can_btl_Msub_n0000_inst_sum_35 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0000_inst_lut2_52,
      I1 => i_can_btl_Msub_n0000_inst_cy_62,
      O => i_can_btl_n0000(5)
    );
  i_can_btl_Msub_n0000_inst_lut2_531 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_preset_cnt(6),
      O => i_can_btl_Msub_n0000_inst_lut2_53,
      ADR1 => GND
    );
  i_can_btl_Msub_n0000_inst_cy_64_73 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0000_inst_cy_63,
      IA => i_can_btl_preset_cnt(6),
      SEL => i_can_btl_Msub_n0000_inst_lut2_53,
      O => i_can_btl_Msub_n0000_inst_cy_64
    );
  i_can_btl_Msub_n0000_inst_sum_36 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0000_inst_lut2_53,
      I1 => i_can_btl_Msub_n0000_inst_cy_63,
      O => i_can_btl_n0000(6)
    );
  i_can_btl_Msub_n0000_inst_lut2_541 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_btl_preset_cnt(7),
      O => i_can_btl_Msub_n0000_inst_lut2_54,
      ADR1 => GND
    );
  i_can_btl_Msub_n0000_inst_cy_65_74 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0000_inst_cy_64,
      IA => i_can_btl_preset_cnt(7),
      SEL => i_can_btl_Msub_n0000_inst_lut2_54,
      O => i_can_btl_Msub_n0000_inst_cy_65
    );
  i_can_btl_Msub_n0000_inst_sum_37 : X_XOR2
    port map (
      I0 => i_can_btl_Msub_n0000_inst_lut2_54,
      I1 => i_can_btl_Msub_n0000_inst_cy_64,
      O => i_can_btl_n0000(7)
    );
  i_can_btl_Msub_n0000_inst_cy_66_75 : X_MUX2
    port map (
      IB => i_can_btl_Msub_n0000_inst_cy_65,
      IA => N23151,
      SEL => N23149,
      O => i_can_btl_Msub_n0000_inst_cy_66
    );
  i_can_btl_quant_cnt_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_quant_cnt_inst_sum_46,
      CE => i_can_btl_n0078,
      RST => i_can_btl_quant_cnt_6_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_quant_cnt(6)
    );
  i_can_btl_quant_cnt_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_quant_cnt_inst_sum_47,
      CE => i_can_btl_n0078,
      RST => i_can_btl_quant_cnt_7_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_quant_cnt(7)
    );
  i_can_btl_quant_cnt_inst_cy_68_76 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_btl_n0017,
      O => i_can_btl_quant_cnt_inst_cy_68
    );
  i_can_bsp_i_can_fifo_n00781 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => i_can_bsp_wr_fifo,
      ADR1 => i_can_bsp_i_can_fifo_N30666,
      ADR2 => i_can_registers_COMMAND_REG_data_out(0),
      O => i_can_bsp_i_can_fifo_n0078
    );
  i_can_btl_quant_cnt_inst_cy_69_77 : X_MUX2
    port map (
      IB => i_can_btl_quant_cnt_inst_cy_68,
      IA => N23151,
      SEL => i_can_btl_quant_cnt_inst_lut3_0,
      O => i_can_btl_quant_cnt_inst_cy_69
    );
  i_can_btl_quant_cnt_inst_sum_40_78 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_inst_lut3_0,
      I1 => i_can_btl_quant_cnt_inst_cy_68,
      O => i_can_btl_quant_cnt_inst_sum_40
    );
  i_can_btl_quant_cnt_inst_lut3_01 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_seg2,
      ADR2 => i_can_btl_go_sync1_2,
      ADR3 => i_can_btl_quant_cnt(0),
      O => i_can_btl_quant_cnt_inst_lut3_0
    );
  i_can_btl_quant_cnt_inst_cy_70_79 : X_MUX2
    port map (
      IB => i_can_btl_quant_cnt_inst_cy_69,
      IA => N23151,
      SEL => i_can_btl_quant_cnt_inst_lut3_1,
      O => i_can_btl_quant_cnt_inst_cy_70
    );
  i_can_btl_quant_cnt_inst_sum_41_80 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_inst_lut3_1,
      I1 => i_can_btl_quant_cnt_inst_cy_69,
      O => i_can_btl_quant_cnt_inst_sum_41
    );
  i_can_btl_quant_cnt_inst_lut3_11 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_seg2,
      ADR2 => i_can_btl_go_sync1_2,
      ADR3 => i_can_btl_quant_cnt(1),
      O => i_can_btl_quant_cnt_inst_lut3_1
    );
  i_can_btl_quant_cnt_inst_cy_71_81 : X_MUX2
    port map (
      IB => i_can_btl_quant_cnt_inst_cy_70,
      IA => N23151,
      SEL => i_can_btl_quant_cnt_inst_lut3_2,
      O => i_can_btl_quant_cnt_inst_cy_71
    );
  i_can_btl_quant_cnt_inst_sum_42_82 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_inst_lut3_2,
      I1 => i_can_btl_quant_cnt_inst_cy_70,
      O => i_can_btl_quant_cnt_inst_sum_42
    );
  i_can_btl_quant_cnt_inst_lut3_21 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_seg2,
      ADR2 => i_can_btl_go_sync1_2,
      ADR3 => i_can_btl_quant_cnt(2),
      O => i_can_btl_quant_cnt_inst_lut3_2
    );
  i_can_btl_quant_cnt_inst_cy_72_83 : X_MUX2
    port map (
      IB => i_can_btl_quant_cnt_inst_cy_71,
      IA => N23151,
      SEL => i_can_btl_quant_cnt_inst_lut3_3,
      O => i_can_btl_quant_cnt_inst_cy_72
    );
  i_can_btl_quant_cnt_inst_sum_43_84 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_inst_lut3_3,
      I1 => i_can_btl_quant_cnt_inst_cy_71,
      O => i_can_btl_quant_cnt_inst_sum_43
    );
  i_can_btl_quant_cnt_inst_lut3_31 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_seg2,
      ADR2 => i_can_btl_go_sync1_2,
      ADR3 => i_can_btl_quant_cnt(3),
      O => i_can_btl_quant_cnt_inst_lut3_3
    );
  i_can_btl_quant_cnt_inst_cy_73_85 : X_MUX2
    port map (
      IB => i_can_btl_quant_cnt_inst_cy_72,
      IA => N23151,
      SEL => i_can_btl_quant_cnt_inst_lut3_4,
      O => i_can_btl_quant_cnt_inst_cy_73
    );
  i_can_btl_quant_cnt_inst_sum_44_86 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_inst_lut3_4,
      I1 => i_can_btl_quant_cnt_inst_cy_72,
      O => i_can_btl_quant_cnt_inst_sum_44
    );
  i_can_btl_quant_cnt_inst_lut3_41 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_seg2,
      ADR2 => i_can_btl_go_sync1_2,
      ADR3 => i_can_btl_quant_cnt(4),
      O => i_can_btl_quant_cnt_inst_lut3_4
    );
  i_can_btl_quant_cnt_inst_cy_74_87 : X_MUX2
    port map (
      IB => i_can_btl_quant_cnt_inst_cy_73,
      IA => N23151,
      SEL => i_can_btl_quant_cnt_inst_lut3_5,
      O => i_can_btl_quant_cnt_inst_cy_74
    );
  i_can_btl_quant_cnt_inst_sum_45_88 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_inst_lut3_5,
      I1 => i_can_btl_quant_cnt_inst_cy_73,
      O => i_can_btl_quant_cnt_inst_sum_45
    );
  i_can_btl_quant_cnt_inst_lut3_51 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_seg2,
      ADR2 => i_can_btl_go_sync1_2,
      ADR3 => i_can_btl_quant_cnt(5),
      O => i_can_btl_quant_cnt_inst_lut3_5
    );
  i_can_btl_quant_cnt_inst_cy_75_89 : X_MUX2
    port map (
      IB => i_can_btl_quant_cnt_inst_cy_74,
      IA => N23151,
      SEL => i_can_btl_quant_cnt_inst_lut3_6,
      O => i_can_btl_quant_cnt_inst_cy_75
    );
  i_can_btl_quant_cnt_inst_sum_46_90 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_inst_lut3_6,
      I1 => i_can_btl_quant_cnt_inst_cy_74,
      O => i_can_btl_quant_cnt_inst_sum_46
    );
  i_can_bsp_data_cnt_inst_lut3_271 : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => i_can_bsp_data_cnt_20,
      ADR1 => CHOICE1784,
      ADR2 => i_can_bsp_n0224(3),
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_data_cnt_inst_lut3_27
    );
  i_can_btl_Mcompar_n0035_inst_cy_88_91 : X_MUX2
    port map (
      IB => i_can_btl_Mcompar_n0035_inst_cy_87,
      IA => N23151,
      SEL => i_can_btl_Mcompar_n0035_inst_lut4_11,
      O => i_can_btl_Mcompar_n0035_inst_cy_88
    );
  i_can_btl_quant_cnt_inst_sum_47_92 : X_XOR2
    port map (
      I0 => i_can_btl_quant_cnt_inst_lut3_7,
      I1 => i_can_btl_quant_cnt_inst_cy_75,
      O => i_can_btl_quant_cnt_inst_sum_47
    );
  i_can_btl_quant_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_quant_cnt_inst_sum_40,
      CE => i_can_btl_n0078,
      RST => i_can_btl_quant_cnt_0_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_quant_cnt(0)
    );
  i_can_btl_quant_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_quant_cnt_inst_sum_41,
      CE => i_can_btl_n0078,
      RST => i_can_btl_quant_cnt_1_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_quant_cnt(1)
    );
  i_can_btl_quant_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_quant_cnt_inst_sum_42,
      CE => i_can_btl_n0078,
      RST => i_can_btl_quant_cnt_2_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_quant_cnt(2)
    );
  i_can_btl_quant_cnt_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_quant_cnt_inst_sum_43,
      CE => i_can_btl_n0078,
      RST => i_can_btl_quant_cnt_3_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_quant_cnt(3)
    );
  i_can_btl_quant_cnt_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_quant_cnt_inst_sum_44,
      CE => i_can_btl_n0078,
      RST => i_can_btl_quant_cnt_4_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_quant_cnt(4)
    );
  i_can_btl_clk_cnt_15_93 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_clk_cnt_inst_sum_55,
      CE => N23149,
      RST => i_can_btl_clk_cnt_15_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_clk_cnt_15
    );
  i_can_btl_clk_cnt_16_94 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_clk_cnt_inst_sum_56,
      CE => N23149,
      RST => i_can_btl_clk_cnt_16_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_clk_cnt_16
    );
  i_can_btl_clk_cnt_inst_cy_77_95 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_btl_n0007_rt,
      O => i_can_btl_clk_cnt_inst_cy_77
    );
  i_can_btl_Mcompar_n0007_inst_lut4_81 : X_LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      ADR0 => i_can_btl_n0000(9),
      ADR1 => i_can_btl_n0000(8),
      ADR2 => i_can_btl_clk_cnt_16,
      O => i_can_btl_Mcompar_n0007_inst_lut4_8
    );
  i_can_btl_clk_cnt_inst_cy_78_96 : X_MUX2
    port map (
      IB => i_can_btl_clk_cnt_inst_cy_77,
      IA => N23151,
      SEL => i_can_btl_clk_cnt_inst_lut3_8,
      O => i_can_btl_clk_cnt_inst_cy_78
    );
  i_can_btl_clk_cnt_inst_sum_48_97 : X_XOR2
    port map (
      I0 => i_can_btl_clk_cnt_inst_lut3_8,
      I1 => i_can_btl_clk_cnt_inst_cy_77,
      O => i_can_btl_clk_cnt_inst_sum_48
    );
  i_can_btl_clk_cnt_inst_lut3_81 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_btl_n0007,
      ADR1 => i_can_btl_clk_cnt(8),
      O => i_can_btl_clk_cnt_inst_lut3_8
    );
  i_can_btl_clk_cnt_inst_cy_79_98 : X_MUX2
    port map (
      IB => i_can_btl_clk_cnt_inst_cy_78,
      IA => N23151,
      SEL => i_can_btl_clk_cnt_inst_lut3_9,
      O => i_can_btl_clk_cnt_inst_cy_79
    );
  i_can_btl_clk_cnt_inst_sum_49_99 : X_XOR2
    port map (
      I0 => i_can_btl_clk_cnt_inst_lut3_9,
      I1 => i_can_btl_clk_cnt_inst_cy_78,
      O => i_can_btl_clk_cnt_inst_sum_49
    );
  i_can_btl_clk_cnt_inst_lut3_91 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_btl_n0007,
      ADR1 => i_can_btl_clk_cnt_9,
      O => i_can_btl_clk_cnt_inst_lut3_9
    );
  i_can_btl_clk_cnt_inst_cy_80_100 : X_MUX2
    port map (
      IB => i_can_btl_clk_cnt_inst_cy_79,
      IA => N23151,
      SEL => i_can_btl_clk_cnt_inst_lut3_10,
      O => i_can_btl_clk_cnt_inst_cy_80
    );
  i_can_btl_clk_cnt_inst_sum_50_101 : X_XOR2
    port map (
      I0 => i_can_btl_clk_cnt_inst_lut3_10,
      I1 => i_can_btl_clk_cnt_inst_cy_79,
      O => i_can_btl_clk_cnt_inst_sum_50
    );
  i_can_btl_clk_cnt_inst_lut3_101 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_btl_n0007,
      ADR1 => i_can_btl_clk_cnt_10,
      O => i_can_btl_clk_cnt_inst_lut3_10
    );
  i_can_btl_clk_cnt_inst_cy_81_102 : X_MUX2
    port map (
      IB => i_can_btl_clk_cnt_inst_cy_80,
      IA => N23151,
      SEL => i_can_btl_clk_cnt_inst_lut3_11,
      O => i_can_btl_clk_cnt_inst_cy_81
    );
  i_can_btl_clk_cnt_inst_sum_51_103 : X_XOR2
    port map (
      I0 => i_can_btl_clk_cnt_inst_lut3_11,
      I1 => i_can_btl_clk_cnt_inst_cy_80,
      O => i_can_btl_clk_cnt_inst_sum_51
    );
  i_can_btl_clk_cnt_inst_lut3_111 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_btl_n0007,
      ADR1 => i_can_btl_clk_cnt_11,
      O => i_can_btl_clk_cnt_inst_lut3_11
    );
  i_can_btl_clk_cnt_inst_cy_82_104 : X_MUX2
    port map (
      IB => i_can_btl_clk_cnt_inst_cy_81,
      IA => N23151,
      SEL => i_can_btl_clk_cnt_inst_lut3_12,
      O => i_can_btl_clk_cnt_inst_cy_82
    );
  i_can_btl_clk_cnt_inst_sum_52_105 : X_XOR2
    port map (
      I0 => i_can_btl_clk_cnt_inst_lut3_12,
      I1 => i_can_btl_clk_cnt_inst_cy_81,
      O => i_can_btl_clk_cnt_inst_sum_52
    );
  i_can_bsp_data_cnt_inst_lut3_241 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_reset_wr_fifo,
      ADR1 => i_can_bsp_data_cnt_17,
      O => i_can_bsp_data_cnt_inst_lut3_24
    );
  i_can_btl_clk_cnt_inst_cy_83_106 : X_MUX2
    port map (
      IB => i_can_btl_clk_cnt_inst_cy_82,
      IA => N23151,
      SEL => i_can_btl_clk_cnt_inst_lut3_13,
      O => i_can_btl_clk_cnt_inst_cy_83
    );
  i_can_btl_clk_cnt_inst_sum_53_107 : X_XOR2
    port map (
      I0 => i_can_btl_clk_cnt_inst_lut3_13,
      I1 => i_can_btl_clk_cnt_inst_cy_82,
      O => i_can_btl_clk_cnt_inst_sum_53
    );
  i_can_bsp_data_cnt_inst_lut3_251 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_reset_wr_fifo,
      ADR1 => i_can_bsp_data_cnt_18,
      O => i_can_bsp_data_cnt_inst_lut3_25
    );
  i_can_btl_clk_cnt_inst_cy_84_108 : X_MUX2
    port map (
      IB => i_can_btl_clk_cnt_inst_cy_83,
      IA => N23151,
      SEL => i_can_btl_clk_cnt_inst_lut3_14,
      O => i_can_btl_clk_cnt_inst_cy_84
    );
  i_can_btl_clk_cnt_inst_sum_54_109 : X_XOR2
    port map (
      I0 => i_can_btl_clk_cnt_inst_lut3_14,
      I1 => i_can_btl_clk_cnt_inst_cy_83,
      O => i_can_btl_clk_cnt_inst_sum_54
    );
  i_can_bsp_data_cnt_inst_lut3_261 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_reset_wr_fifo,
      ADR1 => i_can_bsp_data_cnt_19,
      O => i_can_bsp_data_cnt_inst_lut3_26
    );
  i_can_btl_clk_cnt_inst_cy_85_110 : X_MUX2
    port map (
      IB => i_can_btl_clk_cnt_inst_cy_84,
      IA => N23151,
      SEL => i_can_btl_clk_cnt_inst_lut3_15,
      O => i_can_btl_clk_cnt_inst_cy_85
    );
  i_can_btl_clk_cnt_inst_sum_55_111 : X_XOR2
    port map (
      I0 => i_can_btl_clk_cnt_inst_lut3_15,
      I1 => i_can_btl_clk_cnt_inst_cy_84,
      O => i_can_btl_clk_cnt_inst_sum_55
    );
  i_can_btl_clk_cnt_inst_sum_56_112 : X_XOR2
    port map (
      I0 => i_can_btl_clk_cnt_inst_lut3_16,
      I1 => i_can_btl_clk_cnt_inst_cy_85,
      O => i_can_btl_clk_cnt_inst_sum_56
    );
  i_can_btl_clk_cnt_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_clk_cnt_inst_sum_48,
      CE => N23149,
      RST => i_can_btl_clk_cnt_8_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_clk_cnt(8)
    );
  i_can_btl_clk_cnt_9_113 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_clk_cnt_inst_sum_49,
      CE => N23149,
      RST => i_can_btl_clk_cnt_9_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_clk_cnt_9
    );
  i_can_btl_clk_cnt_10_114 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_clk_cnt_inst_sum_50,
      CE => N23149,
      RST => i_can_btl_clk_cnt_10_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_clk_cnt_10
    );
  i_can_btl_clk_cnt_11_115 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_clk_cnt_inst_sum_51,
      CE => N23149,
      RST => i_can_btl_clk_cnt_11_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_clk_cnt_11
    );
  i_can_btl_clk_cnt_12_116 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_clk_cnt_inst_sum_52,
      CE => N23149,
      RST => i_can_btl_clk_cnt_12_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_btl_clk_cnt_12
    );
  i_can_registers_arbitration_lost_irq_117 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0037,
      CE => i_can_registers_n0209,
      RST => i_can_registers_arbitration_lost_irq_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_arbitration_lost_irq,
      SET => GND
    );
  i_can_registers_bus_error_irq_118 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0036,
      CE => i_can_registers_n0208,
      RST => i_can_registers_bus_error_irq_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_bus_error_irq,
      SET => GND
    );
  i_can_registers_error_irq_119 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0169,
      CE => i_can_registers_n0207,
      RST => i_can_registers_error_irq_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_error_irq,
      SET => GND
    );
  i_can_registers_receive_irq_120 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0014,
      CE => i_can_registers_n0206,
      RST => i_can_registers_receive_irq_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_receive_irq,
      SET => GND
    );
  i_can_registers_transmit_irq_121 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0034,
      CE => i_can_registers_n0205,
      RST => i_can_registers_transmit_irq_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_transmit_irq,
      SET => GND
    );
  i_can_registers_data_overrun_irq_122 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0033,
      CE => i_can_registers_n0204,
      RST => i_can_registers_data_overrun_irq_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_data_overrun_irq,
      SET => GND
    );
  i_can_registers_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_data_out_tmp(7),
      CE => i_can_registers_read,
      RST => i_can_registers_data_out_7_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_data_out(7),
      SET => GND
    );
  i_can_registers_clkout_tmp_123 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0203,
      CE => i_can_registers_n0015,
      RST => i_can_registers_clkout_tmp_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_clkout_tmp,
      SET => GND
    );
  i_can_registers_clkout_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_clkout_cnt_n0001(1),
      RST => i_can_registers_clkout_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_clkout_cnt(1),
      CE => VCC,
      SET => GND
    );
  i_can_registers_receive_buffer_status_124 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0014,
      CE => i_can_registers_n0201,
      RST => i_can_registers_receive_buffer_status_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_receive_buffer_status,
      SET => GND
    );
  i_can_registers_overrun_status_125 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0032,
      CE => i_can_registers_n0200,
      RST => i_can_registers_overrun_status_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_overrun_status,
      SET => GND
    );
  i_can_registers_transmit_buffer_status_126 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_registers_n0010,
      CE => i_can_registers_n0199,
      SET => i_can_registers_transmit_buffer_status_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_transmit_buffer_status,
      RST => GND
    );
  i_can_registers_transmission_complete_127 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_registers_n0004,
      CE => i_can_registers_n0198,
      SET => i_can_registers_transmission_complete_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_transmission_complete,
      RST => GND
    );
  i_can_registers_single_shot_transmission_128 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0158,
      CE => i_can_registers_n0197,
      RST => i_can_registers_single_shot_transmission_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_single_shot_transmission,
      SET => GND
    );
  i_can_registers_n02101 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_registers_n0176,
      ADR1 => i_can_registers_Ker318731_1,
      ADR2 => i_can_registers_N31740,
      ADR3 => i_can_registers_read,
      O => i_can_registers_n0210
    );
  i_can_registers_n02091 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_registers_n0037,
      ADR1 => i_can_registers_Ker318731_1,
      ADR2 => i_can_registers_N31740,
      ADR3 => i_can_registers_read,
      O => i_can_registers_n0209
    );
  i_can_registers_n02081 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_registers_n0036,
      ADR1 => i_can_registers_Ker318731_1,
      ADR2 => i_can_registers_N31740,
      ADR3 => i_can_registers_read,
      O => i_can_registers_n0208
    );
  i_can_registers_n02071 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_registers_n0169,
      ADR1 => i_can_registers_Ker318731_1,
      ADR2 => i_can_registers_N31740,
      ADR3 => i_can_registers_read,
      O => i_can_registers_n0207
    );
  i_can_registers_read_arbitration_lost_capture_reg_SW16_SW0 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => addr_latched_4_4,
      ADR1 => addr_latched_2_4,
      ADR2 => i_can_registers_read,
      ADR3 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => N54688
    );
  i_can_registers_ERROR_WARNING_REG_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_error_warning_limit,
      RST => i_can_registers_ERROR_WARNING_REG_data_out_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ERROR_WARNING_REG_data_out(1),
      SET => GND
    );
  i_can_registers_n02051 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_registers_n0034,
      ADR1 => i_can_registers_Ker318731_1,
      ADR2 => i_can_registers_N31740,
      ADR3 => i_can_registers_read,
      O => i_can_registers_n0205
    );
  i_can_bsp_Mmux_n0010_inst_mux_f5_41 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(1),
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(2),
      O => N54612
    );
  i_can_registers_n02031 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_clkout_tmp,
      O => i_can_registers_n0203,
      ADR1 => GND
    );
  i_can_registers_we_acceptance_code_31 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31634,
      ADR1 => i_can_registers_N31806,
      ADR2 => addr_latched_0_1,
      ADR3 => i_can_registers_N31709,
      O => i_can_registers_we_acceptance_code_3
    );
  i_can_registers_node_error_passive_q_129 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_node_error_passive,
      CLK => clk_i_BUFGP,
      O => i_can_registers_node_error_passive_q,
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  i_can_registers_node_bus_off_q_130 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_node_bus_off,
      CLK => clk_i_BUFGP,
      O => i_can_registers_node_bus_off_q,
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_Ker342041 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_rx_data,
      ADR2 => i_can_btl_sample_point,
      O => i_can_bsp_N34206
    );
  i_can_bsp_i_can_fifo_n0010_0_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0026,
      ADR1 => i_can_bsp_i_can_fifo_length_info(0),
      ADR2 => i_can_bsp_i_can_fifo_rd_pointer(0),
      O => i_can_bsp_i_can_fifo_n0010(0)
    );
  i_can_bsp_i_can_fifo_n00141 : X_LUT3
    generic map(
      INIT => X"0B"
    )
    port map (
      ADR0 => i_can_bsp_wr_fifo,
      ADR1 => i_can_bsp_i_can_fifo_wr_q,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_i_can_fifo_n0014
    );
  i_can_bsp_n00871 : X_LUT4
    generic map(
      INIT => X"1455"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_n0224(3),
      ADR2 => i_can_bsp_data_cnt_20,
      ADR3 => CHOICE1784,
      O => i_can_bsp_n0087
    );
  i_can_bsp_Maddsub_n0158_inst_lut2_941 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(5),
      ADR1 => i_can_bsp_transmitter,
      ADR2 => i_can_bsp_N34261,
      O => i_can_bsp_Maddsub_n0158_inst_lut2_94
    );
  i_can_registers_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_data_out_tmp(3),
      CE => i_can_registers_read,
      RST => i_can_registers_data_out_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_data_out(3),
      SET => GND
    );
  i_can_registers_n01761 : X_LUT4
    generic map(
      INIT => X"0828"
    )
    port map (
      ADR0 => i_can_registers_IRQ_EN_REG_data_out(5),
      ADR1 => i_can_bsp_node_error_passive,
      ADR2 => i_can_registers_node_error_passive_q,
      ADR3 => i_can_bsp_node_bus_off,
      O => i_can_registers_n0176
    );
  i_can_registers_MODE_REG_BASIC_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_mode,
      RST => i_can_registers_MODE_REG_BASIC_data_out_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_MODE_REG_BASIC_data_out(2),
      SET => GND
    );
  i_can_registers_we_clock_divider_hi1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_registers_we_clock_divider_low,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_registers_we_clock_divider_hi
    );
  i_can_registers_read1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => wr_i_IBUF,
      ADR1 => cs,
      O => i_can_registers_read
    );
  i_can_registers_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_data_out_tmp(2),
      CE => i_can_registers_read,
      RST => i_can_registers_data_out_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_data_out(2),
      SET => GND
    );
  i_can_registers_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_data_out_tmp(1),
      CE => i_can_registers_read,
      RST => i_can_registers_data_out_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_data_out(1),
      SET => GND
    );
  i_can_registers_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_data_out_tmp(0),
      CE => i_can_registers_read,
      RST => i_can_registers_data_out_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_data_out(0),
      SET => GND
    );
  i_can_bsp_n0669_SW0 : X_LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      ADR0 => i_can_bsp_tx_state,
      ADR1 => i_can_bsp_bit_stuff_cnt_tx(0),
      ADR2 => i_can_bsp_bit_stuff_cnt_tx(2),
      ADR3 => i_can_bsp_bit_stuff_cnt_tx(1),
      O => N41895
    );
  i_can_registers_BUS_TIMING_1_REG_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_bus_timing_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_1_REG_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_0_REG_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_bus_timing_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_0_REG_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_IRQ_EN_REG_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_interrupt_enable,
      CLK => clk_i_BUFGP,
      O => i_can_registers_IRQ_EN_REG_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_btl_go_seg16 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_btl_N28740,
      ADR1 => last_bit_of_inter,
      ADR2 => i_can_bsp_rx_idle,
      ADR3 => i_can_btl_sync,
      O => CHOICE1643
    );
  i_can_registers_COMMAND_REG_n0001_1_1 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_registers_COMMAND_REG_data_out(0),
      ADR1 => i_can_registers_COMMAND_REG_data_out(1),
      ADR2 => N54525,
      O => i_can_registers_COMMAND_REG_n0001(1)
    );
  i_can_registers_COMMAND_REG1_n00011 : X_LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      ADR0 => N54521,
      ADR1 => abort_tx,
      ADR2 => i_can_bsp_transmitting,
      O => i_can_registers_COMMAND_REG1_n0001
    );
  i_can_registers_MODE_REG0_n00011 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i_can_bsp_node_bus_off,
      ADR1 => i_can_registers_node_bus_off_q,
      ADR2 => N54519,
      O => i_can_registers_MODE_REG0_n0001
    );
  i_can_registers_MODE_REG_EXT_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_n0000,
      RST => i_can_registers_MODE_REG_EXT_data_out_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_MODE_REG_EXT_data_out(1),
      SET => GND
    );
  i_can_registers_error_passive_irq_131 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_n0176,
      CE => i_can_registers_n0210,
      RST => i_can_registers_error_passive_irq_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_error_passive_irq,
      SET => GND
    );
  i_can_registers_n02041 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_registers_n0033,
      ADR1 => i_can_registers_Ker318731_1,
      ADR2 => i_can_registers_N31740,
      ADR3 => i_can_registers_read,
      O => i_can_registers_n0204
    );
  i_can_bsp_arbitration_field_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_rx_id1,
      ADR1 => i_can_bsp_rx_rtr1,
      O => N42398
    );
  i_can_registers_ERROR_WARNING_REG_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_error_warning_limit,
      RST => i_can_registers_ERROR_WARNING_REG_data_out_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ERROR_WARNING_REG_data_out(3),
      SET => GND
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_121 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG5_data_out(3),
      O => N54623
    );
  i_can_registers_ERROR_WARNING_REG_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_error_warning_limit,
      RST => i_can_registers_ERROR_WARNING_REG_data_out_7_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ERROR_WARNING_REG_data_out(7),
      SET => GND
    );
  i_can_bsp_n0070_1_Q : X_LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      ADR0 => i_can_bsp_tx_q,
      ADR1 => i_can_bsp_tx,
      ADR2 => i_can_bsp_bit_de_stuff_reset,
      ADR3 => N40975,
      O => i_can_bsp_n0070(1)
    );
  i_can_registers_ERROR_WARNING_REG_data_out_5 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_error_warning_limit,
      SET => i_can_registers_ERROR_WARNING_REG_data_out_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ERROR_WARNING_REG_data_out(5),
      RST => GND
    );
  i_can_registers_ERROR_WARNING_REG_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_error_warning_limit,
      RST => i_can_registers_ERROR_WARNING_REG_data_out_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ERROR_WARNING_REG_data_out(0),
      SET => GND
    );
  i_can_bsp_Maddsub_n0158_inst_lut2_931 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(4),
      ADR1 => i_can_bsp_transmitter,
      ADR2 => i_can_bsp_N34261,
      O => i_can_bsp_Maddsub_n0158_inst_lut2_93
    );
  i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_clock_divider_low,
      CLK => clk_i_BUFGP,
      O => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_clkout_cnt_Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_registers_n0015,
      ADR1 => i_can_registers_clkout_cnt(0),
      ADR2 => i_can_registers_clkout_cnt(1),
      O => i_can_registers_clkout_cnt_n0001(1)
    );
  i_can_registers_ERROR_WARNING_REG_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_error_warning_limit,
      RST => i_can_registers_ERROR_WARNING_REG_data_out_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ERROR_WARNING_REG_data_out(2),
      SET => GND
    );
  i_can_registers_clkout_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_clkout_cnt_n0001(0),
      RST => i_can_registers_clkout_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_clkout_cnt(0),
      CE => VCC,
      SET => GND
    );
  i_can_registers_clkout_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_clkout_cnt_n0001(2),
      RST => i_can_registers_clkout_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_clkout_cnt(2),
      CE => VCC,
      SET => GND
    );
  i_can_registers_we_tx_data_121 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => addr_latched_0_1,
      ADR2 => i_can_registers_N31731,
      ADR3 => i_can_registers_N31787,
      O => i_can_registers_we_tx_data_12
    );
  i_can_registers_we_tx_data_111 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => i_can_registers_N31787,
      ADR2 => addr_latched_0_1,
      ADR3 => i_can_registers_N31709,
      O => i_can_registers_we_tx_data_11
    );
  i_can_registers_we_tx_data_101 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31787,
      ADR2 => addr_latched_1_1,
      ADR3 => i_can_registers_N31709,
      O => i_can_registers_we_tx_data_10
    );
  i_can_registers_we_tx_data_818 : X_LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      ADR0 => i_can_registers_N31646,
      ADR1 => CHOICE353,
      ADR2 => i_can_registers_N31818,
      ADR3 => addr_latched_0_1,
      O => i_can_registers_we_tx_data_8
    );
  i_can_registers_Ker318451 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => cs,
      ADR1 => wr_i_IBUF,
      O => i_can_registers_N31847
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_23_132 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_95,
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_info_pointer_23_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_23
    );
  i_can_bsp_data_for_fifo_3_5 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_n0206,
      ADR1 => i_can_bsp_id(24),
      ADR2 => i_can_bsp_n0207,
      ADR3 => i_can_bsp_id(16),
      O => CHOICE1271
    );
  i_can_registers_abort_tx1 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_registers_COMMAND_REG4_data_out(0),
      ADR1 => i_can_registers_COMMAND_REG0_data_out(0),
      ADR2 => i_can_registers_COMMAND_REG1_data_out(0),
      O => abort_tx
    );
  i_can_registers_n01981_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_registers_COMMAND_REG4_data_out(0),
      ADR1 => i_can_registers_COMMAND_REG1_data_out(0),
      O => N55708
    );
  i_can_bsp_i_can_acf_n0001738 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE759,
      ADR1 => CHOICE765,
      ADR2 => CHOICE752,
      ADR3 => N55196,
      O => CHOICE767
    );
  i_can_registers_acceptance_filter_mode1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_MODE_REG_EXT_data_out(2),
      O => acceptance_filter_mode
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_97_133 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_32,
      I1 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_130,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_97
    );
  i_can_registers_data_out_tmp_1_86_SW0 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => addr_latched_2_4,
      ADR2 => i_can_registers_transmit_irq,
      ADR3 => i_can_registers_BUS_TIMING_0_REG_data_out(1),
      O => N55127
    );
  i_can_registers_error_status_q_134 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => error_status,
      CLK => clk_i_BUFGP,
      O => i_can_registers_error_status_q,
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  i_can_registers_transmit_buffer_status_q_135 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_transmit_buffer_status,
      CLK => clk_i_BUFGP,
      O => i_can_registers_transmit_buffer_status_q,
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  i_can_registers_overrun_q_136 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => overrun,
      CLK => clk_i_BUFGP,
      O => i_can_registers_overrun_q,
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  i_can_registers_tx_successful_q_137 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N56036,
      CLK => clk_i_BUFGP,
      O => i_can_registers_tx_successful_q,
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG3_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_acceptance_mask_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG2_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_acceptance_mask_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG1_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_acceptance_mask_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG3_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_acceptance_code_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG2_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_acceptance_code_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG1_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_acceptance_code_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG12_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_12,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG12_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG11_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_11,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG11_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_we_acceptance_mask_31 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_registers_Ker318731_1,
      ADR1 => i_can_registers_N31634,
      ADR2 => i_can_registers_N31731,
      O => i_can_registers_we_acceptance_mask_3
    );
  i_can_registers_we_acceptance_mask_21 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_registers_N31881,
      ADR1 => i_can_registers_N31634,
      ADR2 => i_can_registers_N31731,
      O => i_can_registers_we_acceptance_mask_2
    );
  i_can_registers_we_acceptance_mask_11 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31634,
      ADR1 => i_can_registers_N31731,
      ADR2 => addr_latched_0_1,
      ADR3 => i_can_registers_N31793,
      O => i_can_registers_we_acceptance_mask_1
    );
  i_can_registers_data_out_tmp_6_20 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => N54797,
      ADR1 => addr_latched_4_3,
      ADR2 => addr_latched_3_2,
      ADR3 => addr_latched_2_3,
      O => CHOICE2128
    );
  i_can_registers_Ker318911 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31847,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => N55911,
      ADR3 => i_can_registers_N31806,
      O => i_can_registers_N31893
    );
  i_can_registers_we_bus_timing_01 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31893,
      O => i_can_registers_we_bus_timing_0
    );
  i_can_registers_Ker318161 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => addr_latched_3_1,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR3 => i_can_registers_N31709,
      O => i_can_registers_N31818
    );
  i_can_bsp_i_can_acf_n00012143 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(0),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(0),
      ADR2 => i_can_bsp_id(3),
      O => CHOICE1109
    );
  i_can_registers_we_bus_timing_11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31893,
      O => i_can_registers_we_bus_timing_1
    );
  i_can_registers_we_clock_divider_low1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => N55928,
      ADR2 => i_can_registers_N31847,
      ADR3 => i_can_registers_N31898,
      O => i_can_registers_we_clock_divider_low
    );
  i_can_registers_we_tx_data_518 : X_LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => N55724,
      ADR2 => N55726,
      ADR3 => i_can_registers_N31731,
      O => i_can_registers_we_tx_data_5
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_171 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG7_data_out(3),
      O => N54639
    );
  i_can_bsp_Mmux_n0010_inst_mux_f5_21 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(5),
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(6),
      O => N54617
    );
  i_can_registers_n01991 : X_LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      ADR0 => i_can_bsp_need_to_tx,
      ADR1 => i_can_registers_COMMAND_REG0_data_out(0),
      ADR2 => i_can_registers_COMMAND_REG4_data_out(0),
      O => i_can_registers_n0199
    );
  i_can_registers_we_error_warning_limit1 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => addr_latched_0_1,
      ADR2 => i_can_registers_N31634,
      ADR3 => i_can_registers_N31823,
      O => i_can_registers_we_error_warning_limit
    );
  i_can_registers_we_acceptance_code_11 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31634,
      ADR1 => i_can_registers_N31793,
      ADR2 => addr_latched_0_1,
      ADR3 => i_can_registers_N31709,
      O => i_can_registers_we_acceptance_code_1
    );
  i_can_registers_we_acceptance_code_21 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_registers_N31881,
      ADR1 => i_can_registers_N31634,
      ADR2 => i_can_registers_N31709,
      O => i_can_registers_we_acceptance_code_2
    );
  i_can_registers_n00711 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched(1),
      ADR1 => addr_latched(3),
      ADR2 => N55930,
      ADR3 => addr_latched(2),
      O => i_can_registers_n0071
    );
  i_can_registers_data_out_tmp_3_911_G : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31781,
      ADR1 => addr_latched_2_2,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_3_data_out(0),
      ADR3 => addr_latched_1_2,
      O => N55884
    );
  i_can_bsp_n0154_2_13 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE1559,
      ADR1 => i_can_bsp_N33893,
      ADR2 => i_can_bsp_rx_id1,
      ADR3 => CHOICE1561,
      O => CHOICE1564
    );
  i_can_registers_listen_only_mode1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_MODE_REG_EXT_data_out(0),
      O => listen_only_mode
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_97_138 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_32,
      I1 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_130,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_97
    );
  i_can_bsp_n01981 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_bsp_n0282,
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_btl_sampled_bit_1,
      O => i_can_bsp_n0198
    );
  i_can_registers_data_out_tmp_6_5_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => addr_latched(4),
      ADR1 => addr_latched(2),
      ADR2 => addr_latched(3),
      ADR3 => i_can_registers_TX_DATA_REG2_data_out(6),
      O => N55029
    );
  i_can_bsp_n0070_2_SW0 : X_LUT3
    generic map(
      INIT => X"9D"
    )
    port map (
      ADR0 => i_can_bsp_bit_stuff_cnt_tx(2),
      ADR1 => i_can_bsp_bit_stuff_cnt_tx(0),
      ADR2 => i_can_bsp_bit_stuff_cnt_tx(1),
      O => N41066
    );
  i_can_bsp_n06351 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_write_data_to_tmp_fifo,
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_go_rx_crc_lim,
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_n0635
    );
  i_can_registers_n00691 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched(2),
      ADR1 => N56002,
      ADR2 => addr_latched(4),
      O => i_can_registers_n0069
    );
  i_can_registers_n00681 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched(2),
      ADR1 => N55926,
      ADR2 => addr_latched(4),
      O => i_can_registers_n0068
    );
  i_can_registers_n00651 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => N55957,
      ADR1 => addr_latched(0),
      ADR2 => addr_latched(1),
      O => i_can_registers_n0065
    );
  i_can_registers_n00611 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched(4),
      ADR1 => addr_latched(2),
      ADR2 => addr_latched(0),
      ADR3 => N55936,
      O => i_can_registers_n0061
    );
  i_can_registers_TX_DATA_REG10_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_10,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG10_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG9_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_9,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG9_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG8_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_8,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG8_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG7_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_7,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG7_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG6_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_6,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG6_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG5_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_5,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG5_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_bsp_i_can_acf_n00011204 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE885,
      ADR1 => CHOICE850,
      ADR2 => CHOICE856,
      ADR3 => N55260,
      O => CHOICE886
    );
  i_can_bsp_i_can_acf_n00011369 : X_LUT4
    generic map(
      INIT => X"EAAB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(6),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(6),
      ADR2 => i_can_bsp_tmp_fifo_0_6,
      ADR3 => i_can_bsp_id(1),
      O => CHOICE922
    );
  i_can_registers_clkout_cnt_Mmux_n0001_Result_2_1 : X_LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      ADR0 => i_can_registers_n0015,
      ADR1 => i_can_registers_clkout_cnt(2),
      ADR2 => i_can_registers_clkout_cnt(1),
      ADR3 => i_can_registers_clkout_cnt(0),
      O => i_can_registers_clkout_cnt_n0001(2)
    );
  i_can_bsp_n0097_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_enable_overload_cnt2,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      O => N40739
    );
  i_can_registers_ERROR_WARNING_REG_data_out_6 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_error_warning_limit,
      SET => i_can_registers_ERROR_WARNING_REG_data_out_6_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ERROR_WARNING_REG_data_out(6),
      RST => GND
    );
  i_can_registers_TX_DATA_REG4_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_4,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG4_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG3_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG3_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_data_out_tmp(6),
      CE => i_can_registers_read,
      RST => i_can_registers_data_out_6_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_data_out(6),
      SET => GND
    );
  i_can_bsp_n01102 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_tx_q,
      ADR1 => i_can_bsp_bit_stuff_cnt_tx(1),
      ADR2 => i_can_bsp_bit_stuff_cnt_tx(0),
      ADR3 => i_can_bsp_bit_stuff_cnt_tx(2),
      O => CHOICE1392
    );
  i_can_bsp_n0110151 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => i_can_bsp_rx_ack,
      ADR1 => i_can_bsp_bit_err,
      ADR2 => CHOICE1652,
      ADR3 => listen_only_mode,
      O => CHOICE1420
    );
  i_can_registers_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_data_out_tmp(5),
      CE => i_can_registers_read,
      RST => i_can_registers_data_out_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_data_out(5),
      SET => GND
    );
  i_can_bsp_Ker34170_SW1 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_25,
      ADR1 => i_can_bsp_bit_cnt_21,
      ADR2 => i_can_bsp_bit_cnt_24,
      ADR3 => i_can_bsp_bit_cnt_22,
      O => N55388
    );
  i_can_bsp_Ker34170 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_bit_cnt_26,
      ADR2 => N55388,
      ADR3 => i_can_btl_sample_point,
      O => i_can_bsp_N34172
    );
  i_can_registers_n00321 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_overrun_q,
      ADR1 => overrun,
      O => i_can_registers_n0032
    );
  i_can_registers_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_data_out_tmp(4),
      CE => i_can_registers_read,
      RST => i_can_registers_data_out_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_data_out(4),
      SET => GND
    );
  i_can_bsp_n0097_139 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_overload_frame,
      ADR2 => i_can_bsp_enable_error_cnt2,
      ADR3 => N40739,
      O => i_can_bsp_n0097
    );
  i_can_registers_TX_DATA_REG2_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG2_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG1_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG1_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG0_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_tx_data_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG0_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG0_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_acceptance_mask_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG0_data_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54531,
      CE => i_can_registers_we_acceptance_code_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(6),
      SET => GND,
      RST => GSR
    );
  i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_clock_divider_low,
      CLK => clk_i_BUFGP,
      O => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_n00141 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_COMMAND_REG_data_out(0),
      O => i_can_registers_n0014,
      ADR1 => GND
    );
  i_can_registers_CLOCK_DIVIDER_REG_3_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_clock_divider_hi,
      CLK => clk_i_BUFGP,
      O => i_can_registers_CLOCK_DIVIDER_REG_3_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_COMMAND_REG0_n00011 : X_LUT4
    generic map(
      INIT => X"1F00"
    )
    port map (
      ADR0 => i_can_registers_COMMAND_REG4_data_out(0),
      ADR1 => i_can_registers_COMMAND_REG0_data_out(0),
      ADR2 => i_can_btl_sample_point,
      ADR3 => N54519,
      O => i_can_registers_COMMAND_REG0_n0001
    );
  i_can_registers_CLOCK_DIVIDER_REG_7_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_clock_divider_hi,
      CLK => clk_i_BUFGP,
      O => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ERROR_WARNING_REG_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_error_warning_limit,
      RST => i_can_registers_ERROR_WARNING_REG_data_out_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ERROR_WARNING_REG_data_out(4),
      SET => GND
    );
  i_can_registers_COMMAND_REG_n0001_0_1 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_registers_COMMAND_REG_data_out(0),
      ADR1 => i_can_registers_COMMAND_REG_data_out(1),
      ADR2 => N54523,
      O => i_can_registers_COMMAND_REG_n0001(0)
    );
  i_can_registers_clkout_cnt_Mmux_n0001_Result_0_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_registers_n0015,
      ADR1 => i_can_registers_clkout_cnt(0),
      O => i_can_registers_clkout_cnt_n0001(0)
    );
  i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_clock_divider_low,
      CLK => clk_i_BUFGP,
      O => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_n00001 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => N55972,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_registers_n0000
    );
  i_can_btl_clk_cnt_inst_lut3_161 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_btl_n0007,
      ADR1 => i_can_btl_clk_cnt_16,
      O => i_can_btl_clk_cnt_inst_lut3_16
    );
  i_can_registers_MODE_REG0_data_out_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_registers_MODE_REG0_n0001,
      CE => i_can_registers_MODE_REG0_n0003,
      SET => i_can_registers_MODE_REG0_data_out_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_MODE_REG0_data_out(0),
      RST => GND
    );
  i_can_registers_MODE_REG_BASIC_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_mode,
      RST => i_can_registers_MODE_REG_BASIC_data_out_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_MODE_REG_BASIC_data_out(3),
      SET => GND
    );
  i_can_registers_MODE_REG_BASIC_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_mode,
      RST => i_can_registers_MODE_REG_BASIC_data_out_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_MODE_REG_BASIC_data_out(0),
      SET => GND
    );
  i_can_registers_MODE_REG_BASIC_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_mode,
      RST => i_can_registers_MODE_REG_BASIC_data_out_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_MODE_REG_BASIC_data_out(1),
      SET => GND
    );
  i_can_registers_MODE_REG_EXT_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_n0000,
      RST => i_can_registers_MODE_REG_EXT_data_out_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_MODE_REG_EXT_data_out(2),
      SET => GND
    );
  i_can_registers_MODE_REG_EXT_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_n0000,
      RST => i_can_registers_MODE_REG_EXT_data_out_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_MODE_REG_EXT_data_out(0),
      SET => GND
    );
  i_can_registers_MODE_REG0_n00031 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i_can_bsp_node_bus_off,
      ADR1 => i_can_registers_node_bus_off_q,
      ADR2 => i_can_registers_we_mode,
      O => i_can_registers_MODE_REG0_n0003
    );
  i_can_registers_COMMAND_REG4_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_COMMAND_REG4_n0001,
      CE => i_can_registers_COMMAND_REG4_n0003,
      RST => i_can_registers_COMMAND_REG4_data_out_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_COMMAND_REG4_data_out(0),
      SET => GND
    );
  i_can_registers_COMMAND_REG1_n00031 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => abort_tx,
      ADR1 => i_can_bsp_transmitting,
      ADR2 => i_can_registers_we_command,
      O => i_can_registers_COMMAND_REG1_n0003
    );
  i_can_registers_COMMAND_REG1_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_COMMAND_REG1_n0001,
      CE => i_can_registers_COMMAND_REG1_n0003,
      RST => i_can_registers_COMMAND_REG1_data_out_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_COMMAND_REG1_data_out(0),
      SET => GND
    );
  i_can_registers_COMMAND_REG4_n00031 : X_LUT4
    generic map(
      INIT => X"EEFE"
    )
    port map (
      ADR0 => i_can_registers_we_command,
      ADR1 => abort_tx,
      ADR2 => tx_successful,
      ADR3 => i_can_registers_tx_successful_q,
      O => i_can_registers_COMMAND_REG4_n0003
    );
  i_can_registers_COMMAND_REG0_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_COMMAND_REG0_n0001,
      CE => i_can_registers_COMMAND_REG0_n0003,
      RST => i_can_registers_COMMAND_REG0_data_out_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_COMMAND_REG0_data_out(0),
      SET => GND
    );
  i_can_registers_COMMAND_REG_n00031 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => N55923,
      ADR1 => i_can_registers_COMMAND_REG_data_out(1),
      ADR2 => i_can_registers_COMMAND_REG_data_out(0),
      O => i_can_registers_COMMAND_REG_n0003
    );
  i_can_registers_COMMAND_REG_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_COMMAND_REG_n0001(0),
      CE => i_can_registers_COMMAND_REG_n0003,
      RST => i_can_registers_COMMAND_REG_data_out_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_COMMAND_REG_data_out(0),
      SET => GND
    );
  i_can_registers_COMMAND_REG_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_COMMAND_REG_n0001(1),
      CE => i_can_registers_COMMAND_REG_n0003,
      RST => i_can_registers_COMMAND_REG_data_out_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_COMMAND_REG_data_out(1),
      SET => GND
    );
  i_can_registers_ACCEPTANCE_MASK_REG3_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_acceptance_mask_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG3_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_acceptance_mask_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG3_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_acceptance_mask_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG3_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_acceptance_mask_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG3_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_acceptance_mask_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG3_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_acceptance_mask_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG3_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_acceptance_mask_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG2_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_acceptance_mask_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG2_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_acceptance_mask_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG2_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_acceptance_mask_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG2_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_acceptance_mask_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG2_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_acceptance_mask_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG2_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_acceptance_mask_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG2_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_acceptance_mask_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG1_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_acceptance_mask_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG1_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_acceptance_mask_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG1_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_acceptance_mask_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG1_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_acceptance_mask_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG1_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_acceptance_mask_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG1_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_acceptance_mask_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG1_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_acceptance_mask_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG3_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_acceptance_code_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG3_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_acceptance_code_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG3_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_acceptance_code_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG3_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_acceptance_code_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG3_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_acceptance_code_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG3_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_acceptance_code_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG3_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_acceptance_code_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG2_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_acceptance_code_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG2_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_acceptance_code_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG2_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_acceptance_code_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG2_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_acceptance_code_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG2_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_acceptance_code_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG2_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_acceptance_code_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG2_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_acceptance_code_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG1_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_acceptance_code_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG1_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_acceptance_code_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG1_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_acceptance_code_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG1_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_acceptance_code_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG1_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_acceptance_code_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG1_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_acceptance_code_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG1_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_acceptance_code_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG12_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_12,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG12_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG12_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_12,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG12_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG12_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_12,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG12_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG12_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_12,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG12_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG12_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_12,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG12_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG12_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_12,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG12_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG12_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_12,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG12_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG11_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_11,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG11_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG11_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_11,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG11_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG11_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_11,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG11_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG11_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_11,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG11_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG11_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_11,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG11_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG11_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_11,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG11_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG11_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_11,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG11_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG10_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_10,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG10_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG10_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_10,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG10_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG10_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_10,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG10_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG10_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_10,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG10_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG10_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_10,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG10_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG10_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_10,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG10_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG10_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_10,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG10_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG9_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_9,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG9_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG9_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_9,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG9_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG9_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_9,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG9_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG9_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_9,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG9_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG9_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_9,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG9_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG9_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_9,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG9_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG9_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_9,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG9_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG8_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_8,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG8_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG8_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_8,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG8_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG8_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_8,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG8_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG8_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_8,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG8_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG8_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_8,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG8_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG8_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_8,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG8_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG8_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_8,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG8_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG7_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_7,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG7_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG7_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_7,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG7_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG7_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_7,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG7_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG7_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_7,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG7_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG7_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_7,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG7_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG7_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_7,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG7_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG7_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_7,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG7_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG6_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_6,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG6_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG6_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_6,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG6_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG6_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_6,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG6_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG6_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_6,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG6_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG6_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_6,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG6_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG6_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_6,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG6_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG6_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_6,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG6_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG5_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_5,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG5_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG5_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_5,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG5_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG5_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_5,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG5_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG5_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_5,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG5_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG5_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_5,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG5_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG5_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_5,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG5_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG5_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_5,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG5_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG4_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_4,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG4_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG4_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_4,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG4_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG4_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_4,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG4_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG4_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_4,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG4_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG4_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_4,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG4_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG4_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_4,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG4_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG4_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_4,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG4_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG3_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG3_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG3_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG3_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG3_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG3_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG3_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG3_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG3_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG3_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG3_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG3_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG3_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_3,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG3_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG2_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG2_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG2_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG2_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG2_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG2_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG2_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG2_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG2_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG2_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG2_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG2_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG2_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_2,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG2_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG1_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG1_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG1_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG1_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG1_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG1_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG1_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG1_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG1_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG1_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG1_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG1_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG1_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG1_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG0_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_tx_data_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG0_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG0_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_tx_data_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG0_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG0_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_tx_data_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG0_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG0_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_tx_data_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG0_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG0_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_tx_data_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG0_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG0_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_tx_data_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG0_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_TX_DATA_REG0_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_tx_data_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_TX_DATA_REG0_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG0_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_acceptance_mask_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG0_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_acceptance_mask_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG0_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_acceptance_mask_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG0_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_acceptance_mask_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG0_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_acceptance_mask_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG0_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_acceptance_mask_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_MASK_REG0_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_acceptance_mask_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG0_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_acceptance_code_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG0_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_acceptance_code_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG0_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_acceptance_code_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG0_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_acceptance_code_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG0_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_acceptance_code_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG0_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_acceptance_code_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_ACCEPTANCE_CODE_REG0_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_acceptance_code_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_1_REG_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_bus_timing_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_1_REG_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_1_REG_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_bus_timing_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_1_REG_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_1_REG_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_bus_timing_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_1_REG_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_1_REG_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_bus_timing_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_1_REG_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_1_REG_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_bus_timing_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_1_REG_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_1_REG_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_bus_timing_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_1_REG_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_1_REG_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_bus_timing_1,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_1_REG_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_0_REG_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_bus_timing_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_0_REG_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_0_REG_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_bus_timing_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_0_REG_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_0_REG_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_bus_timing_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_0_REG_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_0_REG_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_bus_timing_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_0_REG_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_0_REG_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_bus_timing_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_0_REG_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_0_REG_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_bus_timing_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_0_REG_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_BUS_TIMING_0_REG_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_bus_timing_0,
      CLK => clk_i_BUFGP,
      O => i_can_registers_BUS_TIMING_0_REG_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_registers_IRQ_EN_REG_data_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54533,
      CE => i_can_registers_we_interrupt_enable,
      CLK => clk_i_BUFGP,
      O => i_can_registers_IRQ_EN_REG_data_out(7),
      SET => GND,
      RST => GSR
    );
  i_can_registers_IRQ_EN_REG_data_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => i_can_registers_we_interrupt_enable,
      CLK => clk_i_BUFGP,
      O => i_can_registers_IRQ_EN_REG_data_out(0),
      SET => GND,
      RST => GSR
    );
  i_can_registers_IRQ_EN_REG_data_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => i_can_registers_we_interrupt_enable,
      CLK => clk_i_BUFGP,
      O => i_can_registers_IRQ_EN_REG_data_out(1),
      SET => GND,
      RST => GSR
    );
  i_can_registers_IRQ_EN_REG_data_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => i_can_registers_we_interrupt_enable,
      CLK => clk_i_BUFGP,
      O => i_can_registers_IRQ_EN_REG_data_out(2),
      SET => GND,
      RST => GSR
    );
  i_can_registers_IRQ_EN_REG_data_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => i_can_registers_we_interrupt_enable,
      CLK => clk_i_BUFGP,
      O => i_can_registers_IRQ_EN_REG_data_out(3),
      SET => GND,
      RST => GSR
    );
  i_can_registers_IRQ_EN_REG_data_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => i_can_registers_we_interrupt_enable,
      CLK => clk_i_BUFGP,
      O => i_can_registers_IRQ_EN_REG_data_out(4),
      SET => GND,
      RST => GSR
    );
  i_can_registers_IRQ_EN_REG_data_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54529,
      CE => i_can_registers_we_interrupt_enable,
      CLK => clk_i_BUFGP,
      O => i_can_registers_IRQ_EN_REG_data_out(5),
      SET => GND,
      RST => GSR
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_64 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net230,
      IB => i_can_bsp_Mmux_n0004_net231,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net232
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_126_140 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => reset_mode_rt,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_126
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1681 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_5_1,
      ADR2 => i_can_bsp_tmp_fifo_4_1,
      O => i_can_bsp_Mmux_n0004_net230
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_26_141 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_98,
      CE => i_can_bsp_i_can_fifo_n0068,
      RST => i_can_bsp_i_can_fifo_wr_info_pointer_26_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_26
    );
  i_can_bsp_Mcompar_n0238_ALB1 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => i_can_bsp_overload_cnt1(2),
      ADR1 => i_can_bsp_overload_cnt1(0),
      ADR2 => i_can_bsp_overload_cnt1(1),
      O => i_can_bsp_n0238
    );
  i_can_bsp_crc_err_142 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0074,
      CE => i_can_bsp_n0644,
      RST => i_can_bsp_crc_err_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_err,
      SET => GND
    );
  i_can_bsp_crc_enable_143 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0643,
      RST => i_can_bsp_crc_enable_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_enable,
      SET => GND
    );
  i_can_registers_data_out_tmp_0_110 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N55952,
      ADR1 => i_can_registers_TX_DATA_REG3_data_out(0),
      ADR2 => i_can_registers_n0064,
      ADR3 => i_can_registers_TX_DATA_REG4_data_out(0),
      O => CHOICE2028
    );
  i_can_bsp_reset_mode_q_144 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_registers_MODE_REG0_data_out_0_1,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_reset_mode_q,
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  i_can_registers_Mcompar_n0015_AEB15 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_registers_clkout_cnt(0),
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(0),
      ADR2 => i_can_registers_clkout_cnt(2),
      O => CHOICE81
    );
  i_can_bsp_bit_stuff_cnt_tx_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_bsp_n0070(0),
      CE => i_can_bsp_n0642,
      SET => i_can_bsp_bit_stuff_cnt_tx_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_stuff_cnt_tx(0),
      RST => GND
    );
  i_can_registers_COMMAND_REG0_n00031 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_registers_COMMAND_REG0_data_out(0),
      ADR2 => i_can_registers_COMMAND_REG4_data_out(0),
      ADR3 => i_can_registers_we_command,
      O => i_can_registers_COMMAND_REG0_n0003
    );
  i_can_bsp_n06911 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i_can_bsp_bus_free,
      ADR1 => i_can_bsp_node_bus_off,
      ADR2 => i_can_bsp_n0492,
      O => i_can_bsp_n0691
    );
  i_can_bsp_n06901 : X_LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      ADR0 => i_can_bsp_node_bus_off,
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_n0282,
      ADR3 => i_can_bsp_n0492,
      O => i_can_bsp_n0690
    );
  i_can_bsp_n06891 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_n0689
    );
  i_can_bsp_arbitration_lost_capture_inst_lut3_351 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => read_arbitration_lost_capture_reg,
      ADR1 => i_can_bsp_arbitration_lost_capture_28,
      O => i_can_bsp_arbitration_lost_capture_inst_lut3_35
    );
  i_can_bsp_n068731 : X_LUT4
    generic map(
      INIT => X"FA88"
    )
    port map (
      ADR0 => i_can_bsp_error_frame_ended,
      ADR1 => i_can_bsp_N34191,
      ADR2 => CHOICE1319,
      ADR3 => CHOICE1324,
      O => i_can_bsp_n0687
    );
  i_can_bsp_n06861 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_error_frame_ended,
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_n0222,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0686
    );
  i_can_bsp_Ker3425912 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE1658,
      ADR1 => i_can_bsp_rx_err_cnt(3),
      ADR2 => i_can_bsp_rx_err_cnt(4),
      ADR3 => i_can_bsp_rx_err_cnt(5),
      O => CHOICE1661
    );
  i_can_registers_data_out_tmp_2_113 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2346,
      ADR1 => CHOICE2341,
      ADR2 => CHOICE2338,
      ADR3 => N54980,
      O => CHOICE2348
    );
  i_can_bsp_Mcompar_n0237_ALB1 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => i_can_bsp_error_cnt1(2),
      ADR1 => i_can_bsp_error_cnt1(0),
      ADR2 => i_can_bsp_error_cnt1(1),
      O => i_can_bsp_n0237
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_63 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net227,
      IB => i_can_bsp_Mmux_n0004_net228,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net229
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1671 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_3_1,
      ADR2 => i_can_bsp_tmp_fifo_2_1,
      O => i_can_bsp_Mmux_n0004_net228
    );
  i_can_bsp_Msub_n0229_inst_sum_101 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0229_inst_lut2_84,
      I1 => i_can_bsp_Msub_n0229_inst_cy_134,
      O => i_can_bsp_n0229(2)
    );
  i_can_bsp_Msub_n0272_inst_cy_212_145 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0272_inst_cy_211,
      IA => i_can_bsp_tx_err_cnt(7),
      SEL => i_can_bsp_Msub_n0272_inst_lut2_139,
      O => i_can_bsp_Msub_n0272_inst_cy_212
    );
  i_can_bsp_n06821 : X_LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      ADR0 => i_can_bsp_arbitration_blocked,
      ADR1 => i_can_bsp_N34271,
      ADR2 => i_can_bsp_arbitration_cnt_en,
      ADR3 => read_arbitration_lost_capture_reg,
      O => i_can_bsp_n0682
    );
  i_can_bsp_n06371 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_bit_de_stuff,
      ADR2 => i_can_bsp_n0063,
      O => i_can_bsp_n0637
    );
  i_can_bsp_n06801 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_bsp_rx_id1,
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_arbitration_blocked,
      O => i_can_bsp_n0680
    );
  i_can_bsp_n00201 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_byte_cnt(2),
      ADR1 => i_can_bsp_byte_cnt(1),
      ADR2 => i_can_bsp_byte_cnt(0),
      ADR3 => i_can_bsp_write_data_to_tmp_fifo,
      O => i_can_bsp_n0020
    );
  i_can_bsp_i_can_acf_n00011 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(0),
      ADR1 => i_can_bsp_id(13),
      ADR2 => i_can_bsp_i_can_acf_N26867,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(0),
      O => CHOICE557
    );
  i_can_bsp_n06771 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_bsp_susp_cnt_en,
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_n0444,
      O => i_can_bsp_n0677
    );
  i_can_bsp_n06761 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_n0444,
      ADR1 => last_bit_of_inter,
      ADR2 => i_can_bsp_suspend,
      ADR3 => i_can_btl_sample_point,
      O => i_can_bsp_n0676
    );
  i_can_bsp_n06751 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_n0444,
      ADR1 => i_can_bsp_node_error_passive,
      ADR2 => i_can_bsp_go_rx_inter,
      ADR3 => i_can_bsp_transmitter,
      O => i_can_bsp_n0675
    );
  i_can_registers_we_tx_data_721_G : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_registers_N31646,
      ADR1 => i_can_registers_N31731,
      ADR2 => i_can_registers_Ker318731_1,
      O => N55879
    );
  i_can_bsp_n06731 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_go_rx_inter,
      ADR2 => i_can_bsp_go_tx,
      O => i_can_bsp_n0673
    );
  i_can_bsp_n06721 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_go_tx,
      ADR1 => i_can_bsp_n0188,
      O => i_can_bsp_n0672
    );
  i_can_bsp_n06711 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_go_early_tx,
      ADR1 => i_can_bsp_tx_point_q,
      O => i_can_bsp_n0671
    );
  i_can_btl_Mcompar_n0034_inst_lut4_121 : X_LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(5),
      ADR1 => i_can_btl_n0098(4),
      ADR2 => i_can_btl_quant_cnt(4),
      O => i_can_btl_Mcompar_n0034_inst_lut4_12
    );
  i_can_bsp_i_can_fifo_Ker30664 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(4),
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(3),
      ADR2 => i_can_bsp_i_can_fifo_fifo_cnt(5),
      ADR3 => N41930,
      O => i_can_bsp_i_can_fifo_N30666
    );
  i_can_bsp_n06681 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_btl_go_sync1_2,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0668
    );
  i_can_bsp_n06671 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_bsp_overload_frame,
      ADR2 => i_can_bsp_n0186,
      O => i_can_bsp_n0667
    );
  i_can_bsp_n06661 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_bsp_enable_overload_cnt2,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => i_can_bsp_n0102,
      O => i_can_bsp_n0666
    );
  i_can_bsp_i_can_fifo_Ker30664_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(0),
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(1),
      ADR2 => i_can_bsp_i_can_fifo_fifo_cnt(2),
      O => N41930
    );
  i_can_bsp_n06641 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_n0102,
      ADR1 => i_can_bsp_n0238,
      ADR2 => i_can_bsp_overload_frame,
      ADR3 => i_can_btl_go_sync1_2,
      O => i_can_bsp_n0664
    );
  i_can_bsp_n06631 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_overload_frame_ended,
      ADR3 => i_can_bsp_go_overload_frame,
      O => i_can_bsp_n0663
    );
  i_can_registers_n0034_SW0 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => i_can_registers_transmit_buffer_status,
      ADR1 => i_can_registers_transmit_buffer_status_q,
      O => N39650
    );
  i_can_bsp_n06611 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_bsp_N34319,
      ADR1 => i_can_bsp_n0221,
      ADR2 => i_can_bsp_n0222,
      ADR3 => i_can_bsp_n0097,
      O => i_can_bsp_n0661
    );
  i_can_bsp_n06601 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_bsp_enable_error_cnt2,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => i_can_bsp_n0091,
      O => i_can_bsp_n0660
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1691 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_7_1,
      ADR2 => i_can_bsp_tmp_fifo_6_1,
      O => i_can_bsp_Mmux_n0004_net231
    );
  i_can_bsp_n06591 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_n0091,
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => i_can_bsp_error_flag_over,
      O => i_can_bsp_n0659
    );
  i_can_bsp_n06581 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_error_flag_over,
      ADR1 => i_can_bsp_n0091,
      O => i_can_bsp_n0658
    );
  i_can_bsp_n06571 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_n0091,
      ADR1 => i_can_bsp_n0237,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => i_can_btl_go_sync1_2,
      O => i_can_bsp_n0657
    );
  i_can_bsp_n06561 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_error_frame_ended,
      ADR3 => i_can_bsp_go_error_frame,
      O => i_can_bsp_n0656
    );
  i_can_bsp_Madd_n0224_inst_sum_105 : X_XOR2
    port map (
      I0 => i_can_bsp_Madd_n0224_inst_lut2_88,
      I1 => i_can_bsp_Madd_n0224_inst_cy_138,
      O => i_can_bsp_n0224(2)
    );
  i_can_bsp_Mcompar_n0220_inst_cy_143_146 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0220_inst_cy_142,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0220_inst_lut4_17,
      O => i_can_bsp_Mcompar_n0220_inst_cy_143
    );
  i_can_bsp_Mcompar_n0219_inst_cy_143_147 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0219_inst_cy_142,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0219_inst_lut4_17,
      O => i_can_bsp_Mcompar_n0219_inst_cy_143
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1761 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_5_3,
      ADR2 => i_can_bsp_tmp_fifo_4_3,
      O => i_can_bsp_Mmux_n0004_net244
    );
  i_can_bsp_n06541 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_wr_fifo,
      ADR1 => i_can_bsp_reset_wr_fifo,
      O => i_can_bsp_n0654
    );
  i_can_bsp_n06531 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_bsp_wr_fifo,
      ADR1 => i_can_bsp_storing_header,
      ADR2 => i_can_bsp_reset_wr_fifo,
      O => i_can_bsp_n0653
    );
  i_can_bsp_i_can_acf_n0001178 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(6),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(6),
      ADR2 => i_can_bsp_id(19),
      O => CHOICE610
    );
  i_can_bsp_n06511 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_error_frame_ended,
      ADR3 => i_can_bsp_form_err,
      O => i_can_bsp_n0651
    );
  i_can_bsp_n06501 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_error_frame_ended,
      ADR3 => i_can_bsp_stuff_err,
      O => i_can_bsp_n0650
    );
  i_can_bsp_n06481 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_n0183,
      ADR1 => i_can_bsp_n0237,
      ADR2 => i_can_bsp_N34319,
      ADR3 => i_can_bsp_rule3_exc1_1,
      O => i_can_bsp_n0648
    );
  i_can_bsp_n06471 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_n0182,
      ADR1 => i_can_bsp_ack_err,
      ADR2 => i_can_bsp_transmitter,
      ADR3 => i_can_bsp_node_error_passive,
      O => i_can_bsp_n0647
    );
  i_can_bsp_n06461 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_error_frame_ended,
      ADR3 => i_can_bsp_bit_err,
      O => i_can_bsp_n0646
    );
  i_can_bsp_n06451 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_error_frame_ended,
      ADR3 => i_can_bsp_ack_err,
      O => i_can_bsp_n0645
    );
  i_can_bsp_go_tx1 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_bsp_N34319,
      ADR1 => last_bit_of_inter,
      ADR2 => i_can_bsp_rx_idle,
      ADR3 => i_can_bsp_N34196,
      O => i_can_bsp_go_tx
    );
  i_can_bsp_i_can_acf_n00012328 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_bsp_N34172,
      ADR1 => i_can_bsp_bit_cnt_23,
      ADR2 => i_can_bsp_rx_crc,
      ADR3 => CHOICE1160,
      O => i_can_bsp_i_can_acf_n0001
    );
  i_can_bsp_n06421 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_bsp_tx_point_q,
      ADR1 => i_can_bsp_bit_stuff_cnt_en,
      ADR2 => i_can_bsp_bit_de_stuff_reset,
      O => i_can_bsp_n0642
    );
  i_can_bsp_n06411 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_bit_stuff_cnt_en,
      ADR2 => i_can_bsp_bit_de_stuff_reset,
      O => i_can_bsp_n0641
    );
  i_can_bsp_delayed_dominant_cnt_Mmux_n0001_Result_2_1 : X_LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      ADR0 => i_can_bsp_n0097,
      ADR1 => i_can_bsp_delayed_dominant_cnt(2),
      ADR2 => i_can_bsp_delayed_dominant_cnt(0),
      ADR3 => i_can_bsp_delayed_dominant_cnt(1),
      O => i_can_bsp_delayed_dominant_cnt_n0001(2)
    );
  i_can_registers_n0034_148 : X_LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_IRQ_EN_REG_data_out(1),
      ADR2 => N39650,
      ADR3 => i_can_registers_MODE_REG_BASIC_data_out(1),
      O => i_can_registers_n0034
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_67 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net241,
      IB => i_can_bsp_Mmux_n0004_net242,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net243
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1751 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_3_3,
      ADR2 => i_can_bsp_tmp_fifo_2_3,
      O => i_can_bsp_Mmux_n0004_net242
    );
  i_can_bsp_n02031 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(7),
      ADR1 => i_can_bsp_rx_err_cnt(8),
      O => i_can_bsp_n0203
    );
  i_can_bsp_Msub_n0272_inst_lut2_1391 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(7),
      O => i_can_bsp_Msub_n0272_inst_lut2_139,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0272_inst_sum_152 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0272_inst_lut2_138,
      I1 => i_can_bsp_Msub_n0272_inst_cy_210,
      O => i_can_bsp_n0272(6)
    );
  i_can_bsp_Madd_n0157_inst_cy_157_149 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0157_inst_cy_156,
      IA => N23151,
      SEL => tx_err_cnt_6_rt,
      O => i_can_bsp_Madd_n0157_inst_cy_157
    );
  i_can_bsp_go_rx_id11 : X_LUT4
    generic map(
      INIT => X"00A8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_rx_idle,
      ADR2 => last_bit_of_inter,
      ADR3 => i_can_btl_sampled_bit_1,
      O => i_can_bsp_go_rx_id1
    );
  i_can_bsp_Madd_n0156_inst_cy_157_150 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0156_inst_cy_156,
      IA => N23151,
      SEL => rx_err_cnt_6_rt,
      O => i_can_bsp_Madd_n0156_inst_cy_157
    );
  i_can_registers_data_out_tmp_0_50_SW2 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => addr_latched_4_4,
      ADR1 => addr_latched_2_4,
      ADR2 => addr_latched_3_2,
      ADR3 => i_can_bsp_arbitration_lost_capture_27,
      O => N55133
    );
  i_can_bsp_Msub_n0001_inst_sum_129 : X_XOR2
    port map (
      I0 => N23149,
      I1 => i_can_bsp_Msub_n0001_inst_cy_166,
      O => i_can_bsp_n0001(7)
    );
  i_can_registers_read_error_code_capture_reg_SW0 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => wr_i_IBUF,
      ADR2 => cs,
      O => N42338
    );
  i_can_bsp_n06341 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_inter,
      ADR1 => i_can_bsp_n0179,
      O => i_can_bsp_n0634
    );
  i_can_bsp_n06331 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_bsp_go_rx_inter,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => i_can_bsp_go_rx_eof,
      O => i_can_bsp_n0633
    );
  i_can_bsp_n06321 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_eof,
      ADR3 => i_can_bsp_go_rx_ack_lim,
      O => i_can_bsp_n0632
    );
  i_can_bsp_n06311 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_ack_lim,
      ADR3 => i_can_bsp_go_rx_ack,
      O => i_can_bsp_n0631
    );
  i_can_bsp_n06301 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_ack,
      ADR3 => i_can_bsp_go_rx_crc_lim,
      O => i_can_bsp_n0630
    );
  i_can_bsp_n06291 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_crc_lim,
      ADR3 => i_can_bsp_go_rx_crc,
      O => i_can_bsp_n0629
    );
  i_can_bsp_n06281 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_go_rx_crc,
      ADR3 => i_can_bsp_go_rx_data,
      O => i_can_bsp_n0628
    );
  i_can_bsp_Msub_n0247_inst_cy_186_151 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_data_len(3),
      ADR1 => i_can_bsp_data_len(0),
      O => i_can_bsp_Msub_n0247_inst_cy_186
    );
  i_can_bsp_n06261 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_dlc,
      ADR3 => i_can_bsp_go_rx_r0,
      O => i_can_bsp_n0626
    );
  i_can_bsp_n06251 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_r0,
      ADR3 => i_can_bsp_go_rx_r1,
      O => i_can_bsp_n0625
    );
  i_can_bsp_n06241 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_r1,
      ADR3 => i_can_bsp_go_rx_rtr2,
      O => i_can_bsp_n0624
    );
  i_can_bsp_n06231 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_rtr2,
      ADR3 => i_can_bsp_go_rx_id2,
      O => i_can_bsp_n0623
    );
  i_can_bsp_n06781 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_n0190,
      ADR1 => i_can_bsp_N34172,
      ADR2 => i_can_bsp_bit_cnt_23,
      ADR3 => i_can_bsp_rx_crc,
      O => i_can_bsp_n0678
    );
  i_can_bsp_n06211 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_ide,
      ADR3 => i_can_bsp_go_rx_rtr1,
      O => i_can_bsp_n0621
    );
  i_can_bsp_n06201 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_rtr1,
      ADR3 => i_can_bsp_go_rx_id1,
      O => i_can_bsp_n0620
    );
  i_can_bsp_n06191 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_go_rx_id1,
      ADR3 => i_can_bsp_go_rx_idle,
      O => i_can_bsp_n0619
    );
  i_can_registers_Ker31785_SW0 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => i_can_registers_transmit_buffer_status,
      ADR1 => cs,
      ADR2 => wr_i_IBUF,
      O => N41612
    );
  i_can_bsp_rx_crc_152 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0048,
      CE => i_can_bsp_n0629,
      RST => i_can_bsp_rx_crc_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_crc,
      SET => GND
    );
  i_can_bsp_rx_data_153 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0046,
      CE => i_can_bsp_n0628,
      RST => i_can_bsp_rx_data_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_data,
      SET => GND
    );
  i_can_bsp_rx_dlc_154 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0044,
      CE => i_can_bsp_n0627,
      RST => i_can_bsp_rx_dlc_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_dlc,
      SET => GND
    );
  i_can_bsp_rx_r0_155 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0042,
      CE => i_can_bsp_n0626,
      RST => i_can_bsp_rx_r0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_r0,
      SET => GND
    );
  i_can_bsp_rx_r1_156 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0040,
      CE => i_can_bsp_n0625,
      RST => i_can_bsp_rx_r1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_r1,
      SET => GND
    );
  i_can_bsp_rx_rtr2_157 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0038,
      CE => i_can_bsp_n0624,
      RST => i_can_bsp_rx_rtr2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_rtr2,
      SET => GND
    );
  i_can_bsp_rx_id2_158 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0036,
      CE => i_can_bsp_n0623,
      RST => i_can_bsp_rx_id2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_id2,
      SET => GND
    );
  i_can_bsp_rx_ide_159 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0034,
      CE => i_can_bsp_n0622,
      RST => i_can_bsp_rx_ide_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_ide,
      SET => GND
    );
  i_can_bsp_tx_err_cnt_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0140(6),
      CE => i_can_bsp_n0685,
      RST => i_can_bsp_tx_err_cnt_6_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_err_cnt(6),
      SET => GND
    );
  i_can_bsp_tx_err_cnt_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0140(5),
      CE => i_can_bsp_n0685,
      RST => i_can_bsp_tx_err_cnt_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_err_cnt(5),
      SET => GND
    );
  i_can_bsp_tx_err_cnt_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0140(4),
      CE => i_can_bsp_n0685,
      RST => i_can_bsp_tx_err_cnt_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_err_cnt(4),
      SET => GND
    );
  i_can_bsp_n04921 : X_LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_registers_node_bus_off_q,
      ADR2 => i_can_bsp_reset_mode_q,
      O => i_can_bsp_n0492
    );
  i_can_bsp_tmp_fifo_7_4_160 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(4),
      CE => i_can_bsp_n0026,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_7_4,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_id_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(5),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_6_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(6),
      SET => GND
    );
  i_can_bsp_tx_err_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0140(2),
      CE => i_can_bsp_n0685,
      RST => i_can_bsp_tx_err_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_err_cnt(2),
      SET => GND
    );
  i_can_bsp_tmp_fifo_7_2_161 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(2),
      CE => i_can_bsp_n0026,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_7_2,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_7_3_162 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(3),
      CE => i_can_bsp_n0026,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_7_3,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_id_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(6),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_7_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(7),
      SET => GND
    );
  i_can_bsp_tmp_fifo_7_1_163 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(1),
      CE => i_can_bsp_n0026,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_7_1,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tx_err_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0140(1),
      CE => i_can_bsp_n0685,
      RST => i_can_bsp_tx_err_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_err_cnt(1),
      SET => GND
    );
  i_can_bsp_id_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(7),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_8_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(8),
      SET => GND
    );
  i_can_bsp_arbitration_blocked_164 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0135,
      CE => i_can_bsp_n0681,
      RST => i_can_bsp_arbitration_blocked_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_arbitration_blocked,
      SET => GND
    );
  i_can_bsp_data_for_fifo_6_112 : X_LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      ADR0 => i_can_bsp_storing_header,
      ADR1 => CHOICE1307,
      ADR2 => CHOICE1310,
      ADR3 => i_can_bsp_n0004(6),
      O => i_can_bsp_data_for_fifo(6)
    );
  i_can_bsp_tmp_fifo_7_0_165 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(0),
      CE => i_can_bsp_n0026,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_7_0,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tx_err_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0140(0),
      CE => i_can_bsp_n0685,
      RST => i_can_bsp_tx_err_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_err_cnt(0),
      SET => GND
    );
  i_can_bsp_id_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(8),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_9_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(9),
      SET => GND
    );
  i_can_bsp_error_capture_code_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0154(6),
      CE => i_can_bsp_n0692,
      RST => i_can_bsp_error_capture_code_6_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_capture_code(6),
      SET => GND
    );
  i_can_bsp_n047524 : X_LUT4
    generic map(
      INIT => X"EEE0"
    )
    port map (
      ADR0 => i_can_bsp_bus_free,
      ADR1 => N56036,
      ADR2 => CHOICE1518,
      ADR3 => CHOICE1522,
      O => i_can_bsp_n0475
    );
  i_can_bsp_arbitration_cnt_en_166 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0133,
      CE => i_can_bsp_n0680,
      RST => i_can_bsp_arbitration_cnt_en_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_arbitration_cnt_en,
      SET => GND
    );
  i_can_bsp_id_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(9),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_10_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(10),
      SET => GND
    );
  i_can_bsp_arbitration_lost_q_167 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_arbitration_lost,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_arbitration_lost_q,
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1891 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_7_6,
      ADR2 => i_can_bsp_tmp_fifo_6_6,
      O => i_can_bsp_Mmux_n0004_net266
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1481 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG10_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG10_data_out(7),
      O => i_can_bsp_Mmux_n0005_net195
    );
  i_can_bsp_data_for_fifo_2_66 : X_LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      ADR0 => i_can_bsp_storing_header,
      ADR1 => CHOICE1164,
      ADR2 => CHOICE1173,
      ADR3 => i_can_bsp_n0004(2),
      O => i_can_bsp_data_for_fifo(2)
    );
  i_can_bsp_error_capture_code_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0154(5),
      CE => i_can_bsp_n0692,
      RST => i_can_bsp_error_capture_code_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_capture_code(5),
      SET => GND
    );
  i_can_bsp_Mmux_n0010_inst_mux_f5_11 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(1),
      ADR2 => i_can_registers_TX_DATA_REG0_data_out(2),
      O => N54615
    );
  i_can_bsp_id_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(10),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_11_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(11),
      SET => GND
    );
  i_can_bsp_arbitration_lost_168 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0131,
      CE => i_can_bsp_n0679,
      RST => i_can_bsp_arbitration_lost_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_arbitration_lost,
      SET => GND
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1861 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_1_6,
      ADR2 => i_can_bsp_tmp_fifo_0_6,
      O => i_can_bsp_Mmux_n0004_net262
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_70 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net251,
      IB => i_can_bsp_Mmux_n0004_net252,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net253
    );
  i_can_bsp_finish_msg_169 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0129,
      CE => i_can_bsp_n0678,
      RST => i_can_bsp_finish_msg_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_finish_msg,
      SET => GND
    );
  i_can_bsp_i_can_acf_n0001918_SW0 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(1),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(1),
      ADR2 => i_can_bsp_id(22),
      O => N55509
    );
  i_can_btl_n0019_0_1 : X_LUT4
    generic map(
      INIT => X"082A"
    )
    port map (
      ADR0 => i_can_btl_n0029,
      ADR1 => i_can_btl_n0030,
      ADR2 => i_can_registers_BUS_TIMING_0_REG_data_out(6),
      ADR3 => i_can_btl_quant_cnt(0),
      O => i_can_btl_n0019(0)
    );
  i_can_bsp_i_can_acf_Ker2653733 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(3),
      ADR1 => i_can_bsp_id(24),
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(3),
      O => CHOICE540
    );
  i_can_bsp_arbitration_lost_capture_29_170 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_arbitration_lost_capture_inst_sum_133,
      CE => i_can_bsp_n0682,
      RST => i_can_bsp_arbitration_lost_capture_29_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_arbitration_lost_capture_29
    );
  i_can_bsp_error_capture_code_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0154(4),
      CE => i_can_bsp_n0692,
      RST => i_can_bsp_error_capture_code_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_capture_code(4),
      SET => GND
    );
  i_can_bsp_id_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(11),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_12_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(12),
      SET => GND
    );
  i_can_bsp_error_capture_code_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0154(3),
      CE => i_can_bsp_n0692,
      RST => i_can_bsp_error_capture_code_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_capture_code(3),
      SET => GND
    );
  i_can_bsp_error_capture_code_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0154(2),
      CE => i_can_bsp_n0692,
      RST => i_can_bsp_error_capture_code_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_capture_code(2),
      SET => GND
    );
  i_can_bsp_id_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(12),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_13_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(13),
      SET => GND
    );
  i_can_bsp_error_capture_code_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0154(1),
      CE => i_can_bsp_n0692,
      RST => i_can_bsp_error_capture_code_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_capture_code(1),
      SET => GND
    );
  i_can_bsp_id_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(13),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_14_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(14),
      SET => GND
    );
  i_can_bsp_error_capture_code_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0154(0),
      CE => i_can_bsp_n0692,
      RST => i_can_bsp_error_capture_code_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_capture_code(0),
      SET => GND
    );
  i_can_bsp_passive_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0099(1),
      CE => i_can_bsp_n0662,
      RST => i_can_bsp_passive_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_passive_cnt(1),
      SET => GND
    );
  i_can_bsp_id_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(14),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_15_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(15),
      SET => GND
    );
  i_can_bsp_passive_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0099(0),
      CE => i_can_bsp_n0662,
      RST => i_can_bsp_passive_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_passive_cnt(0),
      SET => GND
    );
  i_can_bsp_id_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(15),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_16_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(16),
      SET => GND
    );
  i_can_bsp_bus_free_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0147(2),
      CE => i_can_bsp_n0689,
      RST => i_can_bsp_bus_free_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bus_free_cnt(2),
      SET => GND
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_55 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net198,
      IB => i_can_bsp_Mmux_n0005_net199,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net200
    );
  i_can_bsp_Mmux_n0004_inst_mux_f6_31 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net222,
      IB => i_can_bsp_Mmux_n0004_net225,
      SEL => i_can_bsp_COND_6(2),
      O => i_can_bsp_n0004(0)
    );
  i_can_bsp_id_17 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(16),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_17_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(17),
      SET => GND
    );
  i_can_bsp_bus_free_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0147(1),
      CE => i_can_bsp_n0689,
      RST => i_can_bsp_bus_free_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bus_free_cnt(1),
      SET => GND
    );
  i_can_bsp_id_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(17),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_18_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(18),
      SET => GND
    );
  i_can_bsp_suspend_171 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0124,
      CE => i_can_bsp_n0675,
      RST => i_can_bsp_suspend_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_suspend,
      SET => GND
    );
  i_can_bsp_susp_cnt_en_172 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0124,
      CE => i_can_bsp_n0676,
      RST => i_can_bsp_susp_cnt_en_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_susp_cnt_en,
      SET => GND
    );
  i_can_bsp_bus_free_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0147(0),
      CE => i_can_bsp_n0689,
      RST => i_can_bsp_bus_free_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bus_free_cnt(0),
      SET => GND
    );
  i_can_bsp_id_19 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(18),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_19_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(19),
      SET => GND
    );
  i_can_bsp_tmp_fifo_0_6_173 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(6),
      CE => i_can_bsp_n0019,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_0_6,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_0_5_174 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(5),
      CE => i_can_bsp_n0019,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_0_5,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_0_4_175 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(4),
      CE => i_can_bsp_n0019,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_0_4,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_transmitting_176 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0189,
      CE => i_can_bsp_n0674,
      RST => i_can_bsp_transmitting_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_transmitting,
      SET => GND
    );
  i_can_bsp_id_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(19),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_20_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(20),
      SET => GND
    );
  i_can_bsp_tmp_fifo_0_3_177 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(3),
      CE => i_can_bsp_n0019,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_0_3,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_id_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(20),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_21_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(21),
      SET => GND
    );
  i_can_bsp_transmitter_178 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_go_tx,
      CE => i_can_bsp_n0673,
      RST => i_can_bsp_transmitter_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_transmitter,
      SET => GND
    );
  i_can_bsp_rx_ack_lim_179 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0054,
      CE => i_can_bsp_n0632,
      RST => i_can_bsp_rx_ack_lim_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_ack_lim,
      SET => GND
    );
  i_can_bsp_go_early_tx_latched_180 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0116,
      CE => i_can_bsp_n0671,
      RST => i_can_bsp_go_early_tx_latched_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_go_early_tx_latched,
      SET => GND
    );
  i_can_bsp_tx_state_181 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0118,
      CE => i_can_bsp_n0672,
      RST => i_can_bsp_tx_state_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_state,
      SET => GND
    );
  i_can_bsp_tmp_fifo_0_2_182 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(2),
      CE => i_can_bsp_n0019,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_0_2,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_0_1_183 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(1),
      CE => i_can_bsp_n0019,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_0_1,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_id_22 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(21),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_22_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(22),
      SET => GND
    );
  i_can_bsp_tmp_fifo_0_0_184 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(0),
      CE => i_can_bsp_n0019,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_0_0,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_id_23 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(22),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_23_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(23),
      SET => GND
    );
  i_can_bsp_tmp_fifo_1_6_185 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(6),
      CE => i_can_bsp_n0020,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_1_6,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_id_24 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(23),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_24_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(24),
      SET => GND
    );
  i_can_bsp_tmp_fifo_1_5_186 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(5),
      CE => i_can_bsp_n0020,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_1_5,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_id_25 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(24),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_25_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(25),
      SET => GND
    );
  i_can_bsp_tmp_fifo_1_4_187 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(4),
      CE => i_can_bsp_n0020,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_1_4,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_1_2_188 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(2),
      CE => i_can_bsp_n0020,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_1_2,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_id_27 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(26),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_27_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(27),
      SET => GND
    );
  i_can_bsp_tx_pointer_24_189 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tx_pointer_inst_sum_96,
      CE => i_can_bsp_n0669,
      RST => i_can_bsp_tx_pointer_24_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_pointer_24
    );
  i_can_bsp_tmp_fifo_1_1_190 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(1),
      CE => i_can_bsp_n0020,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_1_1,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_id_28 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(27),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_28_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(28),
      SET => GND
    );
  i_can_bsp_tmp_fifo_1_0_191 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(0),
      CE => i_can_bsp_n0020,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_1_0,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_2_7_192 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(7),
      CE => i_can_bsp_n0021,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_2_7,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_2_6_193 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(6),
      CE => i_can_bsp_n0021,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_2_6,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_2_5_194 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(5),
      CE => i_can_bsp_n0021,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_2_5,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_1_7_195 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(7),
      CE => i_can_bsp_n0020,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_1_7,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_2_4_196 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(4),
      CE => i_can_bsp_n0021,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_2_4,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_2_3_197 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(3),
      CE => i_can_bsp_n0021,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_2_3,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_2_2_198 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(2),
      CE => i_can_bsp_n0021,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_2_2,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_0_7_199 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(7),
      CE => i_can_bsp_n0019,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_0_7,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_2_1_200 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(1),
      CE => i_can_bsp_n0021,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_2_1,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_error_capture_code_blocked_201 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0155,
      CE => i_can_bsp_n0692,
      RST => i_can_bsp_error_capture_code_blocked_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_capture_code_blocked,
      SET => GND
    );
  i_can_bsp_tx_point_q_202 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_go_sync1_2,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_point_q,
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_2_0_203 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(0),
      CE => i_can_bsp_n0021,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_2_0,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_3_6_204 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(6),
      CE => i_can_bsp_n0022,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_3_6,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_3_5_205 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(5),
      CE => i_can_bsp_n0022,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_3_5,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_error_capture_code_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0154(7),
      CE => i_can_bsp_n0692,
      RST => i_can_bsp_error_capture_code_7_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_capture_code(7),
      SET => GND
    );
  i_can_bsp_tmp_fifo_3_4_206 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(4),
      CE => i_can_bsp_n0022,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_3_4,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_waiting_for_bus_free_207 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_bsp_n0152,
      CE => i_can_bsp_n0691,
      SET => i_can_bsp_waiting_for_bus_free_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_waiting_for_bus_free,
      RST => GND
    );
  i_can_bsp_tmp_fifo_3_3_208 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(3),
      CE => i_can_bsp_n0022,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_3_3,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_bus_free_209 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0198,
      RST => i_can_bsp_bus_free_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bus_free,
      CE => VCC,
      SET => GND
    );
  i_can_bsp_tmp_fifo_3_2_210 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(2),
      CE => i_can_bsp_n0022,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_3_2,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_3_1_211 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(1),
      CE => i_can_bsp_n0022,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_3_1,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_3_0_212 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(0),
      CE => i_can_bsp_n0022,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_3_0,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_4_6_213 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(6),
      CE => i_can_bsp_n0023,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_4_6,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_bus_free_cnt_en_214 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0492,
      CE => i_can_bsp_n0690,
      RST => i_can_bsp_bus_free_cnt_en_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bus_free_cnt_en,
      SET => GND
    );
  i_can_bsp_tmp_fifo_4_3_215 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(3),
      CE => i_can_bsp_n0023,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_4_3,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_4_2_216 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(2),
      CE => i_can_bsp_n0023,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_4_2,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_node_error_passive_217 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0144,
      CE => i_can_bsp_n0687,
      RST => i_can_bsp_node_error_passive_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_node_error_passive,
      SET => GND
    );
  i_can_bsp_tmp_fifo_4_1_218 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(1),
      CE => i_can_bsp_n0023,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_4_1,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_rx_err_cnt_blocked_219 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0142,
      CE => i_can_bsp_n0686,
      RST => i_can_bsp_rx_err_cnt_blocked_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_err_cnt_blocked,
      SET => GND
    );
  i_can_bsp_tmp_fifo_4_0_220 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(0),
      CE => i_can_bsp_n0023,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_4_0,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_rx_crc_lim_221 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0050,
      CE => i_can_bsp_n0630,
      RST => i_can_bsp_rx_crc_lim_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_crc_lim,
      SET => GND
    );
  i_can_bsp_tx_q_222 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0111,
      CE => i_can_btl_go_sync1_2,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_q,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_5_6_223 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(6),
      CE => i_can_bsp_n0024,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_5_6,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_5_5_224 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(5),
      CE => i_can_bsp_n0024,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_5_5,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_5_4_225 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(4),
      CE => i_can_bsp_n0024,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_5_4,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_5_3_226 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(3),
      CE => i_can_bsp_n0024,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_5_3,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_5_2_227 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(2),
      CE => i_can_bsp_n0024,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_5_2,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_5_1_228 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(1),
      CE => i_can_bsp_n0024,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_5_1,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_5_0_229 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(0),
      CE => i_can_bsp_n0024,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_5_0,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_6_6_230 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(6),
      CE => i_can_bsp_n0025,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_6_6,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_6_5_231 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(5),
      CE => i_can_bsp_n0025,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_6_5,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_6_4_232 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(4),
      CE => i_can_bsp_n0025,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_6_4,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_6_3_233 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(3),
      CE => i_can_bsp_n0025,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_6_3,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_6_2_234 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(2),
      CE => i_can_bsp_n0025,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_6_2,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_6_1_235 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(1),
      CE => i_can_bsp_n0025,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_6_1,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_6_0_236 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(0),
      CE => i_can_bsp_n0025,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_6_0,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_7_6_237 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(6),
      CE => i_can_bsp_n0026,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_7_6,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_fifo_7_5_238 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(5),
      CE => i_can_bsp_n0026,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_7_5,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tx_err_cnt_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0140(3),
      CE => i_can_bsp_n0685,
      RST => i_can_bsp_tx_err_cnt_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_err_cnt(3),
      SET => GND
    );
  i_can_bsp_tmp_fifo_1_3_239 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(3),
      CE => i_can_bsp_n0020,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_1_3,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_id_26 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(25),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_26_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(26),
      SET => GND
    );
  i_can_bsp_tmp_fifo_4_5_240 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(5),
      CE => i_can_bsp_n0023,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_4_5,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_bus_free_cnt_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0147(3),
      CE => i_can_bsp_n0689,
      RST => i_can_bsp_bus_free_cnt_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bus_free_cnt(3),
      SET => GND
    );
  i_can_bsp_tmp_fifo_4_4_241 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(4),
      CE => i_can_bsp_n0023,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_4_4,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_node_bus_off_242 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0146,
      CE => i_can_bsp_n0688,
      RST => i_can_bsp_node_bus_off_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_node_bus_off,
      SET => GND
    );
  i_can_bsp_rx_rtr1_243 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0032,
      CE => i_can_bsp_n0621,
      RST => i_can_bsp_rx_rtr1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_rtr1,
      SET => GND
    );
  i_can_bsp_rx_id1_244 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0030,
      CE => i_can_bsp_n0620,
      RST => i_can_bsp_rx_id1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_id1,
      SET => GND
    );
  i_can_bsp_crc_in_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(0),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(1),
      SET => GND
    );
  i_can_bsp_tx_245 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_bsp_n0110,
      CE => i_can_bsp_n0668,
      SET => i_can_bsp_tx_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx,
      RST => GND
    );
  i_can_bsp_crc_in_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(1),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(2),
      SET => GND
    );
  i_can_bsp_crc_in_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(2),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(3),
      SET => GND
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_62 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net223,
      IB => i_can_bsp_Mmux_n0004_net224,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net225
    );
  i_can_bsp_overload_frame_blocked_246 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0108,
      CE => i_can_bsp_n0667,
      RST => i_can_bsp_overload_frame_blocked_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_overload_frame_blocked,
      SET => GND
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1881 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_5_6,
      ADR2 => i_can_bsp_tmp_fifo_4_6,
      O => i_can_bsp_Mmux_n0004_net265
    );
  i_can_bsp_enable_overload_cnt2_247 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0105,
      CE => i_can_bsp_n0665,
      RST => i_can_bsp_enable_overload_cnt2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_enable_overload_cnt2,
      SET => GND
    );
  i_can_bsp_crc_in_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(4),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(5),
      SET => GND
    );
  i_can_bsp_crc_in_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(5),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_6_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(6),
      SET => GND
    );
  i_can_bsp_crc_in_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(6),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_7_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(7),
      SET => GND
    );
  i_can_bsp_passive_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0099(2),
      CE => i_can_bsp_n0662,
      RST => i_can_bsp_passive_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_passive_cnt(2),
      SET => GND
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1721 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_5_2,
      ADR2 => i_can_bsp_tmp_fifo_4_2,
      O => i_can_bsp_Mmux_n0004_net237
    );
  i_can_bsp_overload_frame_248 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0101,
      CE => i_can_bsp_n0663,
      RST => i_can_bsp_overload_frame_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_overload_frame,
      SET => GND
    );
  i_can_bsp_crc_in_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(8),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_9_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(9),
      SET => GND
    );
  i_can_bsp_crc_in_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(7),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_8_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(8),
      SET => GND
    );
  i_can_bsp_crc_in_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(9),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_10_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(10),
      SET => GND
    );
  i_can_bsp_Mcompar_n0262_inst_cy_181_249 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0262_inst_cy_180,
      IA => N23149,
      SEL => i_can_bsp_Mcompar_n0262_inst_lut4_25,
      O => i_can_bsp_Mcompar_n0262_inst_cy_181
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_66 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net237,
      IB => i_can_bsp_Mmux_n0004_net238,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net239
    );
  i_can_bsp_Mmux_n0004_inst_mux_f6_33 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net236,
      IB => i_can_bsp_Mmux_n0004_net239,
      SEL => i_can_bsp_COND_6(2),
      O => i_can_bsp_n0004(2)
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1741 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_1_3,
      ADR2 => i_can_bsp_tmp_fifo_0_3,
      O => i_can_bsp_Mmux_n0004_net241
    );
  i_can_bsp_tmp_data_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(1),
      CE => i_can_bsp_N34206,
      RST => i_can_bsp_tmp_data_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_data(2),
      SET => GND
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1631 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_3_0,
      ADR2 => i_can_bsp_tmp_fifo_2_0,
      O => i_can_bsp_Mmux_n0004_net221
    );
  i_can_bsp_error_flag_over_blocked_250 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0094,
      CE => i_can_bsp_n0658,
      RST => i_can_bsp_error_flag_over_blocked_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_flag_over_blocked,
      SET => GND
    );
  i_can_bsp_enable_error_cnt2_251 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0094,
      CE => i_can_bsp_n0659,
      RST => i_can_bsp_enable_error_cnt2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_enable_error_cnt2,
      SET => GND
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_61 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net220,
      IB => i_can_bsp_Mmux_n0004_net221,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net222
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1641 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_5_0,
      ADR2 => i_can_bsp_tmp_fifo_4_0,
      O => i_can_bsp_Mmux_n0004_net223
    );
  i_can_bsp_tmp_data_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(2),
      CE => i_can_bsp_N34206,
      RST => i_can_bsp_tmp_data_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_data(3),
      SET => GND
    );
  i_can_bsp_error_frame_252 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0076,
      CE => i_can_bsp_n0656,
      RST => i_can_bsp_error_frame_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_frame,
      SET => GND
    );
  i_can_bsp_error_frame_q_253 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_error_frame,
      CE => i_can_btl_sample_point,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_frame_q,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_tmp_data_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(4),
      CE => i_can_bsp_N34206,
      RST => i_can_bsp_tmp_data_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_data(5),
      SET => GND
    );
  i_can_bsp_limited_data_len_minus1_3_1 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i_can_bsp_n0229(3),
      ADR1 => i_can_bsp_data_len(3),
      ADR2 => i_can_bsp_remote_rq,
      O => i_can_bsp_limited_data_len_minus1(3)
    );
  i_can_bsp_tmp_data_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(5),
      CE => i_can_bsp_N34206,
      RST => i_can_bsp_tmp_data_6_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_data(6),
      SET => GND
    );
  i_can_bsp_rule3_exc2_254 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0083,
      CE => i_can_bsp_n0649,
      RST => i_can_bsp_rule3_exc2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rule3_exc2,
      SET => GND
    );
  i_can_bsp_stuff_err_latched_255 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0076,
      CE => i_can_bsp_n0650,
      RST => i_can_bsp_stuff_err_latched_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_stuff_err_latched,
      SET => GND
    );
  i_can_bsp_id_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_sampled_bit_1,
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(0),
      SET => GND
    );
  i_can_bsp_data_len_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_data_len(2),
      CE => i_can_bsp_N34216,
      RST => i_can_bsp_data_len_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_data_len(3),
      SET => GND
    );
  i_can_bsp_data_len_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_data_len(1),
      CE => i_can_bsp_N34216,
      RST => i_can_bsp_data_len_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_data_len(2),
      SET => GND
    );
  i_can_bsp_data_len_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_data_len(0),
      CE => i_can_bsp_N34216,
      RST => i_can_bsp_data_len_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_data_len(1),
      SET => GND
    );
  i_can_bsp_data_len_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_sampled_bit_1,
      CE => i_can_bsp_N34216,
      RST => i_can_bsp_data_len_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_data_len(0),
      SET => GND
    );
  i_can_bsp_tmp_data_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(6),
      CE => i_can_bsp_N34206,
      RST => i_can_bsp_tmp_data_7_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_data(7),
      SET => GND
    );
  i_can_bsp_id_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(0),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(1),
      SET => GND
    );
  i_can_bsp_rule3_exc1_1_256 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0079,
      CE => i_can_bsp_n0647,
      RST => i_can_bsp_rule3_exc1_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rule3_exc1_1,
      SET => GND
    );
  i_can_bsp_id_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(1),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(2),
      SET => GND
    );
  i_can_bsp_id_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(2),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(3),
      SET => GND
    );
  i_can_bsp_Msub_n0247_inst_sum_140 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0247_inst_lut2_117,
      I1 => i_can_bsp_Msub_n0247_inst_cy_186,
      O => i_can_bsp_n0247(4)
    );
  i_can_bsp_id_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(4),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(5),
      SET => GND
    );
  i_can_bsp_id_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_id(3),
      CE => i_can_bsp_n0011,
      RST => i_can_bsp_id_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_id(4),
      SET => GND
    );
  i_can_bsp_rx_err_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0138(2),
      CE => i_can_bsp_n0684,
      RST => i_can_bsp_rx_err_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_err_cnt(2),
      SET => GND
    );
  i_can_bsp_rx_err_cnt_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0138(3),
      CE => i_can_bsp_n0684,
      RST => i_can_bsp_rx_err_cnt_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_err_cnt(3),
      SET => GND
    );
  i_can_bsp_rx_err_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0138(0),
      CE => i_can_bsp_n0684,
      RST => i_can_bsp_rx_err_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_err_cnt(0),
      SET => GND
    );
  i_can_bsp_rx_err_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0138(1),
      CE => i_can_bsp_n0684,
      RST => i_can_bsp_rx_err_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_err_cnt(1),
      SET => GND
    );
  i_can_bsp_tx_err_cnt_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0140(7),
      CE => i_can_bsp_n0685,
      RST => i_can_bsp_tx_err_cnt_7_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_err_cnt(7),
      SET => GND
    );
  i_can_bsp_n00261 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_bsp_byte_cnt(2),
      ADR1 => i_can_bsp_write_data_to_tmp_fifo,
      ADR2 => i_can_bsp_byte_cnt(0),
      ADR3 => i_can_bsp_byte_cnt(1),
      O => i_can_bsp_n0026
    );
  i_can_bsp_Msub_n0000_inst_sum_129 : X_XOR2
    port map (
      I0 => N23149,
      I1 => i_can_bsp_Msub_n0000_inst_cy_166,
      O => i_can_bsp_n0000(7)
    );
  i_can_btl_n0083_SW0 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => i_can_btl_seg2,
      ADR1 => i_can_btl_n0042,
      O => N40370
    );
  i_can_bsp_n02911 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => N55994,
      ADR1 => i_can_bsp_enable_error_cnt2,
      ADR2 => i_can_bsp_n0327,
      ADR3 => i_can_bsp_error_frame_q,
      O => i_can_bsp_n0291
    );
  i_can_btl_n00841 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_btl_N28740,
      ADR1 => last_bit_of_inter,
      ADR2 => i_can_bsp_rx_idle,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_btl_n0084
    );
  i_can_bsp_n02821 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_bus_free_cnt(0),
      ADR1 => i_can_bsp_bus_free_cnt(2),
      ADR2 => i_can_bsp_bus_free_cnt(1),
      ADR3 => i_can_bsp_bus_free_cnt(3),
      O => i_can_bsp_n0282
    );
  i_can_bsp_rx_err_cnt_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0138(8),
      CE => i_can_bsp_n0684,
      RST => i_can_bsp_rx_err_cnt_8_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_err_cnt(8),
      SET => GND
    );
  i_can_bsp_tx_err_cnt_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0140(8),
      CE => i_can_bsp_n0685,
      RST => i_can_bsp_tx_err_cnt_8_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_err_cnt(8),
      SET => GND
    );
  i_can_bsp_data_for_fifo_7_74 : X_LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      ADR0 => i_can_bsp_storing_header,
      ADR1 => CHOICE1259,
      ADR2 => CHOICE1262,
      ADR3 => i_can_bsp_n0004(7),
      O => i_can_bsp_data_for_fifo(7)
    );
  i_can_bsp_i_can_crc_rx_crc_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_n0000_10_Q,
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(10),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_rx_idle_257 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0028,
      CE => i_can_bsp_n0619,
      RST => i_can_bsp_rx_idle_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_idle,
      SET => GND
    );
  i_can_bsp_crc_in_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_sampled_bit_1,
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(0),
      SET => GND
    );
  i_can_bsp_Ker339521 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_rx_inter,
      ADR1 => i_can_bsp_rx_ack_lim,
      ADR2 => i_can_bsp_rx_eof,
      O => i_can_bsp_N33954
    );
  i_can_bsp_crc_in_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(3),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(4),
      SET => GND
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1651 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_7_0,
      ADR2 => i_can_bsp_tmp_fifo_6_0,
      O => i_can_bsp_Mmux_n0004_net224
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1511 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG10_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG10_data_out(1),
      O => i_can_bsp_Mmux_n0005_net199
    );
  i_can_bsp_Ker337321 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => i_can_bsp_delayed_dominant_cnt(0),
      ADR1 => i_can_bsp_delayed_dominant_cnt(1),
      O => i_can_bsp_N33734
    );
  i_can_bsp_tmp_data_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(0),
      CE => i_can_bsp_N34206,
      RST => i_can_bsp_tmp_data_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_data(1),
      SET => GND
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1621 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_1_0,
      ADR2 => i_can_bsp_tmp_fifo_0_0,
      O => i_can_bsp_Mmux_n0004_net220
    );
  i_can_bsp_data_cnt_18_258 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_data_cnt_inst_sum_90,
      CE => i_can_bsp_n0654,
      RST => i_can_bsp_data_cnt_18_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_data_cnt_18
    );
  i_can_bsp_tmp_data_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(3),
      CE => i_can_bsp_N34206,
      RST => i_can_bsp_tmp_data_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_data(4),
      SET => GND
    );
  i_can_bsp_go_rx_id21 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_rx_ide,
      ADR3 => i_can_btl_sample_point,
      O => i_can_bsp_go_rx_id2
    );
  i_can_bsp_i_can_fifo_Ker30654 : X_LUT4
    generic map(
      INIT => X"3B70"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      ADR1 => i_can_bsp_i_can_fifo_N30666,
      ADR2 => i_can_bsp_wr_fifo,
      ADR3 => i_can_registers_COMMAND_REG_data_out(0),
      O => i_can_bsp_i_can_fifo_N30656
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1531 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG11_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG11_data_out(7),
      O => i_can_bsp_Mmux_n0005_net203
    );
  i_can_bsp_form_err_latched_259 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0076,
      CE => i_can_bsp_n0651,
      RST => i_can_bsp_form_err_latched_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_form_err_latched,
      SET => GND
    );
  i_can_bsp_wr_fifo_260 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0087,
      CE => i_can_bsp_n0652,
      RST => i_can_bsp_wr_fifo_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_wr_fifo,
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_cy_211_261 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0272_inst_cy_210,
      IA => i_can_bsp_tx_err_cnt(6),
      SEL => i_can_bsp_Msub_n0272_inst_lut2_138,
      O => i_can_bsp_Msub_n0272_inst_cy_211
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1501 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG10_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG10_data_out(3),
      O => i_can_bsp_Mmux_n0005_net198
    );
  i_can_bsp_Mmux_n0005_inst_mux_f6_27 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net197,
      IB => i_can_bsp_Mmux_n0005_net200,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0005_net201
    );
  i_can_bsp_Ker338291 : X_LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(0),
      ADR1 => i_can_bsp_N34177,
      ADR2 => i_can_bsp_header_cnt(1),
      ADR3 => i_can_bsp_N34357,
      O => i_can_bsp_N33831
    );
  i_can_bsp_rule3_exc1_2_262 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0290,
      CE => i_can_bsp_n0648,
      RST => i_can_bsp_rule3_exc1_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rule3_exc1_2,
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_lut2_1381 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(6),
      O => i_can_bsp_Msub_n0272_inst_lut2_138,
      ADR1 => GND
    );
  i_can_bsp_n02071 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(2),
      ADR1 => i_can_bsp_header_cnt(0),
      ADR2 => i_can_bsp_header_cnt(1),
      O => i_can_bsp_n0207
    );
  i_can_bsp_Ker343601 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(0),
      ADR1 => i_can_bsp_header_cnt(1),
      O => i_can_bsp_N34362
    );
  i_can_bsp_i_can_acf_n0001752 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE767,
      ADR1 => CHOICE732,
      ADR2 => CHOICE738,
      ADR3 => N55264,
      O => CHOICE768
    );
  i_can_bsp_Ker343551 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_header_cnt(2),
      ADR2 => i_can_bsp_header_cnt(1),
      ADR3 => i_can_bsp_header_cnt(0),
      O => i_can_bsp_N34357
    );
  i_can_bsp_Ker342241 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(2),
      ADR1 => i_can_bsp_header_cnt(0),
      ADR2 => i_can_bsp_header_cnt(1),
      O => i_can_bsp_N34226
    );
  i_can_btl_n0083_263 : X_LUT4
    generic map(
      INIT => X"AAA2"
    )
    port map (
      ADR0 => i_can_btl_clk_en,
      ADR1 => N40370,
      ADR2 => i_can_btl_resync,
      ADR3 => hard_sync,
      O => i_can_btl_n0083
    );
  i_can_bsp_n02061 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(1),
      ADR1 => i_can_bsp_header_cnt(2),
      ADR2 => i_can_bsp_header_cnt(0),
      O => i_can_bsp_n0206
    );
  i_can_bsp_n02001 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_transmitter,
      ADR1 => i_can_bsp_N34261,
      O => i_can_bsp_n0200
    );
  i_can_bsp_n01521 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => i_can_bsp_bus_free,
      ADR1 => i_can_bsp_node_bus_off,
      O => i_can_bsp_n0152
    );
  i_can_bsp_n0147_0_1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_bus_free_cnt(0),
      ADR1 => i_can_bsp_n0292,
      O => i_can_bsp_n0147(0)
    );
  i_can_bsp_rx_err_cnt_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0138(7),
      CE => i_can_bsp_n0684,
      RST => i_can_bsp_rx_err_cnt_7_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_err_cnt(7),
      SET => GND
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_321 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_rd_info_pointer_25,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_32
    );
  i_can_bsp_n0147_1_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_n0292,
      ADR1 => i_can_bsp_n0289(1),
      O => i_can_bsp_n0147(1)
    );
  i_can_bsp_n0147_2_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_n0292,
      ADR1 => i_can_bsp_n0289(2),
      O => i_can_bsp_n0147(2)
    );
  i_can_bsp_n0147_3_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_n0292,
      ADR1 => i_can_bsp_n0289(3),
      O => i_can_bsp_n0147(3)
    );
  i_can_bsp_bit_err_latched_264 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0076,
      CE => i_can_bsp_n0646,
      RST => i_can_bsp_bit_err_latched_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_err_latched,
      SET => GND
    );
  i_can_bsp_rx_err_cnt_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0138(6),
      CE => i_can_bsp_n0684,
      RST => i_can_bsp_rx_err_cnt_6_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_err_cnt(6),
      SET => GND
    );
  i_can_bsp_Ker341821 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_26,
      ADR1 => i_can_bsp_bit_cnt_23,
      ADR2 => i_can_bsp_bit_cnt_24,
      O => i_can_bsp_N34184
    );
  i_can_registers_Ker316321 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => cs,
      ADR1 => wr_i_IBUF,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_registers_N31634
    );
  i_can_bsp_Mmux_n0004_inst_mux_f6_38 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net271,
      IB => i_can_bsp_Mmux_n0004_net274,
      SEL => i_can_bsp_COND_6(2),
      O => i_can_bsp_n0004(7)
    );
  i_can_bsp_bit_cnt_24_265 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_bit_cnt_inst_sum_96,
      CE => i_can_bsp_n0637,
      RST => i_can_bsp_bit_cnt_24_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_cnt_24
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_76 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net272,
      IB => i_can_bsp_Mmux_n0004_net273,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net274
    );
  i_can_bsp_write_data_to_tmp_fifo_266 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0180,
      RST => i_can_bsp_write_data_to_tmp_fifo_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_write_data_to_tmp_fifo,
      CE => VCC,
      SET => GND
    );
  i_can_bsp_ide_267 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_sampled_bit_1,
      CE => i_can_bsp_N34211,
      RST => i_can_bsp_ide_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_ide,
      SET => GND
    );
  i_can_bsp_rtr2_268 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_sampled_bit_1,
      CE => i_can_bsp_go_rx_r1,
      RST => i_can_bsp_rtr2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rtr2,
      SET => GND
    );
  i_can_bsp_rtr1_269 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_sampled_bit_1,
      CE => i_can_bsp_go_rx_ide,
      RST => i_can_bsp_rtr1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rtr1,
      SET => GND
    );
  i_can_bsp_rx_inter_270 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0058,
      CE => i_can_bsp_n0634,
      RST => i_can_bsp_rx_inter_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_inter,
      SET => GND
    );
  i_can_bsp_rx_eof_271 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0056,
      CE => i_can_bsp_n0633,
      RST => i_can_bsp_rx_eof_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_eof,
      SET => GND
    );
  i_can_bsp_i_can_acf_n0001402_SW0 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(7),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(7),
      ADR2 => i_can_bsp_id(20),
      O => N55228
    );
  i_can_bsp_n01901 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_go_rx_idle,
      ADR3 => i_can_bsp_go_rx_id1,
      O => i_can_bsp_n0190
    );
  i_can_bsp_n01891 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_bsp_go_tx,
      ADR2 => i_can_bsp_go_error_frame,
      O => i_can_bsp_n0189
    );
  i_can_bsp_rx_err_cnt_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0138(4),
      CE => i_can_bsp_n0684,
      RST => i_can_bsp_rx_err_cnt_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_err_cnt(4),
      SET => GND
    );
  i_can_bsp_n01861 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_rx_id1,
      ADR2 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_n0186
    );
  i_can_bsp_n01421 : X_LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_n0241,
      ADR2 => i_can_btl_go_sync1_2,
      O => i_can_bsp_n0142
    );
  i_can_bsp_ack_err_latched_272 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0076,
      CE => i_can_bsp_n0645,
      RST => i_can_bsp_ack_err_latched_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_ack_err_latched,
      SET => GND
    );
  i_can_bsp_Mmux_n0010_inst_lut3_481 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(1),
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(2),
      O => i_can_bsp_Mmux_n0010_net20
    );
  i_can_bsp_n01831 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_error_flag_over,
      O => i_can_bsp_n0183
    );
  i_can_bsp_n01821 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_error_flag_over,
      ADR1 => i_can_bsp_rule3_exc1_2,
      ADR2 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_n0182
    );
  i_can_bsp_n01011 : X_LUT4
    generic map(
      INIT => X"0007"
    )
    port map (
      ADR0 => i_can_bsp_n0242,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => i_can_bsp_go_error_frame,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0101
    );
  i_can_bsp_n01801 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_21,
      ADR1 => i_can_bsp_bit_cnt_22,
      ADR2 => i_can_bsp_bit_cnt_23,
      ADR3 => i_can_bsp_N34206,
      O => i_can_bsp_n0180
    );
  i_can_registers_we_interrupt_enable_273 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => N55384,
      ADR2 => i_can_registers_N31793,
      ADR3 => i_can_registers_N31603,
      O => i_can_registers_we_interrupt_enable
    );
  i_can_bsp_n00561 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_bsp_go_overload_frame,
      ADR2 => i_can_bsp_go_rx_inter,
      O => i_can_bsp_n0056
    );
  i_can_registers_n00101 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_registers_COMMAND_REG0_data_out(0),
      ADR1 => i_can_registers_COMMAND_REG4_data_out(0),
      O => i_can_registers_n0010
    );
  i_can_bsp_n00541 : X_LUT4
    generic map(
      INIT => X"0007"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_rx_ack_lim,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0054
    );
  i_can_bsp_n00521 : X_LUT4
    generic map(
      INIT => X"0007"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_rx_ack,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0052
    );
  i_can_bsp_n00481 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_crc_lim,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0048
    );
  i_can_bsp_n00461 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_crc,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0046
    );
  i_can_bsp_Ker342595 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(6),
      ADR1 => i_can_bsp_rx_err_cnt(7),
      ADR2 => i_can_bsp_rx_err_cnt(8),
      ADR3 => i_can_bsp_rx_err_cnt(0),
      O => CHOICE1657
    );
  i_can_bsp_n00421 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_dlc,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0042
    );
  i_can_bsp_n00401 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_r0,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0040
    );
  i_can_bsp_n02901 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_error_flag_over,
      ADR2 => i_can_bsp_rule3_exc1_1,
      O => i_can_bsp_n0290
    );
  i_can_bsp_n00361 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_rtr2,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0036
    );
  i_can_bsp_n06221_SW0 : X_LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_rx_rtr1,
      ADR2 => i_can_btl_sample_point,
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => N55662
    );
  i_can_bsp_n00381 : X_LUT4
    generic map(
      INIT => X"0007"
    )
    port map (
      ADR0 => i_can_bsp_rx_rtr2,
      ADR1 => i_can_bsp_N34271,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0038
    );
  i_can_bsp_n00301 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_rtr1,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0030
    );
  i_can_bsp_n00281 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_id1,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0028
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1701 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_1_2,
      ADR2 => i_can_bsp_tmp_fifo_0_2,
      O => i_can_bsp_Mmux_n0004_net234
    );
  i_can_bsp_Mmux_n0004_inst_mux_f6_32 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net229,
      IB => i_can_bsp_Mmux_n0004_net232,
      SEL => i_can_bsp_COND_6(2),
      O => i_can_bsp_n0004(1)
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1711 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_3_2,
      ADR2 => i_can_bsp_tmp_fifo_2_2,
      O => i_can_bsp_Mmux_n0004_net235
    );
  i_can_bsp_Mmux_n0009_inst_lut3_841 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0009_net82,
      ADR2 => i_can_bsp_Mmux_n0009_net75,
      O => i_can_bsp_Mmux_n0009_net83
    );
  i_can_bsp_Maddsub_n0158_inst_lut2_961 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(7),
      ADR1 => i_can_bsp_transmitter,
      ADR2 => i_can_bsp_N34261,
      O => i_can_bsp_Maddsub_n0158_inst_lut2_96
    );
  i_can_bsp_go_rx_data4 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_data_len(0),
      ADR1 => i_can_bsp_data_len(1),
      ADR2 => i_can_bsp_data_len(2),
      ADR3 => i_can_btl_sampled_bit_1,
      O => CHOICE1360
    );
  i_can_registers_data_out_tmp_6_5_SW2 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => addr_latched(4),
      ADR1 => addr_latched(2),
      ADR2 => addr_latched(3),
      ADR3 => i_can_registers_TX_DATA_REG1_data_out(6),
      O => N55031
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1491 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG10_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG10_data_out(5),
      O => i_can_bsp_Mmux_n0005_net196
    );
  i_can_registers_we_interrupt_enable_SW1 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => addr_latched_4_1,
      ADR1 => addr_latched_2_1,
      ADR2 => i_can_registers_N31847,
      ADR3 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => N55384
    );
  i_can_bsp_no_byte11 : X_LUT4
    generic map(
      INIT => X"CCCD"
    )
    port map (
      ADR0 => i_can_bsp_data_len(2),
      ADR1 => i_can_bsp_rtr1,
      ADR2 => i_can_bsp_data_len(3),
      ADR3 => i_can_bsp_data_len(1),
      O => i_can_bsp_no_byte1
    );
  i_can_bsp_Mmux_n0008_inst_lut3_941 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(1),
      ADR2 => i_can_registers_TX_DATA_REG0_data_out(2),
      O => i_can_bsp_Mmux_n0008_net101
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_38 : X_MUX2
    port map (
      IA => N54609,
      IB => tx_data_0_0_rt,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0007_net139
    );
  i_can_bsp_n011060_G : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0006_net155,
      ADR2 => i_can_bsp_Mmux_n0006_net148,
      O => N55874
    );
  i_can_bsp_n00761 : X_LUT4
    generic map(
      INIT => X"0007"
    )
    port map (
      ADR0 => i_can_bsp_n0241,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => i_can_bsp_go_overload_frame,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0076
    );
  i_can_bsp_n01181 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_bsp_arbitration_lost,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR3 => i_can_bsp_go_rx_inter,
      O => i_can_bsp_n0118
    );
  i_can_bsp_n0070_2_Q : X_LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      ADR0 => i_can_bsp_tx_q,
      ADR1 => i_can_bsp_tx,
      ADR2 => i_can_bsp_bit_de_stuff_reset,
      ADR3 => N41066,
      O => i_can_bsp_n0070(2)
    );
  i_can_bsp_i_can_fifo_Ker30669_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_info_cnt(2),
      ADR1 => i_can_bsp_i_can_fifo_info_cnt(0),
      ADR2 => i_can_bsp_i_can_fifo_info_cnt(1),
      O => N41250
    );
  i_can_bsp_no_byte0_274 : X_LUT4
    generic map(
      INIT => X"AAAE"
    )
    port map (
      ADR0 => i_can_bsp_rtr1,
      ADR1 => N41200,
      ADR2 => i_can_bsp_data_len(1),
      ADR3 => i_can_bsp_data_len(0),
      O => i_can_bsp_no_byte0
    );
  i_can_bsp_i_can_acf_SF26404_275 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_bsp_id(20),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(7),
      ADR2 => N41313,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(7),
      O => i_can_bsp_i_can_acf_SF26404
    );
  i_can_bsp_rule5_276 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_bsp_node_error_passive,
      ADR1 => N41574,
      ADR2 => i_can_bsp_bit_err,
      O => i_can_bsp_rule5
    );
  i_can_bsp_rule5_SW0 : X_LUT4
    generic map(
      INIT => X"135F"
    )
    port map (
      ADR0 => i_can_bsp_n0237,
      ADR1 => i_can_bsp_overload_frame,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => i_can_bsp_n0238,
      O => N41574
    );
  i_can_registers_data_out_tmp_3_153_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_2_2,
      ADR2 => addr_latched_4_2,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(3),
      O => N54705
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_261 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(6),
      O => N54668
    );
  i_can_registers_data_out_tmp_3_132 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_1_1,
      ADR2 => addr_latched_3_1,
      ADR3 => N55523,
      O => CHOICE2422
    );
  i_can_registers_data_out_tmp_5_47 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0068,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(5),
      ADR2 => i_can_registers_n0069,
      ADR3 => i_can_registers_TX_DATA_REG9_data_out(5),
      O => CHOICE2199
    );
  i_can_registers_data_out_tmp_6_70 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2132,
      ADR2 => CHOICE2137,
      ADR3 => CHOICE2125,
      O => CHOICE2141
    );
  i_can_bsp_n068410 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => i_can_bsp_delayed_dominant_cnt(2),
      ADR1 => i_can_bsp_N33734,
      ADR2 => i_can_bsp_n0222,
      ADR3 => i_can_bsp_rx_err_cnt_blocked,
      O => CHOICE1740
    );
  i_can_registers_Ker3144440 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_4_3,
      ADR1 => addr_latched_2_3,
      ADR2 => i_can_registers_N31793,
      ADR3 => addr_latched_0_2,
      O => CHOICE1922
    );
  i_can_bsp_Mxor_n0327_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_btl_sampled_bit_q,
      ADR1 => i_can_btl_sampled_bit_1,
      O => i_can_bsp_n0327
    );
  i_can_bsp_Msub_n0272_inst_sum_151 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0272_inst_lut2_137,
      I1 => i_can_bsp_Msub_n0272_inst_cy_209,
      O => i_can_bsp_n0272(5)
    );
  i_can_bsp_n06271 : X_LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_rx_r0,
      ADR2 => i_can_btl_sample_point,
      ADR3 => i_can_bsp_n0628,
      O => i_can_bsp_n0627
    );
  i_can_bsp_n00441 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_crc,
      ADR3 => i_can_bsp_go_rx_data,
      O => i_can_bsp_n0044
    );
  i_can_bsp_n01331 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_arbitration_blocked,
      O => i_can_bsp_n0133,
      ADR1 => GND
    );
  i_can_bsp_n01311 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_btl_sampled_bit_1,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_idle,
      ADR3 => i_can_bsp_error_frame,
      O => i_can_bsp_n0131
    );
  i_can_registers_n02001 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => overrun,
      ADR1 => i_can_registers_overrun_q,
      ADR2 => i_can_registers_COMMAND_REG_data_out(1),
      O => i_can_registers_n0200
    );
  i_can_bsp_rx_err_cnt_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0138(5),
      CE => i_can_bsp_n0684,
      RST => i_can_bsp_rx_err_cnt_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_err_cnt(5),
      SET => GND
    );
  i_can_bsp_n068491 : X_LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      ADR0 => i_can_bsp_transmitter,
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR2 => i_can_registers_MODE_REG_EXT_data_out(0),
      O => CHOICE1759
    );
  i_can_bsp_Mmux_n0006_inst_mux_f5_42 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0006_net152,
      IB => i_can_bsp_Mmux_n0006_net153,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0006_net154
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1611 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0005_net216,
      ADR2 => i_can_bsp_Mmux_n0005_net209,
      O => i_can_bsp_Mmux_n0005_net217
    );
  i_can_bsp_Maddsub_n0158_inst_lut2_971 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(8),
      ADR1 => i_can_bsp_transmitter,
      ADR2 => i_can_bsp_N34261,
      O => i_can_bsp_Maddsub_n0158_inst_lut2_97
    );
  i_can_bsp_n01161 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_tx_point_q,
      O => i_can_bsp_n0116,
      ADR1 => GND
    );
  i_can_bsp_Ker335301 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => i_can_bsp_N34261,
      ADR1 => i_can_bsp_transmitter,
      ADR2 => i_can_bsp_go_error_frame,
      ADR3 => i_can_bsp_rule5,
      O => i_can_bsp_N33532
    );
  i_can_bsp_n01111 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_go_early_tx_latched,
      ADR1 => i_can_bsp_tx,
      O => i_can_bsp_n0111
    );
  i_can_bsp_n0110223 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_bsp_tx_state,
      ADR1 => CHOICE1392,
      ADR2 => CHOICE1415,
      ADR3 => CHOICE1433,
      O => i_can_bsp_n0110
    );
  i_can_bsp_n01441 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => i_can_bsp_n0241,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => i_can_bsp_N34191,
      O => i_can_bsp_n0144
    );
  i_can_btl_n00771 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => i_can_btl_go_seg2,
      O => i_can_btl_n0077
    );
  i_can_bsp_n01021 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_overload_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out(0),
      ADR3 => i_can_bsp_overload_frame_ended,
      O => i_can_bsp_n0102
    );
  i_can_bsp_go_rx_r11 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_rx_rtr2,
      ADR2 => i_can_btl_sample_point,
      O => i_can_bsp_go_rx_r1
    );
  i_can_bsp_n01051 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_overload_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR3 => i_can_bsp_overload_frame_ended,
      O => i_can_bsp_n0105
    );
  i_can_bsp_n00321 : X_LUT4
    generic map(
      INIT => X"0007"
    )
    port map (
      ADR0 => i_can_bsp_rx_rtr1,
      ADR1 => i_can_bsp_N34271,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0032
    );
  i_can_bsp_n00831 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_error_flag_over,
      O => i_can_bsp_n0083
    );
  i_can_bsp_Mmux_n0005_inst_mux_f6_26 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net190,
      IB => i_can_bsp_Mmux_n0005_net193,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0005_net194
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_281 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_rd_info_pointer_21,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_28
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1931 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_7_7,
      ADR2 => i_can_bsp_tmp_fifo_6_7,
      O => i_can_bsp_Mmux_n0004_net273
    );
  i_can_bsp_Ker341751 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(2),
      ADR1 => i_can_bsp_ide,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_bsp_N34177
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_331 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_i_can_fifo_wr_info_pointer_26,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_33
    );
  i_can_registers_data_out_tmp_7_135_SW1 : X_LUT4
    generic map(
      INIT => X"3B7F"
    )
    port map (
      ADR0 => addr_latched_2_3,
      ADR1 => addr_latched_4_3,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(7),
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(7),
      O => N55497
    );
  i_can_bsp_n0069_0_1 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => i_can_bsp_bit_stuff_cnt(0),
      ADR1 => i_can_bsp_n0327,
      ADR2 => i_can_bsp_bit_de_stuff_reset,
      ADR3 => i_can_bsp_bit_de_stuff,
      O => i_can_bsp_n0069(0)
    );
  i_can_registers_n0033_SW0 : X_LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_IRQ_EN_REG_data_out(3),
      ADR2 => i_can_registers_MODE_REG_BASIC_data_out(3),
      O => N40613
    );
  tx_data_1_0_rt_277 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG1_data_out(0),
      O => tx_data_1_0_rt,
      ADR1 => GND
    );
  i_can_bsp_Mmux_error_status_Result40 : X_LUT4
    generic map(
      INIT => X"AEEE"
    )
    port map (
      ADR0 => N55174,
      ADR1 => CHOICE1345,
      ADR2 => i_can_bsp_Mcompar_n0283_inst_cy_201,
      ADR3 => i_can_bsp_Mcompar_n0284_inst_cy_201,
      O => error_status
    );
  i_can_bsp_n00611 : X_LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_go_rx_crc_lim,
      ADR2 => i_can_registers_MODE_REG0_data_out(0),
      ADR3 => i_can_bsp_write_data_to_tmp_fifo,
      O => i_can_bsp_n0061
    );
  i_can_bsp_tmp_fifo_7_7_278 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(7),
      CE => i_can_bsp_n0026,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_7_7,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_Ker343271 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_btl_sampled_bit_1,
      O => i_can_bsp_N34329
    );
  i_can_bsp_n01081 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_rx_id1,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0108
    );
  i_can_bsp_i_can_acf_Ker2653740 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_bsp_id(25),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(4),
      ADR2 => CHOICE540,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(4),
      O => CHOICE541
    );
  i_can_bsp_n02221 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_bsp_error_cnt1(1),
      ADR1 => i_can_bsp_error_cnt1(2),
      ADR2 => i_can_bsp_error_cnt1(0),
      O => i_can_bsp_n0222
    );
  i_can_bsp_n00211 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_byte_cnt(2),
      ADR1 => i_can_bsp_byte_cnt(0),
      ADR2 => i_can_bsp_byte_cnt(1),
      ADR3 => i_can_bsp_write_data_to_tmp_fifo,
      O => i_can_bsp_n0021
    );
  i_can_bsp_n00791 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_error_flag_over,
      ADR1 => i_can_bsp_rule3_exc1_2,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0079
    );
  i_can_registers_Ker31526 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => N56030,
      ADR1 => addr_latched_1_3,
      ADR2 => addr_latched(3),
      ADR3 => addr_latched_2_4,
      O => i_can_registers_N31528
    );
  i_can_bsp_go_rx_dlc1 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_rx_r0,
      ADR2 => i_can_btl_sample_point,
      O => i_can_bsp_go_rx_dlc
    );
  i_can_bsp_Ker341891 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(7),
      ADR1 => i_can_bsp_tx_err_cnt(7),
      ADR2 => i_can_bsp_tx_err_cnt(8),
      ADR3 => i_can_bsp_rx_err_cnt(8),
      O => i_can_bsp_N34191
    );
  i_can_bsp_Ker335781 : X_LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      ADR0 => i_can_bsp_n0200,
      ADR1 => i_can_bsp_n0203,
      ADR2 => i_can_bsp_rule5,
      ADR3 => i_can_bsp_go_error_frame,
      O => i_can_bsp_N33580
    );
  i_can_bsp_Ker340661 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_bsp_node_error_passive,
      ADR2 => i_can_bsp_rx_id2,
      O => i_can_bsp_N34068
    );
  i_can_bsp_i_can_fifo_n007429_G : X_LUT4
    generic map(
      INIT => X"ABEA"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      ADR2 => i_can_registers_COMMAND_REG_data_out(0),
      ADR3 => i_can_bsp_wr_fifo,
      O => N55869
    );
  i_can_bsp_n01291 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_go_rx_idle,
      ADR3 => i_can_bsp_go_rx_id1,
      O => i_can_bsp_n0129
    );
  i_can_bsp_n02421 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_bsp_overload_cnt2(1),
      ADR1 => i_can_bsp_overload_cnt2(2),
      ADR2 => i_can_bsp_overload_cnt2(0),
      O => i_can_bsp_n0242
    );
  i_can_bsp_Ker338911 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_26,
      ADR1 => i_can_bsp_bit_cnt_24,
      ADR2 => i_can_bsp_bit_cnt_25,
      O => i_can_bsp_N33893
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_202 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG9_data_out(5),
      O => N54651
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_54 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net195,
      IB => i_can_bsp_Mmux_n0005_net196,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net197
    );
  i_can_bsp_n00251 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_bsp_byte_cnt(0),
      ADR1 => i_can_bsp_byte_cnt(2),
      ADR2 => i_can_bsp_byte_cnt(1),
      ADR3 => i_can_bsp_write_data_to_tmp_fifo,
      O => i_can_bsp_n0025
    );
  i_can_bsp_n00241 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_bsp_byte_cnt(1),
      ADR1 => i_can_bsp_byte_cnt(0),
      ADR2 => i_can_bsp_byte_cnt(2),
      ADR3 => i_can_bsp_write_data_to_tmp_fifo,
      O => i_can_bsp_n0024
    );
  i_can_bsp_n00231 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_byte_cnt(0),
      ADR1 => i_can_bsp_byte_cnt(1),
      ADR2 => i_can_bsp_byte_cnt(2),
      ADR3 => i_can_bsp_write_data_to_tmp_fifo,
      O => i_can_bsp_n0023
    );
  i_can_bsp_n00221 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_bsp_byte_cnt(2),
      ADR1 => i_can_bsp_write_data_to_tmp_fifo,
      ADR2 => i_can_bsp_byte_cnt(0),
      ADR3 => i_can_bsp_byte_cnt(1),
      O => i_can_bsp_n0022
    );
  i_can_bsp_Ker341941 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_bsp_tx_state,
      ADR1 => listen_only_mode,
      ADR2 => i_can_bsp_suspend,
      ADR3 => i_can_bsp_need_to_tx,
      O => i_can_bsp_N34196
    );
  i_can_bsp_n0444_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_susp_cnt(0),
      ADR1 => i_can_bsp_susp_cnt(1),
      O => N39691
    );
  i_can_bsp_Ker3425934 : X_LUT4
    generic map(
      INIT => X"00A8"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_ack_lim,
      ADR1 => CHOICE1661,
      ADR2 => CHOICE1657,
      ADR3 => i_can_bsp_err,
      O => i_can_bsp_N34261
    );
  i_can_registers_n00371 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_arbitration_blocked,
      ADR1 => i_can_bsp_arbitration_lost_q,
      ADR2 => i_can_bsp_arbitration_lost,
      ADR3 => i_can_registers_IRQ_EN_REG_data_out(6),
      O => i_can_registers_n0037
    );
  i_can_bsp_Ker343171 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_btl_sampled_bit_1,
      ADR1 => i_can_btl_sample_point,
      O => i_can_bsp_N34319
    );
  i_can_bsp_n00141 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_rx_crc,
      ADR2 => i_can_btl_sample_point,
      O => i_can_bsp_n0014
    );
  i_can_bsp_n00111 : X_LUT4
    generic map(
      INIT => X"00A8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_rx_id2,
      ADR2 => i_can_bsp_rx_id1,
      ADR3 => i_can_bsp_bit_de_stuff,
      O => i_can_bsp_n0011
    );
  i_can_bsp_tmp_fifo_6_7_279 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(7),
      CE => i_can_bsp_n0025,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_6_7,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_go_rx_idle1 : X_LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      ADR0 => last_bit_of_inter,
      ADR1 => i_can_bsp_N34329,
      ADR2 => i_can_bsp_bus_free,
      ADR3 => i_can_bsp_node_bus_off,
      O => i_can_bsp_go_rx_idle
    );
  i_can_bsp_go_rx_rtr11 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_23,
      ADR1 => i_can_bsp_N34172,
      ADR2 => i_can_bsp_rx_id1,
      O => i_can_bsp_go_rx_rtr1
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_51 : X_LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_info_cnt(6),
      ADR1 => i_can_registers_COMMAND_REG_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30671,
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_5
    );
  i_can_bsp_Mcompar_n0248_inst_lut4_281 : X_LUT4
    generic map(
      INIT => X"8288"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_23,
      ADR1 => i_can_bsp_bit_cnt_24,
      ADR2 => i_can_bsp_data_len(3),
      ADR3 => i_can_bsp_data_len(0),
      O => i_can_bsp_Mcompar_n0248_inst_lut4_28
    );
  i_can_bsp_n0444_280 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_susp_cnt(2),
      ADR3 => N39691,
      O => i_can_bsp_n0444
    );
  i_can_bsp_go_rx_ide1 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_rx_rtr1,
      ADR2 => i_can_btl_sample_point,
      O => i_can_bsp_go_rx_ide
    );
  i_can_bsp_go_rx_r01 : X_LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      ADR0 => i_can_bsp_N34271,
      ADR1 => i_can_bsp_rx_r1,
      ADR2 => i_can_bsp_rx_ide,
      ADR3 => i_can_btl_sampled_bit_1,
      O => i_can_bsp_go_rx_r0
    );
  i_can_bsp_Ker342091 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_rx_ide,
      ADR2 => i_can_btl_sample_point,
      O => i_can_bsp_N34211
    );
  i_can_bsp_n0154_2_5 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_rx_ide,
      ADR1 => i_can_bsp_rx_r1,
      ADR2 => i_can_bsp_rx_rtr1,
      O => CHOICE1561
    );
  i_can_bsp_go_rx_crc51 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_bsp_n0248,
      ADR1 => i_can_bsp_rx_data,
      ADR2 => CHOICE1621,
      ADR3 => i_can_bsp_N34271,
      O => i_can_bsp_go_rx_crc
    );
  i_can_bsp_go_rx_crc_lim1 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_bsp_N34172,
      ADR1 => i_can_bsp_bit_cnt_23,
      ADR2 => i_can_bsp_rx_crc,
      O => i_can_bsp_go_rx_crc_lim
    );
  i_can_bsp_go_rx_ack1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_rx_crc_lim,
      O => i_can_bsp_go_rx_ack
    );
  i_can_bsp_go_rx_ack_lim1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_rx_ack,
      O => i_can_bsp_go_rx_ack_lim
    );
  i_can_bsp_go_rx_eof1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_rx_ack_lim,
      O => i_can_bsp_go_rx_eof
    );
  i_can_registers_data_out_tmp_4_139 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_4_1,
      ADR1 => N55481,
      ADR2 => addr_latched_2_1,
      ADR3 => addr_latched_3_1,
      O => CHOICE2285
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1831 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_3_5,
      ADR2 => i_can_bsp_tmp_fifo_2_5,
      O => i_can_bsp_Mmux_n0004_net256
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1781 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_1_4,
      ADR2 => i_can_bsp_tmp_fifo_0_4,
      O => i_can_bsp_Mmux_n0004_net248
    );
  i_can_bsp_Msub_n0272_inst_cy_210_281 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0272_inst_cy_209,
      IA => i_can_bsp_tx_err_cnt(5),
      SEL => i_can_bsp_Msub_n0272_inst_lut2_137,
      O => i_can_bsp_Msub_n0272_inst_cy_210
    );
  i_can_bsp_Msub_n0272_inst_lut2_1371 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(5),
      O => i_can_bsp_Msub_n0272_inst_lut2_137,
      ADR1 => GND
    );
  i_can_bsp_Mcompar_n0284_inst_lut2_13111 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(8),
      O => i_can_bsp_Mcompar_n0284_inst_lut2_131,
      ADR1 => GND
    );
  i_can_bsp_Mcompar_n0283_inst_lut2_13111 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(8),
      O => i_can_bsp_Mcompar_n0283_inst_lut2_131,
      ADR1 => GND
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1871 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_3_6,
      ADR2 => i_can_bsp_tmp_fifo_2_6,
      O => i_can_bsp_Mmux_n0004_net263
    );
  i_can_bsp_Msub_n0272_inst_sum_150 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0272_inst_lut2_136,
      I1 => i_can_bsp_Msub_n0272_inst_cy_208,
      O => i_can_bsp_n0272(4)
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_211 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG9_data_out(1),
      O => N54653
    );
  i_can_bsp_data_for_fifo_3_11_G : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(2),
      ADR1 => i_can_bsp_id(8),
      ADR2 => i_can_bsp_header_cnt(1),
      O => N55864
    );
  i_can_bsp_error_frame_ended1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_bsp_error_cnt2(1),
      ADR1 => i_can_bsp_error_cnt2(2),
      ADR2 => i_can_bsp_error_cnt2(0),
      ADR3 => N55900,
      O => i_can_bsp_error_frame_ended
    );
  i_can_registers_data_out_tmp_1_23_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31666,
      ADR2 => addr_latched_1_1,
      ADR3 => i_can_registers_TX_DATA_REG4_data_out(1),
      O => N55096
    );
  i_can_bsp_n068459_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => i_can_btl_sampled_bit_1,
      ADR1 => CHOICE1740,
      ADR2 => i_can_btl_sample_point,
      ADR3 => i_can_bsp_error_frame,
      O => N55280
    );
  i_can_bsp_bit_de_stuff_set1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_rx_id1,
      O => i_can_bsp_bit_de_stuff_set
    );
  i_can_bsp_bit_de_stuff_reset1 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_overload_frame,
      ADR2 => i_can_bsp_go_rx_crc_lim,
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_bit_de_stuff_reset
    );
  i_can_bsp_remote_rq1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_ide,
      ADR1 => i_can_bsp_rtr2,
      ADR2 => i_can_bsp_rtr1,
      O => i_can_bsp_remote_rq
    );
  reset_mode_rt1_282 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      O => reset_mode_rt1,
      ADR1 => GND
    );
  i_can_bsp_go_crc_enable1 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_btl_N28740,
      ADR1 => last_bit_of_inter,
      ADR2 => i_can_bsp_rx_idle,
      ADR3 => i_can_bsp_go_tx,
      O => i_can_bsp_go_crc_enable
    );
  i_can_registers_data_out_tmp_5_177_SW0 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_4_3,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(5),
      O => N54917
    );
  i_can_bsp_tmp_fifo_5_7_283 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(7),
      CE => i_can_bsp_n0024,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_5_7,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_bit_err160 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => CHOICE1671,
      ADR1 => CHOICE1677,
      ADR2 => CHOICE1688,
      ADR3 => CHOICE1708,
      O => i_can_bsp_bit_err
    );
  i_can_bsp_crc_in_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(10),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_11_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(11),
      SET => GND
    );
  i_can_bsp_crc_in_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(11),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_12_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(12),
      SET => GND
    );
  i_can_bsp_crc_in_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(12),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_13_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(13),
      SET => GND
    );
  i_can_bsp_crc_in_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_crc_in(13),
      CE => i_can_bsp_n0014,
      RST => i_can_bsp_crc_in_14_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_crc_in(14),
      SET => GND
    );
  i_can_bsp_tmp_data_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_btl_sampled_bit_1,
      CE => i_can_bsp_N34206,
      RST => i_can_bsp_tmp_data_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_data(0),
      SET => GND
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1801 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_5_4,
      ADR2 => i_can_bsp_tmp_fifo_4_4,
      O => i_can_bsp_Mmux_n0004_net251
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1811 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_7_4,
      ADR2 => i_can_bsp_tmp_fifo_6_4,
      O => i_can_bsp_Mmux_n0004_net252
    );
  i_can_bsp_n00341 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_id2,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR3 => i_can_bsp_go_rx_r0,
      O => i_can_bsp_n0034
    );
  i_can_bsp_last_bit_of_inter1 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_21,
      ADR1 => N55979,
      ADR2 => i_can_bsp_rx_inter,
      O => last_bit_of_inter
    );
  i_can_bsp_bit_de_stuff1 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_stuff_cnt(1),
      ADR1 => i_can_bsp_bit_stuff_cnt(0),
      ADR2 => i_can_bsp_bit_stuff_cnt(2),
      O => i_can_bsp_bit_de_stuff
    );
  i_can_bsp_bit_de_stuff_tx1 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_stuff_cnt_tx(1),
      ADR1 => i_can_bsp_bit_stuff_cnt_tx(0),
      ADR2 => i_can_bsp_bit_stuff_cnt_tx(2),
      O => i_can_bsp_bit_de_stuff_tx
    );
  i_can_bsp_stuff_err1 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_bsp_n0327,
      ADR1 => i_can_bsp_bit_stuff_cnt_en,
      ADR2 => i_can_bsp_bit_de_stuff,
      ADR3 => i_can_btl_sample_point,
      O => i_can_bsp_stuff_err
    );
  i_can_bsp_i_can_acf_n0001765 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE768,
      ADR1 => CHOICE690,
      ADR2 => CHOICE696,
      ADR3 => N55272,
      O => CHOICE769
    );
  i_can_bsp_ack_err_284 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => N55543,
      ADR1 => i_can_bsp_rx_ack,
      ADR2 => i_can_btl_sample_point,
      ADR3 => i_can_bsp_tx_state,
      O => i_can_bsp_ack_err
    );
  i_can_bsp_ack_err_SW1 : X_LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG_EXT_data_out(1),
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR2 => i_can_btl_sampled_bit_1,
      O => N55543
    );
  i_can_bsp_n02411 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_bsp_error_cnt2(1),
      ADR1 => i_can_bsp_error_cnt2(2),
      ADR2 => i_can_bsp_error_cnt2(0),
      O => i_can_bsp_n0241
    );
  i_can_bsp_header_len_1_1 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => i_can_bsp_ide,
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_bsp_header_len(1)
    );
  i_can_bsp_tmp_fifo_4_7_285 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(7),
      CE => i_can_bsp_n0023,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_4_7,
      SET => GND,
      RST => GSR
    );
  i_can_registers_data_out_tmp_4_91_SW0 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_2_3,
      ADR2 => i_can_registers_BUS_TIMING_1_REG_data_out(4),
      O => N54923
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1541 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG11_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG11_data_out(5),
      O => i_can_bsp_Mmux_n0005_net204
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1521 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0005_net201,
      ADR2 => i_can_bsp_Mmux_n0005_net194,
      O => i_can_bsp_Mmux_n0005_net202
    );
  i_can_bsp_reset_wr_fifo77 : X_LUT4
    generic map(
      INIT => X"EBAA"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_n0224(3),
      ADR2 => i_can_bsp_data_cnt_20,
      ADR3 => CHOICE1784,
      O => i_can_bsp_reset_wr_fifo
    );
  i_can_registers_data_out_tmp_3_127 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0071,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(3),
      ADR2 => N55943,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(3),
      O => CHOICE2419
    );
  i_can_bsp_error_flag_over24 : X_LUT4
    generic map(
      INIT => X"082A"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_node_error_passive,
      ADR2 => N55515,
      ADR3 => N55513,
      O => i_can_bsp_error_flag_over
    );
  i_can_bsp_need_to_tx_286 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0114,
      CE => i_can_bsp_n0670,
      RST => i_can_bsp_need_to_tx_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_need_to_tx,
      SET => GND
    );
  i_can_bsp_rx_ack_287 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0052,
      CE => i_can_bsp_n0631,
      RST => i_can_bsp_rx_ack_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_rx_ack,
      SET => GND
    );
  i_can_bsp_n00191 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_bsp_byte_cnt(2),
      ADR1 => i_can_bsp_byte_cnt(0),
      ADR2 => i_can_bsp_byte_cnt(1),
      ADR3 => i_can_bsp_write_data_to_tmp_fifo,
      O => i_can_bsp_n0019
    );
  i_can_registers_n0033_288 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_registers_overrun_q,
      ADR1 => N40613,
      ADR2 => overrun,
      O => i_can_registers_n0033
    );
  i_can_bsp_go_early_tx1 : X_LUT4
    generic map(
      INIT => X"A800"
    )
    port map (
      ADR0 => i_can_bsp_N34319,
      ADR1 => last_bit_of_inter,
      ADR2 => i_can_bsp_rx_idle,
      ADR3 => i_can_bsp_N34196,
      O => i_can_bsp_go_early_tx
    );
  i_can_registers_data_out_tmp_2_911_G : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31781,
      ADR1 => addr_latched_2_3,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(2),
      ADR3 => addr_latched_1_2,
      O => N55859
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_152 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG6_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG6_data_out(1),
      O => N54633
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_22_289 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_94,
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_info_pointer_22_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_22
    );
  i_can_bsp_set_reset_mode1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_node_bus_off_q,
      ADR1 => i_can_bsp_node_bus_off,
      O => set_reset_mode
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_98_290 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_33,
      I1 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_131,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_98
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_21_291 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_93,
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_info_pointer_21_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_21
    );
  i_can_bsp_tmp_fifo_3_7_292 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tmp_data(7),
      CE => i_can_bsp_n0022,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tmp_fifo_3_7,
      SET => GND,
      RST => GSR
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_161 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG7_data_out(7),
      O => N54635
    );
  i_can_bsp_bit_stuff_cnt_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_bsp_n0069(0),
      CE => i_can_bsp_n0641,
      SET => i_can_bsp_bit_stuff_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_stuff_cnt(0),
      RST => GND
    );
  i_can_bsp_bit_stuff_cnt_en_293 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_bit_de_stuff_set,
      CE => i_can_bsp_n0640,
      RST => i_can_bsp_bit_stuff_cnt_en_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_stuff_cnt_en,
      SET => GND
    );
  i_can_bsp_Mcompar_n0248_inst_cy_203_294 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0248_inst_cy_202,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0248_inst_lut4_28,
      O => i_can_bsp_Mcompar_n0248_inst_cy_203
    );
  i_can_bsp_data_for_fifo_0_66 : X_LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      ADR0 => i_can_bsp_storing_header,
      ADR1 => CHOICE1181,
      ADR2 => CHOICE1190,
      ADR3 => i_can_bsp_n0004(0),
      O => i_can_bsp_data_for_fifo(0)
    );
  i_can_bsp_data_for_fifo_1_66 : X_LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      ADR0 => i_can_bsp_storing_header,
      ADR1 => CHOICE1198,
      ADR2 => CHOICE1207,
      ADR3 => i_can_bsp_n0004(1),
      O => i_can_bsp_data_for_fifo(1)
    );
  i_can_bsp_n02211 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_bsp_overload_cnt1(1),
      ADR1 => i_can_bsp_overload_cnt1(2),
      ADR2 => i_can_bsp_overload_cnt1(0),
      O => i_can_bsp_n0221
    );
  i_can_bsp_data_for_fifo_6_82 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_id(1),
      ADR1 => i_can_bsp_N33831,
      ADR2 => i_can_bsp_id(9),
      ADR3 => i_can_bsp_N33524,
      O => CHOICE1310
    );
  i_can_bsp_Mmux_n0004_inst_mux_f6_37 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net264,
      IB => i_can_bsp_Mmux_n0004_net267,
      SEL => i_can_bsp_COND_6(2),
      O => i_can_bsp_n0004(6)
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1901 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_1_7,
      ADR2 => i_can_bsp_tmp_fifo_0_7,
      O => i_can_bsp_Mmux_n0004_net269
    );
  i_can_bsp_Msub_n0272_inst_sum_153 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0272_inst_lut2_139,
      I1 => i_can_bsp_Msub_n0272_inst_cy_211,
      O => i_can_bsp_n0272(7)
    );
  i_can_bsp_Msub_n0272_inst_cy_209_295 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0272_inst_cy_208,
      IA => i_can_bsp_tx_err_cnt(4),
      SEL => i_can_bsp_Msub_n0272_inst_lut2_136,
      O => i_can_bsp_Msub_n0272_inst_cy_209
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1561 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG11_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG11_data_out(1),
      O => i_can_bsp_Mmux_n0005_net207
    );
  i_can_bsp_Mmux_n0004_inst_mux_f6_34 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net243,
      IB => i_can_bsp_Mmux_n0004_net246,
      SEL => i_can_bsp_COND_6(2),
      O => i_can_bsp_n0004(3)
    );
  i_can_bsp_Msub_n0272_inst_lut2_1361 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(4),
      O => i_can_bsp_Msub_n0272_inst_lut2_136,
      ADR1 => GND
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1551 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG11_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG11_data_out(3),
      O => i_can_bsp_Mmux_n0005_net206
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1731 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_7_2,
      ADR2 => i_can_bsp_tmp_fifo_6_2,
      O => i_can_bsp_Mmux_n0004_net238
    );
  i_can_bsp_Msub_n0272_inst_sum_149 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0272_inst_lut2_135,
      I1 => i_can_bsp_Msub_n0272_inst_cy_207,
      O => i_can_bsp_n0272(3)
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_56 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net203,
      IB => i_can_bsp_Mmux_n0005_net204,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net205
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_65 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net234,
      IB => i_can_bsp_Mmux_n0004_net235,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net236
    );
  i_can_bsp_bit_stuff_cnt_tx_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0070(2),
      CE => i_can_bsp_n0642,
      RST => i_can_bsp_bit_stuff_cnt_tx_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_stuff_cnt_tx(2),
      SET => GND
    );
  i_can_bsp_bit_stuff_cnt_tx_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0070(1),
      CE => i_can_bsp_n0642,
      RST => i_can_bsp_bit_stuff_cnt_tx_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_stuff_cnt_tx(1),
      SET => GND
    );
  i_can_bsp_bit_stuff_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0069(2),
      CE => i_can_bsp_n0641,
      RST => i_can_bsp_bit_stuff_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_stuff_cnt(2),
      SET => GND
    );
  i_can_bsp_bit_stuff_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_n0069(1),
      CE => i_can_bsp_n0641,
      RST => i_can_bsp_bit_stuff_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_stuff_cnt(1),
      SET => GND
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_57 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net206,
      IB => i_can_bsp_Mmux_n0005_net207,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net208
    );
  i_can_bsp_susp_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_susp_cnt_n0001(2),
      CE => i_can_bsp_n0677,
      RST => i_can_bsp_susp_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_susp_cnt(2),
      SET => GND
    );
  i_can_bsp_susp_cnt_Mmux_n0001_Result_2_1 : X_LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_susp_cnt(2),
      ADR2 => i_can_bsp_susp_cnt(1),
      ADR3 => i_can_bsp_susp_cnt(0),
      O => i_can_bsp_susp_cnt_n0001(2)
    );
  i_can_bsp_susp_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_susp_cnt_n0001(0),
      CE => i_can_bsp_n0677,
      RST => i_can_bsp_susp_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_susp_cnt(0),
      SET => GND
    );
  i_can_bsp_susp_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_susp_cnt_n0001(1),
      CE => i_can_bsp_n0677,
      RST => i_can_bsp_susp_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_susp_cnt(1),
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_cy_208_296 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0272_inst_cy_207,
      IA => i_can_bsp_tx_err_cnt(3),
      SEL => i_can_bsp_Msub_n0272_inst_lut2_135,
      O => i_can_bsp_Msub_n0272_inst_cy_208
    );
  i_can_bsp_Mmux_n0004_inst_mux_f6_36 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net257,
      IB => i_can_bsp_Mmux_n0004_net260,
      SEL => i_can_bsp_COND_6(2),
      O => i_can_bsp_n0004(5)
    );
  i_can_bsp_Mmux_n0005_inst_mux_f6_28 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net205,
      IB => i_can_bsp_Mmux_n0005_net208,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0005_net209
    );
  i_can_bsp_overload_cnt2_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_overload_cnt2_n0001(2),
      CE => i_can_bsp_n0666,
      RST => i_can_bsp_overload_cnt2_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_overload_cnt2(2),
      SET => GND
    );
  i_can_bsp_overload_cnt2_Mmux_n0001_Result_2_1 : X_LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      ADR0 => i_can_bsp_n0102,
      ADR1 => i_can_bsp_overload_cnt2(2),
      ADR2 => i_can_bsp_overload_cnt2(1),
      ADR3 => i_can_bsp_overload_cnt2(0),
      O => i_can_bsp_overload_cnt2_n0001(2)
    );
  i_can_bsp_overload_cnt2_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_overload_cnt2_n0001(0),
      CE => i_can_bsp_n0666,
      RST => i_can_bsp_overload_cnt2_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_overload_cnt2(0),
      SET => GND
    );
  i_can_bsp_overload_cnt2_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_overload_cnt2_n0001(1),
      CE => i_can_bsp_n0666,
      RST => i_can_bsp_overload_cnt2_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_overload_cnt2(1),
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_lut2_1351 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(3),
      O => i_can_bsp_Msub_n0272_inst_lut2_135,
      ADR1 => GND
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_72 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net258,
      IB => i_can_bsp_Mmux_n0004_net259,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net260
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1571 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG12_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG12_data_out(7),
      O => i_can_bsp_Mmux_n0005_net210
    );
  i_can_bsp_overload_cnt1_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_overload_cnt1_n0001(2),
      CE => i_can_bsp_n0664,
      RST => i_can_bsp_overload_cnt1_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_overload_cnt1(2),
      SET => GND
    );
  i_can_bsp_overload_cnt1_Mmux_n0001_Result_2_1 : X_LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      ADR0 => i_can_bsp_n0102,
      ADR1 => i_can_bsp_overload_cnt1(2),
      ADR2 => i_can_bsp_overload_cnt1(1),
      ADR3 => i_can_bsp_overload_cnt1(0),
      O => i_can_bsp_overload_cnt1_n0001(2)
    );
  i_can_bsp_overload_cnt1_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_overload_cnt1_n0001(0),
      CE => i_can_bsp_n0664,
      RST => i_can_bsp_overload_cnt1_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_overload_cnt1(0),
      SET => GND
    );
  i_can_bsp_overload_cnt1_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_overload_cnt1_n0001(1),
      CE => i_can_bsp_n0664,
      RST => i_can_bsp_overload_cnt1_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_overload_cnt1(1),
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_sum_148 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0272_inst_lut2_134,
      I1 => i_can_bsp_Msub_n0272_inst_cy_206,
      O => i_can_bsp_n0272(2)
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1821 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_1_5,
      ADR2 => i_can_bsp_tmp_fifo_0_5,
      O => i_can_bsp_Mmux_n0004_net255
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1581 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG12_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG12_data_out(5),
      O => i_can_bsp_Mmux_n0005_net211
    );
  i_can_bsp_delayed_dominant_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_delayed_dominant_cnt_n0001(2),
      CE => i_can_bsp_n0661,
      RST => i_can_bsp_delayed_dominant_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_delayed_dominant_cnt(2),
      SET => GND
    );
  i_can_btl_n00761 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_N28750,
      ADR2 => i_can_btl_n0034,
      ADR3 => i_can_btl_seg1,
      O => i_can_btl_n0076
    );
  i_can_bsp_delayed_dominant_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_delayed_dominant_cnt_n0001(0),
      CE => i_can_bsp_n0661,
      RST => i_can_bsp_delayed_dominant_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_delayed_dominant_cnt(0),
      SET => GND
    );
  i_can_bsp_delayed_dominant_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_delayed_dominant_cnt_n0001(1),
      CE => i_can_bsp_n0661,
      RST => i_can_bsp_delayed_dominant_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_delayed_dominant_cnt(1),
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_cy_207_297 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0272_inst_cy_206,
      IA => i_can_bsp_tx_err_cnt(2),
      SEL => i_can_bsp_Msub_n0272_inst_lut2_134,
      O => i_can_bsp_Msub_n0272_inst_cy_207
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_71 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net255,
      IB => i_can_bsp_Mmux_n0004_net256,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net257
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_58 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net210,
      IB => i_can_bsp_Mmux_n0005_net211,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net212
    );
  i_can_bsp_error_cnt2_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_error_cnt2_n0001(2),
      CE => i_can_bsp_n0660,
      RST => i_can_bsp_error_cnt2_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_cnt2(2),
      SET => GND
    );
  i_can_bsp_error_cnt2_Mmux_n0001_Result_2_1 : X_LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      ADR0 => i_can_bsp_n0091,
      ADR1 => i_can_bsp_error_cnt2(2),
      ADR2 => i_can_bsp_error_cnt2(1),
      ADR3 => i_can_bsp_error_cnt2(0),
      O => i_can_bsp_error_cnt2_n0001(2)
    );
  i_can_bsp_error_cnt2_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_error_cnt2_n0001(0),
      CE => i_can_bsp_n0660,
      RST => i_can_bsp_error_cnt2_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_cnt2(0),
      SET => GND
    );
  i_can_bsp_error_cnt2_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_error_cnt2_n0001(1),
      CE => i_can_bsp_n0660,
      RST => i_can_bsp_error_cnt2_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_cnt2(1),
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_lut2_1341 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(2),
      O => i_can_bsp_Msub_n0272_inst_lut2_134,
      ADR1 => GND
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1841 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_5_5,
      ADR2 => i_can_bsp_tmp_fifo_4_5,
      O => i_can_bsp_Mmux_n0004_net258
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1591 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG12_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG12_data_out(3),
      O => i_can_bsp_Mmux_n0005_net213
    );
  i_can_bsp_error_cnt1_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_error_cnt1_n0001(2),
      CE => i_can_bsp_n0657,
      RST => i_can_bsp_error_cnt1_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_cnt1(2),
      SET => GND
    );
  i_can_bsp_error_cnt1_Mmux_n0001_Result_2_1 : X_LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      ADR0 => i_can_bsp_n0091,
      ADR1 => i_can_bsp_error_cnt1(2),
      ADR2 => i_can_bsp_error_cnt1(1),
      ADR3 => i_can_bsp_error_cnt1(0),
      O => i_can_bsp_error_cnt1_n0001(2)
    );
  i_can_bsp_error_cnt1_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_error_cnt1_n0001(0),
      CE => i_can_bsp_n0657,
      RST => i_can_bsp_error_cnt1_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_cnt1(0),
      SET => GND
    );
  i_can_bsp_error_cnt1_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_error_cnt1_n0001(1),
      CE => i_can_bsp_n0657,
      RST => i_can_bsp_error_cnt1_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_error_cnt1(1),
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_sum_147 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0272_inst_lut2_133,
      I1 => i_can_bsp_Msub_n0272_inst_cy_205,
      O => i_can_bsp_n0272(1)
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1851 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_7_5,
      ADR2 => i_can_bsp_tmp_fifo_6_5,
      O => i_can_bsp_Mmux_n0004_net259
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1601 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG12_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG12_data_out(1),
      O => i_can_bsp_Mmux_n0005_net214
    );
  i_can_bsp_header_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_header_cnt_n0001(2),
      CE => i_can_bsp_n0653,
      RST => i_can_bsp_header_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_header_cnt(2),
      SET => GND
    );
  i_can_bsp_header_cnt_Mmux_n0001_Result_2_1 : X_LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      ADR0 => i_can_bsp_reset_wr_fifo,
      ADR1 => i_can_bsp_header_cnt(2),
      ADR2 => i_can_bsp_header_cnt(1),
      ADR3 => i_can_bsp_header_cnt(0),
      O => i_can_bsp_header_cnt_n0001(2)
    );
  i_can_bsp_header_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_header_cnt_n0001(0),
      CE => i_can_bsp_n0653,
      RST => i_can_bsp_header_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_header_cnt(0),
      SET => GND
    );
  i_can_bsp_header_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_header_cnt_n0001(1),
      CE => i_can_bsp_n0653,
      RST => i_can_bsp_header_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_header_cnt(1),
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_cy_206_298 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0272_inst_cy_205,
      IA => i_can_bsp_tx_err_cnt(1),
      SEL => i_can_bsp_Msub_n0272_inst_lut2_133,
      O => i_can_bsp_Msub_n0272_inst_cy_206
    );
  i_can_bsp_Mmux_n0004_inst_mux_f6_35 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net250,
      IB => i_can_bsp_Mmux_n0004_net253,
      SEL => i_can_bsp_COND_6(2),
      O => i_can_bsp_n0004(4)
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_59 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net213,
      IB => i_can_bsp_Mmux_n0005_net214,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net215
    );
  i_can_bsp_eof_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_eof_cnt_n0001(2),
      CE => i_can_bsp_n0639,
      RST => i_can_bsp_eof_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_eof_cnt(2),
      SET => GND
    );
  i_can_bsp_eof_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_eof_cnt_n0001(0),
      CE => i_can_bsp_n0639,
      RST => i_can_bsp_eof_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_eof_cnt(0),
      SET => GND
    );
  i_can_bsp_eof_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_eof_cnt_n0001(1),
      CE => i_can_bsp_n0639,
      RST => i_can_bsp_eof_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_eof_cnt(1),
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_lut2_1331 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(1),
      O => i_can_bsp_Msub_n0272_inst_lut2_133,
      ADR1 => GND
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_69 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net248,
      IB => i_can_bsp_Mmux_n0004_net249,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net250
    );
  i_can_bsp_Mmux_n0005_inst_mux_f6_29 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net212,
      IB => i_can_bsp_Mmux_n0005_net215,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0005_net216
    );
  i_can_bsp_byte_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_byte_cnt_n0001(2),
      CE => i_can_bsp_n0635,
      RST => i_can_bsp_byte_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_byte_cnt(2),
      SET => GND
    );
  i_can_bsp_byte_cnt_Mmux_n0001_Result_2_1 : X_LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      ADR0 => i_can_bsp_n0061,
      ADR1 => i_can_bsp_byte_cnt(2),
      ADR2 => i_can_bsp_byte_cnt(1),
      ADR3 => i_can_bsp_byte_cnt(0),
      O => i_can_bsp_byte_cnt_n0001(2)
    );
  i_can_bsp_byte_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_byte_cnt_n0001(0),
      CE => i_can_bsp_n0635,
      RST => i_can_bsp_byte_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_byte_cnt(0),
      SET => GND
    );
  i_can_bsp_byte_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_byte_cnt_n0001(1),
      CE => i_can_bsp_n0635,
      RST => i_can_bsp_byte_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_byte_cnt(1),
      SET => GND
    );
  i_can_bsp_Msub_n0272_inst_sum_146 : X_XOR2
    port map (
      I0 => tx_err_cnt_0_rt,
      I1 => N23149,
      O => i_can_bsp_n0272(0)
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1791 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_3_4,
      ADR2 => i_can_bsp_tmp_fifo_2_4,
      O => i_can_bsp_Mmux_n0004_net249
    );
  i_can_bsp_byte_cnt_Mmux_n0001_Result_0_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_n0061,
      ADR1 => i_can_bsp_byte_cnt(0),
      O => i_can_bsp_byte_cnt_n0001(0)
    );
  i_can_bsp_byte_cnt_Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_bsp_n0061,
      ADR1 => i_can_bsp_byte_cnt(0),
      ADR2 => i_can_bsp_byte_cnt(1),
      O => i_can_bsp_byte_cnt_n0001(1)
    );
  i_can_bsp_header_cnt_Mmux_n0001_Result_0_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_reset_wr_fifo,
      ADR1 => i_can_bsp_header_cnt(0),
      O => i_can_bsp_header_cnt_n0001(0)
    );
  i_can_bsp_header_cnt_Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_bsp_reset_wr_fifo,
      ADR1 => i_can_bsp_header_cnt(0),
      ADR2 => i_can_bsp_header_cnt(1),
      O => i_can_bsp_header_cnt_n0001(1)
    );
  i_can_bsp_error_cnt1_Mmux_n0001_Result_0_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_n0091,
      ADR1 => i_can_bsp_error_cnt1(0),
      O => i_can_bsp_error_cnt1_n0001(0)
    );
  i_can_bsp_error_cnt1_Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_bsp_n0091,
      ADR1 => i_can_bsp_error_cnt1(0),
      ADR2 => i_can_bsp_error_cnt1(1),
      O => i_can_bsp_error_cnt1_n0001(1)
    );
  i_can_bsp_error_cnt2_Mmux_n0001_Result_0_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_n0091,
      ADR1 => i_can_bsp_error_cnt2(0),
      O => i_can_bsp_error_cnt2_n0001(0)
    );
  i_can_bsp_error_cnt2_Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_bsp_n0091,
      ADR1 => i_can_bsp_error_cnt2(0),
      ADR2 => i_can_bsp_error_cnt2(1),
      O => i_can_bsp_error_cnt2_n0001(1)
    );
  i_can_bsp_delayed_dominant_cnt_Mmux_n0001_Result_0_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_n0097,
      ADR1 => i_can_bsp_delayed_dominant_cnt(0),
      O => i_can_bsp_delayed_dominant_cnt_n0001(0)
    );
  i_can_bsp_delayed_dominant_cnt_Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_bsp_n0097,
      ADR1 => i_can_bsp_delayed_dominant_cnt(0),
      ADR2 => i_can_bsp_delayed_dominant_cnt(1),
      O => i_can_bsp_delayed_dominant_cnt_n0001(1)
    );
  i_can_bsp_overload_cnt1_Mmux_n0001_Result_0_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_n0102,
      ADR1 => i_can_bsp_overload_cnt1(0),
      O => i_can_bsp_overload_cnt1_n0001(0)
    );
  i_can_bsp_overload_cnt1_Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_bsp_n0102,
      ADR1 => i_can_bsp_overload_cnt1(0),
      ADR2 => i_can_bsp_overload_cnt1(1),
      O => i_can_bsp_overload_cnt1_n0001(1)
    );
  i_can_bsp_overload_cnt2_Mmux_n0001_Result_0_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_n0102,
      ADR1 => i_can_bsp_overload_cnt2(0),
      O => i_can_bsp_overload_cnt2_n0001(0)
    );
  i_can_bsp_overload_cnt2_Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_bsp_n0102,
      ADR1 => i_can_bsp_overload_cnt2(0),
      ADR2 => i_can_bsp_overload_cnt2(1),
      O => i_can_bsp_overload_cnt2_n0001(1)
    );
  i_can_bsp_susp_cnt_Mmux_n0001_Result_0_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_susp_cnt(0),
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_susp_cnt_n0001(0)
    );
  i_can_bsp_susp_cnt_Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_susp_cnt(0),
      ADR2 => i_can_bsp_susp_cnt(1),
      O => i_can_bsp_susp_cnt_n0001(1)
    );
  i_can_bsp_Madd_n0289_inst_cy_13_299 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0289_inst_cy_12,
      IA => N23151,
      SEL => i_can_bsp_bus_free_cnt_2_rt,
      O => i_can_bsp_Madd_n0289_inst_cy_13
    );
  i_can_bsp_Madd_n0289_inst_sum_9 : X_XOR2
    port map (
      I0 => i_can_bsp_bus_free_cnt_2_rt,
      I1 => i_can_bsp_Madd_n0289_inst_cy_12,
      O => i_can_bsp_n0289(2)
    );
  i_can_bsp_Madd_n0289_inst_lut2_61 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_bus_free_cnt(0),
      O => i_can_bsp_Madd_n0289_inst_lut2_6,
      ADR1 => GND
    );
  i_can_bsp_Madd_n0289_inst_cy_11_300 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_bsp_Madd_n0289_inst_lut2_6,
      O => i_can_bsp_Madd_n0289_inst_cy_11
    );
  rst_i_IBUF_301 : X_BUF
    port map (
      I => rst_i,
      O => rst_i_IBUF
    );
  i_can_bsp_Madd_n0289_inst_sum_10 : X_XOR2
    port map (
      I0 => i_can_bsp_bus_free_cnt_3_rt,
      I1 => i_can_bsp_Madd_n0289_inst_cy_13,
      O => i_can_bsp_n0289(3)
    );
  i_can_bsp_Madd_n0289_inst_cy_12_302 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0289_inst_cy_11,
      IA => N23151,
      SEL => i_can_bsp_bus_free_cnt_1_rt,
      O => i_can_bsp_Madd_n0289_inst_cy_12
    );
  i_can_bsp_Madd_n0289_inst_sum_8 : X_XOR2
    port map (
      I0 => i_can_bsp_bus_free_cnt_1_rt,
      I1 => i_can_bsp_Madd_n0289_inst_cy_11,
      O => i_can_bsp_n0289(1)
    );
  i_can_bsp_data_cnt_19_303 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_data_cnt_inst_sum_91,
      CE => i_can_bsp_n0654,
      RST => i_can_bsp_data_cnt_19_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_data_cnt_19
    );
  i_can_bsp_data_cnt_20_304 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_data_cnt_inst_sum_92,
      CE => i_can_bsp_n0654,
      RST => i_can_bsp_data_cnt_20_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_data_cnt_20
    );
  i_can_bsp_data_cnt_inst_cy_121_305 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_bsp_reset_wr_fifo,
      O => i_can_bsp_data_cnt_inst_cy_121
    );
  i_can_btl_clk_cnt_inst_lut3_121 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_btl_n0007,
      ADR1 => i_can_btl_clk_cnt_12,
      O => i_can_btl_clk_cnt_inst_lut3_12
    );
  i_can_bsp_data_cnt_inst_cy_122_306 : X_MUX2
    port map (
      IB => i_can_bsp_data_cnt_inst_cy_121,
      IA => N23151,
      SEL => i_can_bsp_data_cnt_inst_lut3_24,
      O => i_can_bsp_data_cnt_inst_cy_122
    );
  i_can_bsp_data_cnt_inst_sum_89_307 : X_XOR2
    port map (
      I0 => i_can_bsp_data_cnt_inst_lut3_24,
      I1 => i_can_bsp_data_cnt_inst_cy_121,
      O => i_can_bsp_data_cnt_inst_sum_89
    );
  i_can_bsp_data_cnt_inst_cy_123_308 : X_MUX2
    port map (
      IB => i_can_bsp_data_cnt_inst_cy_122,
      IA => N23151,
      SEL => i_can_bsp_data_cnt_inst_lut3_25,
      O => i_can_bsp_data_cnt_inst_cy_123
    );
  i_can_bsp_data_cnt_inst_sum_90_309 : X_XOR2
    port map (
      I0 => i_can_bsp_data_cnt_inst_lut3_25,
      I1 => i_can_bsp_data_cnt_inst_cy_122,
      O => i_can_bsp_data_cnt_inst_sum_90
    );
  i_can_btl_clk_cnt_inst_lut3_141 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_btl_n0007,
      ADR1 => i_can_btl_clk_cnt_14,
      O => i_can_btl_clk_cnt_inst_lut3_14
    );
  i_can_bsp_data_cnt_inst_cy_124_310 : X_MUX2
    port map (
      IB => i_can_bsp_data_cnt_inst_cy_123,
      IA => N23151,
      SEL => i_can_bsp_data_cnt_inst_lut3_26,
      O => i_can_bsp_data_cnt_inst_cy_124
    );
  i_can_bsp_data_cnt_inst_sum_91_311 : X_XOR2
    port map (
      I0 => i_can_bsp_data_cnt_inst_lut3_26,
      I1 => i_can_bsp_data_cnt_inst_cy_123,
      O => i_can_bsp_data_cnt_inst_sum_91
    );
  i_can_bsp_tx_pointer_inst_lut3_321 : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_25,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => CHOICE1816,
      ADR3 => CHOICE1820,
      O => i_can_bsp_tx_pointer_inst_lut3_32
    );
  i_can_bsp_Msub_n0272_inst_cy_205_312 : X_MUX2
    port map (
      IB => N23149,
      IA => N23151,
      SEL => tx_err_cnt_0_rt,
      O => i_can_bsp_Msub_n0272_inst_cy_205
    );
  i_can_bsp_data_cnt_inst_sum_92_313 : X_XOR2
    port map (
      I0 => i_can_bsp_data_cnt_inst_lut3_27,
      I1 => i_can_bsp_data_cnt_inst_cy_124,
      O => i_can_bsp_data_cnt_inst_sum_92
    );
  i_can_bsp_data_cnt_17_314 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_data_cnt_inst_sum_89,
      CE => i_can_bsp_n0654,
      RST => i_can_bsp_data_cnt_17_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_data_cnt_17
    );
  i_can_bsp_tx_pointer_25_315 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tx_pointer_inst_sum_97,
      CE => i_can_bsp_n0669,
      RST => i_can_bsp_tx_pointer_25_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_pointer_25
    );
  i_can_bsp_tx_pointer_26_316 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tx_pointer_inst_sum_98,
      CE => i_can_bsp_n0669,
      RST => i_can_bsp_tx_pointer_26_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_pointer_26
    );
  i_can_bsp_tx_pointer_inst_cy_126_317 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_bsp_rst_tx_pointer,
      O => i_can_bsp_tx_pointer_inst_cy_126
    );
  i_can_btl_quant_cnt_inst_lut3_61 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_seg2,
      ADR2 => i_can_btl_go_sync1_2,
      ADR3 => i_can_btl_quant_cnt(6),
      O => i_can_btl_quant_cnt_inst_lut3_6
    );
  i_can_bsp_tx_pointer_inst_cy_127_318 : X_MUX2
    port map (
      IB => i_can_bsp_tx_pointer_inst_cy_126,
      IA => N23151,
      SEL => i_can_bsp_tx_pointer_inst_lut3_28,
      O => i_can_bsp_tx_pointer_inst_cy_127
    );
  i_can_bsp_tx_pointer_inst_sum_93_319 : X_XOR2
    port map (
      I0 => i_can_bsp_tx_pointer_inst_lut3_28,
      I1 => i_can_bsp_tx_pointer_inst_cy_126,
      O => i_can_bsp_tx_pointer_inst_sum_93
    );
  i_can_bsp_tx_pointer_inst_lut3_281 : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => CHOICE1816,
      ADR3 => CHOICE1820,
      O => i_can_bsp_tx_pointer_inst_lut3_28
    );
  i_can_bsp_tx_pointer_inst_cy_128_320 : X_MUX2
    port map (
      IB => i_can_bsp_tx_pointer_inst_cy_127,
      IA => N23151,
      SEL => i_can_bsp_tx_pointer_inst_lut3_29,
      O => i_can_bsp_tx_pointer_inst_cy_128
    );
  i_can_bsp_tx_pointer_inst_sum_94_321 : X_XOR2
    port map (
      I0 => i_can_bsp_tx_pointer_inst_lut3_29,
      I1 => i_can_bsp_tx_pointer_inst_cy_127,
      O => i_can_bsp_tx_pointer_inst_sum_94
    );
  i_can_bsp_tx_pointer_inst_lut3_291 : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_22,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => CHOICE1816,
      ADR3 => CHOICE1820,
      O => i_can_bsp_tx_pointer_inst_lut3_29
    );
  i_can_bsp_tx_pointer_inst_cy_129_322 : X_MUX2
    port map (
      IB => i_can_bsp_tx_pointer_inst_cy_128,
      IA => N23151,
      SEL => i_can_bsp_tx_pointer_inst_lut3_30,
      O => i_can_bsp_tx_pointer_inst_cy_129
    );
  i_can_bsp_tx_pointer_inst_sum_95_323 : X_XOR2
    port map (
      I0 => i_can_bsp_tx_pointer_inst_lut3_30,
      I1 => i_can_bsp_tx_pointer_inst_cy_128,
      O => i_can_bsp_tx_pointer_inst_sum_95
    );
  i_can_bsp_tx_pointer_inst_lut3_301 : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_23,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => CHOICE1816,
      ADR3 => CHOICE1820,
      O => i_can_bsp_tx_pointer_inst_lut3_30
    );
  i_can_bsp_tx_pointer_inst_cy_130_324 : X_MUX2
    port map (
      IB => i_can_bsp_tx_pointer_inst_cy_129,
      IA => N23151,
      SEL => i_can_bsp_tx_pointer_inst_lut3_31,
      O => i_can_bsp_tx_pointer_inst_cy_130
    );
  i_can_bsp_tx_pointer_inst_sum_96_325 : X_XOR2
    port map (
      I0 => i_can_bsp_tx_pointer_inst_lut3_31,
      I1 => i_can_bsp_tx_pointer_inst_cy_129,
      O => i_can_bsp_tx_pointer_inst_sum_96
    );
  i_can_bsp_tx_pointer_inst_lut3_311 : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => CHOICE1816,
      ADR3 => CHOICE1820,
      O => i_can_bsp_tx_pointer_inst_lut3_31
    );
  i_can_bsp_tx_pointer_inst_cy_131_326 : X_MUX2
    port map (
      IB => i_can_bsp_tx_pointer_inst_cy_130,
      IA => N23151,
      SEL => i_can_bsp_tx_pointer_inst_lut3_32,
      O => i_can_bsp_tx_pointer_inst_cy_131
    );
  i_can_bsp_tx_pointer_inst_sum_97_327 : X_XOR2
    port map (
      I0 => i_can_bsp_tx_pointer_inst_lut3_32,
      I1 => i_can_bsp_tx_pointer_inst_cy_130,
      O => i_can_bsp_tx_pointer_inst_sum_97
    );
  i_can_btl_quant_cnt_inst_lut3_71 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_btl_go_seg1,
      ADR1 => i_can_btl_go_seg2,
      ADR2 => i_can_btl_go_sync1_2,
      ADR3 => i_can_btl_quant_cnt(7),
      O => i_can_btl_quant_cnt_inst_lut3_7
    );
  i_can_bsp_Msub_n0272_inst_sum_154 : X_XOR2
    port map (
      I0 => i_can_bsp_Mcompar_n0284_inst_lut2_131,
      I1 => i_can_bsp_Msub_n0272_inst_cy_212,
      O => i_can_bsp_n0272(8)
    );
  i_can_bsp_tx_pointer_inst_sum_98_328 : X_XOR2
    port map (
      I0 => i_can_bsp_tx_pointer_inst_lut3_33,
      I1 => i_can_bsp_tx_pointer_inst_cy_131,
      O => i_can_bsp_tx_pointer_inst_sum_98
    );
  i_can_bsp_tx_pointer_21_329 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tx_pointer_inst_sum_93,
      CE => i_can_bsp_n0669,
      RST => i_can_bsp_tx_pointer_21_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_pointer_21
    );
  i_can_bsp_tx_pointer_22_330 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tx_pointer_inst_sum_94,
      CE => i_can_bsp_n0669,
      RST => i_can_bsp_tx_pointer_22_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_pointer_22
    );
  i_can_bsp_tx_pointer_23_331 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tx_pointer_inst_sum_95,
      CE => i_can_bsp_n0669,
      RST => i_can_bsp_tx_pointer_23_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_pointer_23
    );
  i_can_bsp_bit_cnt_25_332 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_bit_cnt_inst_sum_97,
      CE => i_can_bsp_n0637,
      RST => i_can_bsp_bit_cnt_25_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_cnt_25
    );
  i_can_bsp_bit_cnt_26_333 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_bit_cnt_inst_sum_98,
      CE => i_can_bsp_n0637,
      RST => i_can_bsp_bit_cnt_26_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_cnt_26
    );
  i_can_bsp_bit_cnt_inst_cy_126_334 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => N55999,
      O => i_can_bsp_bit_cnt_inst_cy_126
    );
  i_can_btl_clk_cnt_inst_lut3_151 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_btl_n0007,
      ADR1 => i_can_btl_clk_cnt_15,
      O => i_can_btl_clk_cnt_inst_lut3_15
    );
  i_can_bsp_bit_cnt_inst_cy_127_335 : X_MUX2
    port map (
      IB => i_can_bsp_bit_cnt_inst_cy_126,
      IA => N23151,
      SEL => i_can_bsp_bit_cnt_inst_lut3_28,
      O => i_can_bsp_bit_cnt_inst_cy_127
    );
  i_can_bsp_bit_cnt_inst_sum_93_336 : X_XOR2
    port map (
      I0 => i_can_bsp_bit_cnt_inst_lut3_28,
      I1 => i_can_bsp_bit_cnt_inst_cy_126,
      O => i_can_bsp_bit_cnt_inst_sum_93
    );
  i_can_bsp_bit_cnt_inst_cy_128_337 : X_MUX2
    port map (
      IB => i_can_bsp_bit_cnt_inst_cy_127,
      IA => N23151,
      SEL => i_can_bsp_bit_cnt_inst_lut3_29,
      O => i_can_bsp_bit_cnt_inst_cy_128
    );
  i_can_bsp_bit_cnt_inst_sum_94_338 : X_XOR2
    port map (
      I0 => i_can_bsp_bit_cnt_inst_lut3_29,
      I1 => i_can_bsp_bit_cnt_inst_cy_127,
      O => i_can_bsp_bit_cnt_inst_sum_94
    );
  i_can_btl_Mcompar_sync_window_inst_lut2_261 : X_LUT3
    generic map(
      INIT => X"87"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(7),
      ADR1 => i_can_registers_BUS_TIMING_0_REG_data_out(6),
      ADR2 => i_can_btl_n0003(2),
      O => i_can_btl_Mcompar_sync_window_inst_lut2_26
    );
  i_can_bsp_bit_cnt_inst_cy_129_339 : X_MUX2
    port map (
      IB => i_can_bsp_bit_cnt_inst_cy_128,
      IA => N23151,
      SEL => i_can_bsp_bit_cnt_inst_lut3_30,
      O => i_can_bsp_bit_cnt_inst_cy_129
    );
  i_can_bsp_bit_cnt_inst_sum_95_340 : X_XOR2
    port map (
      I0 => i_can_bsp_bit_cnt_inst_lut3_30,
      I1 => i_can_bsp_bit_cnt_inst_cy_128,
      O => i_can_bsp_bit_cnt_inst_sum_95
    );
  i_can_bsp_bit_cnt_inst_cy_130_341 : X_MUX2
    port map (
      IB => i_can_bsp_bit_cnt_inst_cy_129,
      IA => N23151,
      SEL => i_can_bsp_bit_cnt_inst_lut3_31,
      O => i_can_bsp_bit_cnt_inst_cy_130
    );
  i_can_bsp_bit_cnt_inst_sum_96_342 : X_XOR2
    port map (
      I0 => i_can_bsp_bit_cnt_inst_lut3_31,
      I1 => i_can_bsp_bit_cnt_inst_cy_129,
      O => i_can_bsp_bit_cnt_inst_sum_96
    );
  i_can_bsp_bit_cnt_inst_cy_131_343 : X_MUX2
    port map (
      IB => i_can_bsp_bit_cnt_inst_cy_130,
      IA => N23151,
      SEL => i_can_bsp_bit_cnt_inst_lut3_32,
      O => i_can_bsp_bit_cnt_inst_cy_131
    );
  i_can_bsp_bit_cnt_inst_sum_97_344 : X_XOR2
    port map (
      I0 => i_can_bsp_bit_cnt_inst_lut3_32,
      I1 => i_can_bsp_bit_cnt_inst_cy_130,
      O => i_can_bsp_bit_cnt_inst_sum_97
    );
  i_can_bsp_n06701 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_registers_COMMAND_REG0_data_out(0),
      ADR2 => i_can_registers_COMMAND_REG4_data_out(0),
      ADR3 => i_can_bsp_n0432,
      O => i_can_bsp_n0670
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1911 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_3_7,
      ADR2 => i_can_bsp_tmp_fifo_2_7,
      O => i_can_bsp_Mmux_n0004_net270
    );
  i_can_bsp_bit_cnt_inst_sum_98_345 : X_XOR2
    port map (
      I0 => i_can_bsp_bit_cnt_inst_lut3_33,
      I1 => i_can_bsp_bit_cnt_inst_cy_131,
      O => i_can_bsp_bit_cnt_inst_sum_98
    );
  i_can_bsp_bit_cnt_21_346 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_bit_cnt_inst_sum_93,
      CE => i_can_bsp_n0637,
      RST => i_can_bsp_bit_cnt_21_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_cnt_21
    );
  i_can_bsp_bit_cnt_22_347 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_bit_cnt_inst_sum_94,
      CE => i_can_bsp_n0637,
      RST => i_can_bsp_bit_cnt_22_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_cnt_22
    );
  i_can_bsp_bit_cnt_23_348 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_bit_cnt_inst_sum_95,
      CE => i_can_bsp_n0637,
      RST => i_can_bsp_bit_cnt_23_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_bit_cnt_23
    );
  i_can_bsp_Msub_n0229_inst_lut2_851 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_data_len(3),
      O => i_can_bsp_Msub_n0229_inst_lut2_85,
      ADR1 => GND
    );
  i_can_registers_data_out_tmp_0_100 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0068,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(0),
      ADR2 => i_can_registers_n0069,
      ADR3 => i_can_registers_TX_DATA_REG9_data_out(0),
      O => CHOICE2022
    );
  i_can_bsp_Msub_n0229_inst_sum_102 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0229_inst_lut2_85,
      I1 => i_can_bsp_Msub_n0229_inst_cy_135,
      O => i_can_bsp_n0229(3)
    );
  i_can_bsp_Msub_n0229_inst_cy_133_349 : X_MUX2
    port map (
      IB => N23149,
      IA => N23151,
      SEL => i_can_bsp_data_len_0_rt,
      O => i_can_bsp_Msub_n0229_inst_cy_133
    );
  i_can_bsp_Msub_n0229_inst_sum_99 : X_XOR2
    port map (
      I0 => i_can_bsp_data_len_0_rt,
      I1 => N23149,
      O => i_can_bsp_n0229(0)
    );
  i_can_bsp_Msub_n0229_inst_lut2_831 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_data_len(1),
      O => i_can_bsp_Msub_n0229_inst_lut2_83,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0229_inst_cy_134_350 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0229_inst_cy_133,
      IA => i_can_bsp_data_len(1),
      SEL => i_can_bsp_Msub_n0229_inst_lut2_83,
      O => i_can_bsp_Msub_n0229_inst_cy_134
    );
  i_can_bsp_Msub_n0229_inst_sum_100 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0229_inst_lut2_83,
      I1 => i_can_bsp_Msub_n0229_inst_cy_133,
      O => i_can_bsp_n0229(1)
    );
  i_can_bsp_Msub_n0229_inst_lut2_841 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_data_len(2),
      O => i_can_bsp_Msub_n0229_inst_lut2_84,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0229_inst_cy_135_351 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0229_inst_cy_134,
      IA => i_can_bsp_data_len(2),
      SEL => i_can_bsp_Msub_n0229_inst_lut2_84,
      O => i_can_bsp_Msub_n0229_inst_cy_135
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1661 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_1_1,
      ADR2 => i_can_bsp_tmp_fifo_0_1,
      O => i_can_bsp_Mmux_n0004_net227
    );
  i_can_bsp_Mcompar_n0219_inst_lut4_151 : X_LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_23,
      ADR1 => i_can_bsp_tx_pointer_24,
      ADR2 => i_can_registers_TX_DATA_REG0_data_out(0),
      O => i_can_bsp_Mcompar_n0219_inst_lut4_15
    );
  i_can_bsp_Madd_n0224_inst_sum_106 : X_XOR2
    port map (
      I0 => i_can_bsp_limited_data_len_minus1(3),
      I1 => i_can_bsp_Madd_n0224_inst_cy_139,
      O => i_can_bsp_n0224(3)
    );
  i_can_bsp_Madd_n0224_inst_lut2_871 : X_LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      ADR0 => i_can_bsp_header_len(1),
      ADR1 => i_can_bsp_remote_rq,
      ADR2 => i_can_bsp_n0229(1),
      ADR3 => i_can_bsp_data_len(3),
      O => i_can_bsp_Madd_n0224_inst_lut2_87
    );
  i_can_bsp_Madd_n0224_inst_cy_137_352 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      SEL => i_can_bsp_Madd_n0224_inst_lut2_86,
      O => i_can_bsp_Madd_n0224_inst_cy_137
    );
  rx_i_IBUF_353 : X_BUF
    port map (
      I => rx_i,
      O => rx_i_IBUF
    );
  i_can_registers_data_out_tmp_7_163_SW0 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_4_3,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(7),
      O => N54929
    );
  i_can_bsp_Madd_n0224_inst_cy_138_354 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0224_inst_cy_137,
      IA => i_can_bsp_header_len(1),
      SEL => i_can_bsp_Madd_n0224_inst_lut2_87,
      O => i_can_bsp_Madd_n0224_inst_cy_138
    );
  i_can_bsp_Madd_n0224_inst_sum_104 : X_XOR2
    port map (
      I0 => i_can_bsp_Madd_n0224_inst_lut2_87,
      I1 => i_can_bsp_Madd_n0224_inst_cy_137,
      O => i_can_bsp_n0224(1)
    );
  i_can_bsp_Madd_n0224_inst_cy_139_355 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0224_inst_cy_138,
      IA => i_can_bsp_header_len(2),
      SEL => i_can_bsp_Madd_n0224_inst_lut2_88,
      O => i_can_bsp_Madd_n0224_inst_cy_139
    );
  i_can_bsp_Mcompar_n0220_inst_lut4_1811 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_n0001(8),
      O => i_can_bsp_Mcompar_n0220_inst_lut4_18,
      ADR1 => GND
    );
  i_can_bsp_Mcompar_n0220_inst_cy_144 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0220_inst_cy_143,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0220_inst_lut4_18,
      O => i_can_bsp_n0220
    );
  i_can_bsp_Mcompar_n0220_inst_lut4_141 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => N23149,
      ADR2 => i_can_bsp_tx_pointer_22,
      ADR3 => N23149,
      O => i_can_bsp_Mcompar_n0220_inst_lut4_14
    );
  i_can_bsp_Mcompar_n0220_inst_cy_140_356 : X_MUX2
    port map (
      IB => N23149,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0220_inst_lut4_14,
      O => i_can_bsp_Mcompar_n0220_inst_cy_140
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_331 : X_LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_wr_pointer_26,
      ADR1 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR2 => i_can_bsp_i_can_fifo_N30681,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_33
    );
  i_can_bsp_Mcompar_n0220_inst_cy_141_357 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0220_inst_cy_140,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0220_inst_lut4_15,
      O => i_can_bsp_Mcompar_n0220_inst_cy_141
    );
  i_can_bsp_Mcompar_n0220_inst_lut4_161 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_25,
      ADR1 => i_can_bsp_n0001(4),
      ADR2 => i_can_bsp_tx_pointer_26,
      ADR3 => i_can_bsp_n0001(5),
      O => i_can_bsp_Mcompar_n0220_inst_lut4_16
    );
  i_can_bsp_Mcompar_n0220_inst_cy_142_358 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0220_inst_cy_141,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0220_inst_lut4_16,
      O => i_can_bsp_Mcompar_n0220_inst_cy_142
    );
  i_can_bsp_Mcompar_n0220_inst_lut4_171 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => N23151,
      ADR1 => i_can_bsp_n0001(6),
      ADR2 => N23151,
      ADR3 => i_can_bsp_n0001(7),
      O => i_can_bsp_Mcompar_n0220_inst_lut4_17
    );
  i_can_bsp_Mcompar_n0219_inst_lut4_1811 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_n0000(8),
      O => i_can_bsp_Mcompar_n0219_inst_lut4_18,
      ADR1 => GND
    );
  i_can_bsp_Mcompar_n0219_inst_cy_144 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0219_inst_cy_143,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0219_inst_lut4_18,
      O => i_can_bsp_n0219
    );
  i_can_bsp_Mcompar_n0219_inst_lut4_141 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => N23149,
      ADR2 => i_can_bsp_tx_pointer_22,
      ADR3 => N23149,
      O => i_can_bsp_Mcompar_n0219_inst_lut4_14
    );
  i_can_bsp_Mcompar_n0219_inst_cy_140_359 : X_MUX2
    port map (
      IB => N23149,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0219_inst_lut4_14,
      O => i_can_bsp_Mcompar_n0219_inst_cy_140
    );
  i_can_bsp_Mcompar_n0220_inst_lut4_151 : X_LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_23,
      ADR1 => i_can_bsp_tx_pointer_24,
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(0),
      O => i_can_bsp_Mcompar_n0220_inst_lut4_15
    );
  i_can_bsp_Mcompar_n0219_inst_cy_141_360 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0219_inst_cy_140,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0219_inst_lut4_15,
      O => i_can_bsp_Mcompar_n0219_inst_cy_141
    );
  i_can_bsp_Mcompar_n0219_inst_lut4_161 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_25,
      ADR1 => i_can_bsp_n0000(4),
      ADR2 => i_can_bsp_tx_pointer_26,
      ADR3 => i_can_bsp_n0000(5),
      O => i_can_bsp_Mcompar_n0219_inst_lut4_16
    );
  i_can_bsp_Mcompar_n0219_inst_cy_142_361 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0219_inst_cy_141,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0219_inst_lut4_16,
      O => i_can_bsp_Mcompar_n0219_inst_cy_142
    );
  i_can_bsp_Mcompar_n0219_inst_lut4_171 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => N23151,
      ADR1 => i_can_bsp_n0000(6),
      ADR2 => N23151,
      ADR3 => i_can_bsp_n0000(7),
      O => i_can_bsp_Mcompar_n0219_inst_lut4_17
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_73 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net262,
      IB => i_can_bsp_Mmux_n0004_net263,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net264
    );
  i_can_bsp_Mcompar_n0248_inst_cy_202_362 : X_MUX2
    port map (
      IB => N23149,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0248_inst_lut4_27,
      O => i_can_bsp_Mcompar_n0248_inst_cy_202
    );
  i_can_bsp_Mcompar_n0248_inst_lut4_271 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_21,
      ADR1 => N23149,
      ADR2 => i_can_bsp_bit_cnt_22,
      ADR3 => N23149,
      O => i_can_bsp_Mcompar_n0248_inst_lut4_27
    );
  i_can_bsp_Maddsub_n0158_inst_sum_115 : X_XOR2
    port map (
      I0 => i_can_bsp_Maddsub_n0158_inst_lut2_97,
      I1 => i_can_bsp_Maddsub_n0158_inst_cy_152,
      O => i_can_bsp_n0158(8)
    );
  i_can_bsp_Maddsub_n0158_inst_lut1_11 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(0),
      O => i_can_bsp_Maddsub_n0158_inst_lut1_1,
      ADR1 => GND
    );
  i_can_bsp_Maddsub_n0158_inst_cy_145_363 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_bsp_rx_err_cnt(0),
      SEL => i_can_bsp_Maddsub_n0158_inst_lut1_1,
      O => i_can_bsp_Maddsub_n0158_inst_cy_145
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_221 : X_LUT4
    generic map(
      INIT => X"27D8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0078,
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(5),
      ADR2 => i_can_bsp_i_can_fifo_n0077(5),
      ADR3 => i_can_bsp_i_can_fifo_n0034,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_22
    );
  i_can_bsp_Maddsub_n0158_inst_cy_146_364 : X_MUX2
    port map (
      IB => i_can_bsp_Maddsub_n0158_inst_cy_145,
      IA => i_can_bsp_rx_err_cnt(1),
      SEL => i_can_bsp_Maddsub_n0158_inst_lut2_90,
      O => i_can_bsp_Maddsub_n0158_inst_cy_146
    );
  i_can_bsp_Maddsub_n0158_inst_sum_108 : X_XOR2
    port map (
      I0 => i_can_bsp_Maddsub_n0158_inst_lut2_90,
      I1 => i_can_bsp_Maddsub_n0158_inst_cy_145,
      O => i_can_bsp_n0158(1)
    );
  i_can_bsp_Maddsub_n0158_inst_lut2_901 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(1),
      ADR1 => i_can_bsp_transmitter,
      ADR2 => i_can_bsp_N34261,
      O => i_can_bsp_Maddsub_n0158_inst_lut2_90
    );
  i_can_bsp_Maddsub_n0158_inst_cy_147_365 : X_MUX2
    port map (
      IB => i_can_bsp_Maddsub_n0158_inst_cy_146,
      IA => i_can_bsp_rx_err_cnt(2),
      SEL => i_can_bsp_Maddsub_n0158_inst_lut2_91,
      O => i_can_bsp_Maddsub_n0158_inst_cy_147
    );
  i_can_bsp_Maddsub_n0158_inst_sum_109 : X_XOR2
    port map (
      I0 => i_can_bsp_Maddsub_n0158_inst_lut2_91,
      I1 => i_can_bsp_Maddsub_n0158_inst_cy_146,
      O => i_can_bsp_n0158(2)
    );
  i_can_bsp_Maddsub_n0158_inst_lut2_911 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(2),
      ADR1 => i_can_bsp_transmitter,
      ADR2 => i_can_bsp_N34261,
      O => i_can_bsp_Maddsub_n0158_inst_lut2_91
    );
  i_can_bsp_Maddsub_n0158_inst_cy_148_366 : X_MUX2
    port map (
      IB => i_can_bsp_Maddsub_n0158_inst_cy_147,
      IA => i_can_bsp_rx_err_cnt(3),
      SEL => i_can_bsp_Maddsub_n0158_inst_lut2_92,
      O => i_can_bsp_Maddsub_n0158_inst_cy_148
    );
  i_can_bsp_Maddsub_n0158_inst_sum_110 : X_XOR2
    port map (
      I0 => i_can_bsp_Maddsub_n0158_inst_lut2_92,
      I1 => i_can_bsp_Maddsub_n0158_inst_cy_147,
      O => i_can_bsp_n0158(3)
    );
  i_can_bsp_Maddsub_n0158_inst_lut2_921 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(3),
      ADR1 => i_can_bsp_transmitter,
      ADR2 => i_can_bsp_N34261,
      O => i_can_bsp_Maddsub_n0158_inst_lut2_92
    );
  i_can_bsp_Maddsub_n0158_inst_cy_149_367 : X_MUX2
    port map (
      IB => i_can_bsp_Maddsub_n0158_inst_cy_148,
      IA => i_can_bsp_rx_err_cnt(4),
      SEL => i_can_bsp_Maddsub_n0158_inst_lut2_93,
      O => i_can_bsp_Maddsub_n0158_inst_cy_149
    );
  i_can_bsp_Maddsub_n0158_inst_sum_111 : X_XOR2
    port map (
      I0 => i_can_bsp_Maddsub_n0158_inst_lut2_93,
      I1 => i_can_bsp_Maddsub_n0158_inst_cy_148,
      O => i_can_bsp_n0158(4)
    );
  i_can_registers_Ker317461 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched(5),
      ADR1 => addr_latched(6),
      ADR2 => addr_latched(7),
      ADR3 => i_can_registers_read,
      O => i_can_registers_N31748
    );
  i_can_bsp_Maddsub_n0158_inst_cy_150_368 : X_MUX2
    port map (
      IB => i_can_bsp_Maddsub_n0158_inst_cy_149,
      IA => i_can_bsp_rx_err_cnt(5),
      SEL => i_can_bsp_Maddsub_n0158_inst_lut2_94,
      O => i_can_bsp_Maddsub_n0158_inst_cy_150
    );
  i_can_bsp_Maddsub_n0158_inst_sum_112 : X_XOR2
    port map (
      I0 => i_can_bsp_Maddsub_n0158_inst_lut2_94,
      I1 => i_can_bsp_Maddsub_n0158_inst_cy_149,
      O => i_can_bsp_n0158(5)
    );
  i_can_registers_n01971 : X_LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      ADR0 => N54521,
      ADR1 => i_can_registers_we_command,
      ADR2 => tx_successful,
      ADR3 => i_can_registers_tx_successful_q,
      O => i_can_registers_n0197
    );
  i_can_bsp_Maddsub_n0158_inst_cy_151_369 : X_MUX2
    port map (
      IB => i_can_bsp_Maddsub_n0158_inst_cy_150,
      IA => i_can_bsp_rx_err_cnt(6),
      SEL => i_can_bsp_Maddsub_n0158_inst_lut2_95,
      O => i_can_bsp_Maddsub_n0158_inst_cy_151
    );
  i_can_bsp_Maddsub_n0158_inst_sum_113 : X_XOR2
    port map (
      I0 => i_can_bsp_Maddsub_n0158_inst_lut2_95,
      I1 => i_can_bsp_Maddsub_n0158_inst_cy_150,
      O => i_can_bsp_n0158(6)
    );
  i_can_bsp_Msub_n0247_inst_lut2_1171 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => i_can_bsp_data_len(1),
      ADR1 => i_can_bsp_data_len(3),
      O => i_can_bsp_Msub_n0247_inst_lut2_117
    );
  i_can_bsp_Maddsub_n0158_inst_cy_152_370 : X_MUX2
    port map (
      IB => i_can_bsp_Maddsub_n0158_inst_cy_151,
      IA => i_can_bsp_rx_err_cnt(7),
      SEL => i_can_bsp_Maddsub_n0158_inst_lut2_96,
      O => i_can_bsp_Maddsub_n0158_inst_cy_152
    );
  i_can_bsp_Maddsub_n0158_inst_sum_114 : X_XOR2
    port map (
      I0 => i_can_bsp_Maddsub_n0158_inst_lut2_96,
      I1 => i_can_bsp_Maddsub_n0158_inst_cy_151,
      O => i_can_bsp_n0158(7)
    );
  i_can_registers_n01981 : X_LUT4
    generic map(
      INIT => X"EEFE"
    )
    port map (
      ADR0 => i_can_registers_COMMAND_REG0_data_out(0),
      ADR1 => N55708,
      ADR2 => tx_successful,
      ADR3 => i_can_registers_tx_successful_q,
      O => i_can_registers_n0198
    );
  i_can_bsp_Madd_n0157_inst_sum_119 : X_XOR2
    port map (
      I0 => tx_err_cnt_6_rt,
      I1 => i_can_bsp_Madd_n0157_inst_cy_156,
      O => i_can_bsp_n0763(6)
    );
  i_can_bsp_Madd_n0157_inst_sum_120 : X_XOR2
    port map (
      I0 => tx_err_cnt_7_rt,
      I1 => i_can_bsp_Madd_n0157_inst_cy_157,
      O => i_can_bsp_n0763(7)
    );
  i_can_bsp_Madd_n0157_inst_lut2_981 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(3),
      O => i_can_bsp_Madd_n0157_inst_lut2_98,
      ADR1 => GND
    );
  i_can_bsp_Madd_n0157_inst_cy_154_371 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_bsp_Madd_n0157_inst_lut2_98,
      O => i_can_bsp_Madd_n0157_inst_cy_154
    );
  ale_i_IBUF_372 : X_BUF
    port map (
      I => ale_i,
      O => ale_i_IBUF
    );
  i_can_bsp_Madd_n0157_inst_sum_121 : X_XOR2
    port map (
      I0 => i_can_bsp_tx_err_cnt_8_rt,
      I1 => i_can_bsp_Madd_n0157_inst_cy_158,
      O => i_can_bsp_n0763(8)
    );
  i_can_bsp_Madd_n0157_inst_cy_155_373 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0157_inst_cy_154,
      IA => N23151,
      SEL => tx_err_cnt_4_rt,
      O => i_can_bsp_Madd_n0157_inst_cy_155
    );
  i_can_bsp_Madd_n0157_inst_sum_117 : X_XOR2
    port map (
      I0 => tx_err_cnt_4_rt,
      I1 => i_can_bsp_Madd_n0157_inst_cy_154,
      O => i_can_bsp_n0763(4)
    );
  i_can_bsp_Mcompar_n0248_inst_cy_204 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0248_inst_cy_203,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0248_inst_lut4_29,
      O => i_can_bsp_n0248
    );
  i_can_bsp_Madd_n0157_inst_cy_156_374 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0157_inst_cy_155,
      IA => N23151,
      SEL => tx_err_cnt_5_rt,
      O => i_can_bsp_Madd_n0157_inst_cy_156
    );
  i_can_bsp_Madd_n0157_inst_sum_118 : X_XOR2
    port map (
      I0 => tx_err_cnt_5_rt,
      I1 => i_can_bsp_Madd_n0157_inst_cy_155,
      O => i_can_bsp_n0763(5)
    );
  i_can_bsp_Madd_n0157_inst_cy_158_375 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0157_inst_cy_157,
      IA => N23151,
      SEL => tx_err_cnt_7_rt,
      O => i_can_bsp_Madd_n0157_inst_cy_158
    );
  i_can_bsp_Madd_n0156_inst_sum_119 : X_XOR2
    port map (
      I0 => rx_err_cnt_6_rt,
      I1 => i_can_bsp_Madd_n0156_inst_cy_156,
      O => i_can_bsp_n0761(6)
    );
  i_can_bsp_Madd_n0156_inst_sum_120 : X_XOR2
    port map (
      I0 => rx_err_cnt_7_rt,
      I1 => i_can_bsp_Madd_n0156_inst_cy_157,
      O => i_can_bsp_n0761(7)
    );
  i_can_bsp_Madd_n0156_inst_lut2_981 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(3),
      O => i_can_bsp_Madd_n0156_inst_lut2_98,
      ADR1 => GND
    );
  i_can_bsp_Madd_n0156_inst_cy_154_376 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_bsp_Madd_n0156_inst_lut2_98,
      O => i_can_bsp_Madd_n0156_inst_cy_154
    );
  rd_i_IBUF_377 : X_BUF
    port map (
      I => rd_i,
      O => rd_i_IBUF
    );
  i_can_bsp_Madd_n0156_inst_sum_121 : X_XOR2
    port map (
      I0 => i_can_bsp_rx_err_cnt_8_rt,
      I1 => i_can_bsp_Madd_n0156_inst_cy_158,
      O => i_can_bsp_n0761(8)
    );
  i_can_bsp_Madd_n0156_inst_cy_155_378 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0156_inst_cy_154,
      IA => N23151,
      SEL => rx_err_cnt_4_rt,
      O => i_can_bsp_Madd_n0156_inst_cy_155
    );
  i_can_bsp_Madd_n0156_inst_sum_117 : X_XOR2
    port map (
      I0 => rx_err_cnt_4_rt,
      I1 => i_can_bsp_Madd_n0156_inst_cy_154,
      O => i_can_bsp_n0761(4)
    );
  i_can_bsp_Mcompar_n0248_inst_lut4_291 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_25,
      ADR1 => i_can_bsp_n0247(4),
      ADR2 => i_can_bsp_bit_cnt_26,
      ADR3 => i_can_bsp_n0247(5),
      O => i_can_bsp_Mcompar_n0248_inst_lut4_29
    );
  i_can_bsp_Madd_n0156_inst_cy_156_379 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0156_inst_cy_155,
      IA => N23151,
      SEL => rx_err_cnt_5_rt,
      O => i_can_bsp_Madd_n0156_inst_cy_156
    );
  i_can_bsp_Madd_n0156_inst_sum_118 : X_XOR2
    port map (
      I0 => rx_err_cnt_5_rt,
      I1 => i_can_bsp_Madd_n0156_inst_cy_155,
      O => i_can_bsp_n0761(5)
    );
  i_can_bsp_Madd_n0156_inst_cy_158_380 : X_MUX2
    port map (
      IB => i_can_bsp_Madd_n0156_inst_cy_157,
      IA => N23151,
      SEL => rx_err_cnt_7_rt,
      O => i_can_bsp_Madd_n0156_inst_cy_158
    );
  i_can_bsp_Mcompar_n0283_inst_cy_200_381 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0283_inst_cy_199,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(7),
      SEL => i_can_bsp_Mcompar_n0283_inst_lut2_130,
      O => i_can_bsp_Mcompar_n0283_inst_cy_200
    );
  i_can_bsp_Mcompar_n0283_inst_lut2_1301 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(7),
      ADR1 => i_can_bsp_rx_err_cnt(7),
      O => i_can_bsp_Mcompar_n0283_inst_lut2_130
    );
  i_can_bsp_Mcompar_n0283_inst_cy_199_382 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0283_inst_cy_198,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(6),
      SEL => i_can_bsp_Mcompar_n0283_inst_lut2_129,
      O => i_can_bsp_Mcompar_n0283_inst_cy_199
    );
  i_can_bsp_Mcompar_n0283_inst_lut2_1291 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(6),
      ADR1 => i_can_bsp_rx_err_cnt(6),
      O => i_can_bsp_Mcompar_n0283_inst_lut2_129
    );
  i_can_bsp_Msub_n0001_inst_sum_130 : X_XOR2
    port map (
      I0 => N23149,
      I1 => i_can_bsp_Msub_n0001_inst_cy_167,
      O => i_can_bsp_n0001(8)
    );
  i_can_bsp_Mcompar_n0283_inst_cy_198_383 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0283_inst_cy_197,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(5),
      SEL => i_can_bsp_Mcompar_n0283_inst_lut2_128,
      O => i_can_bsp_Mcompar_n0283_inst_cy_198
    );
  i_can_bsp_Mcompar_n0283_inst_lut2_1281 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(5),
      ADR1 => i_can_bsp_rx_err_cnt(5),
      O => i_can_bsp_Mcompar_n0283_inst_lut2_128
    );
  i_can_bsp_Mcompar_n0283_inst_cy_197_384 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0283_inst_cy_196,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(4),
      SEL => i_can_bsp_Mcompar_n0283_inst_lut2_127,
      O => i_can_bsp_Mcompar_n0283_inst_cy_197
    );
  i_can_bsp_Mcompar_n0283_inst_lut2_1271 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(4),
      ADR1 => i_can_bsp_rx_err_cnt(4),
      O => i_can_bsp_Mcompar_n0283_inst_lut2_127
    );
  i_can_bsp_Mcompar_n0283_inst_cy_196_385 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0283_inst_cy_195,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(3),
      SEL => i_can_bsp_Mcompar_n0283_inst_lut2_126,
      O => i_can_bsp_Mcompar_n0283_inst_cy_196
    );
  i_can_bsp_Mcompar_n0283_inst_lut2_1261 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(3),
      ADR1 => i_can_bsp_rx_err_cnt(3),
      O => i_can_bsp_Mcompar_n0283_inst_lut2_126
    );
  i_can_bsp_Mcompar_n0283_inst_cy_195_386 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0283_inst_cy_194,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(2),
      SEL => i_can_bsp_Mcompar_n0283_inst_lut2_125,
      O => i_can_bsp_Mcompar_n0283_inst_cy_195
    );
  i_can_bsp_Mcompar_n0283_inst_lut2_1251 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(2),
      ADR1 => i_can_bsp_rx_err_cnt(2),
      O => i_can_bsp_Mcompar_n0283_inst_lut2_125
    );
  i_can_bsp_Msub_n0001_inst_lut2_1071 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG1_data_out(0),
      O => i_can_bsp_Msub_n0001_inst_lut2_107,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0001_inst_cy_163_387 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_registers_TX_DATA_REG1_data_out(0),
      SEL => i_can_bsp_Msub_n0001_inst_lut2_107,
      O => i_can_bsp_Msub_n0001_inst_cy_163
    );
  i_can_bsp_n0138_8_SW0 : X_LUT4
    generic map(
      INIT => X"008A"
    )
    port map (
      ADR0 => i_can_bsp_n0761(8),
      ADR1 => i_can_bsp_rule5,
      ADR2 => i_can_bsp_go_error_frame,
      ADR3 => i_can_bsp_n0200,
      O => N50992
    );
  i_can_bsp_Msub_n0001_inst_lut2_1081 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG1_data_out(1),
      O => i_can_bsp_Msub_n0001_inst_lut2_108,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0001_inst_cy_164_388 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0001_inst_cy_163,
      IA => i_can_registers_TX_DATA_REG1_data_out(1),
      SEL => i_can_bsp_Msub_n0001_inst_lut2_108,
      O => i_can_bsp_Msub_n0001_inst_cy_164
    );
  i_can_bsp_Msub_n0001_inst_sum_126 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0001_inst_lut2_108,
      I1 => i_can_bsp_Msub_n0001_inst_cy_163,
      O => i_can_bsp_n0001(4)
    );
  i_can_bsp_Msub_n0001_inst_lut2_1091 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG1_data_out(2),
      O => i_can_bsp_Msub_n0001_inst_lut2_109,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0001_inst_cy_165_389 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0001_inst_cy_164,
      IA => i_can_registers_TX_DATA_REG1_data_out(2),
      SEL => i_can_bsp_Msub_n0001_inst_lut2_109,
      O => i_can_bsp_Msub_n0001_inst_cy_165
    );
  i_can_bsp_Msub_n0001_inst_sum_127 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0001_inst_lut2_109,
      I1 => i_can_bsp_Msub_n0001_inst_cy_164,
      O => i_can_bsp_n0001(5)
    );
  i_can_bsp_Msub_n0001_inst_lut2_1101 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG1_data_out(3),
      O => i_can_bsp_Msub_n0001_inst_lut2_110,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0001_inst_cy_166_390 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0001_inst_cy_165,
      IA => i_can_registers_TX_DATA_REG1_data_out(3),
      SEL => i_can_bsp_Msub_n0001_inst_lut2_110,
      O => i_can_bsp_Msub_n0001_inst_cy_166
    );
  i_can_bsp_Msub_n0001_inst_sum_128 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0001_inst_lut2_110,
      I1 => i_can_bsp_Msub_n0001_inst_cy_165,
      O => i_can_bsp_n0001(6)
    );
  i_can_bsp_Mcompar_n0283_inst_cy_194_391 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0283_inst_cy_193,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(1),
      SEL => i_can_bsp_Mcompar_n0283_inst_lut2_124,
      O => i_can_bsp_Mcompar_n0283_inst_cy_194
    );
  i_can_bsp_Msub_n0001_inst_cy_167_392 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0001_inst_cy_166,
      IA => N23151,
      SEL => N23149,
      O => i_can_bsp_Msub_n0001_inst_cy_167
    );
  i_can_bsp_Mcompar_n0283_inst_lut2_1241 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(1),
      ADR1 => i_can_bsp_rx_err_cnt(1),
      O => i_can_bsp_Mcompar_n0283_inst_lut2_124
    );
  i_can_bsp_Mcompar_n0283_inst_cy_193_393 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(0),
      SEL => i_can_bsp_Mcompar_n0283_inst_lut2_123,
      O => i_can_bsp_Mcompar_n0283_inst_cy_193
    );
  i_can_bsp_Msub_n0000_inst_sum_130 : X_XOR2
    port map (
      I0 => N23149,
      I1 => i_can_bsp_Msub_n0000_inst_cy_167,
      O => i_can_bsp_n0000(8)
    );
  i_can_bsp_Mcompar_n0283_inst_lut2_1231 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(0),
      ADR1 => i_can_bsp_rx_err_cnt(0),
      O => i_can_bsp_Mcompar_n0283_inst_lut2_123
    );
  i_can_bsp_Mmux_error_status_Result40_SW0 : X_LUT4
    generic map(
      INIT => X"BBB0"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR2 => N55652,
      ADR3 => CHOICE1351,
      O => N55174
    );
  i_can_bsp_Mcompar_n0283_inst_cy_201_394 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0283_inst_cy_200,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0283_inst_lut2_131,
      O => i_can_bsp_Mcompar_n0283_inst_cy_201
    );
  i_can_bsp_Mcompar_n0284_inst_cy_200_395 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0284_inst_cy_199,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(7),
      SEL => i_can_bsp_Mcompar_n0284_inst_lut2_130,
      O => i_can_bsp_Mcompar_n0284_inst_cy_200
    );
  i_can_bsp_Mcompar_n0284_inst_lut2_1301 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(7),
      ADR1 => i_can_bsp_tx_err_cnt(7),
      O => i_can_bsp_Mcompar_n0284_inst_lut2_130
    );
  i_can_bsp_Mcompar_n0284_inst_cy_199_396 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0284_inst_cy_198,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(6),
      SEL => i_can_bsp_Mcompar_n0284_inst_lut2_129,
      O => i_can_bsp_Mcompar_n0284_inst_cy_199
    );
  i_can_bsp_Mcompar_n0284_inst_lut2_1291 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(6),
      ADR1 => i_can_bsp_tx_err_cnt(6),
      O => i_can_bsp_Mcompar_n0284_inst_lut2_129
    );
  i_can_bsp_Mcompar_n0284_inst_cy_198_397 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0284_inst_cy_197,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(5),
      SEL => i_can_bsp_Mcompar_n0284_inst_lut2_128,
      O => i_can_bsp_Mcompar_n0284_inst_cy_198
    );
  i_can_bsp_Msub_n0000_inst_lut2_1071 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG0_data_out(0),
      O => i_can_bsp_Msub_n0000_inst_lut2_107,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0000_inst_cy_163_398 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_registers_TX_DATA_REG0_data_out(0),
      SEL => i_can_bsp_Msub_n0000_inst_lut2_107,
      O => i_can_bsp_Msub_n0000_inst_cy_163
    );
  i_can_registers_data_out_tmp_4_165_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => N56111,
      ADR1 => addr_latched_2_1,
      ADR2 => addr_latched_4_1,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(4),
      O => N54709
    );
  i_can_bsp_Msub_n0000_inst_lut2_1081 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG0_data_out(1),
      O => i_can_bsp_Msub_n0000_inst_lut2_108,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0000_inst_cy_164_399 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0000_inst_cy_163,
      IA => i_can_registers_TX_DATA_REG0_data_out(1),
      SEL => i_can_bsp_Msub_n0000_inst_lut2_108,
      O => i_can_bsp_Msub_n0000_inst_cy_164
    );
  i_can_bsp_Msub_n0000_inst_sum_126 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0000_inst_lut2_108,
      I1 => i_can_bsp_Msub_n0000_inst_cy_163,
      O => i_can_bsp_n0000(4)
    );
  i_can_bsp_Msub_n0000_inst_lut2_1091 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG0_data_out(2),
      O => i_can_bsp_Msub_n0000_inst_lut2_109,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0000_inst_cy_165_400 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0000_inst_cy_164,
      IA => i_can_registers_TX_DATA_REG0_data_out(2),
      SEL => i_can_bsp_Msub_n0000_inst_lut2_109,
      O => i_can_bsp_Msub_n0000_inst_cy_165
    );
  i_can_bsp_Msub_n0000_inst_sum_127 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0000_inst_lut2_109,
      I1 => i_can_bsp_Msub_n0000_inst_cy_164,
      O => i_can_bsp_n0000(5)
    );
  i_can_bsp_Msub_n0000_inst_lut2_1101 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG0_data_out(3),
      O => i_can_bsp_Msub_n0000_inst_lut2_110,
      ADR1 => GND
    );
  i_can_bsp_Msub_n0000_inst_cy_166_401 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0000_inst_cy_165,
      IA => i_can_registers_TX_DATA_REG0_data_out(3),
      SEL => i_can_bsp_Msub_n0000_inst_lut2_110,
      O => i_can_bsp_Msub_n0000_inst_cy_166
    );
  i_can_bsp_Msub_n0000_inst_sum_128 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0000_inst_lut2_110,
      I1 => i_can_bsp_Msub_n0000_inst_cy_165,
      O => i_can_bsp_n0000(6)
    );
  i_can_bsp_Mcompar_n0284_inst_lut2_1281 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(5),
      ADR1 => i_can_bsp_tx_err_cnt(5),
      O => i_can_bsp_Mcompar_n0284_inst_lut2_128
    );
  i_can_bsp_Msub_n0000_inst_cy_167_402 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_n0000_inst_cy_166,
      IA => N23151,
      SEL => N23149,
      O => i_can_bsp_Msub_n0000_inst_cy_167
    );
  i_can_bsp_Mcompar_n0284_inst_cy_197_403 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0284_inst_cy_196,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(4),
      SEL => i_can_bsp_Mcompar_n0284_inst_lut2_127,
      O => i_can_bsp_Mcompar_n0284_inst_cy_197
    );
  i_can_bsp_Mcompar_n0284_inst_lut2_1271 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(4),
      ADR1 => i_can_bsp_tx_err_cnt(4),
      O => i_can_bsp_Mcompar_n0284_inst_lut2_127
    );
  i_can_bsp_arbitration_lost_capture_30_404 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_arbitration_lost_capture_inst_sum_134,
      CE => i_can_bsp_n0682,
      RST => i_can_bsp_arbitration_lost_capture_30_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_arbitration_lost_capture_30
    );
  i_can_bsp_arbitration_lost_capture_31_405 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_arbitration_lost_capture_inst_sum_135,
      CE => i_can_bsp_n0682,
      RST => i_can_bsp_arbitration_lost_capture_31_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_arbitration_lost_capture_31
    );
  i_can_bsp_arbitration_lost_capture_inst_cy_169_406 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => N55897,
      O => i_can_bsp_arbitration_lost_capture_inst_cy_169
    );
  i_can_bsp_arbitration_lost_capture_inst_cy_170_407 : X_MUX2
    port map (
      IB => i_can_bsp_arbitration_lost_capture_inst_cy_169,
      IA => N23151,
      SEL => i_can_bsp_arbitration_lost_capture_inst_lut3_34,
      O => i_can_bsp_arbitration_lost_capture_inst_cy_170
    );
  i_can_bsp_arbitration_lost_capture_inst_sum_131_408 : X_XOR2
    port map (
      I0 => i_can_bsp_arbitration_lost_capture_inst_lut3_34,
      I1 => i_can_bsp_arbitration_lost_capture_inst_cy_169,
      O => i_can_bsp_arbitration_lost_capture_inst_sum_131
    );
  i_can_registers_Ker315071 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => addr_latched_0_3,
      ADR1 => N54966,
      ADR2 => addr_latched(1),
      ADR3 => addr_latched(3),
      O => i_can_registers_N31509
    );
  i_can_bsp_arbitration_lost_capture_inst_cy_171_409 : X_MUX2
    port map (
      IB => i_can_bsp_arbitration_lost_capture_inst_cy_170,
      IA => N23151,
      SEL => i_can_bsp_arbitration_lost_capture_inst_lut3_35,
      O => i_can_bsp_arbitration_lost_capture_inst_cy_171
    );
  i_can_bsp_arbitration_lost_capture_inst_sum_132_410 : X_XOR2
    port map (
      I0 => i_can_bsp_arbitration_lost_capture_inst_lut3_35,
      I1 => i_can_bsp_arbitration_lost_capture_inst_cy_170,
      O => i_can_bsp_arbitration_lost_capture_inst_sum_132
    );
  i_can_registers_data_out_tmp_4_110_G : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => N43019,
      ADR1 => addr_latched_1_2,
      ADR2 => addr_latched_3_2,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(4),
      O => N55854
    );
  i_can_bsp_arbitration_lost_capture_inst_cy_172_411 : X_MUX2
    port map (
      IB => i_can_bsp_arbitration_lost_capture_inst_cy_171,
      IA => N23151,
      SEL => i_can_bsp_arbitration_lost_capture_inst_lut3_36,
      O => i_can_bsp_arbitration_lost_capture_inst_cy_172
    );
  i_can_bsp_arbitration_lost_capture_inst_sum_133_412 : X_XOR2
    port map (
      I0 => i_can_bsp_arbitration_lost_capture_inst_lut3_36,
      I1 => i_can_bsp_arbitration_lost_capture_inst_cy_171,
      O => i_can_bsp_arbitration_lost_capture_inst_sum_133
    );
  i_can_bsp_arbitration_lost_capture_inst_lut3_361 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => read_arbitration_lost_capture_reg,
      ADR1 => i_can_bsp_arbitration_lost_capture_29,
      O => i_can_bsp_arbitration_lost_capture_inst_lut3_36
    );
  i_can_bsp_arbitration_lost_capture_inst_cy_173_413 : X_MUX2
    port map (
      IB => i_can_bsp_arbitration_lost_capture_inst_cy_172,
      IA => N23151,
      SEL => i_can_bsp_arbitration_lost_capture_inst_lut3_37,
      O => i_can_bsp_arbitration_lost_capture_inst_cy_173
    );
  i_can_bsp_arbitration_lost_capture_inst_sum_134_414 : X_XOR2
    port map (
      I0 => i_can_bsp_arbitration_lost_capture_inst_lut3_37,
      I1 => i_can_bsp_arbitration_lost_capture_inst_cy_172,
      O => i_can_bsp_arbitration_lost_capture_inst_sum_134
    );
  i_can_registers_we_tx_data_02 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => addr_latched_3_1,
      ADR2 => N55932,
      ADR3 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => CHOICE1470
    );
  i_can_bsp_Mcompar_n0284_inst_cy_196_415 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0284_inst_cy_195,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(3),
      SEL => i_can_bsp_Mcompar_n0284_inst_lut2_126,
      O => i_can_bsp_Mcompar_n0284_inst_cy_196
    );
  i_can_bsp_arbitration_lost_capture_inst_sum_135_416 : X_XOR2
    port map (
      I0 => i_can_bsp_arbitration_lost_capture_inst_lut3_38,
      I1 => i_can_bsp_arbitration_lost_capture_inst_cy_173,
      O => i_can_bsp_arbitration_lost_capture_inst_sum_135
    );
  i_can_bsp_arbitration_lost_capture_27_417 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_arbitration_lost_capture_inst_sum_131,
      CE => i_can_bsp_n0682,
      RST => i_can_bsp_arbitration_lost_capture_27_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_arbitration_lost_capture_27
    );
  i_can_bsp_arbitration_lost_capture_28_418 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_arbitration_lost_capture_inst_sum_132,
      CE => i_can_bsp_n0682,
      RST => i_can_bsp_arbitration_lost_capture_28_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_arbitration_lost_capture_28
    );
  i_can_bsp_Mcompar_n0262_inst_lut4_261 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_bsp_crc_in(14),
      ADR1 => i_can_bsp_i_can_crc_rx_crc(14),
      O => i_can_bsp_Mcompar_n0262_inst_lut4_26
    );
  i_can_bsp_Mcompar_n0262_inst_cy_182 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0262_inst_cy_181,
      IA => N23149,
      SEL => i_can_bsp_Mcompar_n0262_inst_lut4_26,
      O => i_can_bsp_n0262
    );
  i_can_bsp_Mcompar_n0262_inst_lut4_191 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_crc_in(0),
      ADR1 => i_can_bsp_i_can_crc_rx_crc(0),
      ADR2 => i_can_bsp_crc_in(1),
      ADR3 => i_can_bsp_i_can_crc_rx_crc(1),
      O => i_can_bsp_Mcompar_n0262_inst_lut4_19
    );
  i_can_bsp_Mcompar_n0262_inst_cy_175_419 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_bsp_Mcompar_n0262_inst_lut4_19,
      O => i_can_bsp_Mcompar_n0262_inst_cy_175
    );
  i_can_bsp_Mcompar_n0262_inst_lut4_201 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_crc_in(2),
      ADR1 => i_can_bsp_i_can_crc_rx_crc(2),
      ADR2 => i_can_bsp_crc_in(3),
      ADR3 => i_can_bsp_i_can_crc_rx_crc(3),
      O => i_can_bsp_Mcompar_n0262_inst_lut4_20
    );
  i_can_bsp_Mcompar_n0262_inst_cy_176_420 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0262_inst_cy_175,
      IA => N23149,
      SEL => i_can_bsp_Mcompar_n0262_inst_lut4_20,
      O => i_can_bsp_Mcompar_n0262_inst_cy_176
    );
  i_can_bsp_Mcompar_n0262_inst_lut4_211 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_crc_in(4),
      ADR1 => i_can_bsp_i_can_crc_rx_crc(4),
      ADR2 => i_can_bsp_crc_in(5),
      ADR3 => i_can_bsp_i_can_crc_rx_crc(5),
      O => i_can_bsp_Mcompar_n0262_inst_lut4_21
    );
  i_can_bsp_Mcompar_n0262_inst_cy_177_421 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0262_inst_cy_176,
      IA => N23149,
      SEL => i_can_bsp_Mcompar_n0262_inst_lut4_21,
      O => i_can_bsp_Mcompar_n0262_inst_cy_177
    );
  i_can_bsp_Mcompar_n0262_inst_lut4_221 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_crc_in(6),
      ADR1 => i_can_bsp_i_can_crc_rx_crc(6),
      ADR2 => i_can_bsp_crc_in(7),
      ADR3 => i_can_bsp_i_can_crc_rx_crc(7),
      O => i_can_bsp_Mcompar_n0262_inst_lut4_22
    );
  i_can_bsp_Mcompar_n0262_inst_cy_178_422 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0262_inst_cy_177,
      IA => N23149,
      SEL => i_can_bsp_Mcompar_n0262_inst_lut4_22,
      O => i_can_bsp_Mcompar_n0262_inst_cy_178
    );
  i_can_bsp_Mcompar_n0262_inst_lut4_231 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_crc_in(8),
      ADR1 => i_can_bsp_i_can_crc_rx_crc(8),
      ADR2 => i_can_bsp_crc_in(9),
      ADR3 => i_can_bsp_i_can_crc_rx_crc(9),
      O => i_can_bsp_Mcompar_n0262_inst_lut4_23
    );
  i_can_bsp_Mcompar_n0262_inst_cy_179_423 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0262_inst_cy_178,
      IA => N23149,
      SEL => i_can_bsp_Mcompar_n0262_inst_lut4_23,
      O => i_can_bsp_Mcompar_n0262_inst_cy_179
    );
  i_can_bsp_Mcompar_n0262_inst_lut4_241 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_crc_in(10),
      ADR1 => i_can_bsp_i_can_crc_rx_crc(10),
      ADR2 => i_can_bsp_crc_in(11),
      ADR3 => i_can_bsp_i_can_crc_rx_crc(11),
      O => i_can_bsp_Mcompar_n0262_inst_lut4_24
    );
  i_can_bsp_Mcompar_n0262_inst_cy_180_424 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0262_inst_cy_179,
      IA => N23149,
      SEL => i_can_bsp_Mcompar_n0262_inst_lut4_24,
      O => i_can_bsp_Mcompar_n0262_inst_cy_180
    );
  i_can_bsp_Mcompar_n0262_inst_lut4_251 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_crc_in(12),
      ADR1 => i_can_bsp_i_can_crc_rx_crc(12),
      ADR2 => i_can_bsp_crc_in(13),
      ADR3 => i_can_bsp_i_can_crc_rx_crc(13),
      O => i_can_bsp_Mcompar_n0262_inst_lut4_25
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_231 : X_LUT4
    generic map(
      INIT => X"27D8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0078,
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      ADR2 => i_can_bsp_i_can_fifo_n0077(6),
      ADR3 => i_can_bsp_i_can_fifo_n0034,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_23
    );
  i_can_bsp_Mcompar_n0284_inst_lut2_1261 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(3),
      ADR1 => i_can_bsp_tx_err_cnt(3),
      O => i_can_bsp_Mcompar_n0284_inst_lut2_126
    );
  i_can_bsp_Msub_n0247_inst_sum_141 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_n0247_inst_lut2_118,
      I1 => i_can_bsp_Msub_n0247_inst_cy_187,
      O => i_can_bsp_n0247(5)
    );
  i_can_bsp_Mcompar_n0284_inst_cy_195_425 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0284_inst_cy_194,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(2),
      SEL => i_can_bsp_Mcompar_n0284_inst_lut2_125,
      O => i_can_bsp_Mcompar_n0284_inst_cy_195
    );
  i_can_bsp_Mcompar_n0284_inst_lut2_1251 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(2),
      ADR1 => i_can_bsp_tx_err_cnt(2),
      O => i_can_bsp_Mcompar_n0284_inst_lut2_125
    );
  i_can_bsp_Mcompar_n0284_inst_cy_194_426 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0284_inst_cy_193,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(1),
      SEL => i_can_bsp_Mcompar_n0284_inst_lut2_124,
      O => i_can_bsp_Mcompar_n0284_inst_cy_194
    );
  i_can_bsp_Mcompar_n0284_inst_lut2_1241 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(1),
      ADR1 => i_can_bsp_tx_err_cnt(1),
      O => i_can_bsp_Mcompar_n0284_inst_lut2_124
    );
  i_can_bsp_Mcompar_n0284_inst_cy_193_427 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_registers_ERROR_WARNING_REG_data_out(0),
      SEL => i_can_bsp_Mcompar_n0284_inst_lut2_123,
      O => i_can_bsp_Mcompar_n0284_inst_cy_193
    );
  i_can_bsp_Mcompar_n0284_inst_lut2_1231 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_registers_ERROR_WARNING_REG_data_out(0),
      ADR1 => i_can_bsp_tx_err_cnt(0),
      O => i_can_bsp_Mcompar_n0284_inst_lut2_123
    );
  i_can_registers_data_out_tmp_6_40_SW0 : X_LUT4
    generic map(
      INIT => X"0535"
    )
    port map (
      ADR0 => N55039,
      ADR1 => N55732,
      ADR2 => addr_latched_0_2,
      ADR3 => addr_latched_1_3,
      O => N55743
    );
  i_can_bsp_Mcompar_n0284_inst_cy_201_428 : X_MUX2
    port map (
      IB => i_can_bsp_Mcompar_n0284_inst_cy_200,
      IA => N23151,
      SEL => i_can_bsp_Mcompar_n0284_inst_lut2_131,
      O => i_can_bsp_Mcompar_n0284_inst_cy_201
    );
  addr_latched_4_rt_429 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => addr_latched_4_3,
      O => addr_latched_4_rt,
      ADR1 => GND
    );
  i_can_registers_Ker3144491_SW2 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => N55974,
      ADR3 => i_can_registers_N31748,
      O => N54970
    );
  i_can_btl_quant_cnt_3_rt_430 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(3),
      O => i_can_btl_quant_cnt_3_rt,
      ADR1 => GND
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_74 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net265,
      IB => i_can_bsp_Mmux_n0004_net266,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net267
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_68 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net244,
      IB => i_can_bsp_Mmux_n0004_net245,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net246
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1771 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_7_3,
      ADR2 => i_can_bsp_tmp_fifo_6_3,
      O => i_can_bsp_Mmux_n0004_net245
    );
  i_can_bsp_Msub_COND_6_inst_lut2_1191 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_bsp_data_cnt_17,
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_bsp_Msub_COND_6_inst_lut2_119
    );
  i_can_bsp_Msub_COND_6_inst_cy_189_431 : X_MUX2
    port map (
      IB => N23149,
      IA => i_can_bsp_data_cnt_17,
      SEL => i_can_bsp_Msub_COND_6_inst_lut2_119,
      O => i_can_bsp_Msub_COND_6_inst_cy_189
    );
  i_can_bsp_Msub_COND_6_inst_sum_142 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_COND_6_inst_lut2_119,
      I1 => N23149,
      O => i_can_bsp_COND_6(0)
    );
  i_can_bsp_n06441 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_ack,
      ADR1 => i_can_bsp_n0241,
      ADR2 => i_can_btl_go_sync1_2,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0644
    );
  i_can_bsp_Msub_COND_6_inst_cy_190_432 : X_MUX2
    port map (
      IB => i_can_bsp_Msub_COND_6_inst_cy_189,
      IA => i_can_bsp_data_cnt_18,
      SEL => i_can_bsp_Msub_COND_6_inst_lut2_120,
      O => i_can_bsp_Msub_COND_6_inst_cy_190
    );
  i_can_bsp_Msub_COND_6_inst_sum_143 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_COND_6_inst_lut2_120,
      I1 => i_can_bsp_Msub_COND_6_inst_cy_189,
      O => i_can_bsp_COND_6(1)
    );
  i_can_bsp_Msub_COND_6_inst_lut2_1201 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => i_can_bsp_data_cnt_18,
      ADR1 => i_can_bsp_ide,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_bsp_Msub_COND_6_inst_lut2_120
    );
  i_can_bsp_Mmux_n0004_inst_lut3_1921 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_COND_6(0),
      ADR1 => i_can_bsp_tmp_fifo_5_7,
      ADR2 => i_can_bsp_tmp_fifo_4_7,
      O => i_can_bsp_Mmux_n0004_net272
    );
  i_can_bsp_Msub_COND_6_inst_sum_144 : X_XOR2
    port map (
      I0 => i_can_bsp_Msub_COND_6_inst_lut2_121,
      I1 => i_can_bsp_Msub_COND_6_inst_cy_190,
      O => i_can_bsp_COND_6(2)
    );
  i_can_bsp_Mmux_n0010_inst_mux_f5_4 : X_MUX2
    port map (
      IA => N54612,
      IB => tx_data_1_0_rt,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0010_net21
    );
  i_can_bsp_Mmux_n0010_inst_mux_f6_2 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0010_net19,
      IB => i_can_bsp_Mmux_n0010_net21,
      SEL => i_can_bsp_tx_pointer_25,
      O => i_can_bsp_n0010
    );
  i_can_bsp_n06401 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_id1,
      ADR1 => i_can_bsp_go_error_frame,
      ADR2 => i_can_bsp_bit_de_stuff_reset,
      O => i_can_bsp_n0640
    );
  i_can_bsp_Mmux_n0010_inst_lut3_401 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(5),
      ADR2 => i_can_registers_TX_DATA_REG0_data_out(6),
      O => i_can_bsp_Mmux_n0010_net6
    );
  i_can_bsp_Mmux_n0010_inst_mux_f5_0 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0010_net5,
      IB => i_can_bsp_Mmux_n0010_net6,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0010_net7
    );
  i_can_bsp_Mmux_n0010_inst_lut3_411 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(3),
      ADR2 => i_can_registers_TX_DATA_REG0_data_out(4),
      O => i_can_bsp_Mmux_n0010_net8
    );
  i_can_registers_data_out_tmp_0_58 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2011,
      ADR1 => i_can_registers_n0068,
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(0),
      ADR3 => CHOICE2014,
      O => CHOICE2016
    );
  i_can_bsp_Mmux_n0010_inst_mux_f5_1 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0010_net8,
      IB => N54615,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0010_net10
    );
  i_can_bsp_Mmux_n0010_inst_mux_f6_0 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0010_net7,
      IB => i_can_bsp_Mmux_n0010_net10,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0010_net11
    );
  i_can_bsp_Mmux_n0010_inst_lut3_431 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(7),
      ADR2 => i_can_registers_TX_DATA_REG0_data_out(0),
      O => i_can_bsp_Mmux_n0010_net12
    );
  i_can_bsp_Mmux_n0010_inst_lut3_441 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(5),
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(6),
      O => i_can_bsp_Mmux_n0010_net13
    );
  i_can_bsp_Mmux_n0010_inst_mux_f5_2 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0010_net12,
      IB => N54617,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0010_net14
    );
  i_can_bsp_Mmux_n0010_inst_lut3_391 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(7),
      O => i_can_bsp_Mmux_n0010_net5
    );
  i_can_bsp_Mmux_n0010_inst_lut3_451 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(4),
      O => i_can_bsp_Mmux_n0010_net15
    );
  i_can_bsp_Mmux_n0010_inst_mux_f5_3 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0010_net15,
      IB => i_can_bsp_Mmux_n0010_net16,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0010_net17
    );
  i_can_bsp_Mmux_n0010_inst_mux_f6_1 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0010_net14,
      IB => i_can_bsp_Mmux_n0010_net17,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0010_net18
    );
  i_can_bsp_Mmux_n0010_inst_lut3_471 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0010_net18,
      ADR2 => i_can_bsp_Mmux_n0010_net11,
      O => i_can_bsp_Mmux_n0010_net19
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_22 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net68,
      IB => i_can_bsp_Mmux_n0009_net83,
      SEL => i_can_bsp_tx_pointer_25,
      O => i_can_bsp_Mmux_n0009_net84
    );
  i_can_bsp_Mmux_n0009_inst_mux_f6_11 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net53,
      IB => i_can_bsp_Mmux_n0009_net84,
      SEL => i_can_bsp_tx_pointer_26,
      O => i_can_bsp_n0009
    );
  i_can_bsp_Mmux_n0009_inst_lut3_491 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG2_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(7),
      O => i_can_bsp_Mmux_n0009_net23
    );
  i_can_bsp_Mmux_n0009_inst_lut3_501 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG2_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(5),
      O => i_can_bsp_Mmux_n0009_net24
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_5 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net23,
      IB => i_can_bsp_Mmux_n0009_net24,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net25
    );
  i_can_bsp_Mmux_n0009_inst_lut3_511 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG2_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(3),
      O => i_can_bsp_Mmux_n0009_net26
    );
  i_can_bsp_Mmux_n0009_inst_lut3_521 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG2_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(1),
      O => i_can_bsp_Mmux_n0009_net27
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_6 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net26,
      IB => i_can_bsp_Mmux_n0009_net27,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net28
    );
  i_can_bsp_Mmux_n0009_inst_mux_f6_3 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net25,
      IB => i_can_bsp_Mmux_n0009_net28,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0009_net29
    );
  i_can_bsp_Mmux_n0009_inst_lut3_531 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG3_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(7),
      O => i_can_bsp_Mmux_n0009_net30
    );
  i_can_bsp_Mmux_n0009_inst_lut3_541 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG3_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(5),
      O => i_can_bsp_Mmux_n0009_net31
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_7 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net30,
      IB => i_can_bsp_Mmux_n0009_net31,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net32
    );
  i_can_bsp_Mmux_n0009_inst_lut3_551 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG3_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(3),
      O => i_can_bsp_Mmux_n0009_net33
    );
  i_can_bsp_Mmux_n0009_inst_lut3_561 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG3_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(1),
      O => i_can_bsp_Mmux_n0009_net34
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_8 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net33,
      IB => i_can_bsp_Mmux_n0009_net34,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net35
    );
  i_can_bsp_Mmux_n0009_inst_mux_f6_4 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net32,
      IB => i_can_bsp_Mmux_n0009_net35,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0009_net36
    );
  i_can_bsp_Mmux_n0009_inst_lut3_571 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0009_net36,
      ADR2 => i_can_bsp_Mmux_n0009_net29,
      O => i_can_bsp_Mmux_n0009_net37
    );
  i_can_bsp_Mmux_n0009_inst_lut3_581 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG4_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG4_data_out(7),
      O => i_can_bsp_Mmux_n0009_net38
    );
  i_can_bsp_Mmux_n0009_inst_lut3_591 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG4_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG4_data_out(5),
      O => i_can_bsp_Mmux_n0009_net39
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_9 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net38,
      IB => i_can_bsp_Mmux_n0009_net39,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net40
    );
  i_can_bsp_Mmux_n0009_inst_lut3_601 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG4_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG4_data_out(3),
      O => i_can_bsp_Mmux_n0009_net41
    );
  i_can_bsp_Mmux_n0009_inst_lut3_611 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG4_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG4_data_out(1),
      O => i_can_bsp_Mmux_n0009_net42
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_10 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net41,
      IB => i_can_bsp_Mmux_n0009_net42,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net43
    );
  i_can_bsp_Mmux_n0009_inst_mux_f6_5 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net40,
      IB => i_can_bsp_Mmux_n0009_net43,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0009_net44
    );
  i_can_bsp_Mmux_n0009_inst_lut3_621 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG5_data_out(7),
      O => i_can_bsp_Mmux_n0009_net45
    );
  i_can_bsp_Mmux_n0009_inst_lut3_631 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG5_data_out(5),
      O => i_can_bsp_Mmux_n0009_net46
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_11 : X_MUX2
    port map (
      IA => N54619,
      IB => N54621,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net47
    );
  i_can_bsp_Mmux_n0009_inst_lut3_641 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG5_data_out(3),
      O => i_can_bsp_Mmux_n0009_net48
    );
  i_can_bsp_Mmux_n0009_inst_lut3_651 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG5_data_out(1),
      O => i_can_bsp_Mmux_n0009_net49
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_12 : X_MUX2
    port map (
      IA => N54623,
      IB => N54625,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net50
    );
  i_can_bsp_Mmux_n0009_inst_mux_f6_6 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net47,
      IB => i_can_bsp_Mmux_n0009_net50,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0009_net51
    );
  i_can_bsp_Mmux_n0009_inst_lut3_661 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0009_net51,
      ADR2 => i_can_bsp_Mmux_n0009_net44,
      O => i_can_bsp_Mmux_n0009_net52
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_13 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net37,
      IB => i_can_bsp_Mmux_n0009_net52,
      SEL => i_can_bsp_tx_pointer_25,
      O => i_can_bsp_Mmux_n0009_net53
    );
  i_can_bsp_Mmux_n0009_inst_lut3_671 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG6_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG6_data_out(7),
      O => i_can_bsp_Mmux_n0009_net54
    );
  i_can_bsp_Mmux_n0009_inst_lut3_681 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG6_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG6_data_out(5),
      O => i_can_bsp_Mmux_n0009_net55
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_14 : X_MUX2
    port map (
      IA => N54627,
      IB => N54629,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net56
    );
  i_can_bsp_Mmux_n0009_inst_lut3_691 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG6_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG6_data_out(3),
      O => i_can_bsp_Mmux_n0009_net57
    );
  i_can_bsp_Mmux_n0009_inst_lut3_701 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG6_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG6_data_out(1),
      O => i_can_bsp_Mmux_n0009_net58
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_15 : X_MUX2
    port map (
      IA => N54631,
      IB => N54633,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net59
    );
  i_can_bsp_Mmux_n0009_inst_mux_f6_7 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net56,
      IB => i_can_bsp_Mmux_n0009_net59,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0009_net60
    );
  i_can_bsp_Mmux_n0009_inst_lut3_711 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG7_data_out(7),
      O => i_can_bsp_Mmux_n0009_net61
    );
  i_can_bsp_Mmux_n0009_inst_lut3_721 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG7_data_out(5),
      O => i_can_bsp_Mmux_n0009_net62
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_16 : X_MUX2
    port map (
      IA => N54635,
      IB => N54637,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net63
    );
  i_can_bsp_Mmux_n0009_inst_lut3_731 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG7_data_out(3),
      O => i_can_bsp_Mmux_n0009_net64
    );
  i_can_bsp_Mmux_n0009_inst_lut3_741 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG7_data_out(1),
      O => i_can_bsp_Mmux_n0009_net65
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_17 : X_MUX2
    port map (
      IA => N54639,
      IB => N54641,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net66
    );
  i_can_bsp_Mmux_n0009_inst_mux_f6_8 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net63,
      IB => i_can_bsp_Mmux_n0009_net66,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0009_net67
    );
  i_can_bsp_Mmux_n0009_inst_lut3_751 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0009_net67,
      ADR2 => i_can_bsp_Mmux_n0009_net60,
      O => i_can_bsp_Mmux_n0009_net68
    );
  i_can_bsp_Mmux_n0009_inst_lut3_761 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(7),
      O => i_can_bsp_Mmux_n0009_net69
    );
  i_can_bsp_Mmux_n0009_inst_lut3_771 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(5),
      O => i_can_bsp_Mmux_n0009_net70
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_18 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net69,
      IB => N54643,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net71
    );
  i_can_bsp_Mmux_n0009_inst_lut3_781 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(3),
      O => i_can_bsp_Mmux_n0009_net72
    );
  i_can_bsp_Mmux_n0009_inst_lut3_791 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(1),
      O => i_can_bsp_Mmux_n0009_net73
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_19 : X_MUX2
    port map (
      IA => N54645,
      IB => N54647,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net74
    );
  i_can_bsp_Mmux_n0009_inst_mux_f6_9 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net71,
      IB => i_can_bsp_Mmux_n0009_net74,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0009_net75
    );
  i_can_bsp_Mmux_n0009_inst_lut3_801 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG9_data_out(7),
      O => i_can_bsp_Mmux_n0009_net76
    );
  i_can_bsp_Mmux_n0009_inst_lut3_811 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG9_data_out(5),
      O => i_can_bsp_Mmux_n0009_net77
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_20 : X_MUX2
    port map (
      IA => N54649,
      IB => N54651,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net78
    );
  i_can_bsp_Mmux_n0009_inst_lut3_821 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG9_data_out(3),
      O => i_can_bsp_Mmux_n0009_net79
    );
  i_can_bsp_Mmux_n0009_inst_lut3_831 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG9_data_out(1),
      O => i_can_bsp_Mmux_n0009_net80
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_21 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net79,
      IB => N54653,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0009_net81
    );
  i_can_bsp_Mmux_n0009_inst_mux_f6_10 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net78,
      IB => i_can_bsp_Mmux_n0009_net81,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0009_net82
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_27 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0008_net101,
      IB => tx_data_0_0_rt1,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0008_net102
    );
  i_can_bsp_Mmux_n0008_inst_mux_f6_14 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0008_net100,
      IB => i_can_bsp_Mmux_n0008_net102,
      SEL => i_can_bsp_tx_pointer_25,
      O => i_can_bsp_n0008
    );
  i_can_bsp_n06811 : X_LUT4
    generic map(
      INIT => X"AAAE"
    )
    port map (
      ADR0 => read_arbitration_lost_capture_reg,
      ADR1 => i_can_bsp_arbitration_lost,
      ADR2 => i_can_bsp_arbitration_blocked,
      ADR3 => i_can_bsp_arbitration_lost_q,
      O => i_can_bsp_n0681
    );
  i_can_bsp_rst_tx_pointer21 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE1793,
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR2 => i_can_bsp_tx_pointer_23,
      ADR3 => i_can_bsp_tx_pointer_26,
      O => CHOICE1796
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_23 : X_MUX2
    port map (
      IA => N54656,
      IB => N54658,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0008_net88
    );
  i_can_bsp_Mmux_n0008_inst_lut3_871 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(3),
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(4),
      O => i_can_bsp_Mmux_n0008_net89
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_24 : X_MUX2
    port map (
      IA => N54660,
      IB => N54662,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0008_net91
    );
  i_can_bsp_Mmux_n0008_inst_mux_f6_12 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0008_net88,
      IB => i_can_bsp_Mmux_n0008_net91,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0008_net92
    );
  i_can_bsp_Mmux_n0008_inst_lut3_891 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG2_data_out(7),
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(0),
      O => i_can_bsp_Mmux_n0008_net93
    );
  i_can_bsp_Mmux_n0008_inst_lut3_901 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG2_data_out(5),
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(6),
      O => i_can_bsp_Mmux_n0008_net94
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_25 : X_MUX2
    port map (
      IA => N54664,
      IB => N54666,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0008_net95
    );
  i_can_bsp_Mmux_n0010_inst_lut3_461 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(3),
      O => i_can_bsp_Mmux_n0010_net16
    );
  i_can_bsp_Mmux_n0008_inst_lut3_911 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(6),
      O => i_can_bsp_Mmux_n0008_net96
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_26 : X_MUX2
    port map (
      IA => N54668,
      IB => N54670,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0008_net98
    );
  i_can_bsp_Mmux_n0008_inst_mux_f6_13 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0008_net95,
      IB => i_can_bsp_Mmux_n0008_net98,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0008_net99
    );
  i_can_bsp_Mmux_n0008_inst_lut3_931 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0008_net99,
      ADR2 => i_can_bsp_Mmux_n0008_net92,
      O => i_can_bsp_Mmux_n0008_net100
    );
  i_can_bsp_Mmux_n0007_inst_mux_f6_19 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0007_net137,
      IB => i_can_bsp_Mmux_n0007_net139,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0007_net140
    );
  i_can_bsp_Mmux_n0007_inst_lut3_1161 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_26,
      ADR1 => i_can_bsp_Mmux_n0007_net140,
      ADR2 => i_can_bsp_Mmux_n0007_net134,
      O => i_can_bsp_n0007
    );
  i_can_registers_data_out_tmp_5_74 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2196,
      ADR2 => CHOICE2199,
      ADR3 => CHOICE2189,
      O => CHOICE2203
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_28 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0008_net86,
      IB => i_can_bsp_Mmux_n0010_net13,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0007_net106
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_111 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG5_data_out(7),
      O => N54619
    );
  i_can_registers_data_out_tmp_2_127 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0071,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(2),
      ADR2 => i_can_registers_n0074,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(2),
      O => CHOICE2351
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_29 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0008_net89,
      IB => i_can_bsp_Mmux_n0010_net20,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0007_net109
    );
  i_can_bsp_Mmux_n0007_inst_mux_f6_15 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0007_net106,
      IB => i_can_bsp_Mmux_n0007_net109,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0007_net110
    );
  i_can_bsp_n068531 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE1835,
      ADR1 => i_can_bsp_go_error_frame,
      ADR2 => i_can_bsp_rule5,
      ADR3 => CHOICE1841,
      O => CHOICE1843
    );
  i_can_registers_data_out_tmp_3_172 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_4_2,
      ADR1 => N55485,
      ADR2 => addr_latched_2_1,
      ADR3 => addr_latched_3_1,
      O => CHOICE2436
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_30 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0008_net93,
      IB => i_can_bsp_Mmux_n0008_net94,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0007_net113
    );
  i_can_bsp_Mmux_n0004_inst_mux_f5_75 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0004_net269,
      IB => i_can_bsp_Mmux_n0004_net270,
      SEL => i_can_bsp_COND_6(1),
      O => i_can_bsp_Mmux_n0004_net271
    );
  i_can_bsp_Mmux_n0007_inst_lut3_1021 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG2_data_out(3),
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(4),
      O => i_can_bsp_Mmux_n0007_net115
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_31 : X_MUX2
    port map (
      IA => N23149,
      IB => i_can_bsp_Mmux_n0007_net115,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0007_net116
    );
  i_can_bsp_Mmux_n0007_inst_mux_f6_16 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0007_net113,
      IB => i_can_bsp_Mmux_n0007_net116,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0007_net117
    );
  i_can_registers_data_out_tmp_1_911_G : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31781,
      ADR1 => addr_latched_2_3,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(1),
      ADR3 => addr_latched_1_2,
      O => N55849
    );
  i_can_bsp_Mmux_n0007_inst_lut3_1041 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG2_data_out(1),
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(2),
      O => i_can_bsp_Mmux_n0007_net119
    );
  i_can_bsp_Mmux_n0007_inst_lut3_1051 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG3_data_out(7),
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(0),
      O => i_can_bsp_Mmux_n0007_net120
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_32 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0007_net119,
      IB => i_can_bsp_Mmux_n0007_net120,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0007_net121
    );
  i_can_bsp_Mmux_n0007_inst_lut3_1061 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG3_data_out(5),
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(6),
      O => i_can_bsp_Mmux_n0007_net122
    );
  i_can_bsp_Mmux_n0007_inst_lut3_1071 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG3_data_out(3),
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(4),
      O => i_can_bsp_Mmux_n0007_net123
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_33 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0007_net122,
      IB => i_can_bsp_Mmux_n0007_net123,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0007_net124
    );
  i_can_bsp_Mmux_n0007_inst_mux_f6_17 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0007_net121,
      IB => i_can_bsp_Mmux_n0007_net124,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0007_net125
    );
  i_can_bsp_Mmux_n0007_inst_lut3_1081 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG3_data_out(1),
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(2),
      O => i_can_bsp_Mmux_n0007_net126
    );
  i_can_bsp_Mmux_n0007_inst_lut3_1091 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG4_data_out(7),
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(0),
      O => i_can_bsp_Mmux_n0007_net127
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_34 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0007_net126,
      IB => i_can_bsp_Mmux_n0007_net127,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0007_net128
    );
  i_can_bsp_Mmux_n0007_inst_lut3_1101 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG4_data_out(5),
      ADR2 => i_can_registers_TX_DATA_REG4_data_out(6),
      O => i_can_bsp_Mmux_n0007_net129
    );
  i_can_bsp_Mmux_n0007_inst_lut3_1111 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG4_data_out(3),
      ADR2 => i_can_registers_TX_DATA_REG4_data_out(4),
      O => i_can_bsp_Mmux_n0007_net130
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_35 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0007_net129,
      IB => i_can_bsp_Mmux_n0007_net130,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0007_net131
    );
  i_can_bsp_Mmux_n0007_inst_mux_f6_18 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0007_net128,
      IB => i_can_bsp_Mmux_n0007_net131,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0007_net132
    );
  i_can_bsp_i_can_fifo_rd_pointer_5_rt_433 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_rd_pointer(5),
      O => i_can_bsp_i_can_fifo_rd_pointer_5_rt,
      ADR1 => GND
    );
  i_can_bsp_rx_err_cnt_8_rt_434 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(8),
      O => i_can_bsp_rx_err_cnt_8_rt,
      ADR1 => GND
    );
  i_can_bsp_rst_tx_pointer12 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_n0219,
      ADR2 => i_can_bsp_n0220,
      ADR3 => i_can_bsp_rx_data,
      O => CHOICE1791
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_37 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0008_net96,
      IB => i_can_bsp_Mmux_n0008_net97,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0007_net137
    );
  i_can_bsp_Mmux_n0006_inst_mux_f6_21 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0006_net151,
      IB => i_can_bsp_Mmux_n0006_net154,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0006_net155
    );
  i_can_bsp_Mmux_n0006_inst_lut3_1171 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_bsp_i_can_crc_rx_crc(13),
      ADR2 => i_can_bsp_i_can_crc_rx_crc(14),
      O => i_can_bsp_Mmux_n0006_net142
    );
  i_can_bsp_Mmux_n0006_inst_lut3_1181 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_bsp_i_can_crc_rx_crc(11),
      ADR2 => i_can_bsp_i_can_crc_rx_crc(12),
      O => i_can_bsp_Mmux_n0006_net143
    );
  i_can_bsp_Mmux_n0006_inst_mux_f5_39 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0006_net142,
      IB => i_can_bsp_Mmux_n0006_net143,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0006_net144
    );
  i_can_bsp_Mmux_n0006_inst_lut3_1191 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_bsp_i_can_crc_rx_crc(9),
      ADR2 => i_can_bsp_i_can_crc_rx_crc(10),
      O => i_can_bsp_Mmux_n0006_net145
    );
  i_can_bsp_Mmux_n0006_inst_lut3_1201 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_bsp_i_can_crc_rx_crc(7),
      ADR2 => i_can_bsp_i_can_crc_rx_crc(8),
      O => i_can_bsp_Mmux_n0006_net146
    );
  i_can_bsp_Mmux_n0006_inst_mux_f5_40 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0006_net145,
      IB => i_can_bsp_Mmux_n0006_net146,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0006_net147
    );
  i_can_bsp_Mmux_n0006_inst_mux_f6_20 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0006_net144,
      IB => i_can_bsp_Mmux_n0006_net147,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0006_net148
    );
  i_can_bsp_Mmux_n0006_inst_lut3_1211 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_bsp_i_can_crc_rx_crc(5),
      ADR2 => i_can_bsp_i_can_crc_rx_crc(6),
      O => i_can_bsp_Mmux_n0006_net149
    );
  i_can_bsp_Mmux_n0006_inst_lut3_1221 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_bsp_i_can_crc_rx_crc(3),
      ADR2 => i_can_bsp_i_can_crc_rx_crc(4),
      O => i_can_bsp_Mmux_n0006_net150
    );
  i_can_bsp_Mmux_n0006_inst_mux_f5_41 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0006_net149,
      IB => i_can_bsp_Mmux_n0006_net150,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0006_net151
    );
  i_can_bsp_Mmux_n0006_inst_lut3_1231 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_bsp_i_can_crc_rx_crc(1),
      ADR2 => i_can_bsp_i_can_crc_rx_crc(2),
      O => i_can_bsp_Mmux_n0006_net152
    );
  i_can_bsp_Mmux_n0008_inst_lut3_921 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(3),
      O => i_can_bsp_Mmux_n0008_net97
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_60 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net202,
      IB => i_can_bsp_Mmux_n0005_net217,
      SEL => i_can_bsp_tx_pointer_25,
      O => i_can_bsp_Mmux_n0005_net218
    );
  i_can_bsp_Mmux_n0005_inst_mux_f6_30 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net187,
      IB => i_can_bsp_Mmux_n0005_net218,
      SEL => i_can_bsp_tx_pointer_26,
      O => i_can_bsp_n0005
    );
  i_can_registers_data_out_tmp_3_153 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2419,
      ADR1 => CHOICE2422,
      ADR2 => CHOICE2426,
      ADR3 => N54705,
      O => CHOICE2429
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_43 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net45,
      IB => i_can_bsp_Mmux_n0009_net46,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net159
    );
  i_can_bsp_err26 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_bit_err,
      ADR1 => CHOICE1652,
      O => i_can_bsp_err
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_44 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net48,
      IB => i_can_bsp_Mmux_n0009_net49,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net162
    );
  i_can_bsp_Mmux_n0005_inst_mux_f6_22 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net159,
      IB => i_can_bsp_Mmux_n0005_net162,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0005_net163
    );
  i_can_registers_data_out_tmp_2_132 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_1_1,
      ADR2 => addr_latched_3_1,
      ADR3 => N55527,
      O => CHOICE2354
    );
  i_can_bsp_err21 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_form_err,
      ADR1 => i_can_bsp_stuff_err,
      ADR2 => CHOICE1649,
      ADR3 => i_can_bsp_ack_err,
      O => CHOICE1652
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_45 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net54,
      IB => i_can_bsp_Mmux_n0009_net55,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net166
    );
  i_can_registers_data_out_tmp_4_156 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0071,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(4),
      ADR2 => i_can_registers_n0074,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(4),
      O => CHOICE2292
    );
  i_can_registers_data_out_tmp_2_153_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_2_2,
      ADR2 => addr_latched_4_2,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(2),
      O => N54717
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_46 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net57,
      IB => i_can_bsp_Mmux_n0009_net58,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net169
    );
  i_can_bsp_Mmux_n0005_inst_mux_f6_23 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net166,
      IB => i_can_bsp_Mmux_n0005_net169,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0005_net170
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1341 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0005_net170,
      ADR2 => i_can_bsp_Mmux_n0005_net163,
      O => i_can_bsp_Mmux_n0005_net171
    );
  i_can_registers_data_out_tmp_6_161 : X_LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      ADR0 => i_can_registers_N31881,
      ADR1 => addr_latched_2_1,
      ADR2 => N54913,
      ADR3 => N54911,
      O => CHOICE2170
    );
  i_can_bsp_Ker338131 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_bsp_transmitter,
      ADR1 => N56012,
      ADR2 => i_can_bsp_N34261,
      ADR3 => i_can_bsp_n0203,
      O => i_can_bsp_N33815
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_47 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net61,
      IB => i_can_bsp_Mmux_n0009_net62,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net174
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_36111_G : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_25,
      ADR1 => i_can_bsp_Mmux_n0007_net132,
      ADR2 => i_can_bsp_Mmux_n0007_net117,
      O => N55844
    );
  i_can_registers_data_out_tmp_0_184_SW0 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_3_1,
      ADR2 => addr_latched_4_2,
      ADR3 => N55720,
      O => N54992
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_48 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net64,
      IB => i_can_bsp_Mmux_n0009_net65,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net177
    );
  i_can_bsp_Mmux_n0005_inst_mux_f6_24 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net174,
      IB => i_can_bsp_Mmux_n0005_net177,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0005_net178
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1391 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(7),
      O => i_can_bsp_Mmux_n0005_net179
    );
  i_can_registers_data_out_tmp_3_86_SW0 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => addr_latched_2_4,
      ADR2 => i_can_registers_data_overrun_irq,
      ADR3 => i_can_registers_BUS_TIMING_0_REG_data_out(3),
      O => N55119
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_49 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net179,
      IB => i_can_bsp_Mmux_n0009_net70,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net181
    );
  i_can_bsp_rst_tx_pointer15 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_25,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(7),
      O => CHOICE1793
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_50 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net72,
      IB => i_can_bsp_Mmux_n0009_net73,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net184
    );
  i_can_bsp_Mmux_n0005_inst_mux_f6_25 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net181,
      IB => i_can_bsp_Mmux_n0005_net184,
      SEL => i_can_bsp_tx_pointer_23,
      O => i_can_bsp_Mmux_n0005_net185
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1431 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_Mmux_n0005_net185,
      ADR2 => i_can_bsp_Mmux_n0005_net178,
      O => i_can_bsp_Mmux_n0005_net186
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_51 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net171,
      IB => i_can_bsp_Mmux_n0005_net186,
      SEL => i_can_bsp_tx_pointer_25,
      O => i_can_bsp_Mmux_n0005_net187
    );
  i_can_bsp_n048861 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(3),
      ADR1 => i_can_bsp_tx_err_cnt(4),
      ADR2 => i_can_bsp_tx_err_cnt(5),
      ADR3 => i_can_bsp_rx_err_cnt(1),
      O => CHOICE1885
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_141 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG6_data_out(6),
      ADR2 => i_can_registers_TX_DATA_REG6_data_out(7),
      O => N54627
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_52 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0009_net76,
      IB => i_can_bsp_Mmux_n0009_net77,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net190
    );
  i_can_bsp_Mmux_n0005_inst_lut3_1461 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG9_data_out(3),
      O => i_can_bsp_Mmux_n0005_net191
    );
  i_can_bsp_err6 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE1646,
      ADR1 => i_can_bsp_ack_err_latched,
      ADR2 => i_can_bsp_crc_err,
      ADR3 => i_can_bsp_form_err_latched,
      O => CHOICE1649
    );
  i_can_bsp_Mmux_n0005_inst_mux_f5_53 : X_MUX2
    port map (
      IA => i_can_bsp_Mmux_n0005_net191,
      IB => i_can_bsp_Mmux_n0009_net80,
      SEL => i_can_bsp_tx_pointer_22,
      O => i_can_bsp_Mmux_n0005_net193
    );
  i_can_bsp_i_can_crc_rx_crc_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_crc(11),
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(12),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_Mmux_n0000_Result_7_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => i_can_bsp_i_can_crc_rx_crc(14),
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_i_can_crc_rx_crc(6),
      O => i_can_bsp_i_can_crc_rx_n0000_7_Q
    );
  i_can_bsp_i_can_crc_rx_Mmux_n0000_Result_3_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => i_can_bsp_i_can_crc_rx_crc(14),
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_i_can_crc_rx_crc(2),
      O => i_can_bsp_i_can_crc_rx_n0000_3_Q
    );
  i_can_bsp_i_can_crc_rx_Mmux_n0000_Result_8_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => i_can_bsp_i_can_crc_rx_crc(14),
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_i_can_crc_rx_crc(7),
      O => i_can_bsp_i_can_crc_rx_n0000_8_Q
    );
  i_can_bsp_i_can_crc_rx_crc_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_crc(12),
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(13),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_Mmux_n0000_Result_10_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => i_can_bsp_i_can_crc_rx_crc(14),
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_i_can_crc_rx_crc(9),
      O => i_can_bsp_i_can_crc_rx_n0000_10_Q
    );
  i_can_bsp_i_can_crc_rx_Mmux_n0000_Result_4_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => i_can_bsp_i_can_crc_rx_crc(14),
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_i_can_crc_rx_crc(3),
      O => i_can_bsp_i_can_crc_rx_n0000_4_Q
    );
  i_can_bsp_i_can_crc_rx_crc_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_crc(10),
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(11),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_SF262551 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_btl_sampled_bit_1,
      ADR1 => i_can_bsp_i_can_crc_rx_crc(14),
      O => i_can_bsp_i_can_crc_rx_SF26255
    );
  i_can_bsp_i_can_crc_rx_Mmux_n0000_Result_14_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => i_can_bsp_i_can_crc_rx_crc(13),
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_i_can_crc_rx_crc(14),
      O => i_can_bsp_i_can_crc_rx_n0000_14_Q
    );
  i_can_bsp_i_can_crc_rx_crc_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_n0000_14_Q,
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(14),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_crc_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_SF26255,
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(0),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_crc_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_crc(0),
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(1),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_crc_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_crc(1),
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(2),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_crc_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_n0000_3_Q,
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(3),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_crc_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_n0000_4_Q,
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(4),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_crc_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_crc(4),
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(5),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_crc_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_crc(5),
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(6),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_crc_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_n0000_7_Q,
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(7),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_crc_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_n0000_8_Q,
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(8),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_crc_rx_crc_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_crc_rx_crc(8),
      SRST => i_can_bsp_go_crc_enable,
      CE => i_can_bsp_n0003,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_crc_rx_crc(9),
      SET => GND,
      RST => GSR,
      SSET => GND
    );
  i_can_bsp_i_can_acf_n01961 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_inter,
      ADR1 => i_can_bsp_go_error_frame,
      ADR2 => i_can_bsp_go_rx_crc_lim,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_i_can_acf_n0196
    );
  i_can_bsp_i_can_acf_id_ok_435 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_acf_n0001,
      CE => i_can_bsp_i_can_acf_n0196,
      RST => i_can_bsp_i_can_acf_id_ok_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_acf_id_ok,
      SET => GND
    );
  i_can_bsp_i_can_acf_Mxor_n0143_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(5),
      ADR1 => i_can_bsp_id(0),
      O => i_can_bsp_i_can_acf_n0143
    );
  i_can_bsp_i_can_acf_Mxor_n0103_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(1),
      ADR1 => i_can_bsp_id(22),
      O => i_can_bsp_i_can_acf_n0103
    );
  i_can_bsp_n0154_2_2 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_rx_rtr2,
      ADR1 => i_can_bsp_overload_frame,
      ADR2 => i_can_bsp_N34068,
      O => CHOICE1559
    );
  i_can_bsp_i_can_acf_Ker267561 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(0),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(0),
      ADR2 => i_can_bsp_id(13),
      O => i_can_bsp_i_can_acf_N26758
    );
  i_can_bsp_i_can_acf_n0001601 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(5),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(5),
      ADR2 => i_can_bsp_id(0),
      O => CHOICE725
    );
  i_can_bsp_i_can_acf_Mxor_n0144_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(6),
      ADR1 => i_can_bsp_id(1),
      O => i_can_bsp_i_can_acf_n0144
    );
  i_can_bsp_i_can_acf_Mxor_n0102_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(0),
      ADR1 => i_can_bsp_id(21),
      O => i_can_bsp_i_can_acf_n0102
    );
  i_can_bsp_i_can_acf_Ker268651 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(7),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(7),
      ADR2 => i_can_bsp_id(28),
      O => i_can_bsp_i_can_acf_N26867
    );
  i_can_bsp_i_can_acf_Mxor_n0111_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(1),
      ADR1 => i_can_bsp_id(14),
      O => i_can_bsp_i_can_acf_n0111
    );
  i_can_bsp_i_can_acf_Mxor_n0104_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(2),
      ADR1 => i_can_bsp_id(23),
      O => i_can_bsp_i_can_acf_n0104
    );
  i_can_bsp_i_can_acf_Mxor_n0145_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(7),
      ADR1 => i_can_bsp_id(2),
      O => i_can_bsp_i_can_acf_n0145
    );
  i_can_bsp_i_can_acf_SF26404_SW0 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(6),
      ADR1 => i_can_bsp_id(19),
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(6),
      O => N41313
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_127_436 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_126,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_28,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_127
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_130_437 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_129,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_31,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_130
    );
  i_can_bsp_i_can_fifo_n0015_0_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0020(0),
      ADR1 => i_can_bsp_i_can_fifo_N30656,
      O => i_can_bsp_i_can_fifo_n0015(0)
    );
  i_can_bsp_i_can_fifo_n00341 : X_LUT4
    generic map(
      INIT => X"E0FF"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      ADR1 => i_can_registers_COMMAND_REG_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30666,
      ADR3 => i_can_bsp_wr_fifo,
      O => i_can_bsp_i_can_fifo_n0034
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_96_438 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_31,
      I1 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_129,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_96
    );
  i_can_registers_Ker31785 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => N41612,
      ADR2 => addr_latched_3_1,
      ADR3 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_registers_N31787
    );
  i_can_bsp_i_can_acf_n0001918 : X_LUT4
    generic map(
      INIT => X"5541"
    )
    port map (
      ADR0 => N55509,
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(7),
      ADR2 => i_can_bsp_id(4),
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(7),
      O => CHOICE806
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_94_439 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_29,
      I1 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_127,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_94
    );
  i_can_registers_n02011 : X_LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_N30671,
      ADR1 => i_can_bsp_i_can_fifo_info_cnt(6),
      ADR2 => i_can_registers_COMMAND_REG_data_out(0),
      O => i_can_registers_n0201
    );
  i_can_bsp_i_can_fifo_n00711 : X_LUT4
    generic map(
      INIT => X"FFA2"
    )
    port map (
      ADR0 => i_can_registers_COMMAND_REG_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_N30666,
      ADR2 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_i_can_fifo_n0071
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_721 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => addr_latched_2_3,
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_72
    );
  i_can_bsp_i_can_fifo_n0015_1_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0020(1),
      ADR1 => i_can_bsp_i_can_fifo_N30656,
      O => i_can_bsp_i_can_fifo_n0015(1)
    );
  i_can_bsp_i_can_fifo_n0015_2_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0020(2),
      ADR1 => i_can_bsp_i_can_fifo_N30656,
      O => i_can_bsp_i_can_fifo_n0015(2)
    );
  i_can_bsp_i_can_fifo_n0015_3_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0020(3),
      ADR1 => i_can_bsp_i_can_fifo_N30656,
      O => i_can_bsp_i_can_fifo_n0015(3)
    );
  i_can_bsp_i_can_fifo_n0015_4_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0020(4),
      ADR1 => i_can_bsp_i_can_fifo_N30656,
      O => i_can_bsp_i_can_fifo_n0015(4)
    );
  i_can_bsp_i_can_fifo_n0015_5_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0020(5),
      ADR1 => i_can_bsp_i_can_fifo_N30656,
      O => i_can_bsp_i_can_fifo_n0015(5)
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_301 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_rd_info_pointer_23,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_30
    );
  i_can_bsp_i_can_fifo_n00681 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0001,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_i_can_fifo_n0068
    );
  i_can_bsp_i_can_fifo_n00721 : X_LUT4
    generic map(
      INIT => X"AEEE"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_wr_fifo,
      ADR2 => i_can_bsp_i_can_fifo_N30666,
      ADR3 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      O => i_can_bsp_i_can_fifo_n0072
    );
  i_can_bsp_n00501 : X_LUT4
    generic map(
      INIT => X"0007"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_rx_crc_lim,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_n0050
    );
  i_can_bsp_n02311 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_ide,
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_bsp_header_len(2)
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_41 : X_LUT4
    generic map(
      INIT => X"66A6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_info_cnt(5),
      ADR1 => i_can_registers_COMMAND_REG_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30671,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(6),
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_4
    );
  i_can_bsp_i_can_fifo_n0010_1_1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0026,
      ADR1 => i_can_bsp_i_can_fifo_n0032(1),
      O => i_can_bsp_i_can_fifo_n0010(1)
    );
  i_can_bsp_i_can_fifo_n0010_2_1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0026,
      ADR1 => i_can_bsp_i_can_fifo_n0032(2),
      O => i_can_bsp_i_can_fifo_n0010(2)
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_93_440 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_28,
      I1 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_126,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_93
    );
  i_can_bsp_i_can_fifo_n0010_3_1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0026,
      ADR1 => i_can_bsp_i_can_fifo_n0032(3),
      O => i_can_bsp_i_can_fifo_n0010(3)
    );
  i_can_bsp_i_can_fifo_n0010_4_1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0026,
      ADR1 => i_can_bsp_i_can_fifo_n0032(4),
      O => i_can_bsp_i_can_fifo_n0010(4)
    );
  i_can_bsp_i_can_fifo_n0010_5_1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0026,
      ADR1 => i_can_bsp_i_can_fifo_n0032(5),
      O => i_can_bsp_i_can_fifo_n0010(5)
    );
  i_can_bsp_i_can_fifo_n00061 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_wr_q,
      ADR1 => i_can_bsp_wr_fifo,
      ADR2 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_i_can_fifo_n0006
    );
  i_can_bsp_i_can_fifo_n00051 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_wr_fifo,
      O => i_can_bsp_i_can_fifo_n0005
    );
  i_can_bsp_i_can_fifo_n00021 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_latch_overrun,
      ADR1 => i_can_bsp_i_can_fifo_N30666,
      ADR2 => i_can_bsp_wr_fifo,
      ADR3 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      O => i_can_bsp_i_can_fifo_n0002
    );
  i_can_bsp_n00741 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_rx_crc_lim,
      ADR2 => i_can_bsp_n0262,
      O => i_can_bsp_n0074
    );
  i_can_bsp_i_can_fifo_n00261 : X_LUT4
    generic map(
      INIT => X"20AA"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      ADR2 => i_can_bsp_i_can_fifo_N30666,
      ADR3 => i_can_registers_COMMAND_REG_data_out(0),
      O => i_can_bsp_i_can_fifo_n0026
    );
  i_can_bsp_i_can_fifo_rd_pointer_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0010(3),
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_pointer_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_pointer(3),
      SET => GND
    );
  i_can_bsp_i_can_fifo_rd_pointer_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0010(2),
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_pointer_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_pointer(2),
      SET => GND
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_621 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0019(5),
      ADR1 => i_can_bsp_i_can_fifo_rd_pointer(5),
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_62
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_6911 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_69,
      ADR1 => GND
    );
  i_can_bsp_i_can_fifo_fifo_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0015(0),
      CE => i_can_bsp_i_can_fifo_n0074,
      RST => i_can_bsp_i_can_fifo_fifo_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_fifo_cnt(0),
      SET => GND
    );
  i_can_bsp_i_can_fifo_n0015_6_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0020(6),
      ADR1 => i_can_bsp_i_can_fifo_N30656,
      O => i_can_bsp_i_can_fifo_n0015(6)
    );
  i_can_bsp_i_can_fifo_rd_pointer_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0010(0),
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_pointer_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_pointer(0),
      SET => GND
    );
  i_can_bsp_i_can_fifo_fifo_cnt_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0015(5),
      CE => i_can_bsp_i_can_fifo_n0074,
      RST => i_can_bsp_i_can_fifo_fifo_cnt_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_fifo_cnt(5),
      SET => GND
    );
  i_can_bsp_i_can_fifo_info_cnt_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_info_cnt_n0000(5),
      CE => i_can_bsp_i_can_fifo_n0075,
      RST => i_can_bsp_i_can_fifo_info_cnt_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_info_cnt(5),
      SET => GND
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_23_441 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_95,
      CE => i_can_bsp_i_can_fifo_n0068,
      RST => i_can_bsp_i_can_fifo_wr_info_pointer_23_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_23
    );
  i_can_bsp_i_can_fifo_fifo_cnt_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0015(3),
      CE => i_can_bsp_i_can_fifo_n0074,
      RST => i_can_bsp_i_can_fifo_fifo_cnt_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_fifo_cnt(3),
      SET => GND
    );
  i_can_bsp_i_can_fifo_fifo_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0015(2),
      CE => i_can_bsp_i_can_fifo_n0074,
      RST => i_can_bsp_i_can_fifo_fifo_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_fifo_cnt(2),
      SET => GND
    );
  i_can_bsp_i_can_fifo_fifo_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0015(1),
      CE => i_can_bsp_i_can_fifo_n0074,
      RST => i_can_bsp_i_can_fifo_fifo_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_fifo_cnt(1),
      SET => GND
    );
  i_can_bsp_i_can_fifo_rd_pointer_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0010(1),
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_pointer_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_pointer(1),
      SET => GND
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_129_442 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_128,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_30,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_129
    );
  i_can_bsp_i_can_fifo_Ker306791 : X_LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      ADR0 => i_can_bsp_wr_fifo,
      ADR1 => i_can_bsp_i_can_fifo_N30666,
      ADR2 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      O => i_can_bsp_i_can_fifo_N30681
    );
  i_can_bsp_i_can_fifo_fifo_cnt_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0015(4),
      CE => i_can_bsp_i_can_fifo_n0074,
      RST => i_can_bsp_i_can_fifo_fifo_cnt_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_fifo_cnt(4),
      SET => GND
    );
  i_can_bsp_i_can_fifo_fifo_cnt_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0015(6),
      CE => i_can_bsp_i_can_fifo_n0074,
      RST => i_can_bsp_i_can_fifo_fifo_cnt_6_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_fifo_cnt(6),
      SET => GND
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_751 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => addr_latched(5),
      O => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_75,
      ADR1 => GND
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_lut3_261 : X_LUT4
    generic map(
      INIT => X"008A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_len_cnt_19,
      ADR1 => i_can_bsp_wr_fifo,
      ADR2 => i_can_bsp_i_can_fifo_wr_q,
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_26
    );
  i_can_registers_data_out_tmp_5_177_SW1 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(5),
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(5),
      ADR3 => addr_latched_4_3,
      O => N54919
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_192 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(1),
      O => N54647
    );
  i_can_bsp_i_can_fifo_rd_pointer_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0010(4),
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_pointer_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_pointer(4),
      SET => GND
    );
  i_can_bsp_i_can_fifo_n00011 : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_wr_q,
      ADR1 => i_can_bsp_i_can_fifo_N30671,
      ADR2 => i_can_bsp_i_can_fifo_info_cnt(6),
      ADR3 => i_can_bsp_wr_fifo,
      O => i_can_bsp_i_can_fifo_n0001
    );
  i_can_registers_data_out_tmp_0_184_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"6E7F"
    )
    port map (
      ADR0 => addr_latched_1_3,
      ADR1 => addr_latched_2_4,
      ADR2 => i_can_registers_BUS_TIMING_0_REG_data_out(0),
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => N55720
    );
  i_can_registers_data_out_tmp_2_132_SW1 : X_LUT4
    generic map(
      INIT => X"CEDF"
    )
    port map (
      ADR0 => addr_latched_2_4,
      ADR1 => addr_latched_4_4,
      ADR2 => i_can_registers_IRQ_EN_REG_data_out(2),
      ADR3 => i_can_registers_MODE_REG_EXT_data_out(1),
      O => N55527
    );
  i_can_registers_data_out_tmp_3_132_SW1 : X_LUT4
    generic map(
      INIT => X"CEDF"
    )
    port map (
      ADR0 => addr_latched_2_4,
      ADR1 => addr_latched_4_4,
      ADR2 => i_can_registers_IRQ_EN_REG_data_out(3),
      ADR3 => i_can_registers_MODE_REG_EXT_data_out(2),
      O => N55523
    );
  i_can_registers_data_out_tmp_4_180_SW0 : X_LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      ADR0 => i_can_registers_IRQ_EN_REG_data_out(4),
      ADR1 => addr_latched_4_4,
      ADR2 => addr_latched_3_2,
      O => N55539
    );
  i_can_bsp_i_can_fifo_n00731 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0006,
      ADR1 => i_can_bsp_i_can_fifo_N30666,
      ADR2 => i_can_bsp_wr_fifo,
      ADR3 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      O => i_can_bsp_i_can_fifo_n0073
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_95_443 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_30,
      I1 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_128,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_95
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_291 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_rd_info_pointer_22,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_29
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_128_444 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_127,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_29,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_128
    );
  i_can_bsp_i_can_fifo_info_empty1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_info_cnt(6),
      ADR1 => i_can_bsp_i_can_fifo_N30671,
      O => info_empty
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_311 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_rd_info_pointer_24,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_31
    );
  i_can_registers_data_out_tmp_1_172_SW1 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_3,
      ADR1 => addr_latched_1_3,
      ADR2 => i_can_registers_ERROR_WARNING_REG_data_out(1),
      ADR3 => i_can_bsp_rx_err_cnt(1),
      O => N55493
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_120_445 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_119,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_rd_pointer_4_rt,
      O => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_120
    );
  i_can_bsp_i_can_fifo_fifo : X_RAMB4_S8_S8
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      CLKA => clk_i_BUFGP,
      CLKB => clk_i_BUFGP,
      ENA => N23149,
      ENB => N23149,
      RSTA => N23151,
      RSTB => N23151,
      WEA => i_can_bsp_i_can_fifo_N30681,
      WEB => N23151,
      GSR => GSR,
      ADDRA(8) => N23151,
      ADDRA(7) => N23151,
      ADDRA(6) => N23151,
      ADDRA(5) => i_can_bsp_i_can_fifo_wr_pointer_26,
      ADDRA(4) => i_can_bsp_i_can_fifo_wr_pointer_25,
      ADDRA(3) => i_can_bsp_i_can_fifo_wr_pointer_24,
      ADDRA(2) => i_can_bsp_i_can_fifo_wr_pointer_23,
      ADDRA(1) => i_can_bsp_i_can_fifo_wr_pointer_22,
      ADDRA(0) => i_can_bsp_i_can_fifo_wr_pointer_21,
      ADDRB(8) => N23151,
      ADDRB(7) => N23151,
      ADDRB(6) => N23151,
      ADDRB(5) => i_can_bsp_i_can_fifo_read_address(5),
      ADDRB(4) => i_can_bsp_i_can_fifo_read_address(4),
      ADDRB(3) => i_can_bsp_i_can_fifo_read_address(3),
      ADDRB(2) => i_can_bsp_i_can_fifo_read_address(2),
      ADDRB(1) => i_can_bsp_i_can_fifo_read_address(1),
      ADDRB(0) => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_57,
      DIA(7) => i_can_bsp_data_for_fifo(7),
      DIA(6) => i_can_bsp_data_for_fifo(6),
      DIA(5) => i_can_bsp_data_for_fifo(5),
      DIA(4) => i_can_bsp_data_for_fifo(4),
      DIA(3) => i_can_bsp_data_for_fifo(3),
      DIA(2) => i_can_bsp_data_for_fifo(2),
      DIA(1) => i_can_bsp_data_for_fifo(1),
      DIA(0) => i_can_bsp_data_for_fifo(0),
      DIB(7) => N23151,
      DIB(6) => N23151,
      DIB(5) => N23151,
      DIB(4) => N23151,
      DIB(3) => N23151,
      DIB(2) => N23151,
      DIB(1) => N23151,
      DIB(0) => N23151,
      DOA(7) => NLW_i_can_bsp_i_can_fifo_fifo_DOA_7_UNCONNECTED,
      DOA(6) => NLW_i_can_bsp_i_can_fifo_fifo_DOA_6_UNCONNECTED,
      DOA(5) => NLW_i_can_bsp_i_can_fifo_fifo_DOA_5_UNCONNECTED,
      DOA(4) => NLW_i_can_bsp_i_can_fifo_fifo_DOA_4_UNCONNECTED,
      DOA(3) => NLW_i_can_bsp_i_can_fifo_fifo_DOA_3_UNCONNECTED,
      DOA(2) => NLW_i_can_bsp_i_can_fifo_fifo_DOA_2_UNCONNECTED,
      DOA(1) => NLW_i_can_bsp_i_can_fifo_fifo_DOA_1_UNCONNECTED,
      DOA(0) => NLW_i_can_bsp_i_can_fifo_fifo_DOA_0_UNCONNECTED,
      DOB(7) => data_out_fifo(7),
      DOB(6) => data_out_fifo(6),
      DOB(5) => data_out_fifo(5),
      DOB(4) => data_out_fifo(4),
      DOB(3) => data_out_fifo(3),
      DOB(2) => data_out_fifo(2),
      DOB(1) => data_out_fifo(1),
      DOB(0) => data_out_fifo(0)
    );
  i_can_bsp_i_can_fifo_info_fifo : X_RAMB4_S4_S4
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      CLKA => clk_i_BUFGP,
      CLKB => clk_i_BUFGP,
      ENA => N23149,
      ENB => N23149,
      RSTA => N23151,
      RSTB => N23151,
      WEA => i_can_bsp_i_can_fifo_n0001,
      WEB => N23151,
      GSR => GSR,
      ADDRA(9) => N23151,
      ADDRA(8) => N23151,
      ADDRA(7) => N23151,
      ADDRA(6) => N23151,
      ADDRA(5) => i_can_bsp_i_can_fifo_wr_info_pointer_26,
      ADDRA(4) => i_can_bsp_i_can_fifo_wr_info_pointer_25,
      ADDRA(3) => i_can_bsp_i_can_fifo_wr_info_pointer_24,
      ADDRA(2) => i_can_bsp_i_can_fifo_wr_info_pointer_23,
      ADDRA(1) => i_can_bsp_i_can_fifo_wr_info_pointer_22,
      ADDRA(0) => i_can_bsp_i_can_fifo_wr_info_pointer_21,
      ADDRB(9) => N23151,
      ADDRB(8) => N23151,
      ADDRB(7) => N23151,
      ADDRB(6) => N23151,
      ADDRB(5) => i_can_bsp_i_can_fifo_rd_info_pointer_26,
      ADDRB(4) => i_can_bsp_i_can_fifo_rd_info_pointer_25,
      ADDRB(3) => i_can_bsp_i_can_fifo_rd_info_pointer_24,
      ADDRB(2) => i_can_bsp_i_can_fifo_rd_info_pointer_23,
      ADDRB(1) => i_can_bsp_i_can_fifo_rd_info_pointer_22,
      ADDRB(0) => i_can_bsp_i_can_fifo_rd_info_pointer_21,
      DIA(3) => i_can_bsp_i_can_fifo_len_cnt_20,
      DIA(2) => i_can_bsp_i_can_fifo_len_cnt_19,
      DIA(1) => i_can_bsp_i_can_fifo_len_cnt_18,
      DIA(0) => i_can_bsp_i_can_fifo_len_cnt_17,
      DIB(3) => N23151,
      DIB(2) => N23151,
      DIB(1) => N23151,
      DIB(0) => N23151,
      DOA(3) => NLW_i_can_bsp_i_can_fifo_info_fifo_DOA_3_UNCONNECTED,
      DOA(2) => NLW_i_can_bsp_i_can_fifo_info_fifo_DOA_2_UNCONNECTED,
      DOA(1) => NLW_i_can_bsp_i_can_fifo_info_fifo_DOA_1_UNCONNECTED,
      DOA(0) => NLW_i_can_bsp_i_can_fifo_info_fifo_DOA_0_UNCONNECTED,
      DOB(3) => i_can_bsp_i_can_fifo_length_info(3),
      DOB(2) => i_can_bsp_i_can_fifo_length_info(2),
      DOB(1) => i_can_bsp_i_can_fifo_length_info(1),
      DOB(0) => i_can_bsp_i_can_fifo_length_info(0)
    );
  i_can_bsp_i_can_fifo_overrun_fifo : X_RAMB4_S1_S1
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      CLKA => clk_i_BUFGP,
      CLKB => clk_i_BUFGP,
      ENA => N23149,
      ENB => N23149,
      RSTA => N23151,
      RSTB => N23151,
      WEA => i_can_bsp_i_can_fifo_n0001,
      WEB => N23151,
      GSR => GSR,
      ADDRA(11) => N23151,
      ADDRA(10) => N23151,
      ADDRA(9) => N23151,
      ADDRA(8) => N23151,
      ADDRA(7) => N23151,
      ADDRA(6) => N23151,
      ADDRA(5) => i_can_bsp_i_can_fifo_wr_info_pointer_26,
      ADDRA(4) => i_can_bsp_i_can_fifo_wr_info_pointer_25,
      ADDRA(3) => i_can_bsp_i_can_fifo_wr_info_pointer_24,
      ADDRA(2) => i_can_bsp_i_can_fifo_wr_info_pointer_23,
      ADDRA(1) => i_can_bsp_i_can_fifo_wr_info_pointer_22,
      ADDRA(0) => i_can_bsp_i_can_fifo_wr_info_pointer_21,
      ADDRB(11) => N23151,
      ADDRB(10) => N23151,
      ADDRB(9) => N23151,
      ADDRB(8) => N23151,
      ADDRB(7) => N23151,
      ADDRB(6) => N23151,
      ADDRB(5) => i_can_bsp_i_can_fifo_rd_info_pointer_26,
      ADDRB(4) => i_can_bsp_i_can_fifo_rd_info_pointer_25,
      ADDRB(3) => i_can_bsp_i_can_fifo_rd_info_pointer_24,
      ADDRB(2) => i_can_bsp_i_can_fifo_rd_info_pointer_23,
      ADDRB(1) => i_can_bsp_i_can_fifo_rd_info_pointer_22,
      ADDRB(0) => i_can_bsp_i_can_fifo_rd_info_pointer_21,
      DIA(0) => i_can_bsp_i_can_fifo_n0002,
      DIB(0) => N23151,
      DOA(0) => NLW_i_can_bsp_i_can_fifo_overrun_fifo_DOA_0_UNCONNECTED,
      DOB(0) => overrun
    );
  i_can_bsp_i_can_fifo_wr_q_446 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0005,
      RST => i_can_bsp_i_can_fifo_wr_q_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_q,
      CE => VCC,
      SET => GND
    );
  i_can_bsp_i_can_fifo_len_cnt_18_447 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_len_cnt_inst_sum_90,
      CE => i_can_bsp_i_can_fifo_n0067,
      RST => i_can_bsp_i_can_fifo_len_cnt_18_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_len_cnt_18
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_24_448 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_96,
      CE => i_can_bsp_i_can_fifo_n0068,
      RST => i_can_bsp_i_can_fifo_wr_info_pointer_24_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_24
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_24_449 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_96,
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_info_pointer_24_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_24
    );
  i_can_bsp_i_can_fifo_rd_pointer_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0010(5),
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_pointer_5_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_pointer(5),
      SET => GND
    );
  i_can_bsp_i_can_fifo_wr_pointer_24_450 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_96,
      CE => i_can_bsp_i_can_fifo_n0072,
      RST => i_can_bsp_i_can_fifo_wr_pointer_24_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_pointer_24
    );
  i_can_bsp_i_can_fifo_latch_overrun_451 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_n0014,
      CE => i_can_bsp_i_can_fifo_n0073,
      RST => i_can_bsp_i_can_fifo_latch_overrun_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_latch_overrun,
      SET => GND
    );
  i_can_bsp_n00581 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_rx_id1,
      ADR2 => i_can_bsp_go_rx_idle,
      ADR3 => N40713,
      O => i_can_bsp_n0058
    );
  i_can_bsp_i_can_fifo_info_cnt_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_info_cnt_n0000(6),
      CE => i_can_bsp_i_can_fifo_n0075,
      RST => i_can_bsp_i_can_fifo_info_cnt_6_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_info_cnt(6),
      SET => GND
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_22_452 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_94,
      CE => i_can_bsp_i_can_fifo_n0068,
      RST => i_can_bsp_i_can_fifo_wr_info_pointer_22_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_22
    );
  i_can_bsp_i_can_fifo_info_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut1_0,
      CE => i_can_bsp_i_can_fifo_n0075,
      RST => i_can_bsp_i_can_fifo_info_cnt_0_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_info_cnt(0),
      SET => GND
    );
  i_can_bsp_i_can_fifo_info_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_info_cnt_n0000(1),
      CE => i_can_bsp_i_can_fifo_n0075,
      RST => i_can_bsp_i_can_fifo_info_cnt_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_info_cnt(1),
      SET => GND
    );
  i_can_bsp_i_can_fifo_info_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_info_cnt_n0000(2),
      CE => i_can_bsp_i_can_fifo_n0075,
      RST => i_can_bsp_i_can_fifo_info_cnt_2_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_info_cnt(2),
      SET => GND
    );
  i_can_bsp_i_can_fifo_info_cnt_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_info_cnt_n0000(3),
      CE => i_can_bsp_i_can_fifo_n0075,
      RST => i_can_bsp_i_can_fifo_info_cnt_3_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_info_cnt(3),
      SET => GND
    );
  i_can_bsp_i_can_fifo_info_cnt_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_info_cnt_n0000(4),
      CE => i_can_bsp_i_can_fifo_n0075,
      RST => i_can_bsp_i_can_fifo_info_cnt_4_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_info_cnt(4),
      SET => GND
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_sum_6 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_5,
      I1 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_5,
      O => i_can_bsp_i_can_fifo_info_cnt_n0000(6)
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut1_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_info_cnt(0),
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut1_0,
      ADR1 => GND
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_0_453 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_bsp_i_can_fifo_info_cnt(0),
      SEL => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut1_0,
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_0
    );
  clkout_o_OBUF_454 : X_BUF
    port map (
      I => clkout_o_OBUF,
      O => clkout_o_OBUF_GTS_TRI
    );
  i_can_bsp_i_can_fifo_n00111 : X_LUT4
    generic map(
      INIT => X"8F00"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      ADR1 => i_can_bsp_i_can_fifo_N30666,
      ADR2 => i_can_bsp_wr_fifo,
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_i_can_fifo_n0011
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_1_455 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_0,
      IA => i_can_bsp_i_can_fifo_info_cnt(1),
      SEL => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_0,
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_1
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_0,
      I1 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_0,
      O => i_can_bsp_i_can_fifo_info_cnt_n0000(1)
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"66A6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_info_cnt(1),
      ADR1 => i_can_registers_COMMAND_REG_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30671,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(6),
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_0
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_2_456 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_1,
      IA => i_can_bsp_i_can_fifo_info_cnt(2),
      SEL => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_1,
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_2
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_1,
      I1 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_1,
      O => i_can_bsp_i_can_fifo_info_cnt_n0000(2)
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_11 : X_LUT4
    generic map(
      INIT => X"66A6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_info_cnt(2),
      ADR1 => i_can_registers_COMMAND_REG_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30671,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(6),
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_1
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_3_457 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_2,
      IA => i_can_bsp_i_can_fifo_info_cnt(3),
      SEL => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_2,
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_3
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_2,
      I1 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_2,
      O => i_can_bsp_i_can_fifo_info_cnt_n0000(3)
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_21 : X_LUT4
    generic map(
      INIT => X"66A6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_info_cnt(3),
      ADR1 => i_can_registers_COMMAND_REG_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30671,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(6),
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_2
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_4_458 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_3,
      IA => i_can_bsp_i_can_fifo_info_cnt(4),
      SEL => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_3,
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_4
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_sum_4 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_3,
      I1 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_3,
      O => i_can_bsp_i_can_fifo_info_cnt_n0000(4)
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_31 : X_LUT4
    generic map(
      INIT => X"66A6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_info_cnt(4),
      ADR1 => i_can_registers_COMMAND_REG_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30671,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(6),
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_3
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_5_459 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_4,
      IA => i_can_bsp_i_can_fifo_info_cnt(5),
      SEL => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_4,
      O => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_5
    );
  i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_sum_5 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_lut2_4,
      I1 => i_can_bsp_i_can_fifo_info_cnt_Maddsub_n0000_inst_cy_4,
      O => i_can_bsp_i_can_fifo_info_cnt_n0000(5)
    );
  i_can_bsp_Msub_COND_6_inst_lut2_1211 : X_LUT3
    generic map(
      INIT => X"87"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_ide,
      ADR2 => i_can_bsp_data_cnt_19,
      O => i_can_bsp_Msub_COND_6_inst_lut2_121
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_sum_62 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_62,
      I1 => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_95,
      O => i_can_bsp_i_can_fifo_read_address(5)
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_571 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0019(0),
      ADR1 => i_can_bsp_i_can_fifo_rd_pointer(0),
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_57
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_91_460 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_bsp_i_can_fifo_n0019(0),
      SEL => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_57,
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_91
    );
  cs_can_i_IBUF_461 : X_BUF
    port map (
      I => cs_can_i,
      O => cs_can_i_IBUF
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_581 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0019(1),
      ADR1 => i_can_bsp_i_can_fifo_rd_pointer(1),
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_58
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_92_462 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_91,
      IA => i_can_bsp_i_can_fifo_n0019(1),
      SEL => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_58,
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_92
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_sum_58 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_58,
      I1 => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_91,
      O => i_can_bsp_i_can_fifo_read_address(1)
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_591 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0019(2),
      ADR1 => i_can_bsp_i_can_fifo_rd_pointer(2),
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_59
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_93_463 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_92,
      IA => i_can_bsp_i_can_fifo_n0019(2),
      SEL => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_59,
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_93
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_sum_59 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_59,
      I1 => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_92,
      O => i_can_bsp_i_can_fifo_read_address(2)
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_601 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0019(3),
      ADR1 => i_can_bsp_i_can_fifo_rd_pointer(3),
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_60
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_94_464 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_93,
      IA => i_can_bsp_i_can_fifo_n0019(3),
      SEL => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_60,
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_94
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_sum_60 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_60,
      I1 => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_93,
      O => i_can_bsp_i_can_fifo_read_address(3)
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_611 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0019(4),
      ADR1 => i_can_bsp_i_can_fifo_rd_pointer(4),
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_61
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_95_465 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_94,
      IA => i_can_bsp_i_can_fifo_n0019(4),
      SEL => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_61,
      O => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_95
    );
  i_can_bsp_i_can_fifo_Madd_read_address_inst_sum_61 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Madd_read_address_inst_lut2_61,
      I1 => i_can_bsp_i_can_fifo_Madd_read_address_inst_cy_94,
      O => i_can_bsp_i_can_fifo_read_address(4)
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_21_466 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_93,
      CE => i_can_bsp_i_can_fifo_n0068,
      RST => i_can_bsp_i_can_fifo_wr_info_pointer_21_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_21
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_sum_69 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_69,
      I1 => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_101,
      O => i_can_bsp_i_can_fifo_n0077(6)
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_631 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(0),
      ADR1 => i_can_bsp_i_can_fifo_length_info(0),
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_63
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_96_467 : X_MUX2
    port map (
      IB => N23149,
      IA => i_can_bsp_i_can_fifo_fifo_cnt(0),
      SEL => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_63,
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_96
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_sum_63 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_63,
      I1 => N23149,
      O => i_can_bsp_i_can_fifo_n0077(0)
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_641 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(1),
      ADR1 => i_can_bsp_i_can_fifo_length_info(1),
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_64
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_97_468 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_96,
      IA => i_can_bsp_i_can_fifo_fifo_cnt(1),
      SEL => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_64,
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_97
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_sum_64 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_64,
      I1 => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_96,
      O => i_can_bsp_i_can_fifo_n0077(1)
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_651 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(2),
      ADR1 => i_can_bsp_i_can_fifo_length_info(2),
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_65
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_98_469 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_97,
      IA => i_can_bsp_i_can_fifo_fifo_cnt(2),
      SEL => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_65,
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_98
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_sum_65 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_65,
      I1 => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_97,
      O => i_can_bsp_i_can_fifo_n0077(2)
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_661 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(3),
      ADR1 => i_can_bsp_i_can_fifo_length_info(3),
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_66
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_99_470 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_98,
      IA => i_can_bsp_i_can_fifo_fifo_cnt(3),
      SEL => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_66,
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_99
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_sum_66 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_66,
      I1 => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_98,
      O => i_can_bsp_i_can_fifo_n0077(3)
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_6711 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(4),
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_67,
      ADR1 => GND
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_100_471 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_99,
      IA => i_can_bsp_i_can_fifo_fifo_cnt(4),
      SEL => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_67,
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_100
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_sum_67 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_67,
      I1 => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_99,
      O => i_can_bsp_i_can_fifo_n0077(4)
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_6811 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_fifo_cnt(5),
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_68,
      ADR1 => GND
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_101_472 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_100,
      IA => i_can_bsp_i_can_fifo_fifo_cnt(5),
      SEL => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_68,
      O => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_101
    );
  i_can_bsp_i_can_fifo_Msub_n0030_inst_sum_68 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0030_inst_lut2_68,
      I1 => i_can_bsp_i_can_fifo_Msub_n0030_inst_cy_100,
      O => i_can_bsp_i_can_fifo_n0077(5)
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_sum_76 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_23,
      I1 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_108,
      O => i_can_bsp_i_can_fifo_n0020(6)
    );
  i_can_registers_data_out_tmp_0_1761_G : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31781,
      ADR1 => addr_latched_2_3,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(0),
      ADR3 => addr_latched_1_2,
      O => N55839
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_103_473 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_n0034,
      IA => i_can_bsp_i_can_fifo_n0021(0),
      SEL => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_17,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_103
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_sum_70 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_17,
      I1 => i_can_bsp_i_can_fifo_n0034,
      O => i_can_bsp_i_can_fifo_n0020(0)
    );
  i_can_bsp_Msub_n0247_inst_cy_187_474 : X_LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      ADR0 => i_can_bsp_data_len(3),
      ADR1 => i_can_bsp_data_len(1),
      ADR2 => i_can_bsp_data_len(0),
      O => i_can_bsp_Msub_n0247_inst_cy_187
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_104_475 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_103,
      IA => i_can_bsp_i_can_fifo_n0021(1),
      SEL => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_18,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_104
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_sum_71 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_18,
      I1 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_103,
      O => i_can_bsp_i_can_fifo_n0020(1)
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_181 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0021(1),
      ADR1 => i_can_bsp_i_can_fifo_length_info(1),
      ADR2 => i_can_bsp_i_can_fifo_n0034,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_18
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_105_476 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_104,
      IA => i_can_bsp_i_can_fifo_n0021(2),
      SEL => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_19,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_105
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_sum_72 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_19,
      I1 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_104,
      O => i_can_bsp_i_can_fifo_n0020(2)
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_191 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0021(2),
      ADR1 => i_can_bsp_i_can_fifo_length_info(2),
      ADR2 => i_can_bsp_i_can_fifo_n0034,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_19
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_106_477 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_105,
      IA => i_can_bsp_i_can_fifo_n0021(3),
      SEL => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_20,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_106
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_sum_73 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_20,
      I1 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_105,
      O => i_can_bsp_i_can_fifo_n0020(3)
    );
  i_can_registers_we_tx_data_912_SW0 : X_LUT3
    generic map(
      INIT => X"BD"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR2 => addr_latched_3_1,
      O => N55188
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_107_478 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_106,
      IA => i_can_bsp_i_can_fifo_n0021(4),
      SEL => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_21,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_107
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_sum_74 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_21,
      I1 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_106,
      O => i_can_bsp_i_can_fifo_n0020(4)
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_211 : X_LUT4
    generic map(
      INIT => X"27D8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0078,
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(4),
      ADR2 => i_can_bsp_i_can_fifo_n0077(4),
      ADR3 => i_can_bsp_i_can_fifo_n0034,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_21
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_108_479 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_107,
      IA => i_can_bsp_i_can_fifo_n0021(5),
      SEL => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_22,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_108
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_sum_75 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_22,
      I1 => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_cy_107,
      O => i_can_bsp_i_can_fifo_n0020(5)
    );
  i_can_bsp_Madd_n0224_inst_lut2_861 : X_LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_remote_rq,
      ADR2 => i_can_bsp_n0229(0),
      ADR3 => i_can_bsp_data_len(3),
      O => i_can_bsp_Madd_n0224_inst_lut2_86
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_98_480 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_33,
      I1 => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_131,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_sum_98
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_sum_82 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_75,
      I1 => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_114,
      O => i_can_bsp_i_can_fifo_n0019(5)
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_7011 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => addr_latched_0_2,
      O => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_70,
      ADR1 => GND
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_110_481 : X_MUX2
    port map (
      IB => N23149,
      IA => addr_latched_0_1,
      SEL => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_70,
      O => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_110
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_sum_77 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_70,
      I1 => N23149,
      O => i_can_bsp_i_can_fifo_n0019(0)
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_7111 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => addr_latched_1_2,
      O => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_71,
      ADR1 => GND
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_111_482 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_110,
      IA => addr_latched_1_1,
      SEL => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_71,
      O => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_111
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_sum_78 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_71,
      I1 => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_110,
      O => i_can_bsp_i_can_fifo_n0019(1)
    );
  i_can_registers_Ker31444103 : X_LUT4
    generic map(
      INIT => X"3237"
    )
    port map (
      ADR0 => N55104,
      ADR1 => N54972,
      ADR2 => CHOICE1929,
      ADR3 => N54970,
      O => i_can_registers_N31446
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_112_483 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_111,
      IA => addr_latched_2_2,
      SEL => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_72,
      O => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_112
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_sum_79 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_72,
      I1 => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_111,
      O => i_can_bsp_i_can_fifo_n0019(2)
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_7311 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => addr_latched_3_2,
      O => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_73,
      ADR1 => GND
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_113_484 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_112,
      IA => addr_latched_3_1,
      SEL => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_73,
      O => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_113
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_sum_80 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Msub_n0019_inst_lut2_73,
      I1 => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_112,
      O => i_can_bsp_i_can_fifo_n0019(3)
    );
  wr_i_IBUF_485 : X_BUF
    port map (
      I => wr_i,
      O => wr_i_IBUF
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_114_486 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_113,
      IA => N23151,
      SEL => addr_latched_4_rt,
      O => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_114
    );
  i_can_bsp_i_can_fifo_Msub_n0019_inst_sum_81 : X_XOR2
    port map (
      I0 => addr_latched_4_rt,
      I1 => i_can_bsp_i_can_fifo_Msub_n0019_inst_cy_113,
      O => i_can_bsp_i_can_fifo_n0019(4)
    );
  i_can_bsp_i_can_fifo_Mmux_n0021_Result_0_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0078,
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(0),
      ADR2 => i_can_bsp_i_can_fifo_n0077(0),
      O => i_can_bsp_i_can_fifo_n0021(0)
    );
  i_can_bsp_i_can_fifo_Mmux_n0021_Result_1_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0078,
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(1),
      ADR2 => i_can_bsp_i_can_fifo_n0077(1),
      O => i_can_bsp_i_can_fifo_n0021(1)
    );
  i_can_bsp_i_can_fifo_Mmux_n0021_Result_2_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0078,
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(2),
      ADR2 => i_can_bsp_i_can_fifo_n0077(2),
      O => i_can_bsp_i_can_fifo_n0021(2)
    );
  i_can_bsp_i_can_fifo_Mmux_n0021_Result_3_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0078,
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(3),
      ADR2 => i_can_bsp_i_can_fifo_n0077(3),
      O => i_can_bsp_i_can_fifo_n0021(3)
    );
  i_can_bsp_i_can_fifo_Mmux_n0021_Result_4_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0078,
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(4),
      ADR2 => i_can_bsp_i_can_fifo_n0077(4),
      O => i_can_bsp_i_can_fifo_n0021(4)
    );
  i_can_bsp_i_can_fifo_Mmux_n0021_Result_5_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0078,
      ADR1 => i_can_bsp_i_can_fifo_fifo_cnt(5),
      ADR2 => i_can_bsp_i_can_fifo_n0077(5),
      O => i_can_bsp_i_can_fifo_n0021(5)
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_sum_87 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_rd_pointer_4_rt,
      I1 => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_119,
      O => i_can_bsp_i_can_fifo_n0032(4)
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_761 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_length_info(0),
      ADR1 => i_can_bsp_i_can_fifo_rd_pointer(0),
      O => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_76
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_116_487 : X_MUX2
    port map (
      IB => N23151,
      IA => i_can_bsp_i_can_fifo_length_info(0),
      SEL => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_76,
      O => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_116
    );
  irq_on_OBUF_488 : X_BUF
    port map (
      I => irq_on_OBUF,
      O => irq_on_OBUF_GTS_TRI
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_771 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_length_info(1),
      ADR1 => i_can_bsp_i_can_fifo_rd_pointer(1),
      O => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_77
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_117_489 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_116,
      IA => i_can_bsp_i_can_fifo_length_info(1),
      SEL => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_77,
      O => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_117
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_sum_84 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_77,
      I1 => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_116,
      O => i_can_bsp_i_can_fifo_n0032(1)
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_781 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_length_info(2),
      ADR1 => i_can_bsp_i_can_fifo_rd_pointer(2),
      O => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_78
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_118_490 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_117,
      IA => i_can_bsp_i_can_fifo_length_info(2),
      SEL => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_78,
      O => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_118
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_sum_85 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_78,
      I1 => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_117,
      O => i_can_bsp_i_can_fifo_n0032(2)
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_791 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_length_info(3),
      ADR1 => i_can_bsp_i_can_fifo_rd_pointer(3),
      O => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_79
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_119_491 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_118,
      IA => i_can_bsp_i_can_fifo_length_info(3),
      SEL => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_79,
      O => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_119
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_sum_86 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_Madd_n0032_inst_lut2_79,
      I1 => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_118,
      O => i_can_bsp_i_can_fifo_n0032(3)
    );
  i_can_bsp_i_can_fifo_Madd_n0032_inst_sum_88 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_rd_pointer_5_rt,
      I1 => i_can_bsp_i_can_fifo_Madd_n0032_inst_cy_120,
      O => i_can_bsp_i_can_fifo_n0032(5)
    );
  i_can_bsp_i_can_fifo_len_cnt_19_492 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_len_cnt_inst_sum_91,
      CE => i_can_bsp_i_can_fifo_n0067,
      RST => i_can_bsp_i_can_fifo_len_cnt_19_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_len_cnt_19
    );
  i_can_bsp_i_can_fifo_len_cnt_20_493 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_len_cnt_inst_sum_92,
      CE => i_can_bsp_i_can_fifo_n0067,
      RST => i_can_bsp_i_can_fifo_len_cnt_20_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_len_cnt_20
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_cy_121_494 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_bsp_i_can_fifo_n0006,
      O => i_can_bsp_i_can_fifo_len_cnt_inst_cy_121
    );
  i_can_btl_n00331 : X_LUT4
    generic map(
      INIT => X"AAA2"
    )
    port map (
      ADR0 => i_can_btl_N28740,
      ADR1 => i_can_btl_resync_blocked,
      ADR2 => i_can_bsp_rx_idle,
      ADR3 => last_bit_of_inter,
      O => i_can_btl_n0033
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_cy_122_495 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_len_cnt_inst_cy_121,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_24,
      O => i_can_bsp_i_can_fifo_len_cnt_inst_cy_122
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_sum_89_496 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_24,
      I1 => i_can_bsp_i_can_fifo_len_cnt_inst_cy_121,
      O => i_can_bsp_i_can_fifo_len_cnt_inst_sum_89
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_lut3_241 : X_LUT4
    generic map(
      INIT => X"008A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_len_cnt_17,
      ADR1 => i_can_bsp_wr_fifo,
      ADR2 => i_can_bsp_i_can_fifo_wr_q,
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_24
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_cy_123_497 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_len_cnt_inst_cy_122,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_25,
      O => i_can_bsp_i_can_fifo_len_cnt_inst_cy_123
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_sum_90_498 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_25,
      I1 => i_can_bsp_i_can_fifo_len_cnt_inst_cy_122,
      O => i_can_bsp_i_can_fifo_len_cnt_inst_sum_90
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_lut3_251 : X_LUT4
    generic map(
      INIT => X"008A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_len_cnt_18,
      ADR1 => i_can_bsp_wr_fifo,
      ADR2 => i_can_bsp_i_can_fifo_wr_q,
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_25
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_cy_124_499 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_len_cnt_inst_cy_123,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_26,
      O => i_can_bsp_i_can_fifo_len_cnt_inst_cy_124
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_sum_91_500 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_26,
      I1 => i_can_bsp_i_can_fifo_len_cnt_inst_cy_123,
      O => i_can_bsp_i_can_fifo_len_cnt_inst_sum_91
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_311 : X_LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_wr_pointer_24,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30681,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_31
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_131_501 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_130,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_32,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_cy_131
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_sum_92_502 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_27,
      I1 => i_can_bsp_i_can_fifo_len_cnt_inst_cy_124,
      O => i_can_bsp_i_can_fifo_len_cnt_inst_sum_92
    );
  i_can_bsp_i_can_fifo_len_cnt_17_503 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_len_cnt_inst_sum_89,
      CE => i_can_bsp_i_can_fifo_n0067,
      RST => i_can_bsp_i_can_fifo_len_cnt_17_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_len_cnt_17
    );
  i_can_bsp_i_can_fifo_wr_pointer_25_504 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_97,
      CE => i_can_bsp_i_can_fifo_n0072,
      RST => i_can_bsp_i_can_fifo_wr_pointer_25_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_pointer_25
    );
  i_can_bsp_i_can_fifo_wr_pointer_26_505 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_98,
      CE => i_can_bsp_i_can_fifo_n0072,
      RST => i_can_bsp_i_can_fifo_wr_pointer_26_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_pointer_26
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_cy_126_506 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => i_can_bsp_i_can_fifo_n0011,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_126
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_191 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(3),
      O => N54645
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_cy_127_507 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_126,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_28,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_127
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_sum_93_508 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_28,
      I1 => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_126,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_93
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_281 : X_LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_wr_pointer_21,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30681,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_28
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_cy_128_509 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_127,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_29,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_128
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_sum_94_510 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_29,
      I1 => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_127,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_94
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_291 : X_LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_wr_pointer_22,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30681,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_29
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_cy_129_511 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_128,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_30,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_129
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_sum_95_512 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_30,
      I1 => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_128,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_95
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_301 : X_LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_wr_pointer_23,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30681,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_30
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_cy_130_513 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_129,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_31,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_130
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_sum_96_514 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_31,
      I1 => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_129,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_96
    );
  i_can_bsp_i_can_fifo_len_cnt_inst_lut3_271 : X_LUT4
    generic map(
      INIT => X"008A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_len_cnt_20,
      ADR1 => i_can_bsp_wr_fifo,
      ADR2 => i_can_bsp_i_can_fifo_wr_q,
      ADR3 => i_can_registers_MODE_REG0_data_out_0_1,
      O => i_can_bsp_i_can_fifo_len_cnt_inst_lut3_27
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_cy_131_515 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_130,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_32,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_131
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_sum_97_516 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_32,
      I1 => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_130,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_97
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_321 : X_LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_wr_pointer_25,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_i_can_fifo_N30681,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_32
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_331 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_i_can_fifo_rd_info_pointer_26,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_33
    );
  i_can_bsp_i_can_fifo_wr_pointer_inst_sum_98_517 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_wr_pointer_inst_lut3_33,
      I1 => i_can_bsp_i_can_fifo_wr_pointer_inst_cy_131,
      O => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_98
    );
  i_can_bsp_i_can_fifo_wr_pointer_21_518 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_93,
      CE => i_can_bsp_i_can_fifo_n0072,
      RST => i_can_bsp_i_can_fifo_wr_pointer_21_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_pointer_21
    );
  i_can_bsp_i_can_fifo_wr_pointer_22_519 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_94,
      CE => i_can_bsp_i_can_fifo_n0072,
      RST => i_can_bsp_i_can_fifo_wr_pointer_22_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_pointer_22
    );
  i_can_bsp_i_can_fifo_wr_pointer_23_520 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_wr_pointer_inst_sum_95,
      CE => i_can_bsp_i_can_fifo_n0072,
      RST => i_can_bsp_i_can_fifo_wr_pointer_23_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_wr_pointer_23
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_25_521 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_97,
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_info_pointer_25_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_25
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_26_522 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_98,
      CE => i_can_bsp_i_can_fifo_n0071,
      RST => i_can_bsp_i_can_fifo_rd_info_pointer_26_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_26
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_126_523 : X_MUX2
    port map (
      IB => N23151,
      IA => N23149,
      SEL => reset_mode_rt1,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_126
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_281 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_wr_info_pointer_21,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_28
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_127_524 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_126,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_28,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_127
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_93_525 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_28,
      I1 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_126,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_93
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_291 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_wr_info_pointer_22,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_29
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_128_526 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_127,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_29,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_128
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_94_527 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_29,
      I1 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_127,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_94
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_301 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_wr_info_pointer_23,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_30
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_129_528 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_128,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_30,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_129
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_95_529 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_30,
      I1 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_128,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_95
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_311 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_wr_info_pointer_24,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_31
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_130_530 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_129,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_31,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_130
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_96_531 : X_XOR2
    port map (
      I0 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_31,
      I1 => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_129,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_sum_96
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_321 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_fifo_wr_info_pointer_25,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_inst_lut3_32
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_131_532 : X_MUX2
    port map (
      IB => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_130,
      IA => N23151,
      SEL => i_can_bsp_i_can_fifo_rd_info_pointer_inst_lut3_32,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_inst_cy_131
    );
  i_can_registers_clkout_SW0 : X_LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(2),
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(1),
      ADR2 => clk_i_BUFGP,
      ADR3 => i_can_registers_clkout_tmp,
      O => N39408
    );
  i_can_registers_clkout : X_LUT4
    generic map(
      INIT => X"FBEA"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_3_data_out(0),
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(0),
      ADR2 => N39408,
      ADR3 => i_can_registers_clkout_tmp,
      O => clkout_o_OBUF
    );
  i_can_registers_Ker316441 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => cs,
      ADR2 => wr_i_IBUF,
      ADR3 => i_can_registers_transmit_buffer_status,
      O => i_can_registers_N31646
    );
  i_can_bsp_n0467_SW111 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_node_bus_off,
      ADR1 => addr_latched(0),
      ADR2 => addr_latched(1),
      ADR3 => i_can_registers_N31634,
      O => CHOICE453
    );
  i_can_bsp_n0069_2_SW1 : X_LUT3
    generic map(
      INIT => X"9D"
    )
    port map (
      ADR0 => i_can_bsp_bit_stuff_cnt(2),
      ADR1 => i_can_bsp_bit_stuff_cnt(0),
      ADR2 => i_can_bsp_bit_stuff_cnt(1),
      O => N55547
    );
  i_can_bsp_n0292_SW0 : X_LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      ADR0 => i_can_bsp_bus_free_cnt(3),
      ADR1 => i_can_bsp_bus_free_cnt(1),
      ADR2 => i_can_bsp_bus_free_cnt(2),
      O => N39715
    );
  i_can_bsp_n0292_533 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => N39715,
      ADR2 => i_can_bsp_bus_free_cnt_en,
      ADR3 => i_can_btl_sampled_bit_1,
      O => i_can_bsp_n0292
    );
  i_can_bsp_n0069_2_Q : X_LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      ADR0 => i_can_btl_sampled_bit_q,
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_bit_de_stuff_reset,
      ADR3 => N55547,
      O => i_can_bsp_n0069(2)
    );
  rx_err_cnt_4_rt_534 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(4),
      O => rx_err_cnt_4_rt,
      ADR1 => GND
    );
  tx_err_cnt_7_rt_535 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(7),
      O => tx_err_cnt_7_rt,
      ADR1 => GND
    );
  cs_536 : X_LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      ADR0 => cs_can_i_IBUF,
      ADR1 => N41450,
      ADR2 => rd_i_IBUF,
      ADR3 => rd_i_q,
      O => cs
    );
  i_can_bsp_n0070_0_SW1 : X_LUT3
    generic map(
      INIT => X"2F"
    )
    port map (
      ADR0 => i_can_bsp_bit_stuff_cnt_tx(2),
      ADR1 => i_can_bsp_bit_stuff_cnt_tx(1),
      ADR2 => i_can_bsp_bit_stuff_cnt_tx(0),
      O => N55559
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_151 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG6_data_out(2),
      ADR2 => i_can_registers_TX_DATA_REG6_data_out(3),
      O => N54631
    );
  i_can_bsp_tx_pointer_inst_lut3_331 : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_26,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => CHOICE1816,
      ADR3 => CHOICE1820,
      O => i_can_bsp_tx_pointer_inst_lut3_33
    );
  i_can_bsp_i_can_acf_n00012191 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(2),
      ADR1 => i_can_bsp_id(5),
      ADR2 => CHOICE1128,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(2),
      O => CHOICE1129
    );
  i_can_registers_Mcompar_n0015_AEB45 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_clkout_cnt(1),
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(0),
      O => CHOICE92
    );
  i_can_bsp_go_rx_rtr2_SW0 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_25,
      ADR1 => i_can_bsp_bit_cnt_22,
      ADR2 => i_can_bsp_bit_cnt_21,
      O => N39945
    );
  i_can_bsp_go_rx_rtr2_537 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => N39945,
      ADR1 => i_can_bsp_N34184,
      ADR2 => i_can_bsp_rx_id2,
      ADR3 => i_can_bsp_N34271,
      O => i_can_bsp_go_rx_rtr2
    );
  i_can_bsp_n0070_0_Q : X_LUT4
    generic map(
      INIT => X"FFF6"
    )
    port map (
      ADR0 => i_can_bsp_tx,
      ADR1 => i_can_bsp_tx_q,
      ADR2 => i_can_bsp_bit_de_stuff_reset,
      ADR3 => N55559,
      O => i_can_bsp_n0070(0)
    );
  cs_SW0 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => wr_i_q,
      ADR1 => wr_i_IBUF,
      O => N41450
    );
  i_can_bsp_n0669_538 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_go_early_tx,
      ADR1 => i_can_btl_go_sync1_2,
      ADR2 => N41895,
      ADR3 => i_can_bsp_rst_tx_pointer,
      O => i_can_bsp_n0669
    );
  i_can_registers_Mcompar_n0015_AEB53 : X_LUT4
    generic map(
      INIT => X"4200"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(1),
      ADR1 => i_can_registers_clkout_cnt(0),
      ADR2 => i_can_registers_clkout_cnt(2),
      ADR3 => CHOICE92,
      O => CHOICE93
    );
  i_can_bsp_n00031 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_crc_enable,
      ADR2 => i_can_btl_sample_point,
      O => i_can_bsp_n0003
    );
  i_can_bsp_no_byte0_SW0 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_data_len(3),
      ADR1 => i_can_bsp_data_len(2),
      O => N41200
    );
  i_can_bsp_N33524_SW1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(1),
      ADR1 => i_can_bsp_header_cnt(2),
      O => N55555
    );
  i_can_bsp_N33524_539 : X_LUT4
    generic map(
      INIT => X"0043"
    )
    port map (
      ADR0 => i_can_bsp_ide,
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR2 => i_can_bsp_header_cnt(0),
      ADR3 => N55555,
      O => i_can_bsp_N33524
    );
  i_can_bsp_n0179_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      O => N40713
    );
  i_can_registers_we_tx_data_912 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => N55188,
      ADR1 => addr_latched_0_1,
      ADR2 => i_can_registers_N31646,
      ADR3 => i_can_registers_N31709,
      O => i_can_registers_we_tx_data_9
    );
  i_can_bsp_n0179_540 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_rx_id1,
      ADR2 => i_can_bsp_go_rx_idle,
      ADR3 => N40713,
      O => i_can_bsp_n0179
    );
  i_can_registers_n0206_SW1 : X_LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_IRQ_EN_REG_data_out(0),
      ADR2 => i_can_registers_receive_irq,
      ADR3 => i_can_registers_MODE_REG_BASIC_data_out(0),
      O => N55392
    );
  irq_on_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_registers_bus_error_irq,
      ADR1 => i_can_registers_arbitration_lost_irq,
      ADR2 => i_can_registers_error_passive_irq,
      ADR3 => i_can_registers_data_overrun_irq,
      O => N39475
    );
  irq_on_541 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_registers_transmit_irq,
      ADR1 => i_can_registers_receive_irq,
      ADR2 => i_can_registers_error_irq,
      ADR3 => N39475,
      O => irq_on_OBUF
    );
  i_can_registers_n0206_542 : X_LUT4
    generic map(
      INIT => X"FFA2"
    )
    port map (
      ADR0 => N55392,
      ADR1 => i_can_bsp_i_can_fifo_N30671,
      ADR2 => i_can_bsp_i_can_fifo_info_cnt(6),
      ADR3 => i_can_registers_COMMAND_REG_data_out(0),
      O => i_can_registers_n0206
    );
  i_can_bsp_n0639_543 : X_LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_go_rx_inter,
      ADR2 => i_can_bsp_go_error_frame,
      ADR3 => N41671,
      O => i_can_bsp_n0639
    );
  i_can_bsp_go_overload_frame25_SW0 : X_LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_overload_frame_blocked,
      O => N55236
    );
  i_can_bsp_n0639_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_bsp_rx_eof,
      ADR2 => i_can_registers_MODE_REG0_data_out(0),
      O => N41671
    );
  i_can_bsp_n0662_544 : X_LUT4
    generic map(
      INIT => X"AEEE"
    )
    port map (
      ADR0 => i_can_bsp_n0091,
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_passive_cnt(2),
      ADR3 => N41527,
      O => i_can_bsp_n0662
    );
  i_can_bsp_n0662_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_passive_cnt(0),
      ADR1 => i_can_bsp_passive_cnt(1),
      O => N41527
    );
  i_can_bsp_i_can_fifo_Ker30669 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_info_cnt(5),
      ADR1 => i_can_bsp_i_can_fifo_info_cnt(4),
      ADR2 => i_can_bsp_i_can_fifo_info_cnt(3),
      ADR3 => N41250,
      O => i_can_bsp_i_can_fifo_N30671
    );
  i_can_bsp_n0665_545 : X_LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      ADR0 => N55569,
      ADR1 => i_can_bsp_overload_frame,
      ADR2 => i_can_bsp_N34329,
      ADR3 => i_can_bsp_n0102,
      O => i_can_bsp_n0665
    );
  i_can_bsp_n0665_SW1 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => i_can_bsp_enable_overload_cnt2,
      ADR1 => i_can_bsp_overload_cnt1(1),
      ADR2 => i_can_bsp_overload_cnt1(2),
      ADR3 => i_can_bsp_overload_cnt1(0),
      O => N55569
    );
  tx_err_cnt_5_rt_546 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(5),
      O => tx_err_cnt_5_rt,
      ADR1 => GND
    );
  i_can_bsp_n0070_1_SW0 : X_LUT3
    generic map(
      INIT => X"D9"
    )
    port map (
      ADR0 => i_can_bsp_bit_stuff_cnt_tx(1),
      ADR1 => i_can_bsp_bit_stuff_cnt_tx(0),
      ADR2 => i_can_bsp_bit_stuff_cnt_tx(2),
      O => N40975
    );
  i_can_bsp_n0069_1_SW1 : X_LUT3
    generic map(
      INIT => X"D9"
    )
    port map (
      ADR0 => i_can_bsp_bit_stuff_cnt(1),
      ADR1 => i_can_bsp_bit_stuff_cnt(0),
      ADR2 => i_can_bsp_bit_stuff_cnt(2),
      O => N55551
    );
  i_can_registers_Mcompar_n0015_AEB112_SW0 : X_LUT3
    generic map(
      INIT => X"F6"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(1),
      ADR1 => i_can_registers_clkout_cnt(1),
      ADR2 => i_can_registers_clkout_cnt(2),
      O => N55240
    );
  i_can_bsp_n0154_4_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_rx_crc_lim,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_bsp_N33954,
      O => N42141
    );
  i_can_bsp_n0069_1_Q : X_LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      ADR0 => i_can_btl_sampled_bit_q,
      ADR1 => i_can_btl_sampled_bit_1,
      ADR2 => i_can_bsp_bit_de_stuff_reset,
      ADR3 => N55551,
      O => i_can_bsp_n0069(1)
    );
  i_can_bsp_n0674_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_idle,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_n0189,
      O => N40664
    );
  i_can_bsp_n0649_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => i_can_btl_sampled_bit_1,
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_tx,
      ADR3 => i_can_bsp_transmitter,
      O => N43165
    );
  i_can_bsp_n0649_547 : X_LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      ADR0 => N43165,
      ADR1 => i_can_bsp_stuff_err,
      ADR2 => i_can_bsp_arbitration_field,
      ADR3 => i_can_bsp_n0183,
      O => i_can_bsp_n0649
    );
  i_can_bsp_data_for_fifo_5_4 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_n0206,
      ADR1 => i_can_bsp_id(26),
      ADR2 => i_can_bsp_n0207,
      ADR3 => i_can_bsp_id(18),
      O => CHOICE1233
    );
  i_can_bsp_i_can_acf_n00011670 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(5),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(5),
      ADR2 => i_can_bsp_tmp_fifo_0_5,
      O => CHOICE996
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_171 : X_LUT3
    generic map(
      INIT => X"87"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_length_info(0),
      ADR1 => i_can_bsp_i_can_fifo_n0034,
      ADR2 => i_can_bsp_i_can_fifo_n0021(0),
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_17
    );
  i_can_registers_data_out_tmp_6_166_SW0 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_registers_Ker318731_1,
      ADR1 => addr_latched_4_1,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(6),
      O => N54935
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_381 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(1),
      ADR2 => i_can_registers_TX_DATA_REG0_data_out(2),
      O => N54609
    );
  i_can_btl_clk_cnt_inst_lut3_131 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_btl_n0007,
      ADR1 => i_can_btl_clk_cnt_13,
      O => i_can_btl_clk_cnt_inst_lut3_13
    );
  i_can_bsp_i_can_acf_n00011217 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE797,
      ADR1 => CHOICE806,
      ADR2 => CHOICE830,
      ADR3 => CHOICE886,
      O => CHOICE887
    );
  tx_err_cnt_4_rt_548 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(4),
      O => tx_err_cnt_4_rt,
      ADR1 => GND
    );
  i_can_bsp_data_for_fifo_1_12 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_N34226,
      ADR1 => i_can_bsp_id(6),
      ADR2 => i_can_bsp_n0206,
      ADR3 => i_can_bsp_id(22),
      O => CHOICE1203
    );
  i_can_bsp_i_can_acf_n00011719 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(7),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(7),
      ADR2 => i_can_bsp_tmp_fifo_0_7,
      O => CHOICE1010
    );
  i_can_bsp_data_for_fifo_6_69 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_bsp_ide,
      ADR1 => CHOICE1299,
      ADR2 => CHOICE1305,
      ADR3 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => CHOICE1307
    );
  i_can_registers_data_out_tmp_0_43 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_3_1,
      ADR1 => N55694,
      ADR2 => addr_latched_4_1,
      ADR3 => addr_latched_1_1,
      O => CHOICE2009
    );
  i_can_bsp_i_can_acf_n0001791 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_bsp_ide,
      ADR1 => CHOICE683,
      ADR2 => CHOICE769,
      ADR3 => acceptance_filter_mode,
      O => CHOICE771
    );
  i_can_bsp_i_can_acf_n0001202 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(5),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(5),
      ADR2 => i_can_bsp_id(18),
      O => CHOICE617
    );
  i_can_bsp_n06921 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_error_capture_code_blocked,
      ADR2 => N56005,
      O => i_can_bsp_n0692
    );
  i_can_bsp_i_can_acf_n0001402 : X_LUT4
    generic map(
      INIT => X"5541"
    )
    port map (
      ADR0 => N55228,
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(0),
      ADR2 => i_can_bsp_id(21),
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(0),
      O => CHOICE679
    );
  i_can_bsp_i_can_acf_n00012272 : X_LUT4
    generic map(
      INIT => X"5541"
    )
    port map (
      ADR0 => N55232,
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(6),
      ADR2 => i_can_bsp_id(9),
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(6),
      O => CHOICE1156
    );
  i_can_bsp_i_can_acf_n00011732 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(6),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(6),
      ADR2 => i_can_bsp_tmp_fifo_0_6,
      O => CHOICE1016
    );
  i_can_registers_we_tx_data_319_G : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31709,
      ADR1 => i_can_registers_N31806,
      ADR2 => addr_latched_0_1,
      ADR3 => i_can_registers_N31646,
      O => N55834
    );
  i_can_bsp_data_for_fifo_4_67 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_storing_header,
      ADR1 => CHOICE1226,
      ADR2 => i_can_bsp_n0004(4),
      O => i_can_bsp_data_for_fifo(4)
    );
  i_can_bsp_data_len_0_rt_549 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_data_len(0),
      O => i_can_bsp_data_len_0_rt,
      ADR1 => GND
    );
  i_can_bsp_i_can_acf_n00011232 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE775,
      ADR1 => i_can_bsp_i_can_acf_N26544,
      ADR2 => CHOICE791,
      ADR3 => CHOICE887,
      O => CHOICE888
    );
  i_can_bsp_n0679_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_bsp_arbitration_field,
      ADR1 => i_can_bsp_tx_state,
      ADR2 => i_can_btl_sample_point,
      ADR3 => i_can_bsp_tx,
      O => N43210
    );
  i_can_bsp_n0679_550 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_idle,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR3 => N43210,
      O => i_can_bsp_n0679
    );
  i_can_bsp_n0154_1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_rx_id1,
      ADR1 => i_can_bsp_rx_idle,
      ADR2 => i_can_bsp_rx_data,
      ADR3 => i_can_bsp_rx_dlc,
      O => N49359
    );
  i_can_registers_data_out_tmp_1_132_SW1 : X_LUT4
    generic map(
      INIT => X"CEDF"
    )
    port map (
      ADR0 => addr_latched_2_4,
      ADR1 => addr_latched_4_4,
      ADR2 => i_can_registers_IRQ_EN_REG_data_out(1),
      ADR3 => i_can_registers_MODE_REG_EXT_data_out(0),
      O => N55531
    );
  i_can_registers_we_tx_data_08 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => N55946,
      ADR2 => addr_latched_3_1,
      ADR3 => addr_latched_1_1,
      O => CHOICE1473
    );
  i_can_registers_Mcompar_n0015_AEB126_G : X_LUT4
    generic map(
      INIT => X"EBAA"
    )
    port map (
      ADR0 => CHOICE93,
      ADR1 => i_can_registers_clkout_cnt(1),
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(1),
      ADR3 => CHOICE81,
      O => N55829
    );
  i_can_bsp_i_can_acf_n0001426 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE652,
      ADR1 => CHOICE679,
      ADR2 => CHOICE632,
      ADR3 => N55184,
      O => CHOICE681
    );
  i_can_bsp_i_can_acf_n00011911 : X_LUT4
    generic map(
      INIT => X"B0BB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(7),
      ADR1 => i_can_bsp_i_can_acf_n0145,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(5),
      ADR3 => i_can_bsp_i_can_acf_n0143,
      O => CHOICE1058
    );
  i_can_bsp_data_for_fifo_6_55 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(2),
      ADR1 => i_can_bsp_ide,
      ADR2 => i_can_bsp_rtr1,
      ADR3 => i_can_bsp_N34362,
      O => CHOICE1305
    );
  i_can_registers_we_tx_data_019 : X_LUT4
    generic map(
      INIT => X"00A8"
    )
    port map (
      ADR0 => i_can_registers_N31646,
      ADR1 => CHOICE1473,
      ADR2 => CHOICE1470,
      ADR3 => addr_latched_0_1,
      O => i_can_registers_we_tx_data_0
    );
  i_can_bsp_i_can_acf_n00012224 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(4),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(4),
      ADR2 => i_can_bsp_id(7),
      O => CHOICE1136
    );
  i_can_registers_n00601_SW0 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => addr_latched_2_4,
      ADR1 => addr_latched_4_4,
      ADR2 => i_can_registers_BUS_TIMING_1_REG_data_out(7),
      O => N54761
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_241 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(3),
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(4),
      O => N54660
    );
  i_can_bsp_i_can_acf_n0001440 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => CHOICE598,
      ADR1 => CHOICE625,
      ADR2 => CHOICE681,
      O => CHOICE682
    );
  i_can_bsp_Mmux_error_status_Result15 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(5),
      ADR1 => i_can_bsp_rx_err_cnt(6),
      ADR2 => i_can_bsp_tx_err_cnt(5),
      ADR3 => i_can_bsp_tx_err_cnt(6),
      O => CHOICE1351
    );
  i_can_bsp_i_can_acf_n00011325_SW0 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(7),
      ADR1 => i_can_bsp_id(2),
      ADR2 => i_can_registers_MODE_REG_EXT_data_out(2),
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(7),
      O => N55346
    );
  i_can_bsp_Mcompar_storing_header_ALB42_G : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(1),
      ADR1 => i_can_bsp_header_cnt(0),
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR3 => i_can_bsp_ide,
      O => N55824
    );
  i_can_bsp_n011029 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG0_data_out(7),
      ADR1 => i_can_bsp_n0007,
      ADR2 => i_can_bsp_n0008,
      ADR3 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => CHOICE1403
    );
  i_can_bsp_i_can_acf_n0001215 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(4),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(4),
      ADR2 => i_can_bsp_id(17),
      O => CHOICE623
    );
  i_can_bsp_data_for_fifo_1_29_SW0 : X_LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      ADR0 => CHOICE1203,
      ADR1 => i_can_bsp_n0207,
      ADR2 => i_can_bsp_id(14),
      O => N55292
    );
  i_can_bsp_i_can_acf_Ker2653780 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(5),
      ADR1 => i_can_bsp_id(26),
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(5),
      O => CHOICE553
    );
  i_can_bsp_i_can_acf_n0001228_SW0 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(1),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(1),
      ADR2 => i_can_bsp_id(14),
      O => N55200
    );
  i_can_bsp_i_can_acf_n00011807 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(0),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(0),
      ADR2 => i_can_bsp_tmp_fifo_0_0,
      O => CHOICE1032
    );
  i_can_bsp_i_can_acf_n0001453 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => CHOICE682,
      ADR1 => i_can_bsp_i_can_acf_N26539,
      ADR2 => i_can_bsp_i_can_acf_N26544,
      ADR3 => CHOICE570,
      O => CHOICE683
    );
  i_can_bsp_i_can_acf_n0001808 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => acceptance_filter_mode,
      ADR1 => i_can_bsp_i_can_acf_N26758,
      ADR2 => i_can_bsp_i_can_acf_N26867,
      ADR3 => i_can_bsp_ide,
      O => CHOICE775
    );
  i_can_bsp_i_can_acf_Ker2653787 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_bsp_id(27),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(6),
      ADR2 => CHOICE553,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(6),
      O => CHOICE554
    );
  i_can_bsp_i_can_acf_n0001625 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(0),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(0),
      ADR2 => i_can_bsp_id(3),
      O => CHOICE732
    );
  i_can_bsp_i_can_acf_Ker2653794 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => CHOICE541,
      ADR1 => CHOICE554,
      O => i_can_bsp_i_can_acf_N26539
    );
  i_can_bsp_i_can_acf_n0001228 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE617,
      ADR1 => CHOICE623,
      ADR2 => CHOICE610,
      ADR3 => N55200,
      O => CHOICE625
    );
  i_can_registers_data_out_tmp_4_178_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => addr_latched_2_1,
      ADR1 => i_can_registers_N31881,
      ADR2 => addr_latched_4_1,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(4),
      O => N54829
    );
  i_can_bsp_data_for_fifo_1_5 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_N34231,
      ADR2 => i_can_bsp_N34357,
      ADR3 => i_can_bsp_data_len(1),
      O => CHOICE1198
    );
  i_can_registers_data_out_tmp_4_165 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2285,
      ADR1 => CHOICE2288,
      ADR2 => CHOICE2292,
      ADR3 => N54709,
      O => CHOICE2295
    );
  i_can_bsp_i_can_acf_n00011634 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => CHOICE981,
      ADR1 => CHOICE987,
      ADR2 => i_can_bsp_no_byte0,
      O => CHOICE989
    );
  i_can_bsp_Mmux_n0006_inst_lut3_1241 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_bsp_i_can_crc_rx_crc(0),
      O => i_can_bsp_Mmux_n0006_net153
    );
  i_can_bsp_Mmux_error_status_Result40_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(7),
      ADR1 => i_can_bsp_rx_err_cnt(8),
      ADR2 => i_can_bsp_tx_err_cnt(7),
      ADR3 => i_can_bsp_tx_err_cnt(8),
      O => N55652
    );
  i_can_registers_data_out_tmp_0_198_SW1 : X_LUT4
    generic map(
      INIT => X"CDCF"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_4_4,
      ADR2 => i_can_registers_receive_buffer_status,
      ADR3 => i_can_registers_receive_irq,
      O => N54907
    );
  i_can_bsp_data_for_fifo_2_29 : X_LUT4
    generic map(
      INIT => X"888F"
    )
    port map (
      ADR0 => i_can_bsp_id(5),
      ADR1 => i_can_bsp_N33524,
      ADR2 => i_can_bsp_header_len(1),
      ADR3 => N55284,
      O => CHOICE1173
    );
  i_can_bsp_i_can_acf_n00011794 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(1),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(1),
      ADR2 => i_can_bsp_tmp_fifo_0_1,
      O => CHOICE1026
    );
  i_can_bsp_data_for_fifo_7_42 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_id(2),
      ADR1 => i_can_bsp_N33831,
      ADR2 => i_can_bsp_id(10),
      ADR3 => i_can_bsp_N33524,
      O => CHOICE1262
    );
  i_can_bsp_i_can_fifo_rd_pointer_4_rt_551 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_rd_pointer(4),
      O => i_can_bsp_i_can_fifo_rd_pointer_4_rt,
      ADR1 => GND
    );
  i_can_bsp_i_can_acf_n00012023 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_no_byte1,
      ADR1 => CHOICE1079,
      ADR2 => CHOICE1085,
      ADR3 => N55256,
      O => CHOICE1088
    );
  i_can_bsp_i_can_acf_n00011053 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(5),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(5),
      ADR2 => i_can_bsp_id(10),
      O => CHOICE843
    );
  i_can_bsp_data_for_fifo_4_40 : X_LUT4
    generic map(
      INIT => X"AAFE"
    )
    port map (
      ADR0 => CHOICE1225,
      ADR1 => CHOICE1215,
      ADR2 => CHOICE1219,
      ADR3 => i_can_bsp_header_len(1),
      O => CHOICE1226
    );
  i_can_bsp_i_can_acf_n00011882 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => CHOICE1026,
      ADR1 => CHOICE1032,
      ADR2 => i_can_bsp_no_byte0,
      ADR3 => CHOICE1048,
      O => CHOICE1049
    );
  i_can_registers_data_out_tmp_6_161_SW0 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => i_can_registers_Ker318731_1,
      ADR1 => addr_latched_4_1,
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(6),
      O => N54911
    );
  i_can_registers_n00361 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_error_capture_code_blocked,
      ADR1 => i_can_bsp_go_error_frame,
      ADR2 => i_can_registers_IRQ_EN_REG_data_out(7),
      O => i_can_registers_n0036
    );
  i_can_bsp_Msub_n0247_inst_lut2_1181 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => i_can_bsp_data_len(2),
      ADR1 => i_can_bsp_data_len(3),
      O => i_can_bsp_Msub_n0247_inst_lut2_118
    );
  i_can_bsp_i_can_acf_n00011484 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(0),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(0),
      ADR2 => i_can_bsp_tmp_fifo_0_0,
      O => CHOICE956
    );
  i_can_bsp_n011015 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_n0005,
      ADR2 => i_can_bsp_n0009,
      ADR3 => i_can_bsp_rx_data,
      O => CHOICE1397
    );
  rx_err_cnt_7_rt_552 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(7),
      O => rx_err_cnt_7_rt,
      ADR1 => GND
    );
  i_can_bsp_Mmux_error_status_Result3 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => CHOICE1345
    );
  rx_err_cnt_5_rt_553 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(5),
      O => rx_err_cnt_5_rt,
      ADR1 => GND
    );
  i_can_bsp_i_can_acf_n00011140 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(7),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(7),
      ADR2 => i_can_bsp_id(12),
      O => CHOICE870
    );
  i_can_bsp_data_for_fifo_7_30 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => i_can_bsp_header_len(1),
      ADR1 => i_can_bsp_N34231,
      ADR2 => CHOICE1255,
      ADR3 => CHOICE1252,
      O => CHOICE1259
    );
  i_can_bsp_data_for_fifo_4_36 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_N34357,
      ADR1 => i_can_bsp_rtr1,
      ADR2 => i_can_bsp_id(7),
      ADR3 => i_can_bsp_N33524,
      O => CHOICE1225
    );
  i_can_registers_data_out_tmp_0_4_SW1 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_3,
      ADR1 => addr_latched_1_3,
      ADR2 => i_can_registers_ERROR_WARNING_REG_data_out(0),
      ADR3 => i_can_bsp_rx_err_cnt(0),
      O => N55489
    );
  i_can_bsp_data_for_fifo_6_24 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE1293,
      ADR1 => i_can_bsp_N34231,
      ADR2 => i_can_bsp_rtr2,
      ADR3 => CHOICE1297,
      O => CHOICE1299
    );
  i_can_bsp_i_can_acf_n000114 : X_LUT4
    generic map(
      INIT => X"B0BB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_acf_n0102,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(2),
      ADR3 => i_can_bsp_i_can_acf_n0104,
      O => CHOICE563
    );
  i_can_bsp_i_can_acf_n00011856 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(0),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(0),
      ADR2 => i_can_bsp_tmp_fifo_1_0,
      O => CHOICE1046
    );
  i_can_bsp_i_can_acf_n00011745 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => CHOICE1010,
      ADR1 => CHOICE1016,
      ADR2 => i_can_bsp_no_byte0,
      O => CHOICE1018
    );
  i_can_bsp_i_can_acf_n0001490 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(4),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(4),
      ADR2 => i_can_bsp_rtr1,
      O => CHOICE690
    );
  i_can_bsp_i_can_acf_n0001265 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(5),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(5),
      ADR2 => i_can_bsp_id(26),
      O => CHOICE632
    );
  i_can_bsp_i_can_acf_n0001638 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(2),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(2),
      ADR2 => i_can_bsp_id(5),
      O => CHOICE738
    );
  tx_data_0_0_rt_554 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG0_data_out(0),
      O => tx_data_0_0_rt,
      ADR1 => GND
    );
  i_can_bsp_i_can_acf_n0001316 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(3),
      ADR1 => i_can_bsp_id(24),
      ADR2 => CHOICE651,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(3),
      O => CHOICE652
    );
  i_can_bsp_i_can_acf_n00011647 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => CHOICE967,
      ADR1 => CHOICE973,
      ADR2 => i_can_bsp_no_byte1,
      ADR3 => CHOICE989,
      O => CHOICE990
    );
  tx_data_0_0_rt1_555 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_registers_TX_DATA_REG0_data_out(0),
      O => tx_data_0_0_rt1,
      ADR1 => GND
    );
  i_can_bsp_i_can_acf_n0001752_SW0 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(6),
      ADR1 => i_can_bsp_id(1),
      ADR2 => CHOICE725,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(6),
      O => N55264
    );
  i_can_bsp_i_can_acf_n00011683 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(4),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(4),
      ADR2 => i_can_bsp_tmp_fifo_0_4,
      O => CHOICE1002
    );
  i_can_bsp_i_can_acf_n00011422 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(3),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(3),
      ADR2 => i_can_bsp_tmp_fifo_0_3,
      O => CHOICE936
    );
  i_can_bsp_error_flag_over24_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => i_can_bsp_enable_error_cnt2,
      ADR1 => i_can_bsp_error_cnt1(1),
      ADR2 => i_can_bsp_error_cnt1(2),
      ADR3 => i_can_bsp_error_cnt1(0),
      O => N55513
    );
  i_can_bsp_n01241 : X_LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_susp_cnt(2),
      ADR3 => N39691,
      O => i_can_bsp_n0124
    );
  i_can_bsp_i_can_acf_n00011983 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(6),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(6),
      ADR2 => i_can_bsp_tmp_fifo_1_6,
      O => CHOICE1079
    );
  i_can_bsp_i_can_acf_n00012272_SW0 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(7),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(7),
      ADR2 => i_can_bsp_id(10),
      O => N55232
    );
  i_can_registers_we_acceptance_code_0_556 : X_LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_N31709,
      ADR2 => N48810,
      ADR3 => i_can_registers_N31720,
      O => i_can_registers_we_acceptance_code_0
    );
  i_can_bsp_form_err13 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_rx_ack_lim,
      ADR1 => i_can_bsp_rx_crc_lim,
      O => CHOICE1530
    );
  i_can_bsp_i_can_acf_n000125 : X_LUT4
    generic map(
      INIT => X"B0BB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(1),
      ADR1 => i_can_bsp_i_can_acf_n0103,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(1),
      ADR3 => i_can_bsp_i_can_acf_n0111,
      O => CHOICE568
    );
  i_can_bsp_form_err12 : X_LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      ADR0 => i_can_bsp_rx_eof,
      ADR1 => i_can_bsp_eof_cnt(1),
      ADR2 => i_can_bsp_eof_cnt(2),
      ADR3 => i_can_bsp_tx_state,
      O => CHOICE1529
    );
  i_can_registers_data_out_tmp_7_83_SW0 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => addr_latched_2_3,
      ADR2 => i_can_registers_bus_error_irq,
      ADR3 => i_can_registers_BUS_TIMING_0_REG_data_out(7),
      O => N55123
    );
  i_can_bsp_i_can_acf_n0001826 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(0),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(0),
      ADR2 => i_can_bsp_id(5),
      O => CHOICE782
    );
  i_can_bsp_error_flag_over24_SW1 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => i_can_bsp_enable_error_cnt2,
      ADR1 => i_can_bsp_passive_cnt(1),
      ADR2 => i_can_bsp_passive_cnt(0),
      ADR3 => i_can_bsp_passive_cnt(2),
      O => N55515
    );
  i_can_bsp_tx_err_cnt_8_rt_557 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(8),
      O => i_can_bsp_tx_err_cnt_8_rt,
      ADR1 => GND
    );
  i_can_bsp_i_can_acf_n00011325 : X_LUT4
    generic map(
      INIT => X"B000"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(5),
      ADR1 => i_can_bsp_i_can_acf_n0143,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR3 => N55346,
      O => CHOICE910
    );
  i_can_bsp_i_can_acf_n00011572 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(5),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(5),
      ADR2 => i_can_bsp_tmp_fifo_1_5,
      O => CHOICE973
    );
  i_can_bsp_data_for_fifo_5_10_G : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(2),
      ADR1 => i_can_bsp_id(10),
      ADR2 => i_can_bsp_header_cnt(1),
      O => N55819
    );
  i_can_bsp_i_can_acf_n00011497 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => CHOICE950,
      ADR1 => CHOICE956,
      ADR2 => i_can_bsp_no_byte0,
      O => CHOICE958
    );
  i_can_bsp_i_can_acf_n000139 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE557,
      ADR1 => i_can_bsp_i_can_acf_SF26404,
      ADR2 => CHOICE563,
      ADR3 => CHOICE568,
      O => CHOICE570
    );
  i_can_registers_data_out_tmp_0_198_SW0 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_4_4,
      ADR2 => i_can_registers_receive_irq,
      O => N54905
    );
  i_can_registers_n016935 : X_LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      ADR0 => error_status,
      ADR1 => i_can_registers_error_status_q,
      ADR2 => i_can_bsp_node_bus_off,
      ADR3 => i_can_registers_node_bus_off_q,
      O => CHOICE1337
    );
  i_can_bsp_data_for_fifo_2_12 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_N34226,
      ADR1 => i_can_bsp_id(7),
      ADR2 => i_can_bsp_n0206,
      ADR3 => i_can_bsp_id(23),
      O => CHOICE1169
    );
  i_can_bsp_i_can_acf_n0001278 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(4),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(4),
      ADR2 => i_can_bsp_id(25),
      O => CHOICE638
    );
  i_can_bsp_i_can_acf_n00012110_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE1019,
      ADR1 => CHOICE1049,
      ADR2 => CHOICE1059,
      ADR3 => CHOICE1088,
      O => N55252
    );
  i_can_bsp_i_can_acf_n0001503 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(7),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(7),
      ADR2 => i_can_bsp_id(10),
      O => CHOICE696
    );
  i_can_bsp_data_for_fifo_7_12 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_n0206,
      ADR1 => i_can_bsp_id(28),
      ADR2 => i_can_bsp_n0207,
      ADR3 => i_can_bsp_id(20),
      O => CHOICE1255
    );
  i_can_bsp_i_can_acf_n0001765_SW0 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(6),
      ADR1 => i_can_bsp_id(9),
      ADR2 => CHOICE711,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(6),
      O => N55272
    );
  i_can_bsp_i_can_acf_n00011330 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => CHOICE896,
      ADR1 => CHOICE902,
      ADR2 => i_can_bsp_no_byte0,
      ADR3 => CHOICE910,
      O => CHOICE911
    );
  i_can_bsp_i_can_acf_n00011869 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => CHOICE1040,
      ADR1 => CHOICE1046,
      ADR2 => i_can_bsp_no_byte1,
      O => CHOICE1048
    );
  i_can_bsp_data_for_fifo_6_5 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_n0206,
      ADR1 => i_can_bsp_id(27),
      ADR2 => i_can_bsp_n0207,
      ADR3 => i_can_bsp_id(19),
      O => CHOICE1293
    );
  i_can_bsp_i_can_acf_n00012294_SW0 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => CHOICE1115,
      ADR1 => CHOICE1136,
      ADR2 => CHOICE1142,
      O => N55192
    );
  i_can_bsp_i_can_acf_n00012155 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(1),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(1),
      ADR2 => i_can_bsp_id(4),
      O => CHOICE1115
    );
  i_can_bsp_i_can_acf_n00011276 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(2),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(2),
      ADR2 => i_can_bsp_tmp_fifo_0_2,
      O => CHOICE896
    );
  i_can_bsp_n047512 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE1519,
      ADR1 => i_can_bsp_tx_err_cnt(1),
      ADR2 => i_can_bsp_tx_err_cnt(2),
      ADR3 => i_can_bsp_tx_err_cnt(3),
      O => CHOICE1522
    );
  i_can_bsp_i_can_acf_n00011077 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(4),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(4),
      ADR2 => i_can_bsp_id(9),
      O => CHOICE850
    );
  i_can_bsp_form_err58_G : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_rtr1,
      ADR2 => i_can_btl_sample_point,
      ADR3 => i_can_bsp_rx_ide,
      O => N55814
    );
  i_can_registers_data_out_tmp_0_43_SW0 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_2_2,
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(0),
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(0),
      O => N55694
    );
  i_can_registers_Ker3144491_SW0_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => addr_latched(3),
      ADR1 => addr_latched(4),
      O => N55690
    );
  i_can_bsp_go_error_frame_558 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_bit_err,
      ADR1 => i_can_bsp_form_err,
      ADR2 => i_can_bsp_stuff_err,
      ADR3 => N48407,
      O => i_can_bsp_go_error_frame
    );
  i_can_bsp_go_error_frame_SW0 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => i_can_bsp_ack_err,
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_rx_ack_lim,
      ADR3 => i_can_bsp_crc_err,
      O => N48407
    );
  i_can_registers_data_out_tmp_4_185_SW2 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => addr_latched_4_3,
      ADR1 => addr_latched_2_4,
      ADR2 => addr_latched_3_2,
      ADR3 => i_can_bsp_arbitration_lost_capture_31,
      O => N55056
    );
  i_can_registers_data_out_tmp_0_50_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => addr_latched_4_4,
      ADR1 => addr_latched_2_4,
      ADR2 => addr_latched_3_2,
      ADR3 => i_can_bsp_error_capture_code(0),
      O => N55131
    );
  i_can_bsp_n04756 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(8),
      ADR1 => i_can_bsp_tx_err_cnt(0),
      O => CHOICE1519
    );
  i_can_bsp_data_for_fifo_0_29 : X_LUT4
    generic map(
      INIT => X"888F"
    )
    port map (
      ADR0 => i_can_bsp_id(3),
      ADR1 => i_can_bsp_N33524,
      ADR2 => i_can_bsp_header_len(1),
      ADR3 => N55288,
      O => CHOICE1190
    );
  i_can_bsp_n04755 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(4),
      ADR1 => i_can_bsp_tx_err_cnt(5),
      ADR2 => i_can_bsp_tx_err_cnt(6),
      ADR3 => i_can_bsp_tx_err_cnt(7),
      O => CHOICE1518
    );
  tx_err_cnt_0_rt_559 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(0),
      O => tx_err_cnt_0_rt,
      ADR1 => GND
    );
  i_can_registers_n00601_SW2 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => addr_latched_2_2,
      ADR1 => addr_latched_4_3,
      ADR2 => i_can_registers_BUS_TIMING_1_REG_data_out(6),
      O => N54769
    );
  i_can_bsp_data_for_fifo_4_10_G : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(2),
      ADR1 => i_can_bsp_id(9),
      ADR2 => i_can_bsp_header_cnt(1),
      O => N55809
    );
  i_can_bsp_data_for_fifo_3_86 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i_can_bsp_n0004(3),
      ADR1 => i_can_bsp_storing_header,
      ADR2 => CHOICE1286,
      O => i_can_bsp_data_for_fifo(3)
    );
  i_can_bsp_i_can_acf_n0001839 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(2),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(2),
      ADR2 => i_can_bsp_id(7),
      O => CHOICE788
    );
  i_can_registers_data_out_tmp_7_158_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_2_1,
      ADR1 => i_can_registers_Ker318731_1,
      ADR2 => addr_latched_4_1,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(7),
      O => N54825
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_231 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(7),
      O => N54656
    );
  i_can_btl_n00781 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_btl_clk_en,
      ADR1 => i_can_btl_go_seg2,
      ADR2 => i_can_btl_go_sync1_2,
      O => i_can_btl_n0078
    );
  i_can_bsp_i_can_acf_n0001974 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(4),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(4),
      ADR2 => i_can_bsp_id(1),
      O => CHOICE822
    );
  i_can_bsp_i_can_acf_n00011398_SW0 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(7),
      ADR1 => i_can_bsp_tmp_fifo_0_7,
      ADR2 => CHOICE922,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(7),
      O => N55312
    );
  Q_n000279 : X_LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      ADR0 => CHOICE1345,
      ADR1 => CHOICE1494,
      ADR2 => CHOICE1506,
      ADR3 => N55212,
      O => data_out_fifo_selected
    );
  i_can_bsp_data_for_fifo_2_29_SW0 : X_LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      ADR0 => CHOICE1169,
      ADR1 => i_can_bsp_n0207,
      ADR2 => i_can_bsp_id(15),
      O => N55284
    );
  i_can_registers_data_out_tmp_3_172_SW1 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => addr_latched_1_3,
      ADR2 => i_can_registers_ERROR_WARNING_REG_data_out(3),
      ADR3 => i_can_bsp_rx_err_cnt(3),
      O => N55485
    );
  i_can_registers_n00671 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched(2),
      ADR1 => addr_latched(4),
      ADR2 => addr_latched(0),
      ADR3 => N55965,
      O => i_can_registers_n0067
    );
  i_can_bsp_i_can_acf_n00012023_SW0 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(3),
      ADR1 => i_can_bsp_tmp_fifo_1_3,
      ADR2 => CHOICE1071,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(3),
      O => N55256
    );
  i_can_bsp_i_can_acf_n00011164 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(6),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(6),
      ADR2 => i_can_bsp_id(11),
      O => CHOICE877
    );
  i_can_bsp_i_can_acf_Ker2654233 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(2),
      ADR1 => i_can_bsp_id(15),
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(2),
      O => CHOICE513
    );
  i_can_bsp_data_for_fifo_5_67 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_storing_header,
      ADR1 => CHOICE1244,
      ADR2 => i_can_bsp_n0004(5),
      O => i_can_bsp_data_for_fifo(5)
    );
  i_can_bsp_data_for_fifo_3_72 : X_LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      ADR0 => i_can_bsp_storing_header,
      ADR1 => CHOICE1284,
      ADR2 => CHOICE1277,
      ADR3 => i_can_bsp_header_len(1),
      O => CHOICE1286
    );
  i_can_bsp_data_for_fifo_2_5 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_N34231,
      ADR2 => i_can_bsp_N34357,
      ADR3 => i_can_bsp_data_len(2),
      O => CHOICE1164
    );
  i_can_bsp_i_can_acf_n000191 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(6),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(6),
      ADR2 => i_can_bsp_id(27),
      O => CHOICE583
    );
  i_can_bsp_i_can_acf_Ker2654240 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_bsp_id(16),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(3),
      ADR2 => CHOICE513,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(3),
      O => CHOICE514
    );
  i_can_bsp_i_can_acf_n00011510 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => CHOICE936,
      ADR1 => CHOICE942,
      ADR2 => i_can_bsp_no_byte0,
      ADR3 => CHOICE958,
      O => CHOICE959
    );
  i_can_bsp_data_for_fifo_4_4 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_n0206,
      ADR1 => i_can_bsp_id(25),
      ADR2 => i_can_bsp_n0207,
      ADR3 => i_can_bsp_id(17),
      O => CHOICE1215
    );
  i_can_registers_we_tx_data_622_G : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_registers_N31646,
      ADR1 => i_can_registers_N31731,
      ADR2 => i_can_registers_N31881,
      O => N55804
    );
  i_can_registers_n016944 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_IRQ_EN_REG_data_out(2),
      ADR2 => i_can_registers_MODE_REG_BASIC_data_out(2),
      ADR3 => CHOICE1337,
      O => i_can_registers_n0169
    );
  i_can_bsp_i_can_acf_n0001865 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_bsp_i_can_acf_N26539,
      ADR1 => i_can_bsp_i_can_acf_SF26404,
      ADR2 => CHOICE782,
      ADR3 => CHOICE788,
      O => CHOICE791
    );
  i_can_bsp_i_can_acf_n00012110 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => CHOICE990,
      ADR1 => N55252,
      ADR2 => CHOICE961,
      ADR3 => CHOICE1100,
      O => CHOICE1101
    );
  i_can_bsp_i_can_acf_n0001688 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(5),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(5),
      ADR2 => i_can_bsp_id(8),
      O => CHOICE752
    );
  i_can_bsp_i_can_acf_n00012190 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(3),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(3),
      ADR2 => i_can_bsp_id(6),
      O => CHOICE1128
    );
  i_can_bsp_i_can_acf_n00011559 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(7),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(7),
      ADR2 => i_can_bsp_tmp_fifo_1_7,
      O => CHOICE967
    );
  i_can_bsp_i_can_acf_n0001315 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(0),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(0),
      ADR2 => i_can_bsp_id(13),
      O => CHOICE651
    );
  i_can_bsp_i_can_acf_n00011471 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(1),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(1),
      ADR2 => i_can_bsp_tmp_fifo_0_1,
      O => CHOICE950
    );
  i_can_bsp_n0110207 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => CHOICE1420,
      ADR1 => CHOICE1431,
      ADR2 => i_can_registers_MODE_REG0_data_out(0),
      O => CHOICE1433
    );
  i_can_registers_we_acceptance_mask_022 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE1484,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_registers_N31847,
      ADR3 => i_can_registers_N31793,
      O => i_can_registers_we_acceptance_mask_0
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_142 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG6_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG6_data_out(5),
      O => N54629
    );
  i_can_bsp_data_for_fifo_3_53 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_bsp_id(6),
      ADR1 => i_can_bsp_N33524,
      ADR2 => CHOICE1283,
      O => CHOICE1284
    );
  i_can_bsp_i_can_acf_n00011996 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(4),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(4),
      ADR2 => i_can_bsp_tmp_fifo_1_4,
      O => CHOICE1085
    );
  Q_n000248 : X_LUT4
    generic map(
      INIT => X"007A"
    )
    port map (
      ADR0 => addr_latched_2_1,
      ADR1 => addr_latched_1_1,
      ADR2 => addr_latched_3_1,
      ADR3 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => CHOICE1506
    );
  i_can_bsp_i_can_acf_n00012107 : X_LUT4
    generic map(
      INIT => X"5541"
    )
    port map (
      ADR0 => i_can_bsp_ide,
      ADR1 => i_can_bsp_rtr1,
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(4),
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(4),
      O => CHOICE1100
    );
  i_can_bsp_i_can_acf_n0001426_SW0 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => CHOICE638,
      ADR1 => CHOICE659,
      ADR2 => CHOICE665,
      O => N55184
    );
  i_can_bsp_data_for_fifo_3_51 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_bsp_N34362,
      ADR1 => i_can_bsp_N34177,
      ADR2 => i_can_bsp_N34357,
      ADR3 => i_can_bsp_data_len(3),
      O => CHOICE1283
    );
  i_can_bsp_n0110184 : X_LUT4
    generic map(
      INIT => X"00AE"
    )
    port map (
      ADR0 => CHOICE1423,
      ADR1 => CHOICE1427,
      ADR2 => i_can_bsp_overload_frame,
      ADR3 => i_can_bsp_tx_state,
      O => CHOICE1431
    );
  i_can_bsp_data_for_fifo_0_12 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_N34226,
      ADR1 => i_can_bsp_id(5),
      ADR2 => i_can_bsp_n0206,
      ADR3 => i_can_bsp_id(21),
      O => CHOICE1186
    );
  i_can_btl_Mcompar_n0007_inst_lut4_41 : X_LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      ADR0 => i_can_btl_clk_cnt_9,
      ADR1 => i_can_registers_BUS_TIMING_0_REG_data_out(0),
      ADR2 => i_can_btl_clk_cnt(8),
      O => i_can_btl_Mcompar_n0007_inst_lut4_4
    );
  i_can_bsp_i_can_acf_n0001115 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(3),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(3),
      ADR2 => i_can_bsp_id(16),
      O => CHOICE590
    );
  i_can_bsp_i_can_acf_n00011090 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(3),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(3),
      ADR2 => i_can_bsp_id(8),
      O => CHOICE856
    );
  i_can_bsp_data_for_fifo_5_40 : X_LUT4
    generic map(
      INIT => X"AAFE"
    )
    port map (
      ADR0 => CHOICE1243,
      ADR1 => CHOICE1233,
      ADR2 => CHOICE1237,
      ADR3 => i_can_bsp_header_len(1),
      O => CHOICE1244
    );
  i_can_bsp_i_can_acf_n0001987 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(3),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(3),
      ADR2 => i_can_bsp_id(0),
      O => CHOICE828
    );
  i_can_bsp_n0652_560 : X_LUT4
    generic map(
      INIT => X"AAAE"
    )
    port map (
      ADR0 => i_can_bsp_reset_wr_fifo,
      ADR1 => i_can_bsp_go_rx_inter,
      ADR2 => i_can_bsp_error_frame_ended,
      ADR3 => N48340,
      O => i_can_bsp_n0652
    );
  i_can_bsp_n0652_SW0 : X_LUT4
    generic map(
      INIT => X"A2FF"
    )
    port map (
      ADR0 => i_can_bsp_tx_state,
      ADR1 => i_can_registers_COMMAND_REG4_data_out(0),
      ADR2 => i_can_registers_COMMAND_REG0_data_out(0),
      ADR3 => i_can_bsp_i_can_acf_id_ok,
      O => N48340
    );
  i_can_bsp_go_overload_frame25 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => N55236,
      ADR1 => CHOICE1370,
      ADR2 => i_can_bsp_n0241,
      ADR3 => i_can_bsp_n0242,
      O => i_can_bsp_go_overload_frame
    );
  i_can_bsp_i_can_acf_n00012236 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(5),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(5),
      ADR2 => i_can_bsp_id(8),
      O => CHOICE1142
    );
  i_can_bsp_n068718 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => i_can_bsp_node_bus_off,
      ADR1 => i_can_bsp_n0203,
      ADR2 => i_can_bsp_tx_err_cnt(7),
      ADR3 => i_can_bsp_tx_err_cnt(8),
      O => CHOICE1324
    );
  i_can_registers_data_out_tmp_2_86_SW0 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => addr_latched_2_4,
      ADR2 => i_can_registers_error_irq,
      ADR3 => i_can_registers_BUS_TIMING_0_REG_data_out(2),
      O => N55115
    );
  i_can_bsp_i_can_acf_n0001548 : X_LUT4
    generic map(
      INIT => X"5541"
    )
    port map (
      ADR0 => i_can_bsp_ide,
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(7),
      ADR2 => i_can_bsp_id(2),
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(7),
      O => CHOICE711
    );
  i_can_bsp_i_can_acf_n00011002_SW0 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(5),
      ADR1 => i_can_bsp_id(2),
      ADR2 => CHOICE828,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(5),
      O => N55268
    );
  i_can_bsp_i_can_acf_n00011204_SW0 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(1),
      ADR1 => i_can_bsp_id(6),
      ADR2 => CHOICE843,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(1),
      O => N55260
    );
  i_can_bsp_data_for_fifo_5_36 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_bsp_id(8),
      ADR1 => i_can_bsp_N33524,
      ADR2 => i_can_bsp_id(0),
      ADR3 => i_can_bsp_N33831,
      O => CHOICE1243
    );
  i_can_bsp_i_can_acf_n00012319 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE771,
      ADR2 => CHOICE888,
      ADR3 => CHOICE1159,
      O => CHOICE1160
    );
  i_can_bsp_i_can_acf_n00011916 : X_LUT4
    generic map(
      INIT => X"008A"
    )
    port map (
      ADR0 => CHOICE1058,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(6),
      ADR2 => i_can_bsp_i_can_acf_n0144,
      ADR3 => acceptance_filter_mode,
      O => CHOICE1059
    );
  i_can_bsp_n0110163 : X_LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_bsp_node_error_passive,
      ADR2 => i_can_bsp_error_cnt1(2),
      ADR3 => i_can_bsp_error_cnt1(1),
      O => CHOICE1427
    );
  i_can_bsp_i_can_acf_n00011947 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(2),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(2),
      ADR2 => i_can_bsp_tmp_fifo_1_2,
      O => CHOICE1071
    );
  i_can_bsp_i_can_acf_n0001352 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(2),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(2),
      ADR2 => i_can_bsp_id(23),
      O => CHOICE659
    );
  i_can_bsp_i_can_acf_n0001128 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(2),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(2),
      ADR2 => i_can_bsp_id(15),
      O => CHOICE596
    );
  i_can_bsp_i_can_acf_n0001899 : X_LUT4
    generic map(
      INIT => X"B0BB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(2),
      ADR1 => i_can_bsp_i_can_acf_n0104,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(1),
      ADR3 => i_can_bsp_i_can_acf_n0111,
      O => CHOICE797
    );
  i_can_bsp_i_can_acf_n0001141_SW0 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(7),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(7),
      ADR2 => i_can_bsp_id(28),
      O => N55204
    );
  i_can_bsp_i_can_acf_Ker2654280 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(4),
      ADR1 => i_can_bsp_id(17),
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(4),
      O => CHOICE526
    );
  i_can_bsp_i_can_acf_n00011843 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(1),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(1),
      ADR2 => i_can_bsp_tmp_fifo_1_1,
      O => CHOICE1040
    );
  i_can_bsp_Ker342691 : X_LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_bit_stuff_cnt(0),
      ADR2 => i_can_bsp_bit_stuff_cnt(2),
      ADR3 => i_can_bsp_bit_stuff_cnt(1),
      O => i_can_bsp_N34271
    );
  i_can_bsp_i_can_acf_n0001712 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(4),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(4),
      ADR2 => i_can_bsp_id(7),
      O => CHOICE759
    );
  i_can_bsp_go_overload_frame12 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_25,
      ADR1 => i_can_bsp_bit_cnt_22,
      ADR2 => i_can_bsp_rx_inter,
      ADR3 => i_can_bsp_N34184,
      O => CHOICE1370
    );
  i_can_bsp_i_can_acf_Ker2654287 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => i_can_bsp_id(18),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(5),
      ADR2 => CHOICE526,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(5),
      O => CHOICE527
    );
  i_can_bsp_i_can_acf_n0001141 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE590,
      ADR1 => CHOICE596,
      ADR2 => CHOICE583,
      ADR3 => N55204,
      O => CHOICE598
    );
  i_can_bsp_i_can_acf_Ker2654294 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => CHOICE514,
      ADR1 => CHOICE527,
      O => i_can_bsp_i_can_acf_N26544
    );
  Q_n000279_SW0 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => addr_latched_4_1,
      ADR1 => addr_latched(5),
      ADR2 => addr_latched(6),
      ADR3 => addr_latched(7),
      O => N55212
    );
  i_can_bsp_i_can_acf_n00011608 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(3),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(3),
      ADR2 => i_can_bsp_tmp_fifo_0_3,
      O => CHOICE981
    );
  i_can_bsp_i_can_acf_n00011002 : X_LUT4
    generic map(
      INIT => X"B000"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(0),
      ADR1 => i_can_bsp_i_can_acf_n0102,
      ADR2 => CHOICE822,
      ADR3 => N55268,
      O => CHOICE830
    );
  i_can_registers_n00601_SW1 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => addr_latched_2_4,
      ADR1 => addr_latched_4_4,
      ADR2 => i_can_registers_BUS_TIMING_1_REG_data_out(5),
      O => N54765
    );
  i_can_bsp_data_for_fifo_3_24 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE1271,
      ADR1 => i_can_bsp_data_len(3),
      ADR2 => i_can_bsp_N34231,
      ADR3 => CHOICE1275,
      O => CHOICE1277
    );
  i_can_bsp_n0110155 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_bsp_overload_cnt1(2),
      ADR1 => i_can_bsp_overload_frame,
      ADR2 => i_can_bsp_overload_cnt1(1),
      O => CHOICE1423
    );
  Q_n000212 : X_LUT4
    generic map(
      INIT => X"1FFF"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_1_1,
      ADR2 => addr_latched_2_1,
      ADR3 => addr_latched_3_1,
      O => CHOICE1494
    );
  i_can_bsp_i_can_acf_n00012307 : X_LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      ADR0 => CHOICE1158,
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR2 => CHOICE1101,
      O => CHOICE1159
    );
  i_can_bsp_data_for_fifo_0_29_SW0 : X_LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      ADR0 => CHOICE1186,
      ADR1 => i_can_bsp_n0207,
      ADR2 => i_can_bsp_id(13),
      O => N55288
    );
  i_can_bsp_i_can_acf_n00011177 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(6),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(6),
      ADR2 => i_can_bsp_id(3),
      O => CHOICE883
    );
  i_can_bsp_n06876 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i_can_bsp_reset_mode_q,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_go_error_frame,
      O => CHOICE1319
    );
  i_can_bsp_data_for_fifo_0_5 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_N34231,
      ADR2 => i_can_bsp_N34357,
      ADR3 => i_can_bsp_data_len(0),
      O => CHOICE1181
    );
  i_can_bsp_i_can_acf_n00011535 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => CHOICE911,
      ADR1 => CHOICE930,
      ADR2 => CHOICE959,
      O => CHOICE961
    );
  i_can_bsp_n00941 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_overload_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR3 => i_can_bsp_error_frame_ended,
      O => i_can_bsp_n0094
    );
  i_can_bsp_i_can_acf_n00011190_SW0 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(2),
      ADR1 => i_can_bsp_rtr2,
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(2),
      O => N55208
    );
  i_can_bsp_data_for_fifo_1_29 : X_LUT4
    generic map(
      INIT => X"888F"
    )
    port map (
      ADR0 => i_can_bsp_id(4),
      ADR1 => i_can_bsp_N33524,
      ADR2 => i_can_bsp_header_len(1),
      ADR3 => N55292,
      O => CHOICE1207
    );
  i_can_bsp_i_can_acf_n00011289 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(4),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(4),
      ADR2 => i_can_bsp_tmp_fifo_0_4,
      O => CHOICE902
    );
  i_can_bsp_i_can_acf_n0001365 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(1),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(1),
      ADR2 => i_can_bsp_id(22),
      O => CHOICE665
    );
  i_can_bsp_bus_free_cnt_3_rt_561 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_bus_free_cnt(3),
      O => i_can_bsp_bus_free_cnt_3_rt,
      ADR1 => GND
    );
  i_can_bsp_i_can_acf_n00011435 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(5),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(5),
      ADR2 => i_can_bsp_tmp_fifo_0_5,
      O => CHOICE942
    );
  i_can_bsp_i_can_acf_n00011398 : X_LUT4
    generic map(
      INIT => X"FFA2"
    )
    port map (
      ADR0 => i_can_bsp_no_byte0,
      ADR1 => i_can_bsp_i_can_acf_n0144,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(6),
      ADR3 => N55312,
      O => CHOICE930
    );
  i_can_bsp_bus_free_cnt_1_rt_562 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_bus_free_cnt(1),
      O => i_can_bsp_bus_free_cnt_1_rt,
      ADR1 => GND
    );
  i_can_bsp_data_for_fifo_6_11_G : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(2),
      ADR1 => i_can_bsp_id(11),
      ADR2 => i_can_bsp_header_cnt(1),
      O => N55799
    );
  i_can_bsp_i_can_acf_n00011621 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(2),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(2),
      ADR2 => i_can_bsp_tmp_fifo_0_2,
      O => CHOICE987
    );
  i_can_bsp_go_rx_data21 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => i_can_bsp_remote_rq,
      ADR1 => N55332,
      ADR2 => i_can_bsp_N34368,
      ADR3 => i_can_bsp_N34271,
      O => i_can_bsp_go_rx_data
    );
  i_can_bsp_i_can_acf_n00011190 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE877,
      ADR1 => CHOICE883,
      ADR2 => CHOICE870,
      ADR3 => N55208,
      O => CHOICE885
    );
  i_can_bsp_go_rx_data21_SW0 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => CHOICE1360,
      ADR1 => i_can_bsp_bit_cnt_21,
      ADR2 => i_can_bsp_rx_dlc,
      O => N55332
    );
  i_can_registers_we_tx_data_117 : X_LUT4
    generic map(
      INIT => X"A800"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => CHOICE1470,
      ADR2 => CHOICE1473,
      ADR3 => i_can_registers_N31646,
      O => i_can_registers_we_tx_data_1
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_232 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(5),
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(6),
      O => N54658
    );
  i_can_bsp_i_can_acf_n0001725 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(3),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(3),
      ADR2 => i_can_bsp_id(6),
      O => CHOICE765
    );
  i_can_bsp_Ker342141 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_de_stuff,
      ADR1 => i_can_bsp_rx_dlc,
      ADR2 => i_can_btl_sample_point,
      O => i_can_bsp_N34216
    );
  i_can_bsp_i_can_acf_n0001738_SW0 : X_LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(1),
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(1),
      ADR2 => i_can_bsp_id(4),
      O => N55196
    );
  i_can_bsp_i_can_acf_n00012294 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHOICE1129,
      ADR1 => CHOICE1156,
      ADR2 => CHOICE1109,
      ADR3 => N55192,
      O => CHOICE1158
    );
  i_can_bsp_i_can_acf_n00011758 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => CHOICE996,
      ADR1 => CHOICE1002,
      ADR2 => i_can_bsp_no_byte0,
      ADR3 => CHOICE1018,
      O => CHOICE1019
    );
  i_can_bsp_n0110106 : X_LUT4
    generic map(
      INIT => X"00AE"
    )
    port map (
      ADR0 => CHOICE1397,
      ADR1 => CHOICE1410,
      ADR2 => i_can_bsp_rx_data,
      ADR3 => i_can_bsp_bit_de_stuff_tx,
      O => CHOICE1415
    );
  i_can_registers_data_out_tmp_7_143_SW1_G : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => i_can_bsp_tx_err_cnt(7),
      ADR2 => i_can_bsp_rx_err_cnt(7),
      O => N55794
    );
  i_can_registers_data_out_tmp_7_143 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => N54680,
      ADR1 => i_can_registers_N31666,
      ADR2 => N55244,
      ADR3 => CHOICE2104,
      O => CHOICE2106
    );
  i_can_registers_data_out_tmp_5_178 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2237,
      ADR1 => i_can_registers_n0068,
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(5),
      ADR3 => N54813,
      O => CHOICE2238
    );
  i_can_bsp_n048874 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(2),
      ADR1 => i_can_bsp_rx_err_cnt(3),
      ADR2 => i_can_bsp_rx_err_cnt(4),
      ADR3 => i_can_bsp_rx_err_cnt(5),
      O => CHOICE1892
    );
  i_can_registers_data_out_tmp_1_194 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2507,
      ADR1 => N54817,
      ADR2 => CHOICE2504,
      ADR3 => N54946,
      O => CHOICE2510
    );
  i_can_bsp_rst_tx_pointer40 : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => CHOICE1798,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(7),
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR3 => i_can_bsp_tx_pointer_26,
      O => CHOICE1804
    );
  i_can_bsp_n0154_3_5 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_23,
      ADR1 => i_can_bsp_bit_cnt_21,
      ADR2 => i_can_bsp_bit_cnt_22,
      ADR3 => i_can_bsp_N33893,
      O => CHOICE1569
    );
  i_can_registers_data_out_tmp_3_166_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => addr_latched_2_1,
      ADR1 => i_can_registers_N31881,
      ADR2 => addr_latched_4_2,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(3),
      O => N54833
    );
  i_can_registers_data_out_tmp_3_113 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2414,
      ADR1 => CHOICE2409,
      ADR2 => CHOICE2406,
      ADR3 => N54984,
      O => CHOICE2416
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_252 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG2_data_out(5),
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(6),
      O => N54666
    );
  i_can_bsp_n0488125_SW0 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => CHOICE1900,
      ADR1 => i_can_bsp_rx_err_cnt(0),
      ADR2 => i_can_bsp_tx_err_cnt(2),
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => N55248
    );
  i_can_registers_data_out_tmp_4_125 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => CHOICE2271,
      ADR1 => CHOICE2272,
      ADR2 => CHOICE2280,
      O => CHOICE2282
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_112 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG5_data_out(5),
      O => N54621
    );
  i_can_registers_data_out_tmp_0_50 : X_LUT4
    generic map(
      INIT => X"0819"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_1_1,
      ADR2 => N55133,
      ADR3 => N55131,
      O => CHOICE2014
    );
  i_can_registers_data_out_tmp_1_177 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_bsp_tx_err_cnt(1),
      ADR2 => i_can_registers_n0067,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(1),
      O => CHOICE2507
    );
  i_can_registers_data_out_tmp_6_138 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0071,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(6),
      ADR2 => i_can_registers_n0074,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(6),
      O => CHOICE2165
    );
  i_can_bsp_n0154_3_14 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_rx_dlc,
      ADR1 => i_can_bsp_rx_r0,
      ADR2 => i_can_bsp_rx_r1,
      ADR3 => i_can_bsp_overload_frame,
      O => CHOICE1573
    );
  i_can_registers_data_out_tmp_0_4 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_4_2,
      ADR1 => N55489,
      ADR2 => addr_latched_2_2,
      ADR3 => addr_latched_3_1,
      O => CHOICE1996
    );
  i_can_bsp_n068431 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(6),
      ADR1 => i_can_bsp_rx_err_cnt(7),
      O => CHOICE1747
    );
  i_can_registers_data_out_tmp_5_36 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2195,
      ADR1 => i_can_registers_n0062,
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(5),
      ADR3 => N55076,
      O => CHOICE2196
    );
  i_can_bsp_bit_err15 : X_LUT4
    generic map(
      INIT => X"7F2A"
    )
    port map (
      ADR0 => i_can_bsp_tx_state,
      ADR1 => i_can_bsp_arbitration_field,
      ADR2 => i_can_bsp_tx,
      ADR3 => i_can_bsp_error_frame,
      O => CHOICE1671
    );
  i_can_registers_data_out_tmp_1_172 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_4_2,
      ADR1 => N55493,
      ADR2 => addr_latched_2_2,
      ADR3 => addr_latched_3_1,
      O => CHOICE2504
    );
  i_can_registers_data_out_tmp_2_94_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_4_2,
      ADR1 => i_can_registers_N31875,
      ADR2 => addr_latched_2_2,
      ADR3 => i_can_registers_BUS_TIMING_1_REG_data_out(2),
      O => N54980
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_162 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG7_data_out(5),
      O => N54637
    );
  i_can_registers_data_out_tmp_5_92_SW0 : X_LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      ADR0 => addr_latched_2_3,
      ADR1 => i_can_registers_BUS_TIMING_0_REG_data_out(5),
      ADR2 => CHOICE2206,
      O => N54757
    );
  i_can_registers_data_out_tmp_5_172_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_2_1,
      ADR1 => i_can_registers_Ker318731_1,
      ADR2 => addr_latched_4_1,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(5),
      O => N54813
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_262 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(3),
      O => N54670
    );
  i_can_bsp_n0154_3_22 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_rx_eof,
      ADR1 => i_can_bsp_rx_rtr2,
      ADR2 => i_can_bsp_rx_ack,
      ADR3 => i_can_bsp_rx_ack_lim,
      O => CHOICE1578
    );
  i_can_registers_Ker3144446 : X_LUT4
    generic map(
      INIT => X"0810"
    )
    port map (
      ADR0 => addr_latched_2_3,
      ADR1 => addr_latched_3_2,
      ADR2 => addr_latched_4_3,
      ADR3 => N55519,
      O => CHOICE1926
    );
  i_can_bsp_bus_free_cnt_2_rt_563 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_bus_free_cnt(2),
      O => i_can_bsp_bus_free_cnt_2_rt,
      ADR1 => GND
    );
  i_can_registers_data_out_tmp_7_135 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => addr_latched_3_1,
      ADR2 => N55497,
      ADR3 => addr_latched_0_1,
      O => CHOICE2104
    );
  i_can_bsp_n0154_3_25 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_rx_crc,
      ADR1 => i_can_bsp_rx_crc_lim,
      ADR2 => i_can_bsp_rx_data,
      ADR3 => CHOICE1578,
      O => CHOICE1579
    );
  i_can_registers_data_out_tmp_3_94_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_4_1,
      ADR1 => i_can_registers_N31875,
      ADR2 => addr_latched_2_1,
      ADR3 => i_can_registers_BUS_TIMING_1_REG_data_out(3),
      O => N54984
    );
  i_can_bsp_n0154_3_29 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => CHOICE1573,
      ADR1 => CHOICE1579,
      O => CHOICE1580
    );
  rx_err_cnt_6_rt_564 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(6),
      O => rx_err_cnt_6_rt,
      ADR1 => GND
    );
  i_can_registers_data_out_tmp_6_83 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched_3_1,
      ADR1 => addr_latched_4_1,
      ADR2 => N55698,
      ADR3 => addr_latched_1_1,
      O => CHOICE2144
    );
  i_can_bsp_n0138_7_SW0 : X_LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      ADR0 => i_can_bsp_n0158(7),
      ADR1 => i_can_bsp_N33580,
      ADR2 => i_can_bsp_n0761(7),
      ADR3 => i_can_bsp_N33532,
      O => N51044
    );
  i_can_registers_data_out_tmp_4_102 : X_LUT4
    generic map(
      INIT => X"888F"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_waiting_for_bus_free,
      ADR2 => i_can_bsp_rx_idle,
      ADR3 => i_can_bsp_transmitting,
      O => CHOICE2278
    );
  i_can_registers_data_out_tmp_2_73 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2326,
      ADR2 => CHOICE2331,
      ADR3 => CHOICE2319,
      O => CHOICE2335
    );
  i_can_registers_data_out_tmp_1_153 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2487,
      ADR1 => CHOICE2490,
      ADR2 => CHOICE2494,
      ADR3 => N54713,
      O => CHOICE2497
    );
  i_can_bsp_bit_err27 : X_LUT4
    generic map(
      INIT => X"0BBB"
    )
    port map (
      ADR0 => i_can_bsp_enable_error_cnt2,
      ADR1 => i_can_bsp_n0222,
      ADR2 => i_can_bsp_n0237,
      ADR3 => i_can_bsp_node_error_passive,
      O => CHOICE1677
    );
  i_can_registers_data_out_tmp_6_133 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_bsp_tx_err_cnt(6),
      ADR2 => i_can_registers_n0067,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(6),
      O => CHOICE2162
    );
  i_can_registers_data_out_tmp_2_86 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched_3_1,
      ADR1 => addr_latched_4_2,
      ADR2 => N55115,
      ADR3 => addr_latched_1_1,
      O => CHOICE2338
    );
  i_can_bsp_rst_tx_pointer67 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_24,
      ADR1 => i_can_bsp_rx_data,
      ADR2 => i_can_bsp_tx_pointer_21,
      ADR3 => i_can_bsp_tx_pointer_22,
      O => CHOICE1811
    );
  i_can_bsp_n068445 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => CHOICE1747,
      ADR1 => i_can_bsp_rx_err_cnt(3),
      ADR2 => i_can_bsp_rx_err_cnt(4),
      ADR3 => i_can_bsp_rx_err_cnt(5),
      O => CHOICE1753
    );
  i_can_registers_data_out_tmp_7_20_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31666,
      ADR2 => addr_latched_1_1,
      ADR3 => i_can_registers_TX_DATA_REG4_data_out(7),
      O => N55088
    );
  i_can_bsp_rst_tx_pointer69 : X_LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      ADR0 => CHOICE1811,
      ADR1 => CHOICE1796,
      ADR2 => CHOICE1804,
      O => CHOICE1812
    );
  i_can_registers_we_tx_data_420_G : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31793,
      ADR2 => i_can_registers_N31731,
      ADR3 => i_can_registers_N31646,
      O => N55789
    );
  i_can_registers_data_out_tmp_3_73 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2394,
      ADR2 => CHOICE2399,
      ADR3 => CHOICE2387,
      O => CHOICE2403
    );
  i_can_registers_data_out_tmp_7_93_SW0 : X_LUT4
    generic map(
      INIT => X"888F"
    )
    port map (
      ADR0 => i_can_bsp_node_bus_off,
      ADR1 => N55963,
      ADR2 => N55123,
      ADR3 => N55145,
      O => N55141
    );
  i_can_registers_Ker3144451 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_registers_n0067,
      ADR1 => i_can_registers_n0076,
      ADR2 => i_can_registers_n0061,
      ADR3 => i_can_registers_n0062,
      O => CHOICE1929
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_251 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG2_data_out(7),
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(0),
      O => N54664
    );
  i_can_registers_data_out_tmp_5_158 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2219,
      ADR1 => CHOICE2222,
      ADR2 => CHOICE2226,
      ADR3 => CHOICE2229,
      O => CHOICE2231
    );
  i_can_registers_data_out_tmp_5_149 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0071,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(5),
      ADR2 => i_can_registers_n0074,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(5),
      O => CHOICE2229
    );
  i_can_bsp_n068459 : X_LUT4
    generic map(
      INIT => X"008A"
    )
    port map (
      ADR0 => CHOICE1753,
      ADR1 => i_can_bsp_go_error_frame,
      ADR2 => N55280,
      ADR3 => i_can_bsp_rx_err_cnt(8),
      O => CHOICE1755
    );
  i_can_registers_data_out_tmp_0_105 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0061,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(0),
      ADR2 => N55954,
      ADR3 => i_can_registers_TX_DATA_REG2_data_out(0),
      O => CHOICE2025
    );
  i_can_bsp_n0154_0_9 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_bsp_rx_r0,
      ADR1 => i_can_bsp_rx_r1,
      ADR2 => i_can_bsp_rx_ide,
      O => CHOICE1589
    );
  i_can_registers_data_out_tmp_1_153_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_2_2,
      ADR2 => addr_latched_4_2,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(1),
      O => N54713
    );
  i_can_registers_data_out_tmp_6_40_G_SW0 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => addr_latched(2),
      ADR1 => addr_latched(3),
      ADR2 => addr_latched(4),
      ADR3 => i_can_registers_TX_DATA_REG7_data_out(6),
      O => N55732
    );
  i_can_registers_data_out_tmp_1_132 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_1_1,
      ADR2 => addr_latched_3_1,
      ADR3 => N55531,
      O => CHOICE2490
    );
  i_can_bsp_n0154_0_13 : X_LUT4
    generic map(
      INIT => X"AAAE"
    )
    port map (
      ADR0 => CHOICE1589,
      ADR1 => i_can_bsp_error_frame,
      ADR2 => i_can_bsp_node_error_passive,
      ADR3 => i_can_bsp_node_bus_off,
      O => CHOICE1590
    );
  i_can_registers_Ker318211 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched(4),
      ADR1 => addr_latched(3),
      ADR2 => N55941,
      ADR3 => addr_latched(2),
      O => i_can_registers_N31823
    );
  i_can_bsp_bit_err51 : X_LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      ADR0 => i_can_bsp_tx_state,
      ADR1 => i_can_bsp_rx_ack,
      ADR2 => i_can_bsp_overload_frame,
      O => CHOICE1685
    );
  i_can_bsp_n048898 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_rx_err_cnt(6),
      ADR1 => i_can_bsp_tx_err_cnt(0),
      ADR2 => i_can_bsp_tx_err_cnt(1),
      ADR3 => i_can_bsp_tx_err_cnt(6),
      O => CHOICE1900
    );
  i_can_registers_data_out_tmp_2_40 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0067,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(2),
      ADR2 => N55939,
      ADR3 => i_can_registers_TX_DATA_REG0_data_out(2),
      O => CHOICE2329
    );
  i_can_registers_data_out_tmp_1_127 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0071,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(1),
      ADR2 => i_can_registers_n0074,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(1),
      O => CHOICE2487
    );
  i_can_bsp_n0154_0_20 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_rx_idle,
      ADR1 => i_can_bsp_rx_ack,
      ADR2 => i_can_bsp_rx_ack_lim,
      ADR3 => i_can_bsp_rx_dlc,
      O => CHOICE1593
    );
  i_can_registers_data_out_tmp_4_91 : X_LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      ADR0 => i_can_registers_N31881,
      ADR1 => addr_latched_4_1,
      ADR2 => N54925,
      ADR3 => N54923,
      O => CHOICE2271
    );
  i_can_bsp_bit_err55 : X_LUT4
    generic map(
      INIT => X"AEEE"
    )
    port map (
      ADR0 => CHOICE1685,
      ADR1 => i_can_bsp_tx_state,
      ADR2 => i_can_bsp_arbitration_field,
      ADR3 => i_can_bsp_tx,
      O => CHOICE1686
    );
  i_can_bsp_i_can_fifo_n00671 : X_LUT4
    generic map(
      INIT => X"AEEE"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0006,
      ADR1 => i_can_bsp_wr_fifo,
      ADR2 => i_can_bsp_i_can_fifo_N30666,
      ADR3 => i_can_bsp_i_can_fifo_fifo_cnt(6),
      O => i_can_bsp_i_can_fifo_n0067
    );
  i_can_registers_data_out_tmp_3_40 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0067,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(3),
      ADR2 => i_can_registers_n0076,
      ADR3 => i_can_registers_TX_DATA_REG0_data_out(3),
      O => CHOICE2397
    );
  i_can_registers_data_out_tmp_1_113 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2482,
      ADR1 => CHOICE2477,
      ADR2 => CHOICE2474,
      ADR3 => N54988,
      O => CHOICE2484
    );
  i_can_bsp_bit_err61 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => CHOICE1686,
      O => CHOICE1688
    );
  i_can_bsp_rst_tx_pointer112 : X_LUT4
    generic map(
      INIT => X"AAFE"
    )
    port map (
      ADR0 => i_can_bsp_rx_crc_lim,
      ADR1 => CHOICE1791,
      ADR2 => CHOICE1812,
      ADR3 => i_can_bsp_bit_de_stuff_tx,
      O => CHOICE1816
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_181 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(4),
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(5),
      O => N54643
    );
  i_can_registers_data_out_tmp_0_207 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2050,
      ADR1 => CHOICE2045,
      ADR2 => CHOICE2053,
      ADR3 => N54992,
      O => CHOICE2055
    );
  i_can_registers_data_out_tmp_0_9 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_bsp_tx_err_cnt(0),
      ADR2 => i_can_registers_n0067,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(0),
      O => CHOICE1999
    );
  i_can_bsp_n0684120_SW0 : X_LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      ADR0 => CHOICE1759,
      ADR1 => i_can_bsp_N34261,
      ADR2 => CHOICE1755,
      O => N55338
    );
  i_can_registers_data_out_tmp_2_29 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2325,
      ADR1 => i_can_registers_n0063,
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(2),
      ADR3 => N55080,
      O => CHOICE2326
    );
  i_can_bsp_n0684120 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => set_reset_mode,
      ADR1 => i_can_registers_N31823,
      ADR2 => CHOICE453,
      ADR3 => N55338,
      O => i_can_bsp_n0684
    );
  i_can_bsp_n0154_0_33 : X_LUT4
    generic map(
      INIT => X"1FFF"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_21,
      ADR1 => i_can_bsp_bit_cnt_22,
      ADR2 => i_can_bsp_bit_cnt_24,
      ADR3 => i_can_bsp_bit_cnt_23,
      O => CHOICE1600
    );
  i_can_registers_data_out_tmp_4_78 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2261,
      ADR2 => CHOICE2264,
      ADR3 => CHOICE2254,
      O => CHOICE2268
    );
  i_can_registers_data_out_tmp_3_29 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2393,
      ADR1 => i_can_registers_n0063,
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(3),
      ADR3 => N55084,
      O => CHOICE2394
    );
  i_can_registers_data_out_tmp_6_121 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_4_1,
      ADR1 => N55501,
      ADR2 => addr_latched_2_1,
      ADR3 => addr_latched_3_1,
      O => CHOICE2158
    );
  i_can_registers_data_out_tmp_1_166_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => addr_latched_2_2,
      ADR1 => i_can_registers_N31881,
      ADR2 => addr_latched_4_2,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(1),
      O => N54817
    );
  i_can_registers_data_out_tmp_5_10 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0076,
      ADR1 => i_can_registers_TX_DATA_REG0_data_out(5),
      ADR2 => i_can_registers_n0061,
      ADR3 => i_can_registers_TX_DATA_REG1_data_out(5),
      O => CHOICE2187
    );
  i_can_registers_data_out_tmp_7_195 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2106,
      ADR2 => CHOICE2113,
      ADR3 => N55025,
      O => CHOICE2116
    );
  i_can_registers_data_out_tmp_0_45 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_1_1,
      ADR2 => N55535,
      ADR3 => addr_latched_2_2,
      O => CHOICE2011
    );
  i_can_bsp_n0154_0_40 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_25,
      ADR1 => i_can_bsp_bit_cnt_26,
      ADR2 => i_can_bsp_rx_id2,
      O => CHOICE1604
    );
  tx_err_cnt_6_rt_565 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(6),
      O => tx_err_cnt_6_rt,
      ADR1 => GND
    );
  i_can_registers_we_tx_data_227_G : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => i_can_registers_N31709,
      ADR1 => i_can_registers_N31881,
      ADR2 => i_can_registers_N31646,
      O => N55784
    );
  i_can_registers_data_out_tmp_0_30_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_2_2,
      ADR2 => addr_latched_4_2,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(0),
      O => N54701
    );
  i_can_registers_data_out_tmp_5_30_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => addr_latched_0_1,
      ADR2 => i_can_registers_N31666,
      ADR3 => i_can_registers_TX_DATA_REG3_data_out(5),
      O => N55076
    );
  i_can_registers_data_out_tmp_3_23_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31666,
      ADR2 => addr_latched_1_1,
      ADR3 => i_can_registers_TX_DATA_REG4_data_out(3),
      O => N55084
    );
  i_can_registers_data_out_tmp_5_132 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0063,
      ADR1 => i_can_registers_ERROR_WARNING_REG_data_out(5),
      ADR2 => N55950,
      ADR3 => i_can_bsp_rx_err_cnt(5),
      O => CHOICE2222
    );
  i_can_bsp_rst_tx_pointer140 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_overload_frame,
      ADR1 => i_can_registers_MODE_REG0_data_out(0),
      ADR2 => i_can_bsp_error_frame,
      ADR3 => i_can_bsp_go_rx_idle,
      O => CHOICE1820
    );
  i_can_registers_data_out_tmp_7_26 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2071,
      ADR1 => i_can_registers_n0063,
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(7),
      ADR3 => N55088,
      O => CHOICE2072
    );
  i_can_registers_data_out_tmp_3_86 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched_3_1,
      ADR1 => addr_latched_4_2,
      ADR2 => N55119,
      ADR3 => addr_latched_1_1,
      O => CHOICE2406
    );
  i_can_registers_data_out_tmp_2_172_SW1 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => addr_latched_1_3,
      ADR2 => i_can_registers_ERROR_WARNING_REG_data_out(2),
      ADR3 => i_can_bsp_rx_err_cnt(2),
      O => N55505
    );
  i_can_bsp_rst_tx_pointer142 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_btl_go_sync1_2,
      ADR1 => CHOICE1816,
      ADR2 => CHOICE1820,
      O => i_can_bsp_rst_tx_pointer
    );
  i_can_bsp_bit_err98 : X_LUT4
    generic map(
      INIT => X"0BFF"
    )
    port map (
      ADR0 => i_can_bsp_enable_overload_cnt2,
      ADR1 => i_can_bsp_n0221,
      ADR2 => i_can_bsp_n0242,
      ADR3 => i_can_bsp_overload_frame,
      O => CHOICE1695
    );
  i_can_bsp_n0154_0_65 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE1590,
      ADR1 => CHOICE1600,
      ADR2 => CHOICE1604,
      ADR3 => CHOICE1593,
      O => CHOICE1607
    );
  i_can_registers_data_out_tmp_4_139_SW1 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => addr_latched_1_3,
      ADR2 => i_can_registers_ERROR_WARNING_REG_data_out(4),
      ADR3 => i_can_bsp_rx_err_cnt(4),
      O => N55481
    );
  i_can_registers_data_out_tmp_3_14 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2382,
      ADR1 => i_can_registers_n0068,
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(3),
      ADR3 => CHOICE2385,
      O => CHOICE2387
    );
  i_can_registers_data_out_tmp_6_116 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N55959,
      ADR1 => i_can_registers_IRQ_EN_REG_data_out(6),
      ADR2 => i_can_registers_n0062,
      ADR3 => i_can_bsp_error_capture_code(6),
      O => CHOICE2155
    );
  i_can_registers_data_out_tmp_2_14 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2314,
      ADR1 => i_can_registers_n0068,
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(2),
      ADR3 => CHOICE2317,
      O => CHOICE2319
    );
  i_can_registers_data_out_tmp_1_73 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2462,
      ADR2 => CHOICE2467,
      ADR3 => CHOICE2455,
      O => CHOICE2471
    );
  i_can_registers_Ker3144491_SW3 : X_LUT4
    generic map(
      INIT => X"F3F7"
    )
    port map (
      ADR0 => N54838,
      ADR1 => i_can_registers_N31748,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => N54972
    );
  i_can_bsp_bit_err129_SW0 : X_LUT3
    generic map(
      INIT => X"D9"
    )
    port map (
      ADR0 => i_can_btl_sampled_bit_1,
      ADR1 => i_can_bsp_tx,
      ADR2 => i_can_bsp_rx_ack,
      O => N55180
    );
  i_can_bsp_go_rx_crc1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_bsp_rx_dlc,
      ADR1 => i_can_bsp_bit_cnt_21,
      O => CHOICE1611
    );
  i_can_registers_data_out_tmp_4_51 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0068,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(4),
      ADR2 => i_can_registers_n0069,
      ADR3 => i_can_registers_TX_DATA_REG9_data_out(4),
      O => CHOICE2264
    );
  i_can_bsp_i_can_fifo_n007529_G : X_LUT3
    generic map(
      INIT => X"0B"
    )
    port map (
      ADR0 => i_can_bsp_wr_fifo,
      ADR1 => i_can_bsp_i_can_fifo_wr_q,
      ADR2 => info_empty,
      O => N55779
    );
  i_can_registers_data_out_tmp_5_127 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0058,
      ADR1 => i_can_registers_IRQ_EN_REG_data_out(5),
      ADR2 => i_can_registers_n0062,
      ADR3 => i_can_bsp_error_capture_code(5),
      O => CHOICE2219
    );
  i_can_bsp_n06884 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => N54519,
      ADR1 => N54521,
      ADR2 => N54523,
      ADR3 => N54525,
      O => CHOICE1824
    );
  i_can_registers_data_out_tmp_7_88 : X_LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      ADR0 => i_can_registers_N31528,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(7),
      ADR2 => i_can_registers_Ker318731_1,
      ADR3 => N54761,
      O => CHOICE2087
    );
  i_can_bsp_n048812 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => N54519,
      ADR1 => N54521,
      ADR2 => N54523,
      ADR3 => N54525,
      O => CHOICE1869
    );
  i_can_registers_data_out_tmp_6_26 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2128,
      ADR1 => N55948,
      ADR2 => i_can_registers_TX_DATA_REG6_data_out(6),
      ADR3 => N54942,
      O => CHOICE2132
    );
  i_can_registers_data_out_tmp_6_121_SW1 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => addr_latched_1_3,
      ADR2 => i_can_registers_ERROR_WARNING_REG_data_out(6),
      ADR3 => i_can_bsp_rx_err_cnt(6),
      O => N55501
    );
  i_can_registers_data_out_tmp_3_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => N55968,
      ADR1 => i_can_registers_MODE_REG_BASIC_data_out(2),
      O => CHOICE2382
    );
  i_can_registers_data_out_tmp_5_19_SW0 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_registers_n0047,
      ADR1 => i_can_registers_n0067,
      ADR2 => i_can_registers_TX_DATA_REG7_data_out(5),
      ADR3 => N55961,
      O => N55276
    );
  i_can_registers_data_out_tmp_7_12 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_registers_n0057,
      ADR1 => i_can_registers_n0069,
      ADR2 => i_can_registers_TX_DATA_REG9_data_out(7),
      ADR3 => CHOICE2063,
      O => CHOICE2065
    );
  i_can_bsp_n06889 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => N54527,
      ADR1 => N54529,
      ADR2 => N54531,
      ADR3 => N54533,
      O => CHOICE1827
    );
  i_can_registers_data_out_tmp_2_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_registers_n0047,
      ADR1 => i_can_registers_MODE_REG_BASIC_data_out(1),
      O => CHOICE2314
    );
  i_can_registers_data_out_tmp_1_40 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0067,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(1),
      ADR2 => i_can_registers_n0076,
      ADR3 => i_can_registers_TX_DATA_REG0_data_out(1),
      O => CHOICE2465
    );
  i_can_registers_data_out_tmp_4_40 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2260,
      ADR1 => i_can_registers_n0062,
      ADR2 => i_can_registers_TX_DATA_REG2_data_out(4),
      ADR3 => N55092,
      O => CHOICE2261
    );
  i_can_bsp_go_rx_crc14 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => i_can_bsp_data_len(0),
      ADR1 => i_can_bsp_data_len(1),
      ADR2 => i_can_bsp_data_len(2),
      ADR3 => i_can_btl_sampled_bit_1,
      O => CHOICE1618
    );
  i_can_registers_data_out_tmp_0_86 : X_LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2006,
      ADR2 => CHOICE2009,
      ADR3 => CHOICE2016,
      O => CHOICE2019
    );
  i_can_bsp_n0488125 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => N55248,
      ADR1 => CHOICE1892,
      ADR2 => i_can_bsp_N34191,
      ADR3 => CHOICE1885,
      O => CHOICE1908
    );
  i_can_registers_data_out_tmp_5_113 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2211,
      ADR1 => i_can_registers_N31509,
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(5),
      ADR3 => N54962,
      O => CHOICE2216
    );
  i_can_registers_data_out_tmp_6_26_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31666,
      ADR1 => addr_latched_0_2,
      ADR2 => addr_latched_1_3,
      ADR3 => i_can_registers_TX_DATA_REG5_data_out(6),
      O => N54942
    );
  i_can_registers_data_out_tmp_4_185 : X_LUT4
    generic map(
      INIT => X"0819"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_1_1,
      ADR2 => N55056,
      ADR3 => N55054,
      O => CHOICE2303
    );
  i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_201 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_n0021(3),
      ADR1 => i_can_bsp_i_can_fifo_length_info(3),
      ADR2 => i_can_bsp_i_can_fifo_n0034,
      O => i_can_bsp_i_can_fifo_Maddsub_n0020_inst_lut3_20
    );
  i_can_registers_data_out_tmp_1_29 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2461,
      ADR1 => i_can_registers_n0063,
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(1),
      ADR3 => N55096,
      O => CHOICE2462
    );
  i_can_bsp_go_rx_crc31 : X_LUT4
    generic map(
      INIT => X"A800"
    )
    port map (
      ADR0 => i_can_bsp_N34368,
      ADR1 => i_can_bsp_remote_rq,
      ADR2 => CHOICE1618,
      ADR3 => CHOICE1611,
      O => CHOICE1621
    );
  i_can_registers_data_out_tmp_2_23_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31666,
      ADR2 => addr_latched_1_1,
      ADR3 => i_can_registers_TX_DATA_REG4_data_out(2),
      O => N55080
    );
  i_can_bsp_n068834_SW0 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE1869,
      ADR1 => CHOICE1824,
      ADR2 => CHOICE1827,
      ADR3 => CHOICE1876,
      O => N55658
    );
  i_can_bsp_Madd_n0224_inst_lut2_881 : X_LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      ADR0 => i_can_bsp_header_len(1),
      ADR1 => i_can_bsp_remote_rq,
      ADR2 => i_can_bsp_n0229(2),
      ADR3 => i_can_bsp_data_len(3),
      O => i_can_bsp_Madd_n0224_inst_lut2_88
    );
  i_can_bsp_n068834 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_tx_err_cnt(8),
      ADR1 => N55934,
      ADR2 => N55658,
      ADR3 => CHOICE1908,
      O => i_can_bsp_n0688
    );
  i_can_bsp_bit_err129 : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => i_can_bsp_n0241,
      ADR2 => i_can_bsp_error_frame,
      ADR3 => N55180,
      O => CHOICE1707
    );
  i_can_registers_data_out_tmp_4_34_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => addr_latched_0_1,
      ADR2 => i_can_registers_N31666,
      ADR3 => i_can_registers_TX_DATA_REG3_data_out(4),
      O => N55092
    );
  i_can_bsp_go_rx_inter_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => i_can_bsp_eof_cnt(0),
      ADR1 => i_can_btl_sample_point,
      ADR2 => i_can_bsp_rx_eof,
      ADR3 => i_can_bsp_eof_cnt(1),
      O => N49742
    );
  i_can_bsp_go_rx_inter_566 : X_LUT4
    generic map(
      INIT => X"EEFE"
    )
    port map (
      ADR0 => N56099,
      ADR1 => i_can_bsp_error_frame_ended,
      ADR2 => i_can_bsp_eof_cnt(2),
      ADR3 => N49742,
      O => i_can_bsp_go_rx_inter
    );
  i_can_bsp_reset_wr_fifo35 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_bsp_Madd_n0224_inst_lut2_86,
      ADR1 => i_can_bsp_data_cnt_17,
      ADR2 => i_can_bsp_n0224(1),
      ADR3 => i_can_bsp_data_cnt_18,
      O => CHOICE1778
    );
  i_can_bsp_bit_err140 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => CHOICE1695,
      ADR1 => CHOICE1707,
      O => CHOICE1708
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_172 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG7_data_out(1),
      O => N54641
    );
  i_can_registers_data_out_tmp_7_163_SW1 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(7),
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(7),
      ADR3 => addr_latched_4_3,
      O => N54931
    );
  i_can_registers_data_out_tmp_1_14 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2450,
      ADR1 => i_can_registers_n0068,
      ADR2 => i_can_registers_TX_DATA_REG8_data_out(1),
      ADR3 => CHOICE2453,
      O => CHOICE2455
    );
  i_can_registers_data_out_tmp_0_193 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0060,
      ADR1 => i_can_registers_BUS_TIMING_1_REG_data_out(0),
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(0),
      ADR3 => i_can_registers_N31509,
      O => CHOICE2050
    );
  i_can_registers_data_out_tmp_4_185_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => addr_latched_4_3,
      ADR1 => addr_latched_2_4,
      ADR2 => addr_latched_3_2,
      ADR3 => i_can_bsp_error_capture_code(4),
      O => N55054
    );
  i_can_registers_data_out_tmp_2_194 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2371,
      ADR1 => N54821,
      ADR2 => CHOICE2368,
      ADR3 => N54950,
      O => CHOICE2374
    );
  i_can_bsp_n048825 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => N54527,
      ADR1 => N54529,
      ADR2 => N54531,
      ADR3 => N54533,
      O => CHOICE1876
    );
  i_can_registers_data_out_tmp_7_164 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2112,
      ADR1 => i_can_registers_n0068,
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(7),
      ADR3 => N54825,
      O => CHOICE2113
    );
  i_can_registers_data_out_tmp_0_45_SW0 : X_LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      ADR0 => i_can_registers_IRQ_EN_REG_data_out(0),
      ADR1 => addr_latched_4_4,
      ADR2 => addr_latched_3_2,
      O => N55535
    );
  i_can_btl_Mcompar_n0041_inst_lut4_21 : X_LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(5),
      ADR1 => i_can_btl_n0098(4),
      ADR2 => i_can_btl_quant_cnt(4),
      O => i_can_btl_Mcompar_n0041_inst_lut4_2
    );
  i_can_bsp_Mmux_n0009_inst_mux_f5_122 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21_1,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(0),
      ADR2 => i_can_registers_TX_DATA_REG5_data_out(1),
      O => N54625
    );
  i_can_registers_data_out_tmp_5_99 : X_LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      ADR0 => i_can_registers_N31528,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(5),
      ADR2 => i_can_registers_Ker318731_1,
      ADR3 => N54765,
      O => CHOICE2211
    );
  i_can_registers_data_out_tmp_4_198 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2303,
      ADR1 => N54829,
      ADR2 => CHOICE2300,
      ADR3 => N54954,
      O => CHOICE2306
    );
  i_can_registers_we_tx_data_518_SW1 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => addr_latched_3_1,
      ADR1 => addr_latched_0_1,
      ADR2 => i_can_registers_N31646,
      ADR3 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => N55726
    );
  i_can_registers_data_out_tmp_1_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_registers_n0047,
      ADR1 => i_can_registers_MODE_REG_BASIC_data_out(0),
      O => CHOICE2450
    );
  i_can_registers_data_out_tmp_2_177 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_bsp_tx_err_cnt(2),
      ADR2 => i_can_registers_n0067,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(2),
      O => CHOICE2371
    );
  i_can_registers_data_out_tmp_7_83_SW1 : X_LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      ADR0 => addr_latched_1_3,
      ADR1 => addr_latched_3_2,
      ADR2 => addr_latched_4_3,
      O => N55145
    );
  i_can_registers_data_out_tmp_4_12 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0047,
      ADR1 => i_can_registers_MODE_REG_BASIC_data_out(3),
      ADR2 => i_can_registers_n0061,
      ADR3 => i_can_registers_TX_DATA_REG1_data_out(4),
      O => CHOICE2252
    );
  i_can_bsp_reset_wr_fifo49 : X_LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      ADR0 => i_can_bsp_n0224(2),
      ADR1 => i_can_bsp_data_cnt_19,
      ADR2 => CHOICE1778,
      O => CHOICE1784
    );
  i_can_registers_data_out_tmp_6_187 : X_LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2167,
      ADR2 => CHOICE2170,
      ADR3 => CHOICE2173,
      O => CHOICE2176
    );
  i_can_bsp_n00636 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_overload_frame,
      ADR1 => i_can_bsp_go_rx_ack,
      ADR2 => i_can_bsp_go_rx_eof,
      ADR3 => i_can_bsp_go_rx_dlc,
      O => CHOICE1634
    );
  i_can_registers_data_out_tmp_6_93 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(6),
      ADR1 => i_can_registers_N31509,
      ADR2 => i_can_registers_n0056,
      ADR3 => error_status,
      O => CHOICE2150
    );
  i_can_registers_data_out_tmp_0_136 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2025,
      ADR1 => CHOICE2028,
      ADR2 => CHOICE2032,
      ADR3 => CHOICE2035,
      O => CHOICE2037
    );
  i_can_registers_data_out_tmp_2_172 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_4_2,
      ADR1 => N55505,
      ADR2 => addr_latched_2_2,
      ADR3 => addr_latched_3_1,
      O => CHOICE2368
    );
  i_can_registers_data_out_tmp_0_21 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0071,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG1_data_out(0),
      ADR2 => i_can_registers_n0074,
      ADR3 => i_can_bsp_i_can_fifo_info_cnt(0),
      O => CHOICE2003
    );
  i_can_registers_data_out_tmp_7_40 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_registers_n0068,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(7),
      ADR2 => CHOICE2075,
      O => CHOICE2077
    );
  i_can_registers_data_out_tmp_7_143_SW0_G : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => addr_latched_4_3,
      ADR1 => addr_latched_1_2,
      ADR2 => addr_latched_2_2,
      ADR3 => addr_latched_3_2,
      O => N55774
    );
  i_can_bsp_n006313 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_data,
      ADR1 => i_can_bsp_go_rx_id1,
      ADR2 => i_can_bsp_go_rx_id2,
      ADR3 => CHOICE1634,
      O => CHOICE1636
    );
  i_can_registers_data_out_tmp_5_104_SW0_SW0 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_2_3,
      ADR2 => i_can_registers_error_passive_irq,
      O => N55070
    );
  i_can_registers_data_out_tmp_4_7 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0067,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(4),
      ADR2 => i_can_registers_n0076,
      ADR3 => i_can_registers_TX_DATA_REG0_data_out(4),
      O => CHOICE2249
    );
  i_can_bsp_err0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => i_can_bsp_stuff_err_latched,
      ADR1 => i_can_bsp_bit_err_latched,
      O => CHOICE1646
    );
  i_can_registers_data_out_tmp_1_94_SW0 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_4_2,
      ADR1 => i_can_registers_N31875,
      ADR2 => addr_latched_2_2,
      ADR3 => i_can_registers_BUS_TIMING_1_REG_data_out(1),
      O => N54988
    );
  i_can_bsp_Mmux_n0008_inst_mux_f5_242 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_21,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(1),
      ADR2 => i_can_registers_TX_DATA_REG1_data_out(2),
      O => N54662
    );
  i_can_registers_data_out_tmp_4_180 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_1_1,
      ADR2 => N55539,
      ADR3 => addr_latched_2_1,
      O => CHOICE2300
    );
  i_can_registers_data_out_tmp_6_88 : X_LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      ADR0 => i_can_registers_N31528,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(6),
      ADR2 => i_can_registers_Ker318731_1,
      ADR3 => N54769,
      O => CHOICE2147
    );
  i_can_registers_data_out_tmp_3_177 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_bsp_tx_err_cnt(3),
      ADR2 => i_can_registers_n0067,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(3),
      O => CHOICE2439
    );
  i_can_registers_data_out_tmp_1_86 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched_3_1,
      ADR1 => addr_latched_4_2,
      ADR2 => N55127,
      ADR3 => addr_latched_1_1,
      O => CHOICE2474
    );
  i_can_registers_data_out_tmp_3_194 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2439,
      ADR1 => N54833,
      ADR2 => CHOICE2436,
      ADR3 => N54958,
      O => CHOICE2442
    );
  i_can_btl_go_seg12 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_btl_resync,
      ADR1 => i_can_btl_seg2,
      ADR2 => i_can_btl_resync_latched,
      O => CHOICE1641
    );
  i_can_bsp_n068519 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => i_can_bsp_error_flag_over_blocked,
      ADR1 => i_can_bsp_rule3_exc1_2,
      ADR2 => i_can_bsp_rule3_exc2,
      ADR3 => i_can_bsp_error_flag_over,
      O => CHOICE1841
    );
  i_can_registers_data_out_tmp_2_166_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => addr_latched_2_2,
      ADR1 => i_can_registers_N31881,
      ADR2 => addr_latched_4_2,
      ADR3 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(2),
      O => N54821
    );
  i_can_registers_data_out_tmp_5_86 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_waiting_for_bus_free,
      ADR2 => i_can_bsp_transmitting,
      O => CHOICE2206
    );
  i_can_registers_data_out_tmp_2_153 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2351,
      ADR1 => CHOICE2354,
      ADR2 => CHOICE2358,
      ADR3 => N54717,
      O => CHOICE2361
    );
  i_can_bsp_n01551 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => i_can_registers_N31823,
      ADR1 => addr_latched_1_1,
      ADR2 => N42338,
      ADR3 => addr_latched_0_1,
      O => i_can_bsp_n0155
    );
  i_can_registers_data_out_tmp_0_122 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(0),
      ADR2 => i_can_registers_n0066,
      ADR3 => i_can_registers_TX_DATA_REG6_data_out(0),
      O => CHOICE2032
    );
  i_can_registers_data_out_tmp_6_166 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_registers_N31881,
      ADR1 => N54937,
      ADR2 => N54935,
      ADR3 => addr_latched_2_1,
      O => CHOICE2173
    );
  i_can_registers_data_out_tmp_6_12 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_registers_n0057,
      ADR1 => i_can_registers_n0069,
      ADR2 => i_can_registers_TX_DATA_REG9_data_out(6),
      ADR3 => CHOICE2123,
      O => CHOICE2125
    );
  i_can_registers_data_out_tmp_4_0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_registers_n0066,
      ADR1 => i_can_registers_TX_DATA_REG6_data_out(4),
      O => CHOICE2245
    );
  baud_r_presc_3_rt_567 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(3),
      O => baud_r_presc_3_rt,
      ADR1 => GND
    );
  i_can_btl_quant_cnt_2_rt_568 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(2),
      O => i_can_btl_quant_cnt_2_rt,
      ADR1 => GND
    );
  i_can_btl_quant_cnt_1_rt_569 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(1),
      O => i_can_btl_quant_cnt_1_rt,
      ADR1 => GND
    );
  baud_r_presc_1_rt_570 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(1),
      O => baud_r_presc_1_rt,
      ADR1 => GND
    );
  baud_r_presc_5_rt_571 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(5),
      O => baud_r_presc_5_rt,
      ADR1 => GND
    );
  baud_r_presc_2_rt_572 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(2),
      O => baud_r_presc_2_rt,
      ADR1 => GND
    );
  baud_r_presc_4_rt_573 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_registers_BUS_TIMING_0_REG_data_out(4),
      O => baud_r_presc_4_rt,
      ADR1 => GND
    );
  i_can_btl_n0007_rt_574 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_btl_n0007,
      O => i_can_btl_n0007_rt,
      ADR1 => GND
    );
  reset_mode_rt_575 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      O => reset_mode_rt,
      ADR1 => GND
    );
  i_can_btl_sampled_bit_1_576 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_btl_n0021,
      CE => i_can_btl_n0081,
      SET => i_can_btl_sampled_bit_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_btl_sampled_bit_1,
      RST => GND
    );
  addr_latched_0_1_577 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => ale_i_IBUF,
      RST => addr_latched_0_1_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_0_1_C,
      O => addr_latched_0_1,
      SET => GND
    );
  addr_latched_0_2_578 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => ale_i_IBUF,
      RST => addr_latched_0_2_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_0_2_C,
      O => addr_latched_0_2,
      SET => GND
    );
  addr_latched_2_1_579 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => ale_i_IBUF,
      RST => addr_latched_2_1_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_2_1_C,
      O => addr_latched_2_1,
      SET => GND
    );
  addr_latched_2_2_580 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => ale_i_IBUF,
      RST => addr_latched_2_2_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_2_2_C,
      O => addr_latched_2_2,
      SET => GND
    );
  addr_latched_2_3_581 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => ale_i_IBUF,
      RST => addr_latched_2_3_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_2_3_C,
      O => addr_latched_2_3,
      SET => GND
    );
  addr_latched_2_4_582 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54523,
      CE => ale_i_IBUF,
      RST => addr_latched_2_4_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_2_4_C,
      O => addr_latched_2_4,
      SET => GND
    );
  addr_latched_4_1_583 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => ale_i_IBUF,
      RST => addr_latched_4_1_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_4_1_C,
      O => addr_latched_4_1,
      SET => GND
    );
  addr_latched_4_2_584 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => ale_i_IBUF,
      RST => addr_latched_4_2_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_4_2_C,
      O => addr_latched_4_2,
      SET => GND
    );
  addr_latched_4_3_585 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => ale_i_IBUF,
      RST => addr_latched_4_3_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_4_3_C,
      O => addr_latched_4_3,
      SET => GND
    );
  addr_latched_4_4_586 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54527,
      CE => ale_i_IBUF,
      RST => addr_latched_4_4_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_4_4_C,
      O => addr_latched_4_4,
      SET => GND
    );
  addr_latched_1_1_587 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => ale_i_IBUF,
      RST => addr_latched_1_1_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_1_1_C,
      O => addr_latched_1_1,
      SET => GND
    );
  addr_latched_1_2_588 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => ale_i_IBUF,
      RST => addr_latched_1_2_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_1_2_C,
      O => addr_latched_1_2,
      SET => GND
    );
  addr_latched_1_3_589 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54521,
      CE => ale_i_IBUF,
      RST => addr_latched_1_3_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_1_3_C,
      O => addr_latched_1_3,
      SET => GND
    );
  addr_latched_3_1_590 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => ale_i_IBUF,
      RST => addr_latched_3_1_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_3_1_C,
      O => addr_latched_3_1,
      SET => GND
    );
  addr_latched_3_2_591 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54525,
      CE => ale_i_IBUF,
      RST => addr_latched_3_2_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_3_2_C,
      O => addr_latched_3_2,
      SET => GND
    );
  i_can_btl_go_sync1_2_592 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_btl_resync,
      ADR1 => i_can_btl_n0035,
      ADR2 => i_can_btl_seg2,
      ADR3 => N56020,
      O => i_can_btl_go_sync1_2
    );
  addr_latched_0_3_593 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N54519,
      CE => ale_i_IBUF,
      RST => addr_latched_0_3_GSR_OR,
      CLK => NlwInverterSignal_addr_latched_0_3_C,
      O => addr_latched_0_3,
      SET => GND
    );
  i_can_registers_data_out_tmp_7_143_SW0 : X_MUX2
    port map (
      IA => N55772,
      IB => N55774,
      SEL => addr_latched_0_2,
      O => N54680
    );
  i_can_registers_data_out_tmp_7_143_SW0_F : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_4_3,
      ADR1 => addr_latched_2_2,
      ADR2 => i_can_registers_N31793,
      ADR3 => i_can_registers_IRQ_EN_REG_data_out(7),
      O => N55772
    );
  i_can_bsp_i_can_fifo_n007529 : X_MUX2
    port map (
      IA => N55777,
      IB => N55779,
      SEL => i_can_registers_COMMAND_REG_data_out(0),
      O => i_can_bsp_i_can_fifo_n0075
    );
  i_can_bsp_i_can_fifo_n007529_F : X_LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      ADR0 => i_can_bsp_i_can_fifo_wr_q,
      ADR1 => i_can_bsp_i_can_fifo_info_cnt(6),
      ADR2 => i_can_bsp_i_can_fifo_N30671,
      ADR3 => i_can_bsp_wr_fifo,
      O => N55777
    );
  i_can_registers_we_tx_data_227 : X_MUX2
    port map (
      IA => N55782,
      IB => N55784,
      SEL => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_registers_we_tx_data_2
    );
  i_can_registers_we_tx_data_227_F : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => addr_latched_0_1,
      ADR2 => i_can_registers_N31823,
      ADR3 => i_can_registers_N31646,
      O => N55782
    );
  i_can_registers_we_tx_data_420 : X_MUX2
    port map (
      IA => N55787,
      IB => N55789,
      SEL => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_registers_we_tx_data_4
    );
  i_can_registers_we_tx_data_420_F : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => addr_latched_1_1,
      ADR2 => i_can_registers_N31823,
      ADR3 => i_can_registers_N31646,
      O => N55787
    );
  i_can_registers_data_out_tmp_7_143_SW1 : X_MUX2
    port map (
      IA => N55792,
      IB => N55794,
      SEL => addr_latched_1_1,
      O => N55244
    );
  i_can_registers_data_out_tmp_7_143_SW1_F : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => i_can_registers_ERROR_WARNING_REG_data_out(7),
      ADR2 => i_can_bsp_error_capture_code(7),
      O => N55792
    );
  i_can_bsp_data_for_fifo_6_11 : X_MUX2
    port map (
      IA => N55797,
      IB => N55799,
      SEL => i_can_bsp_header_cnt(0),
      O => CHOICE1297
    );
  i_can_bsp_data_for_fifo_6_11_F : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(1),
      ADR1 => i_can_bsp_header_cnt(2),
      ADR2 => i_can_bsp_id(3),
      O => N55797
    );
  i_can_registers_we_tx_data_622 : X_MUX2
    port map (
      IA => N55802,
      IB => N55804,
      SEL => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_registers_we_tx_data_6
    );
  i_can_registers_we_tx_data_622_F : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31646,
      ADR2 => i_can_registers_N31709,
      ADR3 => i_can_registers_N31793,
      O => N55802
    );
  i_can_bsp_data_for_fifo_4_10 : X_MUX2
    port map (
      IA => N55807,
      IB => N55809,
      SEL => i_can_bsp_header_cnt(0),
      O => CHOICE1219
    );
  i_can_bsp_data_for_fifo_4_10_F : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(1),
      ADR1 => i_can_bsp_header_cnt(2),
      ADR2 => i_can_bsp_id(1),
      O => N55807
    );
  i_can_bsp_form_err58 : X_MUX2
    port map (
      IA => N55812,
      IB => N55814,
      SEL => i_can_btl_sampled_bit_1,
      O => i_can_bsp_form_err
    );
  i_can_bsp_form_err58_F : X_LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      ADR0 => i_can_btl_sample_point,
      ADR1 => CHOICE1530,
      ADR2 => CHOICE1529,
      O => N55812
    );
  i_can_bsp_data_for_fifo_5_10 : X_MUX2
    port map (
      IA => N55817,
      IB => N55819,
      SEL => i_can_bsp_header_cnt(0),
      O => CHOICE1237
    );
  i_can_bsp_data_for_fifo_5_10_F : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(1),
      ADR1 => i_can_bsp_header_cnt(2),
      ADR2 => i_can_bsp_id(2),
      O => N55817
    );
  i_can_bsp_Mcompar_storing_header_ALB42 : X_MUX2
    port map (
      IA => N55822,
      IB => N55824,
      SEL => i_can_bsp_header_cnt(2),
      O => i_can_bsp_storing_header
    );
  i_can_bsp_Mcompar_storing_header_ALB42_F : X_LUT4
    generic map(
      INIT => X"A2FF"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_bsp_header_cnt(0),
      ADR2 => i_can_bsp_ide,
      ADR3 => i_can_bsp_header_cnt(1),
      O => N55822
    );
  i_can_registers_Mcompar_n0015_AEB126 : X_MUX2
    port map (
      IA => N55827,
      IB => N55829,
      SEL => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(2),
      O => i_can_registers_n0015
    );
  i_can_registers_Mcompar_n0015_AEB126_F : X_LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      ADR0 => N55240,
      ADR1 => i_can_registers_CLOCK_DIVIDER_REG_LOW_data_out(0),
      ADR2 => i_can_registers_clkout_cnt(0),
      O => N55827
    );
  i_can_registers_we_tx_data_319 : X_MUX2
    port map (
      IA => N55832,
      IB => N55834,
      SEL => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_registers_we_tx_data_3
    );
  i_can_registers_we_tx_data_319_F : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_1_1,
      ADR1 => addr_latched_0_1,
      ADR2 => i_can_registers_N31646,
      ADR3 => i_can_registers_N31823,
      O => N55832
    );
  i_can_registers_data_out_tmp_0_1761 : X_MUX2
    port map (
      IA => N55837,
      IB => N55839,
      SEL => addr_latched_3_1,
      O => CHOICE2045
    );
  i_can_registers_data_out_tmp_0_1761_F : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => N43019,
      ADR1 => addr_latched_1_2,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(0),
      ADR3 => addr_latched_2_3,
      O => N55837
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_36111 : X_MUX2
    port map (
      IA => N55842,
      IB => N55844,
      SEL => i_can_bsp_tx_pointer_24,
      O => i_can_bsp_Mmux_n0007_net134
    );
  i_can_bsp_Mmux_n0007_inst_mux_f5_36111_F : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_tx_pointer_25,
      ADR1 => i_can_bsp_Mmux_n0007_net125,
      ADR2 => i_can_bsp_Mmux_n0007_net110,
      O => N55842
    );
  i_can_registers_data_out_tmp_1_911 : X_MUX2
    port map (
      IA => N55847,
      IB => N55849,
      SEL => addr_latched_3_1,
      O => CHOICE2477
    );
  i_can_registers_data_out_tmp_1_911_F : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => N43019,
      ADR1 => addr_latched_1_2,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(1),
      ADR3 => addr_latched_2_3,
      O => N55847
    );
  i_can_registers_data_out_tmp_4_110 : X_MUX2
    port map (
      IA => N55852,
      IB => N55854,
      SEL => addr_latched_2_2,
      O => CHOICE2280
    );
  i_can_registers_data_out_tmp_4_110_F : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched_4_3,
      ADR1 => CHOICE2278,
      ADR2 => i_can_registers_N31881,
      O => N55852
    );
  i_can_registers_data_out_tmp_2_911 : X_MUX2
    port map (
      IA => N55857,
      IB => N55859,
      SEL => addr_latched_3_1,
      O => CHOICE2341
    );
  i_can_registers_data_out_tmp_2_911_F : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => N43019,
      ADR1 => addr_latched_1_2,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(2),
      ADR3 => addr_latched_2_3,
      O => N55857
    );
  i_can_bsp_data_for_fifo_3_11 : X_MUX2
    port map (
      IA => N55862,
      IB => N55864,
      SEL => i_can_bsp_header_cnt(0),
      O => CHOICE1275
    );
  i_can_bsp_data_for_fifo_3_11_F : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(1),
      ADR1 => i_can_bsp_header_cnt(2),
      ADR2 => i_can_bsp_id(0),
      O => N55862
    );
  i_can_bsp_i_can_fifo_n007429 : X_MUX2
    port map (
      IA => N55867,
      IB => N55869,
      SEL => i_can_bsp_i_can_fifo_N30666,
      O => i_can_bsp_i_can_fifo_n0074
    );
  i_can_bsp_i_can_fifo_n007429_F : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR1 => i_can_bsp_wr_fifo,
      ADR2 => i_can_registers_COMMAND_REG_data_out(0),
      O => N55867
    );
  i_can_bsp_n011060 : X_MUX2
    port map (
      IA => N55872,
      IB => N55874,
      SEL => i_can_bsp_rx_crc,
      O => CHOICE1410
    );
  i_can_bsp_n011060_F : X_LUT4
    generic map(
      INIT => X"EEFE"
    )
    port map (
      ADR0 => CHOICE1403,
      ADR1 => i_can_bsp_finish_msg,
      ADR2 => i_can_bsp_n0010,
      ADR3 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => N55872
    );
  i_can_registers_we_tx_data_721 : X_MUX2
    port map (
      IA => N55877,
      IB => N55879,
      SEL => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_registers_we_tx_data_7
    );
  i_can_registers_we_tx_data_721_F : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31646,
      ADR1 => i_can_registers_N31709,
      ADR2 => addr_latched_0_1,
      ADR3 => i_can_registers_N31793,
      O => N55877
    );
  i_can_registers_data_out_tmp_3_911 : X_MUX2
    port map (
      IA => N55882,
      IB => N55884,
      SEL => addr_latched_3_1,
      O => CHOICE2409
    );
  i_can_registers_data_out_tmp_3_911_F : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => N43019,
      ADR1 => addr_latched_1_2,
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG0_data_out(3),
      ADR3 => addr_latched_2_3,
      O => N55882
    );
  i_can_bsp_data_for_fifo_7_5 : X_MUX2
    port map (
      IA => N55887,
      IB => N55889,
      SEL => i_can_bsp_header_cnt(0),
      O => CHOICE1252
    );
  i_can_bsp_data_for_fifo_7_5_F : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_header_cnt(1),
      ADR1 => i_can_bsp_header_cnt(2),
      ADR2 => i_can_bsp_id(4),
      O => N55887
    );
  i_can_registers_MODE_REG0_data_out_0_1_594 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => i_can_registers_MODE_REG0_n0001,
      CE => i_can_registers_MODE_REG0_n0003,
      SET => i_can_registers_MODE_REG0_data_out_0_1_GSR_OR,
      CLK => clk_i_BUFGP,
      O => i_can_registers_MODE_REG0_data_out_0_1,
      RST => GND
    );
  rst_i_IBUF_1_595 : X_BUF
    port map (
      I => rst_i_IBUF,
      O => rst_i_IBUF_1
    );
  rst_i_IBUF_2_596 : X_BUF
    port map (
      I => rst_i_IBUF,
      O => rst_i_IBUF_2
    );
  rst_i_IBUF_3_597 : X_BUF
    port map (
      I => rst_i_IBUF,
      O => rst_i_IBUF_3
    );
  i_can_bsp_tx_pointer_21_1_598 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => i_can_bsp_tx_pointer_inst_sum_93,
      CE => i_can_bsp_n0669,
      RST => i_can_bsp_tx_pointer_21_1_GSR_OR,
      SET => N23151,
      CLK => clk_i_BUFGP,
      O => i_can_bsp_tx_pointer_21_1
    );
  i_can_registers_Ker318731_1_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_Ker318731_1,
      O => N56111
    );
  i_can_registers_Ker318731_1_608 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched(3),
      ADR1 => addr_latched(0),
      ADR2 => addr_latched(1),
      O => i_can_registers_Ker318731_1
    );
  i_can_btl_go_sync1_1_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_btl_go_sync1_1_O,
      O => i_can_btl_go_sync1_1
    );
  i_can_btl_go_sync1_1_609 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_btl_resync,
      ADR1 => i_can_btl_n0035,
      ADR2 => i_can_btl_seg2,
      ADR3 => i_can_btl_N28750,
      O => i_can_btl_go_sync1_1_O
    );
  i_can_registers_data_out_tmp_3_187_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_3_187_SW0_O,
      O => N54958
    );
  i_can_registers_data_out_tmp_3_187_SW0 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0068,
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(3),
      ADR2 => i_can_registers_n0069,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(3),
      O => i_can_registers_data_out_tmp_3_187_SW0_O
    );
  i_can_bsp_n0138_5_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_5_O,
      O => i_can_bsp_n0138(5)
    );
  i_can_bsp_n0138_5_Q : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_N33815,
      ADR1 => i_can_bsp_n0467,
      ADR2 => N54529,
      ADR3 => N51738,
      O => i_can_bsp_n0138_5_O
    );
  i_can_bsp_n0138_3_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_3_O,
      O => i_can_bsp_n0138(3)
    );
  i_can_bsp_n0138_3_Q : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_N33815,
      ADR1 => i_can_bsp_n0467,
      ADR2 => N54525,
      ADR3 => N51638,
      O => i_can_bsp_n0138_3_O
    );
  i_can_bsp_n0138_0_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_0_SW0_O,
      O => N51538
    );
  i_can_bsp_n0138_0_SW0 : X_LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      ADR0 => i_can_bsp_N34298,
      ADR1 => i_can_bsp_N33532,
      ADR2 => i_can_bsp_rx_err_cnt(0),
      O => i_can_bsp_n0138_0_SW0_O
    );
  i_can_bsp_n0138_5_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_5_SW0_O,
      O => N51738
    );
  i_can_bsp_n0138_5_SW0 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_bsp_N33532,
      ADR1 => i_can_bsp_n0158(5),
      ADR2 => i_can_bsp_n0761(5),
      ADR3 => i_can_bsp_N34298,
      O => i_can_bsp_n0138_5_SW0_O
    );
  i_can_registers_data_out_tmp_3_229_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_3_229_O,
      O => CHOICE2445
    );
  i_can_registers_data_out_tmp_3_229 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2429,
      ADR2 => CHOICE2442,
      ADR3 => CHOICE2416,
      O => i_can_registers_data_out_tmp_3_229_O
    );
  i_can_registers_data_out_tmp_6_5_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_6_5_O,
      O => CHOICE2123
    );
  i_can_registers_data_out_tmp_6_5 : X_LUT4
    generic map(
      INIT => X"0819"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => addr_latched_1_3,
      ADR2 => N55031,
      ADR3 => N55029,
      O => i_can_registers_data_out_tmp_6_5_O
    );
  i_can_registers_data_out_tmp_4_193_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_4_193_SW0_O,
      O => N54954
    );
  i_can_registers_data_out_tmp_4_193_SW0 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0068,
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(4),
      ADR2 => i_can_registers_n0069,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(4),
      O => i_can_registers_data_out_tmp_4_193_SW0_O
    );
  i_can_registers_data_out_tmp_7_163_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_7_163_O,
      O => CHOICE2112
    );
  i_can_registers_data_out_tmp_7_163 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_registers_N31881,
      ADR1 => N54931,
      ADR2 => N54929,
      ADR3 => addr_latched_2_1,
      O => i_can_registers_data_out_tmp_7_163_O
    );
  i_can_bsp_overload_frame_ended1_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_bsp_overload_frame_ended,
      O => N56099
    );
  i_can_bsp_overload_frame_ended1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_bsp_overload_cnt2(1),
      ADR1 => i_can_bsp_overload_cnt2(2),
      ADR2 => i_can_bsp_overload_cnt2(0),
      ADR3 => tx_point,
      O => i_can_bsp_overload_frame_ended
    );
  i_can_registers_data_out_tmp_1_6_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_1_6_O,
      O => CHOICE2453
    );
  i_can_registers_data_out_tmp_1_6 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0061,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(1),
      ADR2 => i_can_registers_n0062,
      ADR3 => i_can_registers_TX_DATA_REG2_data_out(1),
      O => i_can_registers_data_out_tmp_1_6_O
    );
  i_can_registers_data_out_tmp_2_187_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_2_187_SW0_O,
      O => N54950
    );
  i_can_registers_data_out_tmp_2_187_SW0 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0068,
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(2),
      ADR2 => i_can_registers_n0069,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(2),
      O => i_can_registers_data_out_tmp_2_187_SW0_O
    );
  i_can_registers_data_out_tmp_4_22_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_4_22_O,
      O => CHOICE2254
    );
  i_can_registers_data_out_tmp_4_22 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2245,
      ADR1 => i_can_registers_n0057,
      ADR2 => CHOICE2249,
      ADR3 => CHOICE2252,
      O => i_can_registers_data_out_tmp_4_22_O
    );
  i_can_registers_data_out_tmp_0_127_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_0_127_O,
      O => CHOICE2035
    );
  i_can_registers_data_out_tmp_0_127 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0067,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(0),
      ADR2 => i_can_registers_n0076,
      ADR3 => i_can_registers_TX_DATA_REG0_data_out(0),
      O => i_can_registers_data_out_tmp_0_127_O
    );
  i_can_registers_data_out_tmp_5_104_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_5_104_SW0_O,
      O => N54962
    );
  i_can_registers_data_out_tmp_5_104_SW0 : X_LUT4
    generic map(
      INIT => X"002F"
    )
    port map (
      ADR0 => i_can_registers_N31881,
      ADR1 => N54757,
      ADR2 => N55070,
      ADR3 => addr_latched_4_1,
      O => i_can_registers_data_out_tmp_5_104_SW0_O
    );
  i_can_registers_data_out_tmp_4_233_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_4_233_O,
      O => CHOICE2309
    );
  i_can_registers_data_out_tmp_4_233 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2295,
      ADR2 => CHOICE2306,
      ADR3 => CHOICE2282,
      O => i_can_registers_data_out_tmp_4_233_O
    );
  i_can_bsp_n0138_1_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_1_O,
      O => i_can_bsp_n0138(1)
    );
  i_can_bsp_n0138_1_Q : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_N33815,
      ADR1 => i_can_bsp_n0467,
      ADR2 => N54521,
      ADR3 => N51488,
      O => i_can_bsp_n0138_1_O
    );
  i_can_registers_data_out_tmp_2_229_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_2_229_O,
      O => CHOICE2377
    );
  i_can_registers_data_out_tmp_2_229 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2361,
      ADR2 => CHOICE2374,
      ADR3 => CHOICE2348,
      O => i_can_registers_data_out_tmp_2_229_O
    );
  i_can_registers_data_out_tmp_1_28_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_1_28_O,
      O => CHOICE2461
    );
  i_can_registers_data_out_tmp_1_28 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(1),
      ADR2 => i_can_registers_n0066,
      ADR3 => i_can_registers_TX_DATA_REG6_data_out(1),
      O => i_can_registers_data_out_tmp_1_28_O
    );
  i_can_bsp_n0138_1_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_1_SW0_O,
      O => N51488
    );
  i_can_bsp_n0138_1_SW0 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_bsp_N33532,
      ADR1 => i_can_bsp_n0158(1),
      ADR2 => i_can_bsp_rx_err_cnt(1),
      ADR3 => i_can_bsp_N34298,
      O => i_can_bsp_n0138_1_SW0_O
    );
  i_can_registers_data_out_tmp_6_229_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_6_229_O,
      O => i_can_registers_data_out_tmp(6)
    );
  i_can_registers_data_out_tmp_6_229 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_N31748,
      ADR1 => CHOICE2176,
      ADR2 => N54696,
      ADR3 => i_can_registers_N31446,
      O => i_can_registers_data_out_tmp_6_229_O
    );
  i_can_registers_data_out_tmp_4_39_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_4_39_O,
      O => CHOICE2260
    );
  i_can_registers_data_out_tmp_4_39 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0064,
      ADR1 => i_can_registers_TX_DATA_REG4_data_out(4),
      ADR2 => i_can_registers_n0065,
      ADR3 => i_can_registers_TX_DATA_REG5_data_out(4),
      O => i_can_registers_data_out_tmp_4_39_O
    );
  i_can_registers_data_out_tmp_1_43_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_1_43_O,
      O => CHOICE2467
    );
  i_can_registers_data_out_tmp_1_43 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_registers_n0069,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(1),
      ADR2 => CHOICE2465,
      O => i_can_registers_data_out_tmp_1_43_O
    );
  i_can_registers_data_out_tmp_7_25_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_7_25_O,
      O => CHOICE2071
    );
  i_can_registers_data_out_tmp_7_25 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(7),
      ADR2 => i_can_registers_n0066,
      ADR3 => i_can_registers_TX_DATA_REG6_data_out(7),
      O => i_can_registers_data_out_tmp_7_25_O
    );
  i_can_registers_data_out_tmp_2_6_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_2_6_O,
      O => CHOICE2317
    );
  i_can_registers_data_out_tmp_2_6 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0061,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(2),
      ADR2 => i_can_registers_n0062,
      ADR3 => i_can_registers_TX_DATA_REG2_data_out(2),
      O => i_can_registers_data_out_tmp_2_6_O
    );
  i_can_registers_data_out_tmp_3_6_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_3_6_O,
      O => CHOICE2385
    );
  i_can_registers_data_out_tmp_3_6 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0061,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(3),
      ADR2 => i_can_registers_n0062,
      ADR3 => i_can_registers_TX_DATA_REG2_data_out(3),
      O => i_can_registers_data_out_tmp_3_6_O
    );
  i_can_registers_data_out_tmp_0_220_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_0_220_O,
      O => CHOICE2056
    );
  i_can_registers_data_out_tmp_0_220 : X_LUT4
    generic map(
      INIT => X"AAFE"
    )
    port map (
      ADR0 => CHOICE2055,
      ADR1 => CHOICE2022,
      ADR2 => CHOICE2037,
      ADR3 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_registers_data_out_tmp_0_220_O
    );
  i_can_bsp_n0154_0_80_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0154_0_80_O,
      O => i_can_bsp_n0154(0)
    );
  i_can_bsp_n0154_0_80 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => read_error_code_capture_reg,
      ADR1 => CHOICE1607,
      O => i_can_bsp_n0154_0_80_O
    );
  i_can_registers_data_out_tmp_6_37_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_6_37_SW0_O,
      O => N55039
    );
  i_can_registers_data_out_tmp_6_37_SW0 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => addr_latched(4),
      ADR1 => addr_latched(2),
      ADR2 => i_can_registers_N31898,
      ADR3 => i_can_registers_TX_DATA_REG0_data_out(6),
      O => i_can_registers_data_out_tmp_6_37_SW0_O
    );
  i_can_registers_data_out_tmp_3_28_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_3_28_O,
      O => CHOICE2393
    );
  i_can_registers_data_out_tmp_3_28 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(3),
      ADR2 => i_can_registers_n0066,
      ADR3 => i_can_registers_TX_DATA_REG6_data_out(3),
      O => i_can_registers_data_out_tmp_3_28_O
    );
  i_can_registers_data_out_tmp_2_28_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_2_28_O,
      O => CHOICE2325
    );
  i_can_registers_data_out_tmp_2_28 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_registers_TX_DATA_REG5_data_out(2),
      ADR2 => i_can_registers_n0066,
      ADR3 => i_can_registers_TX_DATA_REG6_data_out(2),
      O => i_can_registers_data_out_tmp_2_28_O
    );
  i_can_registers_data_out_tmp_1_102_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_1_102_O,
      O => CHOICE2482
    );
  i_can_registers_data_out_tmp_1_102 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(1),
      ADR1 => i_can_registers_N31509,
      ADR2 => i_can_registers_n0056,
      ADR3 => i_can_registers_overrun_status,
      O => i_can_registers_data_out_tmp_1_102_O
    );
  i_can_bsp_n0138_2_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_2_O,
      O => i_can_bsp_n0138(2)
    );
  i_can_bsp_n0138_2_Q : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_N33815,
      ADR1 => i_can_bsp_n0467,
      ADR2 => N54523,
      ADR3 => N51588,
      O => i_can_bsp_n0138_2_O
    );
  i_can_registers_data_out_tmp_5_144_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_5_144_O,
      O => CHOICE2226
    );
  i_can_registers_data_out_tmp_5_144 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_bsp_tx_err_cnt(5),
      ADR2 => i_can_registers_n0067,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(5),
      O => i_can_registers_data_out_tmp_5_144_O
    );
  i_can_bsp_n0138_2_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_2_SW0_O,
      O => N51588
    );
  i_can_bsp_n0138_2_SW0 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_bsp_N33532,
      ADR1 => i_can_bsp_n0158(2),
      ADR2 => i_can_bsp_rx_err_cnt(2),
      ADR3 => i_can_bsp_N34298,
      O => i_can_bsp_n0138_2_SW0_O
    );
  i_can_bsp_n0138_6_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_6_O,
      O => i_can_bsp_n0138(6)
    );
  i_can_bsp_n0138_6_Q : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_N33815,
      ADR1 => i_can_bsp_n0467,
      ADR2 => N54531,
      ADR3 => N51788,
      O => i_can_bsp_n0138_6_O
    );
  i_can_registers_data_out_tmp_3_43_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_3_43_O,
      O => CHOICE2399
    );
  i_can_registers_data_out_tmp_3_43 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_registers_n0069,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(3),
      ADR2 => CHOICE2397,
      O => i_can_registers_data_out_tmp_3_43_O
    );
  i_can_registers_data_out_tmp_5_19_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_5_19_O,
      O => CHOICE2189
    );
  i_can_registers_data_out_tmp_5_19 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2187,
      ADR1 => i_can_registers_n0066,
      ADR2 => i_can_registers_TX_DATA_REG6_data_out(5),
      ADR3 => N55276,
      O => i_can_registers_data_out_tmp_5_19_O
    );
  i_can_bsp_n0138_6_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_6_SW0_O,
      O => N51788
    );
  i_can_bsp_n0138_6_SW0 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_bsp_N33532,
      ADR1 => i_can_bsp_n0158(6),
      ADR2 => i_can_bsp_n0761(6),
      ADR3 => i_can_bsp_N34298,
      O => i_can_bsp_n0138_6_SW0_O
    );
  i_can_registers_data_out_tmp_2_43_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_2_43_O,
      O => CHOICE2331
    );
  i_can_registers_data_out_tmp_2_43 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_registers_n0069,
      ADR1 => i_can_registers_TX_DATA_REG9_data_out(2),
      ADR2 => CHOICE2329,
      O => i_can_registers_data_out_tmp_2_43_O
    );
  i_can_bsp_n0138_4_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_4_O,
      O => i_can_bsp_n0138(4)
    );
  i_can_bsp_n0138_4_Q : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_N33815,
      ADR1 => i_can_bsp_n0467,
      ADR2 => N54527,
      ADR3 => N51688,
      O => i_can_bsp_n0138_4_O
    );
  i_can_registers_data_out_tmp_1_144_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_1_144_O,
      O => CHOICE2494
    );
  i_can_registers_data_out_tmp_1_144 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0061,
      ADR1 => i_can_bsp_arbitration_lost_capture_28,
      ADR2 => i_can_registers_n0062,
      ADR3 => i_can_bsp_error_capture_code(1),
      O => i_can_registers_data_out_tmp_1_144_O
    );
  i_can_registers_data_out_tmp_6_147_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_6_147_O,
      O => CHOICE2167
    );
  i_can_registers_data_out_tmp_6_147 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2155,
      ADR1 => CHOICE2158,
      ADR2 => CHOICE2162,
      ADR3 => CHOICE2165,
      O => i_can_registers_data_out_tmp_6_147_O
    );
  i_can_bsp_n0138_4_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_4_SW0_O,
      O => N51688
    );
  i_can_bsp_n0138_4_SW0 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_bsp_N33532,
      ADR1 => i_can_bsp_n0158(4),
      ADR2 => i_can_bsp_n0761(4),
      ADR3 => i_can_bsp_N34298,
      O => i_can_bsp_n0138_4_SW0_O
    );
  i_can_bsp_n0138_7_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_7_O,
      O => i_can_bsp_n0138(7)
    );
  i_can_bsp_n0138_7_Q : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N54533,
      ADR1 => N56034,
      ADR2 => N51044,
      ADR3 => i_can_bsp_N34298,
      O => i_can_bsp_n0138_7_O
    );
  i_can_registers_data_out_tmp_5_35_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_5_35_O,
      O => CHOICE2195
    );
  i_can_registers_data_out_tmp_5_35 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0064,
      ADR1 => i_can_registers_TX_DATA_REG4_data_out(5),
      ADR2 => i_can_registers_n0065,
      ADR3 => i_can_registers_TX_DATA_REG5_data_out(5),
      O => i_can_registers_data_out_tmp_5_35_O
    );
  i_can_registers_data_out_tmp_7_5_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_7_5_O,
      O => CHOICE2063
    );
  i_can_registers_data_out_tmp_7_5 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0061,
      ADR1 => i_can_registers_TX_DATA_REG1_data_out(7),
      ADR2 => i_can_registers_n0062,
      ADR3 => i_can_registers_TX_DATA_REG2_data_out(7),
      O => i_can_registers_data_out_tmp_7_5_O
    );
  i_can_registers_data_out_tmp_3_102_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_3_102_O,
      O => CHOICE2414
    );
  i_can_registers_data_out_tmp_3_102 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(3),
      ADR1 => i_can_registers_N31509,
      ADR2 => i_can_registers_n0056,
      ADR3 => i_can_registers_transmission_complete,
      O => i_can_registers_data_out_tmp_3_102_O
    );
  i_can_registers_data_out_tmp_1_187_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_1_187_SW0_O,
      O => N54946
    );
  i_can_registers_data_out_tmp_1_187_SW0 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0068,
      ADR1 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(1),
      ADR2 => i_can_registers_n0069,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(1),
      O => i_can_registers_data_out_tmp_1_187_SW0_O
    );
  i_can_registers_data_out_tmp_5_177_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_5_177_O,
      O => CHOICE2237
    );
  i_can_registers_data_out_tmp_5_177 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_registers_N31881,
      ADR1 => N54919,
      ADR2 => N54917,
      ADR3 => addr_latched_2_1,
      O => i_can_registers_data_out_tmp_5_177_O
    );
  i_can_registers_data_out_tmp_6_20_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_6_20_SW0_O,
      O => N54797
    );
  i_can_registers_data_out_tmp_6_20_SW0 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => addr_latched(0),
      ADR1 => addr_latched(1),
      ADR2 => i_can_registers_TX_DATA_REG3_data_out(6),
      ADR3 => i_can_registers_TX_DATA_REG4_data_out(6),
      O => i_can_registers_data_out_tmp_6_20_SW0_O
    );
  i_can_registers_we_acceptance_mask_018_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_we_acceptance_mask_018_O,
      O => CHOICE1484
    );
  i_can_registers_we_acceptance_mask_018 : X_LUT4
    generic map(
      INIT => X"5808"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31720,
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR3 => i_can_registers_N31731,
      O => i_can_registers_we_acceptance_mask_018_O
    );
  i_can_bsp_arbitration_lost_capture_inst_lut3_341_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_arbitration_lost_capture_inst_lut3_341_O,
      O => i_can_bsp_arbitration_lost_capture_inst_lut3_34
    );
  i_can_bsp_arbitration_lost_capture_inst_lut3_341 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => read_arbitration_lost_capture_reg,
      ADR1 => i_can_bsp_arbitration_lost_capture_27,
      O => i_can_bsp_arbitration_lost_capture_inst_lut3_341_O
    );
  i_can_registers_we_tx_data_518_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_we_tx_data_518_SW0_O,
      O => N55724
    );
  i_can_registers_we_tx_data_518_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_N31823,
      ADR2 => addr_latched_0_1,
      ADR3 => i_can_registers_N31646,
      O => i_can_registers_we_tx_data_518_SW0_O
    );
  i_can_registers_Ker315071_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_registers_Ker315071_SW0_O,
      O => N54966
    );
  i_can_registers_Ker315071_SW0 : X_LUT3
    generic map(
      INIT => X"BD"
    )
    port map (
      ADR0 => addr_latched(2),
      ADR1 => addr_latched(4),
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => i_can_registers_Ker315071_SW0_O
    );
  i_can_registers_we_acceptance_code_0_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_we_acceptance_code_0_SW0_O,
      O => N48810
    );
  i_can_registers_we_acceptance_code_0_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31793,
      ADR2 => i_can_registers_N31847,
      ADR3 => i_can_registers_MODE_REG0_data_out(0),
      O => i_can_registers_we_acceptance_code_0_SW0_O
    );
  i_can_registers_Ker3144491_SW1_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_Ker3144491_SW1_SW0_O,
      O => N55104
    );
  i_can_registers_Ker3144491_SW1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_registers_n0068,
      ADR1 => i_can_registers_n0069,
      ADR2 => CHOICE1922,
      ADR3 => CHOICE1926,
      O => i_can_registers_Ker3144491_SW1_SW0_O
    );
  i_can_bsp_n0154_1_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0154_1_O,
      O => i_can_bsp_n0154(1)
    );
  i_can_bsp_n0154_1_Q : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => read_error_code_capture_reg,
      ADR1 => i_can_bsp_N33954,
      ADR2 => i_can_bsp_N34068,
      ADR3 => N49359,
      O => i_can_bsp_n0154_1_O
    );
  i_can_bsp_n0140_7_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_7_SW0_O,
      O => N42889
    );
  i_can_bsp_n0140_7_SW0 : X_LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      ADR0 => i_can_bsp_n0475,
      ADR1 => i_can_bsp_n0272(7),
      ADR2 => i_can_bsp_n0763(7),
      O => i_can_bsp_n0140_7_SW0_O
    );
  i_can_bsp_n0140_7_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_7_O,
      O => i_can_bsp_n0140(7)
    );
  i_can_bsp_n0140_7_Q : X_LUT4
    generic map(
      INIT => X"888D"
    )
    port map (
      ADR0 => we_tx_err_cnt,
      ADR1 => N54533,
      ADR2 => set_reset_mode,
      ADR3 => N42889,
      O => i_can_bsp_n0140_7_O
    );
  i_can_bsp_n0140_4_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_4_SW0_O,
      O => N42702
    );
  i_can_bsp_n0140_4_SW0 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_n0475,
      ADR1 => i_can_bsp_n0272(4),
      ADR2 => i_can_bsp_n0763(4),
      O => i_can_bsp_n0140_4_SW0_O
    );
  i_can_bsp_n0140_4_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_4_O,
      O => i_can_bsp_n0140(4)
    );
  i_can_bsp_n0140_4_Q : X_LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      ADR0 => we_tx_err_cnt,
      ADR1 => N54527,
      ADR2 => set_reset_mode,
      ADR3 => N42702,
      O => i_can_bsp_n0140_4_O
    );
  i_can_bsp_n0154_4_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0154_4_O,
      O => i_can_bsp_n0154(4)
    );
  i_can_bsp_n0154_4_Q : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => read_error_code_capture_reg,
      ADR1 => i_can_bsp_rx_ack,
      ADR2 => i_can_bsp_overload_frame,
      ADR3 => N42141,
      O => i_can_bsp_n0154_4_O
    );
  i_can_registers_Ker3144446_SW1_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_registers_Ker3144446_SW1_O,
      O => N55519
    );
  i_can_registers_Ker3144446_SW1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => addr_latched_0_3,
      ADR1 => addr_latched(1),
      O => i_can_registers_Ker3144446_SW1_O
    );
  i_can_bsp_n0140_8_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_8_SW0_O,
      O => N42430
    );
  i_can_bsp_n0140_8_SW0 : X_LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      ADR0 => i_can_bsp_n0475,
      ADR1 => i_can_bsp_n0272(8),
      ADR2 => i_can_bsp_n0763(8),
      O => i_can_bsp_n0140_8_SW0_O
    );
  i_can_bsp_n0140_3_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_3_SW0_O,
      O => N42647
    );
  i_can_bsp_n0140_3_SW0 : X_LUT3
    generic map(
      INIT => X"8D"
    )
    port map (
      ADR0 => i_can_bsp_n0475,
      ADR1 => i_can_bsp_n0272(3),
      ADR2 => i_can_bsp_tx_err_cnt(3),
      O => i_can_bsp_n0140_3_SW0_O
    );
  i_can_bsp_n0140_2_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_2_SW0_O,
      O => N42592
    );
  i_can_bsp_n0140_2_SW0 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_n0475,
      ADR1 => i_can_bsp_n0272(2),
      ADR2 => i_can_bsp_tx_err_cnt(2),
      O => i_can_bsp_n0140_2_SW0_O
    );
  i_can_bsp_n0140_2_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_2_O,
      O => i_can_bsp_n0140(2)
    );
  i_can_bsp_n0140_2_Q : X_LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      ADR0 => we_tx_err_cnt,
      ADR1 => N54523,
      ADR2 => set_reset_mode,
      ADR3 => N42592,
      O => i_can_bsp_n0140_2_O
    );
  i_can_bsp_n0140_6_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_6_SW0_O,
      O => N42757
    );
  i_can_bsp_n0140_6_SW0 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_n0475,
      ADR1 => i_can_bsp_n0272(6),
      ADR2 => i_can_bsp_n0763(6),
      O => i_can_bsp_n0140_6_SW0_O
    );
  i_can_bsp_n0140_6_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_6_O,
      O => i_can_bsp_n0140(6)
    );
  i_can_bsp_n0140_6_Q : X_LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      ADR0 => we_tx_err_cnt,
      ADR1 => N54531,
      ADR2 => set_reset_mode,
      ADR3 => N42757,
      O => i_can_bsp_n0140_6_O
    );
  i_can_registers_we_tx_data_85_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_registers_we_tx_data_85_O,
      O => CHOICE353
    );
  i_can_registers_we_tx_data_85 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_N31709,
      ADR2 => i_can_registers_N31881,
      O => i_can_registers_we_tx_data_85_O
    );
  i_can_bsp_tx_successful_LUT4_D_BUF : X_BUF
    port map (
      I => tx_successful,
      O => N56036
    );
  i_can_bsp_tx_successful : X_LUT4
    generic map(
      INIT => X"A800"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_inter,
      ADR1 => i_can_registers_single_shot_transmission,
      ADR2 => N42193,
      ADR3 => i_can_bsp_transmitter,
      O => tx_successful
    );
  i_can_bsp_n0467_SW112_LUT2_D_BUF : X_BUF
    port map (
      I => i_can_bsp_n0467,
      O => N56034
    );
  i_can_bsp_n0467_SW112 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_registers_N31823,
      ADR1 => CHOICE453,
      O => i_can_bsp_n0467
    );
  i_can_bsp_n0140_0_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_0_SW0_O,
      O => N42482
    );
  i_can_bsp_n0140_0_SW0 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_n0475,
      ADR1 => i_can_bsp_n0272(0),
      ADR2 => i_can_bsp_tx_err_cnt(0),
      O => i_can_bsp_n0140_0_SW0_O
    );
  i_can_bsp_n0140_0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_0_O,
      O => i_can_bsp_n0140(0)
    );
  i_can_bsp_n0140_0_Q : X_LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      ADR0 => we_tx_err_cnt,
      ADR1 => N54519,
      ADR2 => set_reset_mode,
      ADR3 => N42482,
      O => i_can_bsp_n0140_0_O
    );
  i_can_registers_Ker31526_SW0_LUT3_D_BUF : X_BUF
    port map (
      I => N43019,
      O => N56030
    );
  i_can_registers_Ker31526_SW0 : X_LUT3
    generic map(
      INIT => X"BD"
    )
    port map (
      ADR0 => addr_latched(0),
      ADR1 => addr_latched(4),
      ADR2 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      O => N43019
    );
  i_can_registers_data_out_tmp_7_37_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_7_37_O,
      O => CHOICE2075
    );
  i_can_registers_data_out_tmp_7_37 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0067,
      ADR1 => i_can_registers_TX_DATA_REG7_data_out(7),
      ADR2 => i_can_registers_n0076,
      ADR3 => i_can_registers_TX_DATA_REG0_data_out(7),
      O => i_can_registers_data_out_tmp_7_37_O
    );
  i_can_bsp_n0138_0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_0_O,
      O => i_can_bsp_n0138(0)
    );
  i_can_bsp_n0138_0_Q : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => i_can_bsp_N33815,
      ADR1 => i_can_bsp_n0467,
      ADR2 => N54519,
      ADR3 => N51538,
      O => i_can_bsp_n0138_0_O
    );
  i_can_registers_data_out_tmp_0_198_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_0_198_O,
      O => CHOICE2053
    );
  i_can_registers_data_out_tmp_0_198 : X_LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      ADR0 => i_can_registers_N31881,
      ADR1 => addr_latched_2_2,
      ADR2 => N54907,
      ADR3 => N54905,
      O => i_can_registers_data_out_tmp_0_198_O
    );
  i_can_registers_data_out_tmp_6_161_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_6_161_SW1_O,
      O => N54913
    );
  i_can_registers_data_out_tmp_6_161_SW1 : X_LUT4
    generic map(
      INIT => X"373F"
    )
    port map (
      ADR0 => i_can_registers_Ker318731_1,
      ADR1 => addr_latched_4_1,
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG2_data_out(6),
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG3_data_out(6),
      O => i_can_registers_data_out_tmp_6_161_SW1_O
    );
  i_can_bsp_n068567_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n068567_O,
      O => CHOICE1846
    );
  i_can_bsp_n068567 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => set_reset_mode,
      ADR1 => i_can_bsp_transmitter,
      ADR2 => CHOICE1843,
      ADR3 => i_can_bsp_n0475,
      O => i_can_bsp_n068567_O
    );
  i_can_registers_data_out_tmp_2_144_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_2_144_O,
      O => CHOICE2358
    );
  i_can_registers_data_out_tmp_2_144 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0061,
      ADR1 => i_can_bsp_arbitration_lost_capture_29,
      ADR2 => i_can_registers_n0062,
      ADR3 => i_can_bsp_error_capture_code(2),
      O => i_can_registers_data_out_tmp_2_144_O
    );
  i_can_registers_data_out_tmp_5_209_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_5_209_O,
      O => CHOICE2241
    );
  i_can_registers_data_out_tmp_5_209 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2231,
      ADR2 => CHOICE2238,
      ADR3 => CHOICE2216,
      O => i_can_registers_data_out_tmp_5_209_O
    );
  i_can_registers_data_out_tmp_0_30_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_0_30_O,
      O => CHOICE2006
    );
  i_can_registers_data_out_tmp_0_30 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE1996,
      ADR1 => CHOICE1999,
      ADR2 => CHOICE2003,
      ADR3 => N54701,
      O => i_can_registers_data_out_tmp_0_30_O
    );
  i_can_btl_Ker287481_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_btl_N28750,
      O => N56020
    );
  i_can_btl_Ker287481 : X_LUT4
    generic map(
      INIT => X"1F00"
    )
    port map (
      ADR0 => i_can_bsp_rx_idle,
      ADR1 => last_bit_of_inter,
      ADR2 => i_can_btl_N28740,
      ADR3 => i_can_btl_clk_en,
      O => i_can_btl_N28750
    );
  i_can_bsp_n01461_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n01461_O,
      O => i_can_bsp_n0146
    );
  i_can_bsp_n01461 : X_LUT4
    generic map(
      INIT => X"0307"
    )
    port map (
      ADR0 => CHOICE1876,
      ADR1 => we_tx_err_cnt,
      ADR2 => CHOICE1908,
      ADR3 => CHOICE1869,
      O => i_can_bsp_n01461_O
    );
  i_can_bsp_n0138_3_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_3_SW0_O,
      O => N51638
    );
  i_can_bsp_n0138_3_SW0 : X_LUT4
    generic map(
      INIT => X"8D00"
    )
    port map (
      ADR0 => i_can_bsp_N33532,
      ADR1 => i_can_bsp_n0158(3),
      ADR2 => i_can_bsp_rx_err_cnt(3),
      ADR3 => i_can_bsp_N34298,
      O => i_can_bsp_n0138_3_SW0_O
    );
  i_can_registers_data_out_tmp_6_40_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_6_40_O,
      O => CHOICE2137
    );
  i_can_registers_data_out_tmp_6_40 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => i_can_registers_n0068,
      ADR1 => i_can_registers_TX_DATA_REG8_data_out(6),
      ADR2 => N55743,
      O => i_can_registers_data_out_tmp_6_40_O
    );
  i_can_bsp_bit_cnt_inst_lut3_311_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_bit_cnt_inst_lut3_311_O,
      O => i_can_bsp_bit_cnt_inst_lut3_31
    );
  i_can_bsp_bit_cnt_inst_lut3_311 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_n0063,
      ADR1 => i_can_bsp_bit_cnt_24,
      O => i_can_bsp_bit_cnt_inst_lut3_311_O
    );
  i_can_bsp_bit_cnt_inst_lut3_301_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_bit_cnt_inst_lut3_301_O,
      O => i_can_bsp_bit_cnt_inst_lut3_30
    );
  i_can_bsp_bit_cnt_inst_lut3_301 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_n0063,
      ADR1 => i_can_bsp_bit_cnt_23,
      O => i_can_bsp_bit_cnt_inst_lut3_301_O
    );
  i_can_bsp_bit_cnt_inst_lut3_281_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_bit_cnt_inst_lut3_281_O,
      O => i_can_bsp_bit_cnt_inst_lut3_28
    );
  i_can_bsp_bit_cnt_inst_lut3_281 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_n0063,
      ADR1 => i_can_bsp_bit_cnt_21,
      O => i_can_bsp_bit_cnt_inst_lut3_281_O
    );
  i_can_bsp_Ker342961_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_bsp_N34298,
      O => N56012
    );
  i_can_bsp_Ker342961 : X_LUT4
    generic map(
      INIT => X"0BBB"
    )
    port map (
      ADR0 => i_can_registers_node_bus_off_q,
      ADR1 => i_can_bsp_node_bus_off,
      ADR2 => i_can_registers_N31823,
      ADR3 => CHOICE453,
      O => i_can_bsp_N34298
    );
  i_can_bsp_eof_cnt_Mmux_n0001_Result_1_1_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_eof_cnt_Mmux_n0001_Result_1_1_O,
      O => i_can_bsp_eof_cnt_n0001(1)
    );
  i_can_bsp_eof_cnt_Mmux_n0001_Result_1_1 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => i_can_bsp_n0065,
      ADR1 => i_can_bsp_eof_cnt(0),
      ADR2 => i_can_bsp_eof_cnt(1),
      O => i_can_bsp_eof_cnt_Mmux_n0001_Result_1_1_O
    );
  i_can_bsp_eof_cnt_Mmux_n0001_Result_0_1_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_eof_cnt_Mmux_n0001_Result_0_1_O,
      O => i_can_bsp_eof_cnt_n0001(0)
    );
  i_can_bsp_eof_cnt_Mmux_n0001_Result_0_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => i_can_bsp_n0065,
      ADR1 => i_can_bsp_eof_cnt(0),
      O => i_can_bsp_eof_cnt_Mmux_n0001_Result_0_1_O
    );
  i_can_bsp_eof_cnt_Mmux_n0001_Result_2_1_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_eof_cnt_Mmux_n0001_Result_2_1_O,
      O => i_can_bsp_eof_cnt_n0001(2)
    );
  i_can_bsp_eof_cnt_Mmux_n0001_Result_2_1 : X_LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      ADR0 => N55997,
      ADR1 => i_can_bsp_eof_cnt(2),
      ADR2 => i_can_bsp_eof_cnt(0),
      ADR3 => i_can_bsp_eof_cnt(1),
      O => i_can_bsp_eof_cnt_Mmux_n0001_Result_2_1_O
    );
  i_can_registers_data_out_tmp_4_91_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_4_91_SW1_O,
      O => N54925
    );
  i_can_registers_data_out_tmp_4_91_SW1 : X_LUT4
    generic map(
      INIT => X"373F"
    )
    port map (
      ADR0 => i_can_registers_N31875,
      ADR1 => addr_latched_2_3,
      ADR2 => i_can_registers_BUS_TIMING_0_REG_data_out(4),
      ADR3 => i_can_registers_BUS_TIMING_1_REG_data_out(4),
      O => i_can_registers_data_out_tmp_4_91_SW1_O
    );
  i_can_bsp_n0154_3_54_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0154_3_54_O,
      O => i_can_bsp_n0154(3)
    );
  i_can_bsp_n0154_3_54 : X_LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      ADR0 => i_can_bsp_rx_id2,
      ADR1 => CHOICE1569,
      ADR2 => CHOICE1580,
      ADR3 => read_error_code_capture_reg,
      O => i_can_bsp_n0154_3_54_O
    );
  i_can_registers_read_error_code_capture_reg_LUT4_D_BUF : X_BUF
    port map (
      I => read_error_code_capture_reg,
      O => N56005
    );
  i_can_registers_read_error_code_capture_reg : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched_0_2,
      ADR1 => addr_latched_1_2,
      ADR2 => N42338,
      ADR3 => i_can_registers_N31823,
      O => read_error_code_capture_reg
    );
  i_can_btl_Mcompar_n0035_inst_lut4_111_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_btl_Mcompar_n0035_inst_lut4_111_O,
      O => i_can_btl_Mcompar_n0035_inst_lut4_11
    );
  i_can_btl_Mcompar_n0035_inst_lut4_111 : X_LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(3),
      ADR1 => i_can_registers_BUS_TIMING_1_REG_data_out(6),
      ADR2 => i_can_btl_quant_cnt(2),
      O => i_can_btl_Mcompar_n0035_inst_lut4_111_O
    );
  i_can_registers_Ker318731_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31875,
      O => N56002
    );
  i_can_registers_Ker318731 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched(3),
      ADR1 => addr_latched(0),
      ADR2 => addr_latched(1),
      O => i_can_registers_N31875
    );
  i_can_registers_data_out_tmp_2_102_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_2_102_O,
      O => CHOICE2346
    );
  i_can_registers_data_out_tmp_2_102 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(2),
      ADR1 => i_can_registers_N31509,
      ADR2 => i_can_registers_n0056,
      ADR3 => i_can_registers_transmit_buffer_status,
      O => i_can_registers_data_out_tmp_2_102_O
    );
  i_can_bsp_n006334_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_bsp_n0063,
      O => N55999
    );
  i_can_bsp_n006334 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_rx_crc,
      ADR1 => CHOICE1636,
      ADR2 => i_can_bsp_go_error_frame,
      ADR3 => i_can_bsp_go_rx_inter,
      O => i_can_bsp_n0063
    );
  i_can_bsp_n00651_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_bsp_n0065,
      O => N55997
    );
  i_can_bsp_n00651 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_overload_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out(0),
      ADR3 => i_can_bsp_go_rx_inter,
      O => i_can_bsp_n0065
    );
  i_can_bsp_n01141_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n01141_O,
      O => i_can_bsp_n0114
    );
  i_can_bsp_n01141 : X_LUT4
    generic map(
      INIT => X"000B"
    )
    port map (
      ADR0 => i_can_bsp_transmitting,
      ADR1 => abort_tx,
      ADR2 => i_can_registers_MODE_REG0_data_out_0_1,
      ADR3 => tx_successful,
      O => i_can_bsp_n01141_O
    );
  i_can_bsp_n00911_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_bsp_n0091,
      O => N55994
    );
  i_can_bsp_n00911 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_go_error_frame,
      ADR1 => i_can_bsp_go_overload_frame,
      ADR2 => i_can_registers_MODE_REG0_data_out(0),
      ADR3 => i_can_bsp_error_frame_ended,
      O => i_can_bsp_n0091
    );
  i_can_bsp_n0140_5_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_5_SW0_O,
      O => N42812
    );
  i_can_bsp_n0140_5_SW0 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_n0475,
      ADR1 => i_can_bsp_n0272(5),
      ADR2 => i_can_bsp_n0763(5),
      O => i_can_bsp_n0140_5_SW0_O
    );
  i_can_registers_data_out_tmp_1_229_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_1_229_O,
      O => CHOICE2513
    );
  i_can_registers_data_out_tmp_1_229 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2497,
      ADR2 => CHOICE2510,
      ADR3 => CHOICE2484,
      O => i_can_registers_data_out_tmp_1_229_O
    );
  i_can_bsp_n0140_5_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_5_O,
      O => i_can_bsp_n0140(5)
    );
  i_can_bsp_n0140_5_Q : X_LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      ADR0 => we_tx_err_cnt,
      ADR1 => N54529,
      ADR2 => set_reset_mode,
      ADR3 => N42812,
      O => i_can_bsp_n0140_5_O
    );
  i_can_bsp_bit_cnt_inst_lut3_321_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_bit_cnt_inst_lut3_321_O,
      O => i_can_bsp_bit_cnt_inst_lut3_32
    );
  i_can_bsp_bit_cnt_inst_lut3_321 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_n0063,
      ADR1 => i_can_bsp_bit_cnt_25,
      O => i_can_bsp_bit_cnt_inst_lut3_321_O
    );
  i_can_bsp_n0140_3_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_3_O,
      O => i_can_bsp_n0140(3)
    );
  i_can_bsp_n0140_3_Q : X_LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      ADR0 => we_tx_err_cnt,
      ADR1 => N54525,
      ADR2 => set_reset_mode,
      ADR3 => N42647,
      O => i_can_bsp_n0140_3_O
    );
  i_can_bsp_n0154_7_1_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0154_7_1_O,
      O => i_can_bsp_n0154(7)
    );
  i_can_bsp_n0154_7_1 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => i_can_bsp_form_err,
      ADR1 => read_error_code_capture_reg,
      ADR2 => i_can_bsp_bit_err,
      O => i_can_bsp_n0154_7_1_O
    );
  i_can_bsp_n0154_6_1_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0154_6_1_O,
      O => i_can_bsp_n0154(6)
    );
  i_can_bsp_n0154_6_1 : X_LUT4
    generic map(
      INIT => X"000B"
    )
    port map (
      ADR0 => i_can_bsp_form_err,
      ADR1 => i_can_bsp_stuff_err,
      ADR2 => i_can_bsp_bit_err,
      ADR3 => read_error_code_capture_reg,
      O => i_can_bsp_n0154_6_1_O
    );
  i_can_bsp_n0154_5_1_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0154_5_1_O,
      O => i_can_bsp_n0154(5)
    );
  i_can_bsp_n0154_5_1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => read_error_code_capture_reg,
      ADR1 => i_can_bsp_transmitting,
      O => i_can_bsp_n0154_5_1_O
    );
  i_can_registers_data_out_tmp_7_102_SW0_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_7_102_SW0_SW0_O,
      O => N55025
    );
  i_can_registers_data_out_tmp_7_102_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CHOICE2087,
      ADR1 => i_can_registers_N31509,
      ADR2 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(7),
      ADR3 => N55141,
      O => i_can_registers_data_out_tmp_7_102_SW0_SW0_O
    );
  i_can_bsp_n0099_2_1_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0099_2_1_O,
      O => i_can_bsp_n0099(2)
    );
  i_can_bsp_n0099_2_1 : X_LUT4
    generic map(
      INIT => X"2A80"
    )
    port map (
      ADR0 => i_can_bsp_n0291,
      ADR1 => i_can_bsp_passive_cnt(0),
      ADR2 => i_can_bsp_passive_cnt(1),
      ADR3 => i_can_bsp_passive_cnt(2),
      O => i_can_bsp_n0099_2_1_O
    );
  i_can_bsp_n0099_1_1_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0099_1_1_O,
      O => i_can_bsp_n0099(1)
    );
  i_can_bsp_n0099_1_1 : X_LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      ADR0 => i_can_bsp_n0291,
      ADR1 => i_can_bsp_passive_cnt(0),
      ADR2 => i_can_bsp_passive_cnt(1),
      O => i_can_bsp_n0099_1_1_O
    );
  i_can_bsp_n0099_0_1_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0099_0_1_O,
      O => i_can_bsp_n0099(0)
    );
  i_can_bsp_n0099_0_1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_passive_cnt(0),
      ADR1 => i_can_bsp_n0291,
      O => i_can_bsp_n0099_0_1_O
    );
  i_can_bsp_n01881_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n01881_O,
      O => i_can_bsp_n0188
    );
  i_can_bsp_n01881 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => i_can_bsp_error_frame,
      ADR1 => i_can_bsp_arbitration_lost,
      ADR2 => i_can_registers_MODE_REG0_data_out(0),
      ADR3 => i_can_bsp_go_rx_inter,
      O => i_can_bsp_n01881_O
    );
  i_can_bsp_Ker343661_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_bsp_N34368,
      O => N55979
    );
  i_can_bsp_Ker343661 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => i_can_bsp_bit_cnt_25,
      ADR1 => i_can_bsp_bit_cnt_22,
      ADR2 => i_can_bsp_N34184,
      O => i_can_bsp_N34368
    );
  i_can_bsp_n04321_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n04321_O,
      O => i_can_bsp_n0432
    );
  i_can_bsp_n04321 : X_LUT4
    generic map(
      INIT => X"EEFE"
    )
    port map (
      ADR0 => i_can_registers_MODE_REG0_data_out(0),
      ADR1 => tx_successful,
      ADR2 => abort_tx,
      ADR3 => i_can_bsp_transmitting,
      O => i_can_bsp_n04321_O
    );
  i_can_registers_data_out_tmp_7_70_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_7_70_O,
      O => CHOICE2081
    );
  i_can_registers_data_out_tmp_7_70 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => CHOICE2072,
      ADR2 => CHOICE2077,
      ADR3 => CHOICE2065,
      O => i_can_registers_data_out_tmp_7_70_O
    );
  i_can_registers_COMMAND_REG4_n00011_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_COMMAND_REG4_n00011_O,
      O => i_can_registers_COMMAND_REG4_n0001
    );
  i_can_registers_COMMAND_REG4_n00011 : X_LUT4
    generic map(
      INIT => X"008A"
    )
    port map (
      ADR0 => N54527,
      ADR1 => i_can_registers_tx_successful_q,
      ADR2 => tx_successful,
      ADR3 => abort_tx,
      O => i_can_registers_COMMAND_REG4_n00011_O
    );
  i_can_registers_Ker3144491_SW0_LUT4_D_BUF : X_BUF
    port map (
      I => N54838,
      O => N55974
    );
  i_can_registers_Ker3144491_SW0 : X_LUT4
    generic map(
      INIT => X"00AE"
    )
    port map (
      ADR0 => addr_latched_2_3,
      ADR1 => addr_latched_0_2,
      ADR2 => addr_latched_1_3,
      ADR3 => N55690,
      O => N54838
    );
  i_can_registers_we_mode1_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_registers_we_mode,
      O => N55972
    );
  i_can_registers_we_mode1 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched_0_1,
      ADR1 => i_can_registers_N31740,
      ADR2 => i_can_registers_N31793,
      ADR3 => i_can_registers_N31847,
      O => i_can_registers_we_mode
    );
  i_can_registers_n00041_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_registers_n00041_O,
      O => i_can_registers_n0004
    );
  i_can_registers_n00041 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => tx_successful,
      ADR1 => i_can_registers_tx_successful_q,
      ADR2 => abort_tx,
      O => i_can_registers_n00041_O
    );
  i_can_registers_data_out_tmp_6_220_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_6_220_SW0_O,
      O => N54696
    );
  i_can_registers_data_out_tmp_6_220_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CHOICE2141,
      ADR1 => CHOICE2144,
      ADR2 => CHOICE2147,
      ADR3 => CHOICE2150,
      O => i_can_registers_data_out_tmp_6_220_SW0_O
    );
  i_can_registers_n00471_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_registers_n0047,
      O => N55968
    );
  i_can_registers_n00471 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched_0_3,
      ADR1 => addr_latched(4),
      ADR2 => addr_latched(2),
      ADR3 => i_can_registers_N31793,
      O => i_can_registers_n0047
    );
  i_can_registers_data_out_tmp_4_144_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_4_144_O,
      O => CHOICE2288
    );
  i_can_registers_data_out_tmp_4_144 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0065,
      ADR1 => i_can_bsp_tx_err_cnt(4),
      ADR2 => i_can_registers_n0067,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG1_data_out(4),
      O => i_can_registers_data_out_tmp_4_144_O
    );
  i_can_registers_Ker317911_LUT2_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31793,
      O => N55965
    );
  i_can_registers_Ker317911 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => addr_latched(1),
      ADR1 => addr_latched(3),
      O => i_can_registers_N31793
    );
  i_can_registers_n00561_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_n0056,
      O => N55963
    );
  i_can_registers_n00561 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => addr_latched(2),
      ADR1 => addr_latched_4_4,
      ADR2 => i_can_registers_N31881,
      O => i_can_registers_n0056
    );
  i_can_registers_n00571_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_n0057,
      O => N55961
    );
  i_can_registers_n00571 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => addr_latched_2_4,
      ADR1 => addr_latched_4_4,
      ADR2 => i_can_registers_N31875,
      O => i_can_registers_n0057
    );
  i_can_registers_n00581_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_registers_n0058,
      O => N55959
    );
  i_can_registers_n00581 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_0_3,
      ADR1 => addr_latched_4_4,
      ADR2 => addr_latched_2_4,
      ADR3 => i_can_registers_N31793,
      O => i_can_registers_n0058
    );
  i_can_registers_Ker316641_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31666,
      O => N55957
    );
  i_can_registers_Ker316641 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched(4),
      ADR1 => addr_latched(3),
      ADR2 => addr_latched(2),
      O => i_can_registers_N31666
    );
  i_can_registers_n00601_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_registers_n00601_O,
      O => i_can_registers_n0060
    );
  i_can_registers_n00601 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched_4_4,
      ADR1 => i_can_registers_N31875,
      ADR2 => addr_latched_2_4,
      O => i_can_registers_n00601_O
    );
  i_can_registers_n00621_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_n0062,
      O => N55954
    );
  i_can_registers_n00621 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => addr_latched(0),
      ADR1 => addr_latched(1),
      ADR2 => i_can_registers_N31666,
      O => i_can_registers_n0062
    );
  i_can_registers_n00631_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_n0063,
      O => N55952
    );
  i_can_registers_n00631 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched(1),
      ADR1 => addr_latched_0_3,
      ADR2 => i_can_registers_N31666,
      O => i_can_registers_n0063
    );
  i_can_registers_n00641_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_n0064,
      O => N55950
    );
  i_can_registers_n00641 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched_0_3,
      ADR1 => i_can_registers_N31666,
      ADR2 => addr_latched(1),
      O => i_can_registers_n0064
    );
  i_can_registers_n00661_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_registers_n0066,
      O => N55948
    );
  i_can_registers_n00661 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => addr_latched_0_3,
      ADR1 => addr_latched(2),
      ADR2 => addr_latched(4),
      ADR3 => i_can_registers_N31793,
      O => i_can_registers_n0066
    );
  i_can_registers_Ker317381_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31740,
      O => N55946
    );
  i_can_registers_Ker317381 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => addr_latched_4_4,
      ADR1 => addr_latched(2),
      ADR2 => i_can_registers_N31603,
      O => i_can_registers_N31740
    );
  i_can_registers_data_out_tmp_6_166_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_6_166_SW1_O,
      O => N54937
    );
  i_can_registers_data_out_tmp_6_166_SW1 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_registers_Ker318731_1,
      ADR1 => i_can_registers_ACCEPTANCE_MASK_REG3_data_out(6),
      ADR2 => i_can_registers_ACCEPTANCE_MASK_REG2_data_out(6),
      ADR3 => addr_latched_4_1,
      O => i_can_registers_data_out_tmp_6_166_SW1_O
    );
  i_can_registers_n00741_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_registers_n0074,
      O => N55943
    );
  i_can_registers_n00741 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => addr_latched(1),
      ADR1 => addr_latched(2),
      ADR2 => addr_latched(3),
      ADR3 => i_can_registers_N31781,
      O => i_can_registers_n0074
    );
  i_can_registers_Ker316011_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31603,
      O => N55941
    );
  i_can_registers_Ker316011 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => addr_latched(5),
      ADR1 => addr_latched(6),
      ADR2 => addr_latched(7),
      O => i_can_registers_N31603
    );
  i_can_registers_n00761_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_registers_n0076,
      O => N55939
    );
  i_can_registers_n00761 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => addr_latched_0_3,
      ADR1 => addr_latched(4),
      ADR2 => addr_latched(2),
      ADR3 => i_can_registers_N31898,
      O => i_can_registers_n0076
    );
  i_can_bsp_n0140_1_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_1_SW0_O,
      O => N42537
    );
  i_can_bsp_n0140_1_SW0 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_can_bsp_n0475,
      ADR1 => i_can_bsp_n0272(1),
      ADR2 => i_can_bsp_tx_err_cnt(1),
      O => i_can_bsp_n0140_1_SW0_O
    );
  i_can_registers_Ker318961_LUT2_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31898,
      O => N55936
    );
  i_can_registers_Ker318961 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => addr_latched(3),
      ADR1 => addr_latched(1),
      O => i_can_registers_N31898
    );
  i_can_registers_we_tx_err_cnt1_LUT4_D_BUF : X_BUF
    port map (
      I => we_tx_err_cnt,
      O => N55934
    );
  i_can_registers_we_tx_err_cnt1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31634,
      ADR1 => addr_latched_0_2,
      ADR2 => addr_latched_1_2,
      ADR3 => i_can_registers_N31823,
      O => we_tx_err_cnt
    );
  i_can_registers_Ker317071_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31709,
      O => N55932
    );
  i_can_registers_Ker317071 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched(2),
      ADR1 => i_can_registers_N31603,
      ADR2 => addr_latched(4),
      O => i_can_registers_N31709
    );
  i_can_registers_Ker317791_LUT2_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31781,
      O => N55930
    );
  i_can_registers_Ker317791 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => addr_latched(4),
      ADR1 => addr_latched(0),
      O => i_can_registers_N31781
    );
  i_can_registers_Ker317291_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31731,
      O => N55928
    );
  i_can_registers_Ker317291 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => addr_latched_2_4,
      ADR1 => i_can_registers_N31603,
      ADR2 => addr_latched_4_4,
      O => i_can_registers_N31731
    );
  i_can_registers_Ker318791_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31881,
      O => N55926
    );
  i_can_registers_Ker318791 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => addr_latched(0),
      ADR1 => addr_latched(3),
      ADR2 => addr_latched(1),
      O => i_can_registers_N31881
    );
  i_can_registers_data_out_tmp_4_92_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_4_92_O,
      O => CHOICE2272
    );
  i_can_registers_data_out_tmp_4_92 : X_LUT4
    generic map(
      INIT => X"D800"
    )
    port map (
      ADR0 => i_can_registers_CLOCK_DIVIDER_REG_7_data_out(0),
      ADR1 => i_can_registers_n0066,
      ADR2 => i_can_registers_n0058,
      ADR3 => i_can_registers_ACCEPTANCE_CODE_REG0_data_out(4),
      O => i_can_registers_data_out_tmp_4_92_O
    );
  i_can_registers_we_command1_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_registers_we_command,
      O => N55923
    );
  i_can_registers_we_command1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => i_can_registers_N31740,
      ADR1 => i_can_registers_N31847,
      ADR2 => addr_latched_0_1,
      ADR3 => i_can_registers_N31793,
      O => i_can_registers_we_command
    );
  i_can_registers_data_out_tmp_1_262_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_1_262_O,
      O => i_can_registers_data_out_tmp(1)
    );
  i_can_registers_data_out_tmp_1_262 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_N31748,
      ADR1 => CHOICE2471,
      ADR2 => CHOICE2513,
      ADR3 => i_can_registers_N31446,
      O => i_can_registers_data_out_tmp_1_262_O
    );
  i_can_registers_data_out_tmp_0_253_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_0_253_O,
      O => i_can_registers_data_out_tmp(0)
    );
  i_can_registers_data_out_tmp_0_253 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_N31748,
      ADR1 => CHOICE2019,
      ADR2 => CHOICE2056,
      ADR3 => i_can_registers_N31446,
      O => i_can_registers_data_out_tmp_0_253_O
    );
  i_can_bsp_n0140_1_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_1_O,
      O => i_can_bsp_n0140(1)
    );
  i_can_bsp_n0140_1_Q : X_LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      ADR0 => we_tx_err_cnt,
      ADR1 => N54521,
      ADR2 => set_reset_mode,
      ADR3 => N42537,
      O => i_can_bsp_n0140_1_O
    );
  i_can_registers_data_out_tmp_3_262_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_3_262_O,
      O => i_can_registers_data_out_tmp(3)
    );
  i_can_registers_data_out_tmp_3_262 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_N31748,
      ADR1 => CHOICE2403,
      ADR2 => CHOICE2445,
      ADR3 => i_can_registers_N31446,
      O => i_can_registers_data_out_tmp_3_262_O
    );
  i_can_registers_data_out_tmp_2_262_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_2_262_O,
      O => i_can_registers_data_out_tmp(2)
    );
  i_can_registers_data_out_tmp_2_262 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_N31748,
      ADR1 => CHOICE2335,
      ADR2 => CHOICE2377,
      ADR3 => i_can_registers_N31446,
      O => i_can_registers_data_out_tmp_2_262_O
    );
  i_can_registers_data_out_tmp_5_242_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_5_242_O,
      O => i_can_registers_data_out_tmp(5)
    );
  i_can_registers_data_out_tmp_5_242 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_N31748,
      ADR1 => CHOICE2203,
      ADR2 => CHOICE2241,
      ADR3 => i_can_registers_N31446,
      O => i_can_registers_data_out_tmp_5_242_O
    );
  i_can_registers_data_out_tmp_4_266_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_4_266_O,
      O => i_can_registers_data_out_tmp(4)
    );
  i_can_registers_data_out_tmp_4_266 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_N31748,
      ADR1 => CHOICE2268,
      ADR2 => CHOICE2309,
      ADR3 => i_can_registers_N31446,
      O => i_can_registers_data_out_tmp_4_266_O
    );
  i_can_registers_data_out_tmp_7_228_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_7_228_O,
      O => i_can_registers_data_out_tmp(7)
    );
  i_can_registers_data_out_tmp_7_228 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => i_can_registers_N31748,
      ADR1 => CHOICE2081,
      ADR2 => CHOICE2116,
      ADR3 => i_can_registers_N31446,
      O => i_can_registers_data_out_tmp_7_228_O
    );
  i_can_bsp_n0138_8_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0138_8_O,
      O => i_can_bsp_n0138(8)
    );
  i_can_bsp_n0138_8_Q : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => i_can_bsp_n0158(8),
      ADR1 => i_can_bsp_N33580,
      ADR2 => N50992,
      ADR3 => i_can_bsp_N34298,
      O => i_can_bsp_n0138_8_O
    );
  i_can_registers_n01581_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_registers_n01581_O,
      O => i_can_registers_n0158
    );
  i_can_registers_n01581 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => i_can_registers_we_command,
      ADR1 => N54521,
      O => i_can_registers_n01581_O
    );
  i_can_registers_Ker317181_LUT3_D_BUF : X_BUF
    port map (
      I => i_can_registers_N31720,
      O => N55911
    );
  i_can_registers_Ker317181 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => addr_latched_4_3,
      ADR1 => i_can_registers_N31603,
      ADR2 => addr_latched_2_3,
      O => i_can_registers_N31720
    );
  i_can_bsp_n0154_2_20_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0154_2_20_O,
      O => i_can_bsp_n0154(2)
    );
  i_can_bsp_n0154_2_20 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => read_error_code_capture_reg,
      ADR1 => CHOICE1564,
      O => i_can_bsp_n0154_2_20_O
    );
  i_can_bsp_bit_cnt_inst_lut3_331_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_bit_cnt_inst_lut3_331_O,
      O => i_can_bsp_bit_cnt_inst_lut3_33
    );
  i_can_bsp_bit_cnt_inst_lut3_331 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_n0063,
      ADR1 => i_can_bsp_bit_cnt_26,
      O => i_can_bsp_bit_cnt_inst_lut3_331_O
    );
  i_can_bsp_n0140_8_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_bsp_n0140_8_O,
      O => i_can_bsp_n0140(8)
    );
  i_can_bsp_n0140_8_Q : X_LUT4
    generic map(
      INIT => X"000B"
    )
    port map (
      ADR0 => i_can_registers_node_bus_off_q,
      ADR1 => i_can_bsp_node_bus_off,
      ADR2 => we_tx_err_cnt,
      ADR3 => N42430,
      O => i_can_bsp_n0140_8_O
    );
  i_can_btl_Mcompar_n0035_inst_lut4_121_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_btl_Mcompar_n0035_inst_lut4_121_O,
      O => i_can_btl_Mcompar_n0035_inst_lut4_12
    );
  i_can_btl_Mcompar_n0035_inst_lut4_121 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(4),
      ADR1 => N23151,
      ADR2 => i_can_btl_quant_cnt(5),
      ADR3 => N23151,
      O => i_can_btl_Mcompar_n0035_inst_lut4_121_O
    );
  i_can_bsp_bit_cnt_inst_lut3_291_LUT2_L_BUF : X_BUF
    port map (
      I => i_can_bsp_bit_cnt_inst_lut3_291_O,
      O => i_can_bsp_bit_cnt_inst_lut3_29
    );
  i_can_bsp_bit_cnt_inst_lut3_291 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => i_can_bsp_n0063,
      ADR1 => i_can_bsp_bit_cnt_22,
      O => i_can_bsp_bit_cnt_inst_lut3_291_O
    );
  i_can_registers_data_out_tmp_3_144_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_registers_data_out_tmp_3_144_O,
      O => CHOICE2426
    );
  i_can_registers_data_out_tmp_3_144 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => i_can_registers_n0061,
      ADR1 => i_can_bsp_arbitration_lost_capture_30,
      ADR2 => i_can_registers_n0062,
      ADR3 => i_can_bsp_error_capture_code(3),
      O => i_can_registers_data_out_tmp_3_144_O
    );
  i_can_btl_Ker287381_LUT4_D_BUF : X_BUF
    port map (
      I => i_can_btl_N28740,
      O => N55903
    );
  i_can_btl_Ker287381 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => rx_i_IBUF,
      ADR1 => i_can_bsp_transmitting,
      ADR2 => i_can_btl_sync_blocked,
      ADR3 => i_can_btl_sampled_bit,
      O => i_can_btl_N28740
    );
  i_can_btl_Mcompar_n0035_inst_lut4_101_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_btl_Mcompar_n0035_inst_lut4_101_O,
      O => i_can_btl_Mcompar_n0035_inst_lut4_10
    );
  i_can_btl_Mcompar_n0035_inst_lut4_101 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(0),
      ADR1 => i_can_registers_BUS_TIMING_1_REG_data_out(4),
      ADR2 => i_can_btl_quant_cnt(1),
      ADR3 => i_can_registers_BUS_TIMING_1_REG_data_out(5),
      O => i_can_btl_Mcompar_n0035_inst_lut4_101_O
    );
  i_can_btl_go_sync1_LUT4_D_BUF : X_BUF
    port map (
      I => tx_point,
      O => N55900
    );
  i_can_btl_go_sync1 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => i_can_btl_resync,
      ADR1 => i_can_btl_n0035,
      ADR2 => i_can_btl_seg2,
      ADR3 => i_can_btl_N28750,
      O => tx_point
    );
  i_can_btl_Mcompar_n0035_inst_lut4_131_LUT4_L_BUF : X_BUF
    port map (
      I => i_can_btl_Mcompar_n0035_inst_lut4_131_O,
      O => i_can_btl_Mcompar_n0035_inst_lut4_13
    );
  i_can_btl_Mcompar_n0035_inst_lut4_131 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => i_can_btl_quant_cnt(6),
      ADR1 => N23151,
      ADR2 => i_can_btl_quant_cnt(7),
      ADR3 => N23151,
      O => i_can_btl_Mcompar_n0035_inst_lut4_131_O
    );
  i_can_registers_read_arbitration_lost_capture_reg_SW16_LUT4_D_BUF : X_BUF
    port map (
      I => read_arbitration_lost_capture_reg,
      O => N55897
    );
  i_can_registers_read_arbitration_lost_capture_reg_SW16 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => N54688,
      ADR1 => i_can_registers_N31898,
      ADR2 => addr_latched_0_1,
      ADR3 => i_can_registers_N31603,
      O => read_arbitration_lost_capture_reg
    );
  port_0_io_7_IOBUF_OBUFT : X_TRI
    port map (
      CTL => port_0_io_7_IOBUF_OBUFT_GTS_AND,
      I => data_out(7),
      O => port_0_io(7)
    );
  port_0_io_7_IOBUF_IBUF : X_BUF
    port map (
      I => port_0_io(7),
      O => N54533
    );
  port_0_io_0_IOBUF_OBUFT : X_TRI
    port map (
      CTL => port_0_io_0_IOBUF_OBUFT_GTS_AND,
      I => data_out(0),
      O => port_0_io(0)
    );
  port_0_io_0_IOBUF_IBUF : X_BUF
    port map (
      I => port_0_io(0),
      O => N54519
    );
  port_0_io_1_IOBUF_OBUFT : X_TRI
    port map (
      CTL => port_0_io_1_IOBUF_OBUFT_GTS_AND,
      I => data_out(1),
      O => port_0_io(1)
    );
  port_0_io_1_IOBUF_IBUF : X_BUF
    port map (
      I => port_0_io(1),
      O => N54521
    );
  port_0_io_2_IOBUF_OBUFT : X_TRI
    port map (
      CTL => port_0_io_2_IOBUF_OBUFT_GTS_AND,
      I => data_out(2),
      O => port_0_io(2)
    );
  port_0_io_2_IOBUF_IBUF : X_BUF
    port map (
      I => port_0_io(2),
      O => N54523
    );
  port_0_io_3_IOBUF_OBUFT : X_TRI
    port map (
      CTL => port_0_io_3_IOBUF_OBUFT_GTS_AND,
      I => data_out(3),
      O => port_0_io(3)
    );
  port_0_io_3_IOBUF_IBUF : X_BUF
    port map (
      I => port_0_io(3),
      O => N54525
    );
  port_0_io_4_IOBUF_OBUFT : X_TRI
    port map (
      CTL => port_0_io_4_IOBUF_OBUFT_GTS_AND,
      I => data_out(4),
      O => port_0_io(4)
    );
  port_0_io_4_IOBUF_IBUF : X_BUF
    port map (
      I => port_0_io(4),
      O => N54527
    );
  port_0_io_5_IOBUF_OBUFT : X_TRI
    port map (
      CTL => port_0_io_5_IOBUF_OBUFT_GTS_AND,
      I => data_out(5),
      O => port_0_io(5)
    );
  port_0_io_5_IOBUF_IBUF : X_BUF
    port map (
      I => port_0_io(5),
      O => N54529
    );
  port_0_io_6_IOBUF_OBUFT : X_TRI
    port map (
      CTL => port_0_io_6_IOBUF_OBUFT_GTS_AND,
      I => data_out(6),
      O => port_0_io(6)
    );
  port_0_io_6_IOBUF_IBUF : X_BUF
    port map (
      I => port_0_io(6),
      O => N54531
    );
  clk_i_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_i_BUFGP_IBUFG,
      O => clk_i_BUFGP
    );
  clk_i_BUFGP_IBUFG_610 : X_CKBUF
    port map (
      I => clk_i,
      O => clk_i_BUFGP_IBUFG
    );
  addr_latched_6_GSR_OR_611 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_6_GSR_OR
    );
  addr_latched_1_GSR_OR_612 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_1_GSR_OR
    );
  addr_latched_2_GSR_OR_613 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_2_GSR_OR
    );
  addr_latched_0_GSR_OR_614 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_0_GSR_OR
    );
  addr_latched_3_GSR_OR_615 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_3_GSR_OR
    );
  addr_latched_4_GSR_OR_616 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_4_GSR_OR
    );
  addr_latched_5_GSR_OR_617 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_5_GSR_OR
    );
  rd_i_q_GSR_OR_618 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => rd_i_q_GSR_OR
    );
  wr_i_q_GSR_OR_619 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => wr_i_q_GSR_OR
    );
  addr_latched_7_GSR_OR_620 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_7_GSR_OR
    );
  i_can_btl_clk_cnt_13_GSR_OR_621 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_clk_cnt_13_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_25_GSR_OR_622 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_25_GSR_OR
    );
  i_can_btl_resync_blocked_GSR_OR_623 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_resync_blocked_GSR_OR
    );
  i_can_btl_sync_blocked_GSR_OR_624 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_sync_blocked_GSR_OR
    );
  i_can_btl_sample_point_GSR_OR_625 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_sample_point_GSR_OR
    );
  i_can_btl_sampled_bit_q_GSR_OR_626 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_sampled_bit_q_GSR_OR
    );
  i_can_btl_sampled_bit_GSR_OR_627 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_sampled_bit_GSR_OR
    );
  i_can_btl_delay_3_GSR_OR_628 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_delay_3_GSR_OR
    );
  i_can_btl_quant_cnt_5_GSR_OR_629 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_quant_cnt_5_GSR_OR
    );
  i_can_btl_seg2_GSR_OR_630 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_seg2_GSR_OR
    );
  i_can_btl_seg1_GSR_OR_631 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_seg1_GSR_OR
    );
  i_can_btl_sync_GSR_OR_632 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_sync_GSR_OR
    );
  i_can_btl_resync_latched_GSR_OR_633 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_resync_latched_GSR_OR
    );
  i_can_btl_clk_en_GSR_OR_634 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_clk_en_GSR_OR
    );
  i_can_btl_clk_cnt_14_GSR_OR_635 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_clk_cnt_14_GSR_OR
    );
  i_can_btl_sample_0_GSR_OR_636 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_sample_0_GSR_OR
    );
  i_can_btl_sample_1_GSR_OR_637 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_sample_1_GSR_OR
    );
  i_can_btl_delay_0_GSR_OR_638 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_delay_0_GSR_OR
    );
  i_can_btl_delay_1_GSR_OR_639 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_delay_1_GSR_OR
    );
  i_can_btl_delay_2_GSR_OR_640 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_delay_2_GSR_OR
    );
  i_can_btl_quant_cnt_6_GSR_OR_641 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_quant_cnt_6_GSR_OR
    );
  i_can_btl_quant_cnt_7_GSR_OR_642 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_quant_cnt_7_GSR_OR
    );
  i_can_btl_quant_cnt_0_GSR_OR_643 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_quant_cnt_0_GSR_OR
    );
  i_can_btl_quant_cnt_1_GSR_OR_644 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_quant_cnt_1_GSR_OR
    );
  i_can_btl_quant_cnt_2_GSR_OR_645 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_quant_cnt_2_GSR_OR
    );
  i_can_btl_quant_cnt_3_GSR_OR_646 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_quant_cnt_3_GSR_OR
    );
  i_can_btl_quant_cnt_4_GSR_OR_647 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_quant_cnt_4_GSR_OR
    );
  i_can_btl_clk_cnt_15_GSR_OR_648 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_clk_cnt_15_GSR_OR
    );
  i_can_btl_clk_cnt_16_GSR_OR_649 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_clk_cnt_16_GSR_OR
    );
  i_can_btl_clk_cnt_8_GSR_OR_650 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_clk_cnt_8_GSR_OR
    );
  i_can_btl_clk_cnt_9_GSR_OR_651 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_clk_cnt_9_GSR_OR
    );
  i_can_btl_clk_cnt_10_GSR_OR_652 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_clk_cnt_10_GSR_OR
    );
  i_can_btl_clk_cnt_11_GSR_OR_653 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_clk_cnt_11_GSR_OR
    );
  i_can_btl_clk_cnt_12_GSR_OR_654 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_clk_cnt_12_GSR_OR
    );
  i_can_registers_arbitration_lost_irq_GSR_OR_655 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_arbitration_lost_irq_GSR_OR
    );
  i_can_registers_bus_error_irq_GSR_OR_656 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_bus_error_irq_GSR_OR
    );
  i_can_registers_error_irq_GSR_OR_657 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_error_irq_GSR_OR
    );
  i_can_registers_receive_irq_GSR_OR_658 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_receive_irq_GSR_OR
    );
  i_can_registers_transmit_irq_GSR_OR_659 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_transmit_irq_GSR_OR
    );
  i_can_registers_data_overrun_irq_GSR_OR_660 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_data_overrun_irq_GSR_OR
    );
  i_can_registers_data_out_7_GSR_OR_661 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_data_out_7_GSR_OR
    );
  i_can_registers_clkout_tmp_GSR_OR_662 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_clkout_tmp_GSR_OR
    );
  i_can_registers_clkout_cnt_1_GSR_OR_663 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_clkout_cnt_1_GSR_OR
    );
  i_can_registers_receive_buffer_status_GSR_OR_664 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_receive_buffer_status_GSR_OR
    );
  i_can_registers_overrun_status_GSR_OR_665 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_overrun_status_GSR_OR
    );
  i_can_registers_transmit_buffer_status_GSR_OR_666 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_transmit_buffer_status_GSR_OR
    );
  i_can_registers_transmission_complete_GSR_OR_667 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_transmission_complete_GSR_OR
    );
  i_can_registers_single_shot_transmission_GSR_OR_668 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_single_shot_transmission_GSR_OR
    );
  i_can_registers_ERROR_WARNING_REG_data_out_1_GSR_OR_669 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_ERROR_WARNING_REG_data_out_1_GSR_OR
    );
  i_can_registers_data_out_3_GSR_OR_670 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_data_out_3_GSR_OR
    );
  i_can_registers_MODE_REG_BASIC_data_out_2_GSR_OR_671 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_MODE_REG_BASIC_data_out_2_GSR_OR
    );
  i_can_registers_data_out_2_GSR_OR_672 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_data_out_2_GSR_OR
    );
  i_can_registers_data_out_1_GSR_OR_673 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_data_out_1_GSR_OR
    );
  i_can_registers_data_out_0_GSR_OR_674 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_data_out_0_GSR_OR
    );
  i_can_registers_MODE_REG_EXT_data_out_1_GSR_OR_675 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_MODE_REG_EXT_data_out_1_GSR_OR
    );
  i_can_registers_error_passive_irq_GSR_OR_676 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_error_passive_irq_GSR_OR
    );
  i_can_registers_ERROR_WARNING_REG_data_out_3_GSR_OR_677 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_ERROR_WARNING_REG_data_out_3_GSR_OR
    );
  i_can_registers_ERROR_WARNING_REG_data_out_7_GSR_OR_678 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_ERROR_WARNING_REG_data_out_7_GSR_OR
    );
  i_can_registers_ERROR_WARNING_REG_data_out_5_GSR_OR_679 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_ERROR_WARNING_REG_data_out_5_GSR_OR
    );
  i_can_registers_ERROR_WARNING_REG_data_out_0_GSR_OR_680 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_ERROR_WARNING_REG_data_out_0_GSR_OR
    );
  i_can_registers_ERROR_WARNING_REG_data_out_2_GSR_OR_681 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_ERROR_WARNING_REG_data_out_2_GSR_OR
    );
  i_can_registers_clkout_cnt_0_GSR_OR_682 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_clkout_cnt_0_GSR_OR
    );
  i_can_registers_clkout_cnt_2_GSR_OR_683 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_clkout_cnt_2_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_23_GSR_OR_684 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_23_GSR_OR
    );
  i_can_registers_ERROR_WARNING_REG_data_out_6_GSR_OR_685 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_ERROR_WARNING_REG_data_out_6_GSR_OR
    );
  i_can_registers_data_out_6_GSR_OR_686 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_data_out_6_GSR_OR
    );
  i_can_registers_data_out_5_GSR_OR_687 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_data_out_5_GSR_OR
    );
  i_can_registers_data_out_4_GSR_OR_688 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_data_out_4_GSR_OR
    );
  i_can_registers_ERROR_WARNING_REG_data_out_4_GSR_OR_689 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_ERROR_WARNING_REG_data_out_4_GSR_OR
    );
  i_can_registers_MODE_REG0_data_out_0_GSR_OR_690 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_MODE_REG0_data_out_0_GSR_OR
    );
  i_can_registers_MODE_REG_BASIC_data_out_3_GSR_OR_691 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_MODE_REG_BASIC_data_out_3_GSR_OR
    );
  i_can_registers_MODE_REG_BASIC_data_out_0_GSR_OR_692 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_MODE_REG_BASIC_data_out_0_GSR_OR
    );
  i_can_registers_MODE_REG_BASIC_data_out_1_GSR_OR_693 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_MODE_REG_BASIC_data_out_1_GSR_OR
    );
  i_can_registers_MODE_REG_EXT_data_out_2_GSR_OR_694 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_MODE_REG_EXT_data_out_2_GSR_OR
    );
  i_can_registers_MODE_REG_EXT_data_out_0_GSR_OR_695 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_MODE_REG_EXT_data_out_0_GSR_OR
    );
  i_can_registers_COMMAND_REG4_data_out_0_GSR_OR_696 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_COMMAND_REG4_data_out_0_GSR_OR
    );
  i_can_registers_COMMAND_REG1_data_out_0_GSR_OR_697 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_COMMAND_REG1_data_out_0_GSR_OR
    );
  i_can_registers_COMMAND_REG0_data_out_0_GSR_OR_698 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_COMMAND_REG0_data_out_0_GSR_OR
    );
  i_can_registers_COMMAND_REG_data_out_0_GSR_OR_699 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_COMMAND_REG_data_out_0_GSR_OR
    );
  i_can_registers_COMMAND_REG_data_out_1_GSR_OR_700 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_COMMAND_REG_data_out_1_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_26_GSR_OR_701 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_26_GSR_OR
    );
  i_can_bsp_crc_err_GSR_OR_702 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_err_GSR_OR
    );
  i_can_bsp_crc_enable_GSR_OR_703 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_enable_GSR_OR
    );
  i_can_bsp_bit_stuff_cnt_tx_0_GSR_OR_704 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_stuff_cnt_tx_0_GSR_OR
    );
  i_can_bsp_rx_crc_GSR_OR_705 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_crc_GSR_OR
    );
  i_can_bsp_rx_data_GSR_OR_706 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_data_GSR_OR
    );
  i_can_bsp_rx_dlc_GSR_OR_707 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_dlc_GSR_OR
    );
  i_can_bsp_rx_r0_GSR_OR_708 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_r0_GSR_OR
    );
  i_can_bsp_rx_r1_GSR_OR_709 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_r1_GSR_OR
    );
  i_can_bsp_rx_rtr2_GSR_OR_710 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_rtr2_GSR_OR
    );
  i_can_bsp_rx_id2_GSR_OR_711 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_id2_GSR_OR
    );
  i_can_bsp_rx_ide_GSR_OR_712 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_ide_GSR_OR
    );
  i_can_bsp_tx_err_cnt_6_GSR_OR_713 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_err_cnt_6_GSR_OR
    );
  i_can_bsp_tx_err_cnt_5_GSR_OR_714 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_err_cnt_5_GSR_OR
    );
  i_can_bsp_tx_err_cnt_4_GSR_OR_715 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_err_cnt_4_GSR_OR
    );
  i_can_bsp_id_6_GSR_OR_716 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_6_GSR_OR
    );
  i_can_bsp_tx_err_cnt_2_GSR_OR_717 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_err_cnt_2_GSR_OR
    );
  i_can_bsp_id_7_GSR_OR_718 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_7_GSR_OR
    );
  i_can_bsp_tx_err_cnt_1_GSR_OR_719 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_err_cnt_1_GSR_OR
    );
  i_can_bsp_id_8_GSR_OR_720 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_8_GSR_OR
    );
  i_can_bsp_arbitration_blocked_GSR_OR_721 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_arbitration_blocked_GSR_OR
    );
  i_can_bsp_tx_err_cnt_0_GSR_OR_722 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_err_cnt_0_GSR_OR
    );
  i_can_bsp_id_9_GSR_OR_723 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_9_GSR_OR
    );
  i_can_bsp_error_capture_code_6_GSR_OR_724 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_capture_code_6_GSR_OR
    );
  i_can_bsp_arbitration_cnt_en_GSR_OR_725 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_arbitration_cnt_en_GSR_OR
    );
  i_can_bsp_id_10_GSR_OR_726 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_10_GSR_OR
    );
  i_can_bsp_error_capture_code_5_GSR_OR_727 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_capture_code_5_GSR_OR
    );
  i_can_bsp_id_11_GSR_OR_728 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_11_GSR_OR
    );
  i_can_bsp_arbitration_lost_GSR_OR_729 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_arbitration_lost_GSR_OR
    );
  i_can_bsp_finish_msg_GSR_OR_730 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_finish_msg_GSR_OR
    );
  i_can_bsp_arbitration_lost_capture_29_GSR_OR_731 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_arbitration_lost_capture_29_GSR_OR
    );
  i_can_bsp_error_capture_code_4_GSR_OR_732 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_capture_code_4_GSR_OR
    );
  i_can_bsp_id_12_GSR_OR_733 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_12_GSR_OR
    );
  i_can_bsp_error_capture_code_3_GSR_OR_734 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_capture_code_3_GSR_OR
    );
  i_can_bsp_error_capture_code_2_GSR_OR_735 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_capture_code_2_GSR_OR
    );
  i_can_bsp_id_13_GSR_OR_736 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_13_GSR_OR
    );
  i_can_bsp_error_capture_code_1_GSR_OR_737 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_capture_code_1_GSR_OR
    );
  i_can_bsp_id_14_GSR_OR_738 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_14_GSR_OR
    );
  i_can_bsp_error_capture_code_0_GSR_OR_739 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_capture_code_0_GSR_OR
    );
  i_can_bsp_passive_cnt_1_GSR_OR_740 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_passive_cnt_1_GSR_OR
    );
  i_can_bsp_id_15_GSR_OR_741 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_15_GSR_OR
    );
  i_can_bsp_passive_cnt_0_GSR_OR_742 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_passive_cnt_0_GSR_OR
    );
  i_can_bsp_id_16_GSR_OR_743 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_16_GSR_OR
    );
  i_can_bsp_bus_free_cnt_2_GSR_OR_744 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bus_free_cnt_2_GSR_OR
    );
  i_can_bsp_id_17_GSR_OR_745 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_17_GSR_OR
    );
  i_can_bsp_bus_free_cnt_1_GSR_OR_746 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bus_free_cnt_1_GSR_OR
    );
  i_can_bsp_id_18_GSR_OR_747 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_18_GSR_OR
    );
  i_can_bsp_suspend_GSR_OR_748 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_suspend_GSR_OR
    );
  i_can_bsp_susp_cnt_en_GSR_OR_749 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_susp_cnt_en_GSR_OR
    );
  i_can_bsp_bus_free_cnt_0_GSR_OR_750 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bus_free_cnt_0_GSR_OR
    );
  i_can_bsp_id_19_GSR_OR_751 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_19_GSR_OR
    );
  i_can_bsp_transmitting_GSR_OR_752 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_transmitting_GSR_OR
    );
  i_can_bsp_id_20_GSR_OR_753 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_20_GSR_OR
    );
  i_can_bsp_id_21_GSR_OR_754 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_21_GSR_OR
    );
  i_can_bsp_transmitter_GSR_OR_755 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_transmitter_GSR_OR
    );
  i_can_bsp_rx_ack_lim_GSR_OR_756 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_ack_lim_GSR_OR
    );
  i_can_bsp_go_early_tx_latched_GSR_OR_757 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_go_early_tx_latched_GSR_OR
    );
  i_can_bsp_tx_state_GSR_OR_758 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_bsp_tx_state_GSR_OR
    );
  i_can_bsp_id_22_GSR_OR_759 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_22_GSR_OR
    );
  i_can_bsp_id_23_GSR_OR_760 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_23_GSR_OR
    );
  i_can_bsp_id_24_GSR_OR_761 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_24_GSR_OR
    );
  i_can_bsp_id_25_GSR_OR_762 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_25_GSR_OR
    );
  i_can_bsp_id_27_GSR_OR_763 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_27_GSR_OR
    );
  i_can_bsp_tx_pointer_24_GSR_OR_764 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_pointer_24_GSR_OR
    );
  i_can_bsp_id_28_GSR_OR_765 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_28_GSR_OR
    );
  i_can_bsp_error_capture_code_blocked_GSR_OR_766 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_capture_code_blocked_GSR_OR
    );
  i_can_bsp_error_capture_code_7_GSR_OR_767 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_capture_code_7_GSR_OR
    );
  i_can_bsp_waiting_for_bus_free_GSR_OR_768 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_bsp_waiting_for_bus_free_GSR_OR
    );
  i_can_bsp_bus_free_GSR_OR_769 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bus_free_GSR_OR
    );
  i_can_bsp_bus_free_cnt_en_GSR_OR_770 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bus_free_cnt_en_GSR_OR
    );
  i_can_bsp_node_error_passive_GSR_OR_771 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_node_error_passive_GSR_OR
    );
  i_can_bsp_rx_err_cnt_blocked_GSR_OR_772 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_err_cnt_blocked_GSR_OR
    );
  i_can_bsp_rx_crc_lim_GSR_OR_773 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_crc_lim_GSR_OR
    );
  i_can_bsp_tx_err_cnt_3_GSR_OR_774 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_err_cnt_3_GSR_OR
    );
  i_can_bsp_id_26_GSR_OR_775 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_26_GSR_OR
    );
  i_can_bsp_bus_free_cnt_3_GSR_OR_776 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bus_free_cnt_3_GSR_OR
    );
  i_can_bsp_node_bus_off_GSR_OR_777 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_node_bus_off_GSR_OR
    );
  i_can_bsp_rx_rtr1_GSR_OR_778 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_rtr1_GSR_OR
    );
  i_can_bsp_rx_id1_GSR_OR_779 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_id1_GSR_OR
    );
  i_can_bsp_crc_in_1_GSR_OR_780 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_1_GSR_OR
    );
  i_can_bsp_tx_GSR_OR_781 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_GSR_OR
    );
  i_can_bsp_crc_in_2_GSR_OR_782 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_2_GSR_OR
    );
  i_can_bsp_crc_in_3_GSR_OR_783 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_3_GSR_OR
    );
  i_can_bsp_overload_frame_blocked_GSR_OR_784 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_overload_frame_blocked_GSR_OR
    );
  i_can_bsp_enable_overload_cnt2_GSR_OR_785 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_enable_overload_cnt2_GSR_OR
    );
  i_can_bsp_crc_in_5_GSR_OR_786 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_5_GSR_OR
    );
  i_can_bsp_crc_in_6_GSR_OR_787 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_6_GSR_OR
    );
  i_can_bsp_crc_in_7_GSR_OR_788 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_7_GSR_OR
    );
  i_can_bsp_passive_cnt_2_GSR_OR_789 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_passive_cnt_2_GSR_OR
    );
  i_can_bsp_overload_frame_GSR_OR_790 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_overload_frame_GSR_OR
    );
  i_can_bsp_crc_in_9_GSR_OR_791 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_9_GSR_OR
    );
  i_can_bsp_crc_in_8_GSR_OR_792 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_8_GSR_OR
    );
  i_can_bsp_crc_in_10_GSR_OR_793 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_10_GSR_OR
    );
  i_can_bsp_tmp_data_2_GSR_OR_794 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tmp_data_2_GSR_OR
    );
  i_can_bsp_error_flag_over_blocked_GSR_OR_795 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_flag_over_blocked_GSR_OR
    );
  i_can_bsp_enable_error_cnt2_GSR_OR_796 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_enable_error_cnt2_GSR_OR
    );
  i_can_bsp_tmp_data_3_GSR_OR_797 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tmp_data_3_GSR_OR
    );
  i_can_bsp_error_frame_GSR_OR_798 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_frame_GSR_OR
    );
  i_can_bsp_tmp_data_5_GSR_OR_799 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tmp_data_5_GSR_OR
    );
  i_can_bsp_tmp_data_6_GSR_OR_800 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tmp_data_6_GSR_OR
    );
  i_can_bsp_rule3_exc2_GSR_OR_801 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rule3_exc2_GSR_OR
    );
  i_can_bsp_stuff_err_latched_GSR_OR_802 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_stuff_err_latched_GSR_OR
    );
  i_can_bsp_id_0_GSR_OR_803 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_0_GSR_OR
    );
  i_can_bsp_data_len_3_GSR_OR_804 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_data_len_3_GSR_OR
    );
  i_can_bsp_data_len_2_GSR_OR_805 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_data_len_2_GSR_OR
    );
  i_can_bsp_data_len_1_GSR_OR_806 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_data_len_1_GSR_OR
    );
  i_can_bsp_data_len_0_GSR_OR_807 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_data_len_0_GSR_OR
    );
  i_can_bsp_tmp_data_7_GSR_OR_808 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tmp_data_7_GSR_OR
    );
  i_can_bsp_id_1_GSR_OR_809 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_1_GSR_OR
    );
  i_can_bsp_rule3_exc1_1_GSR_OR_810 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rule3_exc1_1_GSR_OR
    );
  i_can_bsp_id_2_GSR_OR_811 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_id_2_GSR_OR
    );
  i_can_bsp_id_3_GSR_OR_812 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_3_GSR_OR
    );
  i_can_bsp_id_5_GSR_OR_813 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_5_GSR_OR
    );
  i_can_bsp_id_4_GSR_OR_814 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_id_4_GSR_OR
    );
  i_can_bsp_rx_err_cnt_2_GSR_OR_815 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_err_cnt_2_GSR_OR
    );
  i_can_bsp_rx_err_cnt_3_GSR_OR_816 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_err_cnt_3_GSR_OR
    );
  i_can_bsp_rx_err_cnt_0_GSR_OR_817 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_err_cnt_0_GSR_OR
    );
  i_can_bsp_rx_err_cnt_1_GSR_OR_818 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_err_cnt_1_GSR_OR
    );
  i_can_bsp_tx_err_cnt_7_GSR_OR_819 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_err_cnt_7_GSR_OR
    );
  i_can_bsp_rx_err_cnt_8_GSR_OR_820 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_err_cnt_8_GSR_OR
    );
  i_can_bsp_tx_err_cnt_8_GSR_OR_821 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_err_cnt_8_GSR_OR
    );
  i_can_bsp_rx_idle_GSR_OR_822 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_idle_GSR_OR
    );
  i_can_bsp_crc_in_0_GSR_OR_823 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_0_GSR_OR
    );
  i_can_bsp_crc_in_4_GSR_OR_824 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_4_GSR_OR
    );
  i_can_bsp_tmp_data_1_GSR_OR_825 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tmp_data_1_GSR_OR
    );
  i_can_bsp_data_cnt_18_GSR_OR_826 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_data_cnt_18_GSR_OR
    );
  i_can_bsp_tmp_data_4_GSR_OR_827 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tmp_data_4_GSR_OR
    );
  i_can_bsp_form_err_latched_GSR_OR_828 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_form_err_latched_GSR_OR
    );
  i_can_bsp_wr_fifo_GSR_OR_829 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_bsp_wr_fifo_GSR_OR
    );
  i_can_bsp_rule3_exc1_2_GSR_OR_830 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rule3_exc1_2_GSR_OR
    );
  i_can_bsp_rx_err_cnt_7_GSR_OR_831 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_err_cnt_7_GSR_OR
    );
  i_can_bsp_bit_err_latched_GSR_OR_832 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_err_latched_GSR_OR
    );
  i_can_bsp_rx_err_cnt_6_GSR_OR_833 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_err_cnt_6_GSR_OR
    );
  i_can_bsp_bit_cnt_24_GSR_OR_834 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_cnt_24_GSR_OR
    );
  i_can_bsp_write_data_to_tmp_fifo_GSR_OR_835 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_bsp_write_data_to_tmp_fifo_GSR_OR
    );
  i_can_bsp_ide_GSR_OR_836 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_ide_GSR_OR
    );
  i_can_bsp_rtr2_GSR_OR_837 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rtr2_GSR_OR
    );
  i_can_bsp_rtr1_GSR_OR_838 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rtr1_GSR_OR
    );
  i_can_bsp_rx_inter_GSR_OR_839 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_inter_GSR_OR
    );
  i_can_bsp_rx_eof_GSR_OR_840 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_eof_GSR_OR
    );
  i_can_bsp_rx_err_cnt_4_GSR_OR_841 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_err_cnt_4_GSR_OR
    );
  i_can_bsp_ack_err_latched_GSR_OR_842 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_ack_err_latched_GSR_OR
    );
  i_can_bsp_rx_err_cnt_5_GSR_OR_843 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_err_cnt_5_GSR_OR
    );
  i_can_bsp_crc_in_11_GSR_OR_844 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_11_GSR_OR
    );
  i_can_bsp_crc_in_12_GSR_OR_845 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_12_GSR_OR
    );
  i_can_bsp_crc_in_13_GSR_OR_846 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_13_GSR_OR
    );
  i_can_bsp_crc_in_14_GSR_OR_847 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_crc_in_14_GSR_OR
    );
  i_can_bsp_tmp_data_0_GSR_OR_848 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tmp_data_0_GSR_OR
    );
  i_can_bsp_need_to_tx_GSR_OR_849 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_need_to_tx_GSR_OR
    );
  i_can_bsp_rx_ack_GSR_OR_850 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_rx_ack_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_22_GSR_OR_851 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_22_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_21_GSR_OR_852 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_21_GSR_OR
    );
  i_can_bsp_bit_stuff_cnt_0_GSR_OR_853 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_stuff_cnt_0_GSR_OR
    );
  i_can_bsp_bit_stuff_cnt_en_GSR_OR_854 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_stuff_cnt_en_GSR_OR
    );
  i_can_bsp_bit_stuff_cnt_tx_2_GSR_OR_855 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_stuff_cnt_tx_2_GSR_OR
    );
  i_can_bsp_bit_stuff_cnt_tx_1_GSR_OR_856 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_stuff_cnt_tx_1_GSR_OR
    );
  i_can_bsp_bit_stuff_cnt_2_GSR_OR_857 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_stuff_cnt_2_GSR_OR
    );
  i_can_bsp_bit_stuff_cnt_1_GSR_OR_858 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_stuff_cnt_1_GSR_OR
    );
  i_can_bsp_susp_cnt_2_GSR_OR_859 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_susp_cnt_2_GSR_OR
    );
  i_can_bsp_susp_cnt_0_GSR_OR_860 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_susp_cnt_0_GSR_OR
    );
  i_can_bsp_susp_cnt_1_GSR_OR_861 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_susp_cnt_1_GSR_OR
    );
  i_can_bsp_overload_cnt2_2_GSR_OR_862 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_overload_cnt2_2_GSR_OR
    );
  i_can_bsp_overload_cnt2_0_GSR_OR_863 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_overload_cnt2_0_GSR_OR
    );
  i_can_bsp_overload_cnt2_1_GSR_OR_864 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_overload_cnt2_1_GSR_OR
    );
  i_can_bsp_overload_cnt1_2_GSR_OR_865 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_overload_cnt1_2_GSR_OR
    );
  i_can_bsp_overload_cnt1_0_GSR_OR_866 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_overload_cnt1_0_GSR_OR
    );
  i_can_bsp_overload_cnt1_1_GSR_OR_867 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_overload_cnt1_1_GSR_OR
    );
  i_can_bsp_delayed_dominant_cnt_2_GSR_OR_868 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_delayed_dominant_cnt_2_GSR_OR
    );
  i_can_bsp_delayed_dominant_cnt_0_GSR_OR_869 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_delayed_dominant_cnt_0_GSR_OR
    );
  i_can_bsp_delayed_dominant_cnt_1_GSR_OR_870 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_delayed_dominant_cnt_1_GSR_OR
    );
  i_can_bsp_error_cnt2_2_GSR_OR_871 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_cnt2_2_GSR_OR
    );
  i_can_bsp_error_cnt2_0_GSR_OR_872 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_cnt2_0_GSR_OR
    );
  i_can_bsp_error_cnt2_1_GSR_OR_873 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_cnt2_1_GSR_OR
    );
  i_can_bsp_error_cnt1_2_GSR_OR_874 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_cnt1_2_GSR_OR
    );
  i_can_bsp_error_cnt1_0_GSR_OR_875 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_cnt1_0_GSR_OR
    );
  i_can_bsp_error_cnt1_1_GSR_OR_876 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_error_cnt1_1_GSR_OR
    );
  i_can_bsp_header_cnt_2_GSR_OR_877 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_header_cnt_2_GSR_OR
    );
  i_can_bsp_header_cnt_0_GSR_OR_878 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_header_cnt_0_GSR_OR
    );
  i_can_bsp_header_cnt_1_GSR_OR_879 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_header_cnt_1_GSR_OR
    );
  i_can_bsp_eof_cnt_2_GSR_OR_880 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_eof_cnt_2_GSR_OR
    );
  i_can_bsp_eof_cnt_0_GSR_OR_881 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_eof_cnt_0_GSR_OR
    );
  i_can_bsp_eof_cnt_1_GSR_OR_882 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_eof_cnt_1_GSR_OR
    );
  i_can_bsp_byte_cnt_2_GSR_OR_883 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_byte_cnt_2_GSR_OR
    );
  i_can_bsp_byte_cnt_0_GSR_OR_884 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_byte_cnt_0_GSR_OR
    );
  i_can_bsp_byte_cnt_1_GSR_OR_885 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_byte_cnt_1_GSR_OR
    );
  i_can_bsp_data_cnt_19_GSR_OR_886 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_data_cnt_19_GSR_OR
    );
  i_can_bsp_data_cnt_20_GSR_OR_887 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_data_cnt_20_GSR_OR
    );
  i_can_bsp_data_cnt_17_GSR_OR_888 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_data_cnt_17_GSR_OR
    );
  i_can_bsp_tx_pointer_25_GSR_OR_889 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_bsp_tx_pointer_25_GSR_OR
    );
  i_can_bsp_tx_pointer_26_GSR_OR_890 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_bsp_tx_pointer_26_GSR_OR
    );
  i_can_bsp_tx_pointer_21_GSR_OR_891 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_pointer_21_GSR_OR
    );
  i_can_bsp_tx_pointer_22_GSR_OR_892 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_pointer_22_GSR_OR
    );
  i_can_bsp_tx_pointer_23_GSR_OR_893 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_pointer_23_GSR_OR
    );
  i_can_bsp_bit_cnt_25_GSR_OR_894 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_cnt_25_GSR_OR
    );
  i_can_bsp_bit_cnt_26_GSR_OR_895 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_cnt_26_GSR_OR
    );
  i_can_bsp_bit_cnt_21_GSR_OR_896 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_cnt_21_GSR_OR
    );
  i_can_bsp_bit_cnt_22_GSR_OR_897 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_cnt_22_GSR_OR
    );
  i_can_bsp_bit_cnt_23_GSR_OR_898 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_bit_cnt_23_GSR_OR
    );
  i_can_bsp_arbitration_lost_capture_30_GSR_OR_899 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_arbitration_lost_capture_30_GSR_OR
    );
  i_can_bsp_arbitration_lost_capture_31_GSR_OR_900 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_arbitration_lost_capture_31_GSR_OR
    );
  i_can_bsp_arbitration_lost_capture_27_GSR_OR_901 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_arbitration_lost_capture_27_GSR_OR
    );
  i_can_bsp_arbitration_lost_capture_28_GSR_OR_902 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => i_can_bsp_arbitration_lost_capture_28_GSR_OR
    );
  i_can_bsp_i_can_acf_id_ok_GSR_OR_903 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_acf_id_ok_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_pointer_3_GSR_OR_904 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_pointer_3_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_pointer_2_GSR_OR_905 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_pointer_2_GSR_OR
    );
  i_can_bsp_i_can_fifo_fifo_cnt_0_GSR_OR_906 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_fifo_cnt_0_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_pointer_0_GSR_OR_907 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_pointer_0_GSR_OR
    );
  i_can_bsp_i_can_fifo_fifo_cnt_5_GSR_OR_908 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_fifo_cnt_5_GSR_OR
    );
  i_can_bsp_i_can_fifo_info_cnt_5_GSR_OR_909 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_info_cnt_5_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_23_GSR_OR_910 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_23_GSR_OR
    );
  i_can_bsp_i_can_fifo_fifo_cnt_3_GSR_OR_911 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_fifo_cnt_3_GSR_OR
    );
  i_can_bsp_i_can_fifo_fifo_cnt_2_GSR_OR_912 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_fifo_cnt_2_GSR_OR
    );
  i_can_bsp_i_can_fifo_fifo_cnt_1_GSR_OR_913 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_fifo_cnt_1_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_pointer_1_GSR_OR_914 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_pointer_1_GSR_OR
    );
  i_can_bsp_i_can_fifo_fifo_cnt_4_GSR_OR_915 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_fifo_cnt_4_GSR_OR
    );
  i_can_bsp_i_can_fifo_fifo_cnt_6_GSR_OR_916 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_fifo_cnt_6_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_pointer_4_GSR_OR_917 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_pointer_4_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_q_GSR_OR_918 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_q_GSR_OR
    );
  i_can_bsp_i_can_fifo_len_cnt_18_GSR_OR_919 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_len_cnt_18_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_24_GSR_OR_920 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_24_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_24_GSR_OR_921 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_24_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_pointer_5_GSR_OR_922 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_pointer_5_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_pointer_24_GSR_OR_923 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_pointer_24_GSR_OR
    );
  i_can_bsp_i_can_fifo_latch_overrun_GSR_OR_924 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_latch_overrun_GSR_OR
    );
  i_can_bsp_i_can_fifo_info_cnt_6_GSR_OR_925 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_info_cnt_6_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_22_GSR_OR_926 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_22_GSR_OR
    );
  i_can_bsp_i_can_fifo_info_cnt_0_GSR_OR_927 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_info_cnt_0_GSR_OR
    );
  i_can_bsp_i_can_fifo_info_cnt_1_GSR_OR_928 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_info_cnt_1_GSR_OR
    );
  i_can_bsp_i_can_fifo_info_cnt_2_GSR_OR_929 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_info_cnt_2_GSR_OR
    );
  i_can_bsp_i_can_fifo_info_cnt_3_GSR_OR_930 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_info_cnt_3_GSR_OR
    );
  i_can_bsp_i_can_fifo_info_cnt_4_GSR_OR_931 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_info_cnt_4_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_info_pointer_21_GSR_OR_932 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_info_pointer_21_GSR_OR
    );
  i_can_bsp_i_can_fifo_len_cnt_19_GSR_OR_933 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_len_cnt_19_GSR_OR
    );
  i_can_bsp_i_can_fifo_len_cnt_20_GSR_OR_934 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_len_cnt_20_GSR_OR
    );
  i_can_bsp_i_can_fifo_len_cnt_17_GSR_OR_935 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_len_cnt_17_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_pointer_25_GSR_OR_936 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_pointer_25_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_pointer_26_GSR_OR_937 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_pointer_26_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_pointer_21_GSR_OR_938 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_pointer_21_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_pointer_22_GSR_OR_939 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_pointer_22_GSR_OR
    );
  i_can_bsp_i_can_fifo_wr_pointer_23_GSR_OR_940 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_wr_pointer_23_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_25_GSR_OR_941 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_25_GSR_OR
    );
  i_can_bsp_i_can_fifo_rd_info_pointer_26_GSR_OR_942 : X_OR2
    port map (
      I0 => rst_i_IBUF_3,
      I1 => GSR,
      O => i_can_bsp_i_can_fifo_rd_info_pointer_26_GSR_OR
    );
  i_can_btl_sampled_bit_1_GSR_OR_943 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_btl_sampled_bit_1_GSR_OR
    );
  addr_latched_0_1_GSR_OR_944 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_0_1_GSR_OR
    );
  addr_latched_0_2_GSR_OR_945 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_0_2_GSR_OR
    );
  addr_latched_2_1_GSR_OR_946 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_2_1_GSR_OR
    );
  addr_latched_2_2_GSR_OR_947 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_2_2_GSR_OR
    );
  addr_latched_2_3_GSR_OR_948 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_2_3_GSR_OR
    );
  addr_latched_2_4_GSR_OR_949 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_2_4_GSR_OR
    );
  addr_latched_4_1_GSR_OR_950 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_4_1_GSR_OR
    );
  addr_latched_4_2_GSR_OR_951 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_4_2_GSR_OR
    );
  addr_latched_4_3_GSR_OR_952 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_4_3_GSR_OR
    );
  addr_latched_4_4_GSR_OR_953 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_4_4_GSR_OR
    );
  addr_latched_1_1_GSR_OR_954 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_1_1_GSR_OR
    );
  addr_latched_1_2_GSR_OR_955 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_1_2_GSR_OR
    );
  addr_latched_1_3_GSR_OR_956 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_1_3_GSR_OR
    );
  addr_latched_3_1_GSR_OR_957 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_3_1_GSR_OR
    );
  addr_latched_3_2_GSR_OR_958 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_3_2_GSR_OR
    );
  addr_latched_0_3_GSR_OR_959 : X_OR2
    port map (
      I0 => rst_i_IBUF,
      I1 => GSR,
      O => addr_latched_0_3_GSR_OR
    );
  i_can_registers_MODE_REG0_data_out_0_1_GSR_OR_960 : X_OR2
    port map (
      I0 => rst_i_IBUF_1,
      I1 => GSR,
      O => i_can_registers_MODE_REG0_data_out_0_1_GSR_OR
    );
  i_can_bsp_tx_pointer_21_1_GSR_OR_961 : X_OR2
    port map (
      I0 => rst_i_IBUF_2,
      I1 => GSR,
      O => i_can_bsp_tx_pointer_21_1_GSR_OR
    );
  port_0_io_0_IOBUF_OBUFT_GTS_AND_962 : X_AND2
    port map (
      I0 => NlwInverterSignal_port_0_io_0_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_port_0_io_0_IOBUF_OBUFT_GTS_AND_IN1,
      O => port_0_io_0_IOBUF_OBUFT_GTS_AND
    );
  port_0_io_1_IOBUF_OBUFT_GTS_AND_963 : X_AND2
    port map (
      I0 => NlwInverterSignal_port_0_io_1_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_port_0_io_1_IOBUF_OBUFT_GTS_AND_IN1,
      O => port_0_io_1_IOBUF_OBUFT_GTS_AND
    );
  port_0_io_2_IOBUF_OBUFT_GTS_AND_964 : X_AND2
    port map (
      I0 => NlwInverterSignal_port_0_io_2_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_port_0_io_2_IOBUF_OBUFT_GTS_AND_IN1,
      O => port_0_io_2_IOBUF_OBUFT_GTS_AND
    );
  port_0_io_3_IOBUF_OBUFT_GTS_AND_965 : X_AND2
    port map (
      I0 => NlwInverterSignal_port_0_io_3_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_port_0_io_3_IOBUF_OBUFT_GTS_AND_IN1,
      O => port_0_io_3_IOBUF_OBUFT_GTS_AND
    );
  port_0_io_4_IOBUF_OBUFT_GTS_AND_966 : X_AND2
    port map (
      I0 => NlwInverterSignal_port_0_io_4_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_port_0_io_4_IOBUF_OBUFT_GTS_AND_IN1,
      O => port_0_io_4_IOBUF_OBUFT_GTS_AND
    );
  port_0_io_5_IOBUF_OBUFT_GTS_AND_967 : X_AND2
    port map (
      I0 => NlwInverterSignal_port_0_io_5_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_port_0_io_5_IOBUF_OBUFT_GTS_AND_IN1,
      O => port_0_io_5_IOBUF_OBUFT_GTS_AND
    );
  port_0_io_6_IOBUF_OBUFT_GTS_AND_968 : X_AND2
    port map (
      I0 => NlwInverterSignal_port_0_io_6_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_port_0_io_6_IOBUF_OBUFT_GTS_AND_IN1,
      O => port_0_io_6_IOBUF_OBUFT_GTS_AND
    );
  port_0_io_7_IOBUF_OBUFT_GTS_AND_969 : X_AND2
    port map (
      I0 => NlwInverterSignal_port_0_io_7_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_port_0_io_7_IOBUF_OBUFT_GTS_AND_IN1,
      O => port_0_io_7_IOBUF_OBUFT_GTS_AND
    );
  tx_o_OBUFT_GTS_AND_970 : X_AND2
    port map (
      I0 => NlwInverterSignal_tx_o_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_tx_o_OBUFT_GTS_AND_IN1,
      O => tx_o_OBUFT_GTS_AND
    );
  clkout_o_OBUF_GTS_TRI_971 : X_TRI
    port map (
      I => clkout_o_OBUF_GTS_TRI,
      CTL => NlwInverterSignal_clkout_o_OBUF_GTS_TRI_CTL,
      O => clkout_o
    );
  irq_on_OBUF_GTS_TRI_972 : X_TRI
    port map (
      I => irq_on_OBUF_GTS_TRI,
      CTL => NlwInverterSignal_irq_on_OBUF_GTS_TRI_CTL,
      O => irq_on
    );
  NlwInverterBlock_addr_latched_6_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_6_C
    );
  NlwBlock_can_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_addr_latched_1_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_1_C
    );
  NlwInverterBlock_addr_latched_2_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_2_C
    );
  NlwInverterBlock_addr_latched_0_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_0_C
    );
  NlwInverterBlock_addr_latched_3_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_3_C
    );
  NlwInverterBlock_addr_latched_4_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_4_C
    );
  NlwInverterBlock_addr_latched_5_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_5_C
    );
  NlwBlock_can_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_addr_latched_7_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_7_C
    );
  NlwInverterBlock_addr_latched_0_1_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_0_1_C
    );
  NlwInverterBlock_addr_latched_0_2_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_0_2_C
    );
  NlwInverterBlock_addr_latched_2_1_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_2_1_C
    );
  NlwInverterBlock_addr_latched_2_2_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_2_2_C
    );
  NlwInverterBlock_addr_latched_2_3_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_2_3_C
    );
  NlwInverterBlock_addr_latched_2_4_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_2_4_C
    );
  NlwInverterBlock_addr_latched_4_1_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_4_1_C
    );
  NlwInverterBlock_addr_latched_4_2_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_4_2_C
    );
  NlwInverterBlock_addr_latched_4_3_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_4_3_C
    );
  NlwInverterBlock_addr_latched_4_4_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_4_4_C
    );
  NlwInverterBlock_addr_latched_1_1_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_1_1_C
    );
  NlwInverterBlock_addr_latched_1_2_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_1_2_C
    );
  NlwInverterBlock_addr_latched_1_3_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_1_3_C
    );
  NlwInverterBlock_addr_latched_3_1_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_3_1_C
    );
  NlwInverterBlock_addr_latched_3_2_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_3_2_C
    );
  NlwInverterBlock_addr_latched_0_3_C : X_INV
    port map (
      I => clk_i_BUFGP,
      O => NlwInverterSignal_addr_latched_0_3_C
    );
  NlwInverterBlock_port_0_io_0_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I8_N3072,
      O => NlwInverterSignal_port_0_io_0_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_port_0_io_0_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_port_0_io_0_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_port_0_io_1_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I8_N3072,
      O => NlwInverterSignal_port_0_io_1_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_port_0_io_1_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_port_0_io_1_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_port_0_io_2_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I8_N3072,
      O => NlwInverterSignal_port_0_io_2_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_port_0_io_2_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_port_0_io_2_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_port_0_io_3_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I8_N3072,
      O => NlwInverterSignal_port_0_io_3_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_port_0_io_3_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_port_0_io_3_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_port_0_io_4_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I8_N3072,
      O => NlwInverterSignal_port_0_io_4_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_port_0_io_4_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_port_0_io_4_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_port_0_io_5_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I8_N3072,
      O => NlwInverterSignal_port_0_io_5_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_port_0_io_5_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_port_0_io_5_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_port_0_io_6_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I8_N3072,
      O => NlwInverterSignal_port_0_io_6_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_port_0_io_6_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_port_0_io_6_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_port_0_io_7_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I8_N3072,
      O => NlwInverterSignal_port_0_io_7_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_port_0_io_7_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_port_0_io_7_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_tx_o_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => i_can_bsp_node_bus_off,
      O => NlwInverterSignal_tx_o_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_tx_o_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_tx_o_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_clkout_o_OBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_clkout_o_OBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_irq_on_OBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_irq_on_OBUF_GTS_TRI_CTL
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

