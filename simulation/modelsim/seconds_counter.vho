-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/07/2019 21:52:38"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	seconds_counter IS
    PORT (
	clk50 : IN std_logic;
	pause : IN std_logic;
	reset : IN std_logic;
	l1 : BUFFER std_logic_vector(6 DOWNTO 0);
	l2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END seconds_counter;

-- Design Ports Information
-- l1[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pause	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF seconds_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_pause : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_l1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_l2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \l1[0]~output_o\ : std_logic;
SIGNAL \l1[1]~output_o\ : std_logic;
SIGNAL \l1[2]~output_o\ : std_logic;
SIGNAL \l1[3]~output_o\ : std_logic;
SIGNAL \l1[4]~output_o\ : std_logic;
SIGNAL \l1[5]~output_o\ : std_logic;
SIGNAL \l1[6]~output_o\ : std_logic;
SIGNAL \l2[0]~output_o\ : std_logic;
SIGNAL \l2[1]~output_o\ : std_logic;
SIGNAL \l2[2]~output_o\ : std_logic;
SIGNAL \l2[3]~output_o\ : std_logic;
SIGNAL \l2[4]~output_o\ : std_logic;
SIGNAL \l2[5]~output_o\ : std_logic;
SIGNAL \l2[6]~output_o\ : std_logic;
SIGNAL \pause~input_o\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~20_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count~15_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \count~14_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \count~13_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count~12_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count~11_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \count~10_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \count~19_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \count~18_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \count~17_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \count~16_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clkt~0_combout\ : std_logic;
SIGNAL \clkt~feeder_combout\ : std_logic;
SIGNAL \clkt~q\ : std_logic;
SIGNAL \clkt~clkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \count0[31]~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \count0~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \count0~2_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \count0[16]~feeder_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \Equal2~11_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \l1[0]$latch~combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \WideNor0~4_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \l1[1]$latch~combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \l1~0_combout\ : std_logic;
SIGNAL \l1[2]$latch~combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \l1[3]$latch~combout\ : std_logic;
SIGNAL \WideNor0~5_combout\ : std_logic;
SIGNAL \l1[4]$latch~combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \l1[5]$latch~combout\ : std_logic;
SIGNAL \Equal2~12_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \l1[6]$latch~combout\ : std_logic;
SIGNAL \count1[0]~32_combout\ : std_logic;
SIGNAL \count1[1]~35\ : std_logic;
SIGNAL \count1[2]~36_combout\ : std_logic;
SIGNAL \Equal2~13_combout\ : std_logic;
SIGNAL \count1[31]~38_combout\ : std_logic;
SIGNAL \count1[2]~37\ : std_logic;
SIGNAL \count1[3]~39_combout\ : std_logic;
SIGNAL \count1[3]~40\ : std_logic;
SIGNAL \count1[4]~41_combout\ : std_logic;
SIGNAL \count1[4]~42\ : std_logic;
SIGNAL \count1[5]~43_combout\ : std_logic;
SIGNAL \count1[5]~44\ : std_logic;
SIGNAL \count1[6]~45_combout\ : std_logic;
SIGNAL \count1[6]~46\ : std_logic;
SIGNAL \count1[7]~47_combout\ : std_logic;
SIGNAL \count1[7]~48\ : std_logic;
SIGNAL \count1[8]~49_combout\ : std_logic;
SIGNAL \count1[8]~50\ : std_logic;
SIGNAL \count1[9]~51_combout\ : std_logic;
SIGNAL \count1[9]~52\ : std_logic;
SIGNAL \count1[10]~53_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \count1[10]~54\ : std_logic;
SIGNAL \count1[11]~55_combout\ : std_logic;
SIGNAL \count1[11]~56\ : std_logic;
SIGNAL \count1[12]~57_combout\ : std_logic;
SIGNAL \count1[12]~58\ : std_logic;
SIGNAL \count1[13]~59_combout\ : std_logic;
SIGNAL \count1[13]~60\ : std_logic;
SIGNAL \count1[14]~61_combout\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \count1[14]~62\ : std_logic;
SIGNAL \count1[15]~63_combout\ : std_logic;
SIGNAL \count1[15]~64\ : std_logic;
SIGNAL \count1[16]~65_combout\ : std_logic;
SIGNAL \count1[16]~66\ : std_logic;
SIGNAL \count1[17]~67_combout\ : std_logic;
SIGNAL \count1[17]~68\ : std_logic;
SIGNAL \count1[18]~69_combout\ : std_logic;
SIGNAL \Equal12~3_combout\ : std_logic;
SIGNAL \Equal12~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count1[18]~70\ : std_logic;
SIGNAL \count1[19]~71_combout\ : std_logic;
SIGNAL \count1[19]~72\ : std_logic;
SIGNAL \count1[20]~73_combout\ : std_logic;
SIGNAL \count1[20]~74\ : std_logic;
SIGNAL \count1[21]~75_combout\ : std_logic;
SIGNAL \count1[21]~76\ : std_logic;
SIGNAL \count1[22]~77_combout\ : std_logic;
SIGNAL \count1[22]~78\ : std_logic;
SIGNAL \count1[23]~79_combout\ : std_logic;
SIGNAL \count1[23]~80\ : std_logic;
SIGNAL \count1[24]~81_combout\ : std_logic;
SIGNAL \count1[24]~82\ : std_logic;
SIGNAL \count1[25]~83_combout\ : std_logic;
SIGNAL \count1[25]~84\ : std_logic;
SIGNAL \count1[26]~85_combout\ : std_logic;
SIGNAL \count1[26]~86\ : std_logic;
SIGNAL \count1[27]~87_combout\ : std_logic;
SIGNAL \count1[27]~88\ : std_logic;
SIGNAL \count1[28]~89_combout\ : std_logic;
SIGNAL \count1[28]~90\ : std_logic;
SIGNAL \count1[29]~91_combout\ : std_logic;
SIGNAL \count1[29]~92\ : std_logic;
SIGNAL \count1[30]~93_combout\ : std_logic;
SIGNAL \count1[30]~94\ : std_logic;
SIGNAL \count1[31]~95_combout\ : std_logic;
SIGNAL \Equal12~7_combout\ : std_logic;
SIGNAL \Equal12~5_combout\ : std_logic;
SIGNAL \Equal12~6_combout\ : std_logic;
SIGNAL \Equal12~8_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \count1[0]~33\ : std_logic;
SIGNAL \count1[1]~34_combout\ : std_logic;
SIGNAL \Equal12~9_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \l2[0]$latch~combout\ : std_logic;
SIGNAL \l2~0_combout\ : std_logic;
SIGNAL \l2[1]$latch~combout\ : std_logic;
SIGNAL \l2~1_combout\ : std_logic;
SIGNAL \l2[2]$latch~combout\ : std_logic;
SIGNAL \l2~2_combout\ : std_logic;
SIGNAL \l2[4]$latch~combout\ : std_logic;
SIGNAL \WideNor1~0_combout\ : std_logic;
SIGNAL \WideNor1~1_combout\ : std_logic;
SIGNAL \l2[5]$latch~combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \l2[6]$latch~combout\ : std_logic;
SIGNAL count1 : std_logic_vector(31 DOWNTO 0);
SIGNAL count0 : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clkt~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_pause~input_o\ : std_logic;
SIGNAL \ALT_INV_count0[31]~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50 <= clk50;
ww_pause <= pause;
ww_reset <= reset;
l1 <= ww_l1;
l2 <= ww_l2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkt~q\);

\clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50~input_o\);
\ALT_INV_clkt~clkctrl_outclk\ <= NOT \clkt~clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_pause~input_o\ <= NOT \pause~input_o\;
\ALT_INV_count0[31]~1_combout\ <= NOT \count0[31]~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\l1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \l1[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\l1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \l1[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\l1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \l1[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\l1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l1[3]$latch~combout\,
	devoe => ww_devoe,
	o => \l1[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\l1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l1[4]$latch~combout\,
	devoe => ww_devoe,
	o => \l1[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\l1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l1[5]$latch~combout\,
	devoe => ww_devoe,
	o => \l1[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\l1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l1[6]$latch~combout\,
	devoe => ww_devoe,
	o => \l1[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\l2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \l2[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\l2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \l2[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\l2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l2[2]$latch~combout\,
	devoe => ww_devoe,
	o => \l2[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\l2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \l2[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\l2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l2[4]$latch~combout\,
	devoe => ww_devoe,
	o => \l2[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\l2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l2[5]$latch~combout\,
	devoe => ww_devoe,
	o => \l2[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\l2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l2[6]$latch~combout\,
	devoe => ww_devoe,
	o => \l2[6]~output_o\);

-- Location: IOIBUF_X51_Y54_N22
\pause~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pause,
	o => \pause~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: CLKCTRL_G19
\clk50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y52_N16
\count[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[0]~20_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(0),
	combout => \count[0]~20_combout\);

-- Location: IOIBUF_X51_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X46_Y52_N29
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \count[0]~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X46_Y52_N0
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X46_Y52_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1_cout\)) # (!count(1) & ((\Add0~1_cout\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1_cout\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X46_Y52_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X46_Y52_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X46_Y52_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X46_Y52_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X46_Y52_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X45_Y52_N22
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(2) & (!count(3) & (!count(1) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(3),
	datac => count(1),
	datad => count(0),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X46_Y52_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X46_Y52_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X46_Y52_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X46_Y52_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X46_Y52_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X45_Y52_N6
\count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~15_combout\ = (\Add0~12_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add0~12_combout\,
	datad => \Equal0~4_combout\,
	combout => \count~15_combout\);

-- Location: FF_X46_Y52_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \count~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X46_Y52_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X46_Y52_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X46_Y52_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X46_Y52_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X46_Y52_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X46_Y52_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X46_Y52_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X46_Y52_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X46_Y52_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X45_Y52_N30
\count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~14_combout\ = (\Add0~22_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~22_combout\,
	combout => \count~14_combout\);

-- Location: FF_X45_Y52_N31
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X45_Y52_N20
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(10) & (!count(9) & (count(11) & !count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(9),
	datac => count(11),
	datad => count(8),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X45_Y52_N14
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(5) & (!count(4) & (!count(7) & count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(4),
	datac => count(7),
	datad => count(6),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X46_Y52_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X45_Y52_N12
\count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~13_combout\ = (\Add0~24_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~24_combout\,
	combout => \count~13_combout\);

-- Location: FF_X45_Y52_N13
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~13_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X46_Y52_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X45_Y52_N26
\count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~12_combout\ = (\Add0~26_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~26_combout\,
	combout => \count~12_combout\);

-- Location: FF_X45_Y52_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X46_Y52_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X45_Y52_N24
\count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~11_combout\ = (\Add0~28_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Add0~28_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~11_combout\);

-- Location: FF_X45_Y52_N25
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X46_Y52_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X46_Y52_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X45_Y52_N18
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count(13) & (count(14) & (!count(15) & count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(14),
	datac => count(15),
	datad => count(12),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X45_Y52_N28
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X46_Y51_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X45_Y51_N6
\count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~10_combout\ = (\Add0~32_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add0~32_combout\,
	datad => \Equal0~4_combout\,
	combout => \count~10_combout\);

-- Location: FF_X45_Y51_N7
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X46_Y51_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X46_Y51_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X46_Y51_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X45_Y51_N16
\count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~9_combout\ = (\Add0~36_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~36_combout\,
	combout => \count~9_combout\);

-- Location: FF_X45_Y51_N17
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X46_Y51_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X45_Y51_N26
\count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (\Add0~38_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~38_combout\,
	combout => \count~8_combout\);

-- Location: FF_X45_Y51_N27
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X45_Y51_N12
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count(16) & (count(18) & (count(19) & !count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(18),
	datac => count(19),
	datad => count(17),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X46_Y51_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X45_Y51_N22
\count~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~19_combout\ = (\Add0~40_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add0~40_combout\,
	datad => \Equal0~4_combout\,
	combout => \count~19_combout\);

-- Location: FF_X45_Y51_N23
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X46_Y51_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X45_Y51_N0
\count~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~18_combout\ = (\Add0~42_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add0~42_combout\,
	datad => \Equal0~4_combout\,
	combout => \count~18_combout\);

-- Location: FF_X45_Y51_N1
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X46_Y51_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X45_Y51_N18
\count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~17_combout\ = (\Add0~44_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add0~44_combout\,
	datad => \Equal0~4_combout\,
	combout => \count~17_combout\);

-- Location: FF_X45_Y51_N19
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~17_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X46_Y51_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X46_Y51_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X45_Y51_N24
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count(20) & (count(22) & (!count(23) & count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(22),
	datac => count(23),
	datad => count(21),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X46_Y51_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X45_Y51_N2
\count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~16_combout\ = (\Add0~48_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~48_combout\,
	combout => \count~16_combout\);

-- Location: FF_X45_Y51_N3
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \count~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X46_Y51_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X46_Y51_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X46_Y51_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X46_Y51_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X46_Y51_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(27) & (!\Add0~53\)) # (!count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X46_Y51_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X46_Y51_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(28) & (\Add0~55\ $ (GND))) # (!count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X46_Y51_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X46_Y51_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(29) & (!\Add0~57\)) # (!count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X46_Y51_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X46_Y51_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(30) & (\Add0~59\ $ (GND))) # (!count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X46_Y51_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X46_Y51_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = count(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X46_Y51_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X45_Y51_N4
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(31) & (!count(30) & (!count(29) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => count(30),
	datac => count(29),
	datad => count(28),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y51_N20
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(26) & (!count(25) & (count(24) & !count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(25),
	datac => count(24),
	datad => count(27),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X45_Y51_N10
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X45_Y52_N10
\clkt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkt~0_combout\ = \clkt~q\ $ (((\Equal0~4_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkt~q\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \clkt~0_combout\);

-- Location: LCCOMB_X45_Y52_N2
\clkt~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkt~feeder_combout\ = \clkt~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkt~0_combout\,
	combout => \clkt~feeder_combout\);

-- Location: FF_X45_Y52_N3
clkt : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \clkt~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkt~q\);

-- Location: CLKCTRL_G12
\clkt~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkt~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y53_N0
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = count0(0) $ (VCC)
-- \Add2~1\ = CARRY(count0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X51_Y53_N20
\count0[31]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[31]~1_combout\ = (!\pause~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pause~input_o\,
	datad => \reset~input_o\,
	combout => \count0[31]~1_combout\);

-- Location: FF_X52_Y53_N1
\count0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~0_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(0));

-- Location: LCCOMB_X52_Y53_N2
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (count0(1) & (!\Add2~1\)) # (!count0(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!count0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X51_Y53_N24
\count0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0~0_combout\ = (\Add2~2_combout\ & ((!\Equal10~1_combout\) # (!count0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => count0(0),
	datad => \Equal10~1_combout\,
	combout => \count0~0_combout\);

-- Location: FF_X51_Y53_N25
\count0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count0~0_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(1));

-- Location: LCCOMB_X52_Y53_N4
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (count0(2) & (\Add2~3\ $ (GND))) # (!count0(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((count0(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X52_Y53_N5
\count0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~4_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(2));

-- Location: LCCOMB_X52_Y53_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (count0(3) & (!\Add2~5\)) # (!count0(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!count0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X51_Y51_N10
\count0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0~2_combout\ = (\Add2~6_combout\ & ((!\Equal10~1_combout\) # (!count0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(0),
	datac => \Equal10~1_combout\,
	datad => \Add2~6_combout\,
	combout => \count0~2_combout\);

-- Location: FF_X51_Y51_N11
\count0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count0~2_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(3));

-- Location: LCCOMB_X52_Y53_N8
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (count0(4) & (\Add2~7\ $ (GND))) # (!count0(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((count0(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X52_Y53_N9
\count0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~8_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(4));

-- Location: LCCOMB_X52_Y53_N10
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (count0(5) & (!\Add2~9\)) # (!count0(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!count0(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X52_Y53_N11
\count0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~10_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(5));

-- Location: LCCOMB_X52_Y53_N12
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (count0(6) & (\Add2~11\ $ (GND))) # (!count0(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((count0(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X52_Y53_N13
\count0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~12_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(6));

-- Location: LCCOMB_X52_Y53_N14
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (count0(7) & (!\Add2~13\)) # (!count0(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!count0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X52_Y53_N15
\count0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~14_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(7));

-- Location: LCCOMB_X52_Y53_N16
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (count0(8) & (\Add2~15\ $ (GND))) # (!count0(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((count0(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X52_Y53_N17
\count0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~16_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(8));

-- Location: LCCOMB_X52_Y53_N18
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (count0(9) & (!\Add2~17\)) # (!count0(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!count0(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X52_Y53_N19
\count0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~18_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(9));

-- Location: LCCOMB_X52_Y53_N20
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (count0(10) & (\Add2~19\ $ (GND))) # (!count0(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((count0(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X52_Y53_N21
\count0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~20_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(10));

-- Location: LCCOMB_X52_Y53_N22
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (count0(11) & (!\Add2~21\)) # (!count0(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!count0(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X52_Y53_N23
\count0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~22_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(11));

-- Location: LCCOMB_X52_Y53_N24
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (count0(12) & (\Add2~23\ $ (GND))) # (!count0(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((count0(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X52_Y53_N25
\count0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~24_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(12));

-- Location: LCCOMB_X52_Y53_N26
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (count0(13) & (!\Add2~25\)) # (!count0(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!count0(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X52_Y53_N27
\count0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~26_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(13));

-- Location: LCCOMB_X52_Y53_N28
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (count0(14) & (\Add2~27\ $ (GND))) # (!count0(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((count0(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X52_Y53_N29
\count0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~28_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(14));

-- Location: LCCOMB_X52_Y53_N30
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (count0(15) & (!\Add2~29\)) # (!count0(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!count0(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X52_Y53_N31
\count0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~30_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(15));

-- Location: LCCOMB_X51_Y51_N14
\Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!count0(13) & (!count0(15) & (!count0(14) & !count0(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(13),
	datab => count0(15),
	datac => count0(14),
	datad => count0(12),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X51_Y51_N22
\Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (!count0(5) & (!count0(7) & (!count0(6) & !count0(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(5),
	datab => count0(7),
	datac => count0(6),
	datad => count0(4),
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X51_Y51_N16
\Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!count0(8) & (!count0(11) & (!count0(10) & !count0(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(8),
	datab => count0(11),
	datac => count0(10),
	datad => count0(9),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X51_Y51_N8
\Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~7_combout\ & (\Equal2~9_combout\ & \Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~7_combout\,
	datac => \Equal2~9_combout\,
	datad => \Equal2~8_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X52_Y51_N12
\Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (count0(3) & (!count0(2) & !count0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(3),
	datac => count0(2),
	datad => count0(1),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X52_Y52_N0
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (count0(16) & (\Add2~31\ $ (GND))) # (!count0(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((count0(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X51_Y52_N2
\count0[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[16]~feeder_combout\ = \Add2~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~32_combout\,
	combout => \count0[16]~feeder_combout\);

-- Location: FF_X51_Y52_N3
\count0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count0[16]~feeder_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(16));

-- Location: LCCOMB_X52_Y52_N2
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (count0(17) & (!\Add2~33\)) # (!count0(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!count0(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X52_Y52_N3
\count0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~34_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(17));

-- Location: LCCOMB_X52_Y52_N4
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (count0(18) & (\Add2~35\ $ (GND))) # (!count0(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((count0(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X52_Y52_N5
\count0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~36_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(18));

-- Location: LCCOMB_X52_Y52_N6
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (count0(19) & (!\Add2~37\)) # (!count0(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!count0(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: FF_X52_Y52_N7
\count0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~38_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(19));

-- Location: LCCOMB_X52_Y52_N8
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (count0(20) & (\Add2~39\ $ (GND))) # (!count0(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((count0(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: FF_X52_Y52_N9
\count0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~40_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(20));

-- Location: LCCOMB_X52_Y52_N10
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (count0(21) & (!\Add2~41\)) # (!count0(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!count0(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: FF_X52_Y52_N11
\count0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~42_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(21));

-- Location: LCCOMB_X52_Y52_N12
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (count0(22) & (\Add2~43\ $ (GND))) # (!count0(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((count0(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: FF_X52_Y52_N13
\count0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~44_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(22));

-- Location: LCCOMB_X52_Y52_N14
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (count0(23) & (!\Add2~45\)) # (!count0(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!count0(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X52_Y52_N15
\count0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~46_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(23));

-- Location: LCCOMB_X51_Y51_N30
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (!count0(20) & (!count0(23) & (!count0(22) & !count0(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(20),
	datab => count0(23),
	datac => count0(22),
	datad => count0(21),
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X52_Y52_N16
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (count0(24) & (\Add2~47\ $ (GND))) # (!count0(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((count0(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X52_Y52_N17
\count0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~48_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(24));

-- Location: LCCOMB_X52_Y52_N18
\Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (count0(25) & (!\Add2~49\)) # (!count0(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!count0(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X52_Y52_N19
\count0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~50_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(25));

-- Location: LCCOMB_X52_Y52_N20
\Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (count0(26) & (\Add2~51\ $ (GND))) # (!count0(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((count0(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: FF_X52_Y52_N21
\count0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~52_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(26));

-- Location: LCCOMB_X52_Y52_N22
\Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (count0(27) & (!\Add2~53\)) # (!count0(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!count0(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: FF_X52_Y52_N23
\count0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~54_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(27));

-- Location: LCCOMB_X51_Y51_N4
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!count0(25) & (!count0(24) & (!count0(26) & !count0(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(25),
	datab => count0(24),
	datac => count0(26),
	datad => count0(27),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X51_Y52_N24
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!count0(18) & (!count0(16) & (!count0(19) & !count0(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(18),
	datab => count0(16),
	datac => count0(19),
	datad => count0(17),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X52_Y52_N24
\Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (count0(28) & (\Add2~55\ $ (GND))) # (!count0(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((count0(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: FF_X52_Y52_N25
\count0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~56_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(28));

-- Location: LCCOMB_X52_Y52_N26
\Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (count0(29) & (!\Add2~57\)) # (!count0(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!count0(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: FF_X52_Y52_N27
\count0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~58_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(29));

-- Location: LCCOMB_X52_Y52_N28
\Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (count0(30) & (\Add2~59\ $ (GND))) # (!count0(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((count0(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: FF_X52_Y52_N29
\count0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~60_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(30));

-- Location: LCCOMB_X52_Y52_N30
\Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = count0(31) $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: FF_X52_Y52_N31
\count0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \Add2~62_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count0(31));

-- Location: LCCOMB_X51_Y52_N28
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!count0(28) & (!count0(29) & (!count0(31) & !count0(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(28),
	datab => count0(29),
	datac => count0(31),
	datad => count0(30),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X51_Y51_N28
\Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (\Equal2~4_combout\ & (\Equal2~3_combout\ & (\Equal2~5_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~5_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X51_Y51_N26
\Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (\Equal2~10_combout\ & (\Equal10~0_combout\ & \Equal2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~10_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X51_Y53_N28
\WideNor0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (count0(0)) # ((!count0(1) & count0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(1),
	datac => count0(0),
	datad => count0(2),
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X51_Y51_N0
\WideNor0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (!count0(3) & (\Equal2~10_combout\ & (\WideNor0~1_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(3),
	datab => \Equal2~10_combout\,
	datac => \WideNor0~1_combout\,
	datad => \Equal2~6_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X51_Y51_N20
\Equal2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~11_combout\ = (!count0(3) & (\Equal2~10_combout\ & \Equal2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(3),
	datac => \Equal2~10_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~11_combout\);

-- Location: LCCOMB_X51_Y51_N18
\WideNor0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (count0(0)) # (((!count0(1) & count0(2))) # (!\Equal2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(1),
	datab => count0(0),
	datac => count0(2),
	datad => \Equal2~11_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X51_Y53_N6
\WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (count0(1)) # ((count0(2) $ (!count0(0))) # (!\Equal2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(2),
	datab => count0(1),
	datac => count0(0),
	datad => \Equal2~11_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X51_Y53_N2
WideOr5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = ((!\Equal10~1_combout\ & (!\WideNor0~2_combout\ & \WideNor0~3_combout\))) # (!\WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \WideNor0~2_combout\,
	datac => \WideNor0~3_combout\,
	datad => \WideNor0~0_combout\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X51_Y53_N16
\l1[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l1[0]$latch~combout\ = (\pause~input_o\ & (\l1[0]$latch~combout\)) # (!\pause~input_o\ & ((\WideOr5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l1[0]$latch~combout\,
	datac => \pause~input_o\,
	datad => \WideOr5~combout\,
	combout => \l1[0]$latch~combout\);

-- Location: LCCOMB_X52_Y51_N14
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!count0(3) & (\Equal2~6_combout\ & (count0(2) & \Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(3),
	datab => \Equal2~6_combout\,
	datac => count0(2),
	datad => \Equal2~10_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X51_Y51_N12
\WideNor0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~4_combout\ = (\WideNor0~2_combout\) # ((\Equal10~1_combout\) # (!\WideNor0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideNor0~2_combout\,
	datac => \Equal10~1_combout\,
	datad => \WideNor0~3_combout\,
	combout => \WideNor0~4_combout\);

-- Location: LCCOMB_X52_Y51_N0
WideOr4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ((\Equal8~0_combout\ & (count0(1) $ (count0(0))))) # (!\WideNor0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(1),
	datab => count0(0),
	datac => \Equal8~0_combout\,
	datad => \WideNor0~4_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X52_Y51_N24
\l1[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l1[1]$latch~combout\ = (\pause~input_o\ & (\l1[1]$latch~combout\)) # (!\pause~input_o\ & ((\WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l1[1]$latch~combout\,
	datac => \pause~input_o\,
	datad => \WideOr4~combout\,
	combout => \l1[1]$latch~combout\);

-- Location: LCCOMB_X51_Y51_N6
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (count0(1) & (!count0(2) & \Equal2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(1),
	datac => count0(2),
	datad => \Equal2~11_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X52_Y51_N18
\l1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l1~0_combout\ = ((!count0(0) & \Equal4~0_combout\)) # (!\WideNor0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(0),
	datac => \Equal4~0_combout\,
	datad => \WideNor0~4_combout\,
	combout => \l1~0_combout\);

-- Location: LCCOMB_X52_Y51_N30
\l1[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l1[2]$latch~combout\ = (\pause~input_o\ & (\l1[2]$latch~combout\)) # (!\pause~input_o\ & ((\l1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1[2]$latch~combout\,
	datac => \pause~input_o\,
	datad => \l1~0_combout\,
	combout => \l1[2]$latch~combout\);

-- Location: LCCOMB_X52_Y51_N28
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!count0(1) & (!count0(0) & (count0(2) & \Equal2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(1),
	datab => count0(0),
	datac => count0(2),
	datad => \Equal2~11_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X52_Y51_N26
\WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ((count0(1) $ (count0(2))) # (!\Equal2~11_combout\)) # (!count0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(1),
	datab => count0(0),
	datac => count0(2),
	datad => \Equal2~11_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X52_Y51_N20
WideOr3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\Equal6~0_combout\) # ((!\WideNor0~4_combout\) # (!\WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~0_combout\,
	datac => \WideOr0~0_combout\,
	datad => \WideNor0~4_combout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X52_Y51_N8
\l1[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l1[3]$latch~combout\ = (\pause~input_o\ & (\l1[3]$latch~combout\)) # (!\pause~input_o\ & ((\WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l1[3]$latch~combout\,
	datac => \pause~input_o\,
	datad => \WideOr3~combout\,
	combout => \l1[3]$latch~combout\);

-- Location: LCCOMB_X51_Y53_N18
\WideNor0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~5_combout\ = (\WideNor0~3_combout\ & ((count0(0)) # (!\Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(0),
	datac => \WideNor0~3_combout\,
	datad => \Equal10~1_combout\,
	combout => \WideNor0~5_combout\);

-- Location: LCCOMB_X51_Y53_N30
\l1[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l1[4]$latch~combout\ = (\pause~input_o\ & (\l1[4]$latch~combout\)) # (!\pause~input_o\ & ((\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1[4]$latch~combout\,
	datac => \pause~input_o\,
	datad => \WideNor0~5_combout\,
	combout => \l1[4]$latch~combout\);

-- Location: LCCOMB_X52_Y51_N6
WideOr1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\Equal4~0_combout\) # ((!\WideNor0~4_combout\) # (!\WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datac => \WideOr0~0_combout\,
	datad => \WideNor0~4_combout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X52_Y51_N22
\l1[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l1[5]$latch~combout\ = (\pause~input_o\ & (\l1[5]$latch~combout\)) # (!\pause~input_o\ & ((\WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1[5]$latch~combout\,
	datac => \pause~input_o\,
	datad => \WideOr1~combout\,
	combout => \l1[5]$latch~combout\);

-- Location: LCCOMB_X52_Y51_N4
\Equal2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~12_combout\ = (!count0(1) & (!count0(0) & (!count0(2) & \Equal2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(1),
	datab => count0(0),
	datac => count0(2),
	datad => \Equal2~11_combout\,
	combout => \Equal2~12_combout\);

-- Location: LCCOMB_X52_Y51_N10
WideOr0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\Equal2~12_combout\) # ((!\WideNor0~4_combout\) # (!\WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~12_combout\,
	datac => \WideOr0~0_combout\,
	datad => \WideNor0~4_combout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X52_Y51_N16
\l1[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l1[6]$latch~combout\ = (\pause~input_o\ & (\l1[6]$latch~combout\)) # (!\pause~input_o\ & ((\WideOr0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l1[6]$latch~combout\,
	datac => \pause~input_o\,
	datad => \WideOr0~combout\,
	combout => \l1[6]$latch~combout\);

-- Location: LCCOMB_X50_Y52_N0
\count1[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[0]~32_combout\ = count1(0) $ (VCC)
-- \count1[0]~33\ = CARRY(count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(0),
	datad => VCC,
	combout => \count1[0]~32_combout\,
	cout => \count1[0]~33\);

-- Location: LCCOMB_X50_Y52_N2
\count1[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[1]~34_combout\ = (count1(1) & (!\count1[0]~33\)) # (!count1(1) & ((\count1[0]~33\) # (GND)))
-- \count1[1]~35\ = CARRY((!\count1[0]~33\) # (!count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(1),
	datad => VCC,
	cin => \count1[0]~33\,
	combout => \count1[1]~34_combout\,
	cout => \count1[1]~35\);

-- Location: LCCOMB_X50_Y52_N4
\count1[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[2]~36_combout\ = (count1(2) & (\count1[1]~35\ $ (GND))) # (!count1(2) & (!\count1[1]~35\ & VCC))
-- \count1[2]~37\ = CARRY((count1(2) & !\count1[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(2),
	datad => VCC,
	cin => \count1[1]~35\,
	combout => \count1[2]~36_combout\,
	cout => \count1[2]~37\);

-- Location: LCCOMB_X51_Y51_N2
\Equal2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~13_combout\ = (\Equal2~9_combout\ & (\Equal2~8_combout\ & (\Equal2~7_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datab => \Equal2~8_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~13_combout\);

-- Location: LCCOMB_X51_Y51_N24
\count1[31]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[31]~38_combout\ = (count0(0) & (!\pause~input_o\ & (\Equal10~0_combout\ & \Equal2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(0),
	datab => \pause~input_o\,
	datac => \Equal10~0_combout\,
	datad => \Equal2~13_combout\,
	combout => \count1[31]~38_combout\);

-- Location: FF_X50_Y52_N5
\count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[2]~36_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(2));

-- Location: LCCOMB_X50_Y52_N6
\count1[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[3]~39_combout\ = (count1(3) & (!\count1[2]~37\)) # (!count1(3) & ((\count1[2]~37\) # (GND)))
-- \count1[3]~40\ = CARRY((!\count1[2]~37\) # (!count1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datad => VCC,
	cin => \count1[2]~37\,
	combout => \count1[3]~39_combout\,
	cout => \count1[3]~40\);

-- Location: FF_X50_Y52_N7
\count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[3]~39_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(3));

-- Location: LCCOMB_X50_Y52_N8
\count1[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[4]~41_combout\ = (count1(4) & (\count1[3]~40\ $ (GND))) # (!count1(4) & (!\count1[3]~40\ & VCC))
-- \count1[4]~42\ = CARRY((count1(4) & !\count1[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(4),
	datad => VCC,
	cin => \count1[3]~40\,
	combout => \count1[4]~41_combout\,
	cout => \count1[4]~42\);

-- Location: FF_X50_Y52_N9
\count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[4]~41_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(4));

-- Location: LCCOMB_X50_Y52_N10
\count1[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[5]~43_combout\ = (count1(5) & (!\count1[4]~42\)) # (!count1(5) & ((\count1[4]~42\) # (GND)))
-- \count1[5]~44\ = CARRY((!\count1[4]~42\) # (!count1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(5),
	datad => VCC,
	cin => \count1[4]~42\,
	combout => \count1[5]~43_combout\,
	cout => \count1[5]~44\);

-- Location: FF_X50_Y52_N11
\count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[5]~43_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(5));

-- Location: LCCOMB_X50_Y52_N12
\count1[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[6]~45_combout\ = (count1(6) & (\count1[5]~44\ $ (GND))) # (!count1(6) & (!\count1[5]~44\ & VCC))
-- \count1[6]~46\ = CARRY((count1(6) & !\count1[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(6),
	datad => VCC,
	cin => \count1[5]~44\,
	combout => \count1[6]~45_combout\,
	cout => \count1[6]~46\);

-- Location: FF_X50_Y52_N13
\count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[6]~45_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(6));

-- Location: LCCOMB_X50_Y52_N14
\count1[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[7]~47_combout\ = (count1(7) & (!\count1[6]~46\)) # (!count1(7) & ((\count1[6]~46\) # (GND)))
-- \count1[7]~48\ = CARRY((!\count1[6]~46\) # (!count1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(7),
	datad => VCC,
	cin => \count1[6]~46\,
	combout => \count1[7]~47_combout\,
	cout => \count1[7]~48\);

-- Location: FF_X50_Y52_N15
\count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[7]~47_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(7));

-- Location: LCCOMB_X50_Y52_N16
\count1[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[8]~49_combout\ = (count1(8) & (\count1[7]~48\ $ (GND))) # (!count1(8) & (!\count1[7]~48\ & VCC))
-- \count1[8]~50\ = CARRY((count1(8) & !\count1[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(8),
	datad => VCC,
	cin => \count1[7]~48\,
	combout => \count1[8]~49_combout\,
	cout => \count1[8]~50\);

-- Location: FF_X50_Y52_N17
\count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[8]~49_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(8));

-- Location: LCCOMB_X50_Y52_N18
\count1[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[9]~51_combout\ = (count1(9) & (!\count1[8]~50\)) # (!count1(9) & ((\count1[8]~50\) # (GND)))
-- \count1[9]~52\ = CARRY((!\count1[8]~50\) # (!count1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(9),
	datad => VCC,
	cin => \count1[8]~50\,
	combout => \count1[9]~51_combout\,
	cout => \count1[9]~52\);

-- Location: FF_X50_Y52_N19
\count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[9]~51_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(9));

-- Location: LCCOMB_X50_Y52_N20
\count1[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[10]~53_combout\ = (count1(10) & (\count1[9]~52\ $ (GND))) # (!count1(10) & (!\count1[9]~52\ & VCC))
-- \count1[10]~54\ = CARRY((count1(10) & !\count1[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(10),
	datad => VCC,
	cin => \count1[9]~52\,
	combout => \count1[10]~53_combout\,
	cout => \count1[10]~54\);

-- Location: FF_X50_Y52_N21
\count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[10]~53_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(10));

-- Location: LCCOMB_X50_Y50_N26
\Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (!count1(10) & (!count1(9) & (!count1(8) & !count1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(10),
	datab => count1(9),
	datac => count1(8),
	datad => count1(7),
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X50_Y50_N28
\Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (!count1(3) & (!count1(5) & (!count1(4) & !count1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datab => count1(5),
	datac => count1(4),
	datad => count1(6),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X50_Y52_N22
\count1[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[11]~55_combout\ = (count1(11) & (!\count1[10]~54\)) # (!count1(11) & ((\count1[10]~54\) # (GND)))
-- \count1[11]~56\ = CARRY((!\count1[10]~54\) # (!count1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(11),
	datad => VCC,
	cin => \count1[10]~54\,
	combout => \count1[11]~55_combout\,
	cout => \count1[11]~56\);

-- Location: FF_X50_Y52_N23
\count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[11]~55_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(11));

-- Location: LCCOMB_X50_Y52_N24
\count1[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[12]~57_combout\ = (count1(12) & (\count1[11]~56\ $ (GND))) # (!count1(12) & (!\count1[11]~56\ & VCC))
-- \count1[12]~58\ = CARRY((count1(12) & !\count1[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(12),
	datad => VCC,
	cin => \count1[11]~56\,
	combout => \count1[12]~57_combout\,
	cout => \count1[12]~58\);

-- Location: FF_X50_Y52_N25
\count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[12]~57_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(12));

-- Location: LCCOMB_X50_Y52_N26
\count1[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[13]~59_combout\ = (count1(13) & (!\count1[12]~58\)) # (!count1(13) & ((\count1[12]~58\) # (GND)))
-- \count1[13]~60\ = CARRY((!\count1[12]~58\) # (!count1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(13),
	datad => VCC,
	cin => \count1[12]~58\,
	combout => \count1[13]~59_combout\,
	cout => \count1[13]~60\);

-- Location: FF_X50_Y52_N27
\count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[13]~59_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(13));

-- Location: LCCOMB_X50_Y52_N28
\count1[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[14]~61_combout\ = (count1(14) & (\count1[13]~60\ $ (GND))) # (!count1(14) & (!\count1[13]~60\ & VCC))
-- \count1[14]~62\ = CARRY((count1(14) & !\count1[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(14),
	datad => VCC,
	cin => \count1[13]~60\,
	combout => \count1[14]~61_combout\,
	cout => \count1[14]~62\);

-- Location: FF_X50_Y52_N29
\count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[14]~61_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(14));

-- Location: LCCOMB_X50_Y50_N8
\Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = (!count1(13) & (!count1(14) & (!count1(11) & !count1(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(13),
	datab => count1(14),
	datac => count1(11),
	datad => count1(12),
	combout => \Equal12~2_combout\);

-- Location: LCCOMB_X50_Y52_N30
\count1[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[15]~63_combout\ = (count1(15) & (!\count1[14]~62\)) # (!count1(15) & ((\count1[14]~62\) # (GND)))
-- \count1[15]~64\ = CARRY((!\count1[14]~62\) # (!count1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(15),
	datad => VCC,
	cin => \count1[14]~62\,
	combout => \count1[15]~63_combout\,
	cout => \count1[15]~64\);

-- Location: FF_X50_Y52_N31
\count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[15]~63_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(15));

-- Location: LCCOMB_X50_Y51_N0
\count1[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[16]~65_combout\ = (count1(16) & (\count1[15]~64\ $ (GND))) # (!count1(16) & (!\count1[15]~64\ & VCC))
-- \count1[16]~66\ = CARRY((count1(16) & !\count1[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(16),
	datad => VCC,
	cin => \count1[15]~64\,
	combout => \count1[16]~65_combout\,
	cout => \count1[16]~66\);

-- Location: FF_X50_Y51_N1
\count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[16]~65_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(16));

-- Location: LCCOMB_X50_Y51_N2
\count1[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[17]~67_combout\ = (count1(17) & (!\count1[16]~66\)) # (!count1(17) & ((\count1[16]~66\) # (GND)))
-- \count1[17]~68\ = CARRY((!\count1[16]~66\) # (!count1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(17),
	datad => VCC,
	cin => \count1[16]~66\,
	combout => \count1[17]~67_combout\,
	cout => \count1[17]~68\);

-- Location: FF_X50_Y51_N3
\count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[17]~67_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(17));

-- Location: LCCOMB_X50_Y51_N4
\count1[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[18]~69_combout\ = (count1(18) & (\count1[17]~68\ $ (GND))) # (!count1(18) & (!\count1[17]~68\ & VCC))
-- \count1[18]~70\ = CARRY((count1(18) & !\count1[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(18),
	datad => VCC,
	cin => \count1[17]~68\,
	combout => \count1[18]~69_combout\,
	cout => \count1[18]~70\);

-- Location: FF_X50_Y51_N5
\count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[18]~69_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(18));

-- Location: LCCOMB_X50_Y50_N18
\Equal12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~3_combout\ = (!count1(18) & (!count1(15) & (!count1(17) & !count1(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(18),
	datab => count1(15),
	datac => count1(17),
	datad => count1(16),
	combout => \Equal12~3_combout\);

-- Location: LCCOMB_X50_Y50_N12
\Equal12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~4_combout\ = (\Equal12~1_combout\ & (\Equal12~0_combout\ & (\Equal12~2_combout\ & \Equal12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => \Equal12~0_combout\,
	datac => \Equal12~2_combout\,
	datad => \Equal12~3_combout\,
	combout => \Equal12~4_combout\);

-- Location: LCCOMB_X51_Y50_N10
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!count1(0) & !count1(1))) # (!count1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(2),
	datac => count1(0),
	datad => count1(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y51_N6
\count1[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[19]~71_combout\ = (count1(19) & (!\count1[18]~70\)) # (!count1(19) & ((\count1[18]~70\) # (GND)))
-- \count1[19]~72\ = CARRY((!\count1[18]~70\) # (!count1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(19),
	datad => VCC,
	cin => \count1[18]~70\,
	combout => \count1[19]~71_combout\,
	cout => \count1[19]~72\);

-- Location: FF_X50_Y51_N7
\count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[19]~71_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(19));

-- Location: LCCOMB_X50_Y51_N8
\count1[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[20]~73_combout\ = (count1(20) & (\count1[19]~72\ $ (GND))) # (!count1(20) & (!\count1[19]~72\ & VCC))
-- \count1[20]~74\ = CARRY((count1(20) & !\count1[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(20),
	datad => VCC,
	cin => \count1[19]~72\,
	combout => \count1[20]~73_combout\,
	cout => \count1[20]~74\);

-- Location: FF_X50_Y51_N9
\count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[20]~73_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(20));

-- Location: LCCOMB_X50_Y51_N10
\count1[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[21]~75_combout\ = (count1(21) & (!\count1[20]~74\)) # (!count1(21) & ((\count1[20]~74\) # (GND)))
-- \count1[21]~76\ = CARRY((!\count1[20]~74\) # (!count1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(21),
	datad => VCC,
	cin => \count1[20]~74\,
	combout => \count1[21]~75_combout\,
	cout => \count1[21]~76\);

-- Location: FF_X50_Y51_N11
\count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[21]~75_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(21));

-- Location: LCCOMB_X50_Y51_N12
\count1[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[22]~77_combout\ = (count1(22) & (\count1[21]~76\ $ (GND))) # (!count1(22) & (!\count1[21]~76\ & VCC))
-- \count1[22]~78\ = CARRY((count1(22) & !\count1[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datad => VCC,
	cin => \count1[21]~76\,
	combout => \count1[22]~77_combout\,
	cout => \count1[22]~78\);

-- Location: FF_X50_Y51_N13
\count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[22]~77_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(22));

-- Location: LCCOMB_X50_Y51_N14
\count1[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[23]~79_combout\ = (count1(23) & (!\count1[22]~78\)) # (!count1(23) & ((\count1[22]~78\) # (GND)))
-- \count1[23]~80\ = CARRY((!\count1[22]~78\) # (!count1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(23),
	datad => VCC,
	cin => \count1[22]~78\,
	combout => \count1[23]~79_combout\,
	cout => \count1[23]~80\);

-- Location: FF_X50_Y51_N15
\count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[23]~79_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(23));

-- Location: LCCOMB_X50_Y51_N16
\count1[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[24]~81_combout\ = (count1(24) & (\count1[23]~80\ $ (GND))) # (!count1(24) & (!\count1[23]~80\ & VCC))
-- \count1[24]~82\ = CARRY((count1(24) & !\count1[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(24),
	datad => VCC,
	cin => \count1[23]~80\,
	combout => \count1[24]~81_combout\,
	cout => \count1[24]~82\);

-- Location: FF_X50_Y51_N17
\count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[24]~81_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(24));

-- Location: LCCOMB_X50_Y51_N18
\count1[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[25]~83_combout\ = (count1(25) & (!\count1[24]~82\)) # (!count1(25) & ((\count1[24]~82\) # (GND)))
-- \count1[25]~84\ = CARRY((!\count1[24]~82\) # (!count1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(25),
	datad => VCC,
	cin => \count1[24]~82\,
	combout => \count1[25]~83_combout\,
	cout => \count1[25]~84\);

-- Location: FF_X50_Y51_N19
\count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[25]~83_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(25));

-- Location: LCCOMB_X50_Y51_N20
\count1[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[26]~85_combout\ = (count1(26) & (\count1[25]~84\ $ (GND))) # (!count1(26) & (!\count1[25]~84\ & VCC))
-- \count1[26]~86\ = CARRY((count1(26) & !\count1[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(26),
	datad => VCC,
	cin => \count1[25]~84\,
	combout => \count1[26]~85_combout\,
	cout => \count1[26]~86\);

-- Location: FF_X50_Y51_N21
\count1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[26]~85_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(26));

-- Location: LCCOMB_X50_Y51_N22
\count1[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[27]~87_combout\ = (count1(27) & (!\count1[26]~86\)) # (!count1(27) & ((\count1[26]~86\) # (GND)))
-- \count1[27]~88\ = CARRY((!\count1[26]~86\) # (!count1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datad => VCC,
	cin => \count1[26]~86\,
	combout => \count1[27]~87_combout\,
	cout => \count1[27]~88\);

-- Location: FF_X50_Y51_N23
\count1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[27]~87_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(27));

-- Location: LCCOMB_X50_Y51_N24
\count1[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[28]~89_combout\ = (count1(28) & (\count1[27]~88\ $ (GND))) # (!count1(28) & (!\count1[27]~88\ & VCC))
-- \count1[28]~90\ = CARRY((count1(28) & !\count1[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(28),
	datad => VCC,
	cin => \count1[27]~88\,
	combout => \count1[28]~89_combout\,
	cout => \count1[28]~90\);

-- Location: FF_X50_Y51_N25
\count1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[28]~89_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(28));

-- Location: LCCOMB_X50_Y51_N26
\count1[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[29]~91_combout\ = (count1(29) & (!\count1[28]~90\)) # (!count1(29) & ((\count1[28]~90\) # (GND)))
-- \count1[29]~92\ = CARRY((!\count1[28]~90\) # (!count1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(29),
	datad => VCC,
	cin => \count1[28]~90\,
	combout => \count1[29]~91_combout\,
	cout => \count1[29]~92\);

-- Location: FF_X50_Y51_N27
\count1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[29]~91_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(29));

-- Location: LCCOMB_X50_Y51_N28
\count1[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[30]~93_combout\ = (count1(30) & (\count1[29]~92\ $ (GND))) # (!count1(30) & (!\count1[29]~92\ & VCC))
-- \count1[30]~94\ = CARRY((count1(30) & !\count1[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(30),
	datad => VCC,
	cin => \count1[29]~92\,
	combout => \count1[30]~93_combout\,
	cout => \count1[30]~94\);

-- Location: FF_X50_Y51_N29
\count1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[30]~93_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(30));

-- Location: LCCOMB_X50_Y51_N30
\count1[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[31]~95_combout\ = count1(31) $ (\count1[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(31),
	cin => \count1[30]~94\,
	combout => \count1[31]~95_combout\);

-- Location: FF_X50_Y51_N31
\count1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[31]~95_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(31));

-- Location: LCCOMB_X50_Y50_N30
\Equal12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~7_combout\ = (!count1(27) & (!count1(30) & (!count1(29) & !count1(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datab => count1(30),
	datac => count1(29),
	datad => count1(28),
	combout => \Equal12~7_combout\);

-- Location: LCCOMB_X50_Y50_N22
\Equal12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~5_combout\ = (!count1(19) & (!count1(22) & (!count1(20) & !count1(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(19),
	datab => count1(22),
	datac => count1(20),
	datad => count1(21),
	combout => \Equal12~5_combout\);

-- Location: LCCOMB_X50_Y50_N20
\Equal12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~6_combout\ = (!count1(23) & (!count1(25) & (!count1(24) & !count1(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(23),
	datab => count1(25),
	datac => count1(24),
	datad => count1(26),
	combout => \Equal12~6_combout\);

-- Location: LCCOMB_X50_Y50_N16
\Equal12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~8_combout\ = (\Equal12~7_combout\ & (\Equal12~5_combout\ & \Equal12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~7_combout\,
	datac => \Equal12~5_combout\,
	datad => \Equal12~6_combout\,
	combout => \Equal12~8_combout\);

-- Location: LCCOMB_X50_Y50_N24
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count1(31) & (((!\Equal12~8_combout\) # (!\LessThan0~0_combout\)) # (!\Equal12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~4_combout\,
	datab => \LessThan0~0_combout\,
	datac => count1(31),
	datad => \Equal12~8_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X50_Y52_N1
\count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[0]~32_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(0));

-- Location: FF_X50_Y52_N3
\count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkt~clkctrl_outclk\,
	d => \count1[1]~34_combout\,
	clrn => \ALT_INV_count0[31]~1_combout\,
	sclr => \LessThan0~1_combout\,
	ena => \count1[31]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(1));

-- Location: LCCOMB_X51_Y50_N20
\Equal12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~9_combout\ = (!count1(31) & (\Equal12~8_combout\ & \Equal12~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(31),
	datac => \Equal12~8_combout\,
	datad => \Equal12~4_combout\,
	combout => \Equal12~9_combout\);

-- Location: LCCOMB_X51_Y50_N6
WideOr8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (count1(2) $ (((!count1(1) & count1(0))))) # (!\Equal12~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datab => count1(2),
	datac => count1(0),
	datad => \Equal12~9_combout\,
	combout => \WideOr8~combout\);

-- Location: LCCOMB_X51_Y50_N4
\l2[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2[0]$latch~combout\ = (\pause~input_o\ & (\l2[0]$latch~combout\)) # (!\pause~input_o\ & ((\WideOr8~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2[0]$latch~combout\,
	datac => \pause~input_o\,
	datad => \WideOr8~combout\,
	combout => \l2[0]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N24
\l2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2~0_combout\ = ((count1(2) & ((count1(1)) # (count1(0))))) # (!\Equal12~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datab => count1(2),
	datac => count1(0),
	datad => \Equal12~9_combout\,
	combout => \l2~0_combout\);

-- Location: LCCOMB_X51_Y50_N22
\l2[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2[1]$latch~combout\ = (\pause~input_o\ & (\l2[1]$latch~combout\)) # (!\pause~input_o\ & ((\l2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2[1]$latch~combout\,
	datac => \pause~input_o\,
	datad => \l2~0_combout\,
	combout => \l2[1]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N18
\l2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2~1_combout\ = ((count1(1) & ((count1(2)) # (!count1(0))))) # (!\Equal12~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datab => count1(2),
	datac => count1(0),
	datad => \Equal12~9_combout\,
	combout => \l2~1_combout\);

-- Location: LCCOMB_X51_Y50_N0
\l2[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2[2]$latch~combout\ = (\pause~input_o\ & (\l2[2]$latch~combout\)) # (!\pause~input_o\ & ((\l2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2[2]$latch~combout\,
	datac => \pause~input_o\,
	datad => \l2~1_combout\,
	combout => \l2[2]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N16
\l2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2~2_combout\ = (!count1(2) & (!count1(0) & \Equal12~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(2),
	datac => count1(0),
	datad => \Equal12~9_combout\,
	combout => \l2~2_combout\);

-- Location: LCCOMB_X51_Y50_N26
\l2[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2[4]$latch~combout\ = (\pause~input_o\ & (\l2[4]$latch~combout\)) # (!\pause~input_o\ & ((!\l2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2[4]$latch~combout\,
	datac => \pause~input_o\,
	datad => \l2~2_combout\,
	combout => \l2[4]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N14
\WideNor1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor1~0_combout\ = (count1(1)) # ((count1(0) & !count1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(1),
	datac => count1(0),
	datad => count1(2),
	combout => \WideNor1~0_combout\);

-- Location: LCCOMB_X50_Y50_N10
\WideNor1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor1~1_combout\ = ((count1(31)) # ((\WideNor1~0_combout\) # (!\Equal12~8_combout\))) # (!\Equal12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~4_combout\,
	datab => count1(31),
	datac => \WideNor1~0_combout\,
	datad => \Equal12~8_combout\,
	combout => \WideNor1~1_combout\);

-- Location: LCCOMB_X50_Y50_N14
\l2[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2[5]$latch~combout\ = (\pause~input_o\ & ((\l2[5]$latch~combout\))) # (!\pause~input_o\ & (\WideNor1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor1~1_combout\,
	datac => \l2[5]$latch~combout\,
	datad => \pause~input_o\,
	combout => \l2[5]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N28
WideOr6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (count1(2) $ (!count1(1))) # (!\Equal12~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(2),
	datac => count1(1),
	datad => \Equal12~9_combout\,
	combout => \WideOr6~combout\);

-- Location: LCCOMB_X51_Y50_N8
\l2[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2[6]$latch~combout\ = (\pause~input_o\ & (\l2[6]$latch~combout\)) # (!\pause~input_o\ & ((\WideOr6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2[6]$latch~combout\,
	datac => \pause~input_o\,
	datad => \WideOr6~combout\,
	combout => \l2[6]$latch~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_l1(0) <= \l1[0]~output_o\;

ww_l1(1) <= \l1[1]~output_o\;

ww_l1(2) <= \l1[2]~output_o\;

ww_l1(3) <= \l1[3]~output_o\;

ww_l1(4) <= \l1[4]~output_o\;

ww_l1(5) <= \l1[5]~output_o\;

ww_l1(6) <= \l1[6]~output_o\;

ww_l2(0) <= \l2[0]~output_o\;

ww_l2(1) <= \l2[1]~output_o\;

ww_l2(2) <= \l2[2]~output_o\;

ww_l2(3) <= \l2[3]~output_o\;

ww_l2(4) <= \l2[4]~output_o\;

ww_l2(5) <= \l2[5]~output_o\;

ww_l2(6) <= \l2[6]~output_o\;
END structure;


